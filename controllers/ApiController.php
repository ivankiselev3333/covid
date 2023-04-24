<?php

namespace app\controllers;

use Yii;
use app\models\Patient;
use app\models\PatientSearch;
use yii\web\Response;
use yii\web\Controller;
use webvimark\modules\UserManagement\models\User;

class ApiController extends Controller
{
    public function beforeAction($action)
    {
        Yii::$app->response->format = Response::FORMAT_JSON;
        return parent::beforeAction($action);
    }


    public function actionPatientList()
    {
        // Retrieve the auth_cookie value from the request header
        $authCookie = Yii::$app->request->cookies->getValue('auth_cookie');

        // Get the authKey from the request
        $authKey = Yii::$app->request->get('authKey');

        if (empty($authCookie) && empty($authKey)) {
            // Return an error response if both authKey and auth_cookie are missing
            Yii::$app->response->format = Response::FORMAT_JSON;
            Yii::$app->response->setStatusCode(401);
            return [
                'error' => 'Unauthorized. Invalid auth key or auth cookie is missing.',
            ];
        }

        // Check if authKey is provided and find the user by authKey in the User model
        if (!empty($authKey)) {
            $user = User::findOne(['auth_key' => $authKey]);

            if (!$user || $user->auth_key !== $authKey) {
                // Return an error response if authKey is invalid
                Yii::$app->response->format = Response::FORMAT_JSON;

                Yii::$app->response->setStatusCode(401);
                return [
                    'error' => 'Unauthorized. Invalid auth key.',
                ];
            }
        }

        // Retrieve the filter parameters from the request query parameters
        $name = Yii::$app->request->get('name');
        $phone = Yii::$app->request->get('phone');
        $status_id = Yii::$app->request->get('status_id');
        $polyclinic_id = Yii::$app->request->get('polyclinic_id');
        $treatment_id = Yii::$app->request->get('treatment_id');
        $form_disease_id = Yii::$app->request->get('form_disease_id');
        $page = Yii::$app->request->get('page', 1);

        // Continue with patient list retrieval
        $searchModel = new PatientSearch();
        $searchModel->phone = $phone;
        $searchModel->name = $name;
        $searchModel->status_id = $status_id;
        $searchModel->polyclinic_id = $polyclinic_id;
        $searchModel->treatment_id = $treatment_id;
        $searchModel->form_disease_id = $form_disease_id;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        // Apply the filter for name, phone, status_id, polyclinic_id, treatment_id, form_disease_id
        $dataProvider->query->andFilterWhere(['like', 'name', $name]);
        $dataProvider->query->andFilterWhere(['like', 'phone', $phone]);
        $dataProvider->query->andFilterWhere(['status_id' => $status_id]);
        $dataProvider->query->andFilterWhere(['polyclinic_id' => $polyclinic_id]);
        $dataProvider->query->andFilterWhere(['treatment_id' => $treatment_id]);
        $dataProvider->query->andFilterWhere(['form_disease_id' => $form_disease_id]);

        // Set the pagination parameters
        $dataProvider->pagination->pageSize = 20; // Change the page size to desired value
        $dataProvider->pagination->page = $page - 1; // Decrement page by 1 to match Yii's zero-based page indexing

        Yii::$app->response->format = Response::FORMAT_JSON;

        return [
            'patients' => $dataProvider->getModels(),
            'totalCount' => $dataProvider->getTotalCount(),
        ];
    }


    public function actionCreatePatient()
    {
        Yii::$app->response->format = Response::FORMAT_JSON;
        // Retrieve the auth_cookie value from the request header
        $authCookie = Yii::$app->request->cookies->getValue('auth_cookie');

        // Get the authKey from the request
        $authKey = Yii::$app->request->get('authKey');

        if (!empty($authCookie) || !empty($authKey)) {
            // Check if authKey is provided and find the user by authKey in the User model
            if (!empty($authKey)) {
                $user = User::find()->where(['auth_key' => $authKey])->one();

                if (!$user || $user->auth_key !== $authKey) {
                    // Return an error response if authKey is invalid
                    Yii::$app->response->setStatusCode(401);
                    Yii::$app->response->format = Response::FORMAT_JSON;
                    return [
                        'error' => 'Unauthorized. Invalid auth key.',
                    ];
                }
            }


            $model = new Patient();

            $name = $model->name = Yii::$app->request->post('name');
            $phone = $model->phone = Yii::$app->request->post('phone');
            $status_id = $model->status_id = Yii::$app->request->post('status_id');
            $polyclinic_id = $model->polyclinic_id = Yii::$app->request->post('polyclinic_id');
            $treatment_id = $model->treatment_id = Yii::$app->request->post('treatment_id');
            $form_disease_id = $model->form_disease_id = Yii::$app->request->post('form_disease_id');
            $birthday = $model->birthday = Yii::$app->request->post('birthday');
            $created = $model->created = date('Y-m-d H:i:s');
            $updated = $model->updated = Yii::$app->request->post('updated');
            $recovery_date = $model->recovery_date = Yii::$app->request->post('recovery_date');
            $analysis_date = $model->analysis_date = Yii::$app->request->post('analysis_date');

            if (empty($name)) {
                Yii::$app->response->setStatusCode(400);
                return [
                    'status' => 'error',
                    'message' => 'Name parameter is required.'
                ];
            }

            // Check if phone is filled
            if (empty($phone)) {
                Yii::$app->response->setStatusCode(400);
                return [
                    'status' => 'error',
                    'message' => 'Phone parameter is required.'
                ];
            }

            // Check if status_id is filled
            if (empty($status_id)) {
                Yii::$app->response->setStatusCode(400);
                return [
                    'status' => 'error',
                    'message' => 'Status ID parameter is required.'
                ];
            }

            // Check if polyclinic_id is filled
            if (empty($polyclinic_id)) {
                Yii::$app->response->setStatusCode(400);
                return [
                    'status' => 'error',
                    'message' => 'Polyclinic ID parameter is required.'
                ];
            }

            // Check if treatment_id is filled
            if (empty($treatment_id)) {
                Yii::$app->response->setStatusCode(400);
                return [
                    'status' => 'error',
                    'message' => 'Treatment ID parameter is required.'
                ];
            }

            // Check if form_disease_id is filled
            if (empty($form_disease_id)) {
                Yii::$app->response->setStatusCode(400);
                return [
                    'status' => 'error',
                    'message' => 'Form Disease ID parameter is required.'
                ];
            }

            // Check if birthday is filled
            if (empty($birthday)) {
                Yii::$app->response->setStatusCode(400);
                return [
                    'status' => 'error',
                    'message' => 'Birthday parameter is required.'
                ];
            }


            // Check if updated is filled
            if (empty($updated)) {
                Yii::$app->response->setStatusCode(400);
                return [
                    'status' => 'error',
                    'message' => 'Updated parameter is required.'
                ];
            }
            if (empty($recovery_date)) {
                Yii::$app->response->setStatusCode(400);
                return [
                    'status' => 'error',
                    'message' => 'recovery_date parameter is required.'
                ];
            }
            if (empty($analysis_date)) {
                Yii::$app->response->setStatusCode(400);
                return [
                    'status' => 'error',
                    'message' => 'analysis_date parameter is required.'
                ];
            }

            if (empty($model->diagnosis_date) || $model->diagnosis_date == '0000-00-00') {
                // Set diagnosis_date to a valid datetime value, e.g., current date and time
                $model->diagnosis_date = date('Y-m-d H:i:s');
            }

            // Set the created_by field to the user's id
            $model->created_by = $user->id; // Assuming 'id' is the primary key field in the user table


            if ($model->validate() && $model->save()) {
                // Return success response with created user ID
                Yii::$app->response->setStatusCode(201);
                return [
                    'status' => 'success',
                    'user_id' => $model->id,
                ];
            } else {
                // Return error response with validation errors
                Yii::$app->response->setStatusCode(400);
                return [
                    'status' => 'error',
                    'errors' => $model->errors,
                ];
            }
        } else {
            // Return error response if authKey or authCookie is not provided
            Yii::$app->response->setStatusCode(401);
            return [
                'error' => 'Unauthorized. Missing auth key or auth cookie.',
            ];
        }
    }


}

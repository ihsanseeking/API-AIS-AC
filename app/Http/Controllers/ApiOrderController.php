<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;
		use Curl;
define('FIREBASE_API_KEY', 'AAAAY6M1xWk:APA91bGPyB7pEdVkqk6UCT4dEqqbT7rAGgmWyGxHxlv1ZZcq3NkraLMlZNZLo0sxwirEipUOrfwNrb5iLCfEpM-WD1yhuA6-WzsG8saqpVr125dHndOcJm6EPuwV7QmsEB5wiyvu2Ohf');
		class ApiOrderController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {
				$this->table       = "order";
				$this->permalink   = "order";
				$this->method_type = "post";
		    }


		    public function hook_before(&$postdata) {


		        //This method will be execute before run the main process
				$res = array();
				$payload = array();
				$payload['team'] = 'India';
				$payload['score'] = '5.6';
				$res['data']['title'] = "Pesanan diterima";
				$res['data']['is_background'] = false;
				$res['data']['message'] = 'klik untuk ditel';
				$res['data']['image'] = 'https://zestblog.files.wordpress.com/2008/03/118.jpg';
				$res['data']['payload'] = $payload;
				$res['data']['timestamp'] = date('Y-m-d G:i:s');
				$res['data']['nama'] = "Sukiyem";
				$res['data']['total'] = "540000";
				$res['data']['lama_perjalanan'] = "2";
				// echo "customer id ".$postdata['customer_id'];
				if ($postdata['customer_id'] == 2){
					//echo "dikirim ke e91yJPQy31A:APA91bETqSZrcWT2c1NB__xY8_cLWS0tAyIfPxH8IUg-jKT7u8L6HhdQyUJ1k1Iy8eRrPFnutsEmyvUDS2MaTv6LK0uN4yLXeIWDxye7bD8vhdL7I2jEj3Q_clbbMGd9swiflCq6kNy8";
					$res['data']['nama'] = "Sukiyem";
					// $fields = array(
					// 	'to' => 'e91yJPQy31A:APA91bETqSZrcWT2c1NB__xY8_cLWS0tAyIfPxH8IUg-jKT7u8L6HhdQyUJ1k1Iy8eRrPFnutsEmyvUDS2MaTv6LK0uN4yLXeIWDxye7bD8vhdL7I2jEj3Q_clbbMGd9swiflCq6kNy8' ,
					// 	'data' => $res,
					// );
				} else {
					$res['data']['nama'] = "sukijo";
					// $fields = array(
					// 	'to' => 'cBaiH5c_vR4:APA91bHqF_Dtiznd-PUYZPgwfwbMY4jxSHD3LrSuHw2Z0shbhFrY4wPq2xiWhEyWxIy-H3tITKs6NPLaLSU0Jyn6UONOywW-PvEXfUbrlSbhWW-Rg70CJpNFCqd9SyEopbKE43MGws90' ,
					// 	'data' => $res,
					// );
				}
				$fields = array(
					'to' => '/topics/global' ,
					'data' => $res,
				);

				//
				// $url = $curl->buildUrl('https://fcm.googleapis.com/fcm/send', ['s' => 'curl']);
				// $request = $curl->newRequest('post', $url, json_encode($fields))
				// 	->setHeader('Authorization: key=', FIREBASE_API_KEY)
				// 	->setHeader('Content-Type: application/json')
				// 	->setOption(CURLOPT_RETURNTRANSFER, true)
				// 	->setOption(CURLOPT_SSL_VERIFYPEER, false);
				//
				// $response = $request->send();
				// echo FIREBASE_API_KEY;
				$headers = array(
					'Authorization: key=' . FIREBASE_API_KEY,
					'Content-Type: application/json'
				);
				$ch = curl_init();
				$url = 'https://fcm.googleapis.com/fcm/send';
				curl_setopt($ch, CURLOPT_URL, $url);

				curl_setopt($ch, CURLOPT_POST, true);
				curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

				// Disabling SSL Certificate support temporarly
				curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

				curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
				//echo json_encode($fields);
				// Execute post
				$result = curl_exec($ch);
				if ($result === FALSE) {
					die('Curl failed: ' . curl_error($ch));
				}
				//echo $result;

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
				if ($postdata->customer_id == 1 ){

				} else {

				}

		    }

		}

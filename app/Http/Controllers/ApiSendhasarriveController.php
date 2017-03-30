<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiSendhasarriveController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "order";        
				$this->permalink   = "sendhasarrive";    
				$this->method_type = "get";    
		    }
			
			

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
				$id = $postdata['id'];
				$orders = DB::table('order')->where('id', '=', $postdata['id'])->get();
				$customers = DB::table('customer')->where('id', '=', $postdata['id_customer'])->get();
				
				$config['content'] = "Customer Belum Mendapat Bengkel $result ";

				//$config['to'] = CRUDBooster::adminPath('customer/detail/'.$postdata['id_customer']);

				$config['id_cms_users'] = [2];
		    
				CRUDBooster::sendNotification($config);

			}

		}
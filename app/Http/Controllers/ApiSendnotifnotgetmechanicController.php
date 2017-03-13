<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiSendnotifnotgetmechanicController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {
				$this->table       = "order";
				$this->permalink   = "sendnotifnotgetmechanic";
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

				$config=[];
				$config['content'] = "adaw";
				$config['to'] = "adaw.com";
				$config['id_cms_users'] = [1];
				$test = CRUDBooster::sendNotification($config);
		    }

		}

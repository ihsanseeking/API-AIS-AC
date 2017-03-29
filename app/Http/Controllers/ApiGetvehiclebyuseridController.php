<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiGetvehiclebyuseridController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "vehicle";        
				$this->permalink   = "getvehiclebyuserid";    
				$this->method_type = "post";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
				$vehicleType = DB::table('ref_vehicle_type')->where('id', '=', $result['ref_vehicle_type_id'])->get();
				$vehicleBrand = DB::table('ref_brand')->where('id', '=', $vehicleType{0}->ref_brand_id)->get();
				
				$result['wheel'] = $vehicleType{0}->wheel;
				$result['ref_brand_id'] = $vehicleBrand{0}->id;
				$result['name'] = $vehicleType{0}->type;
				$result['brand'] = $vehicleBrand{0}->name;
		    }

		}
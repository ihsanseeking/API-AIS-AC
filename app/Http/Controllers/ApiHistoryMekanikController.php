<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiHistoryMekanikController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "order";        
				$this->permalink   = "history_mekanik";    
				$this->method_type = "get";    
		    }
			
			//$bengkel_id = $postdata['bengkel_id'];

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
				
				//$bengkel_id = $postdata['bengkel_id'];
				//$data_bengkel = DB::table('bengkel')->where('id', '=', $postdata['bengkel_id'])->get();
				
		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query
				//	$query->join('customer','order.customer_id','customer.id');
				$query->join('service','order.ref_service_id','service.id');
				$query->join('bengkel','service.bengkel_id','bengkel.id');
				$query->join('ref_service_type','service.ref_service_id','ref_service_type.id');
				$data_bengkel = DB::table('bengkel')->where('id', '=', $postdata['bengkel_id'])->get();
				//$query->where('bengkel.id',$postdata['bengkel_id']);
				//$query->where('invoice.status','Lunas');
		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
				//DB::table('bengkel')->whereRaw
				$data_bengkel = DB::table('bengkel')->where('id', '=', $postdata['bengkel_id'])->get();
				//DB::table('bengkel')
					//->whereExists(function ($query) {
					//$query->select(DB::raw(1))
                   //   ->from('orders')
                   //   ->whereRaw('orders.user_id = users.id');
					//})
					//->get();
				//$id = $postdata['bengkel_id'];
				
				$result['data']['bengkel_id'] = $data_bengkel;
				
		    }


		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
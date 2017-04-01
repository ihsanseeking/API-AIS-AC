<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiReviewBengkelController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "review";        
				$this->permalink   = "review_bengkel";    
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
				$bengkel_id = $postdata['bengkel_id'];
				
				$review = DB::table('review')
					->select(
						DB::raw('(sum(penilaian)/COUNT(penilaian)) as "rating"'), 
						DB::raw('COUNT(penilaian) as "post"')
					)
					->where('review.bengkel_id', '=', $bengkel_id)->first();
					
					$result['data']=$review;
		    }

		}
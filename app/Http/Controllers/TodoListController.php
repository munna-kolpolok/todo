<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests;
use Auth;
use DB;
use Lang;
use Session;
use Validator;

use App\Models\Work;

class TodoListController extends Controller
{
	
	public function __construct() {
	}
	
	/**
	 * Display a listing of the Accounts.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index()
	{
		$works=Work::orderby('id','desc')->get();
		return View('welcome',compact('works'));
	}

	/**
	 * Show the form for creating a new account.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created account in database.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request)
	{
		//print_r($request->all());die();
		Work::create($request->all());
		return redirect()->back();
	}
	public function status($status,$id)
	{
		$work=Work::find($id);
		$work->status=$status;
		$work->save();
		return redirect()->back();
	}


}

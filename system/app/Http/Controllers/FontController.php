<?php

namespace App\Http\Controllers;

class FontController extends Controller
{
    function showabout()
    {
        return view('fontend.about');
    }

    function showlogin()
    {
        return view('fontend.login');
    }


    function showcart()
    {
        return view('fontend.cart');
    }


    function showcheckout()
    {
        return view('fontend.checkout');
    }


    function showsingle()
    {
        return view('fontend.single');
    }

    function showcontact()
    {
        return view('fontend.contact');
    }


    function showhome()
    {
        return view('fontend.home');
    }

    function showshop()
    {
        return view('fontend.shop');
    }
}

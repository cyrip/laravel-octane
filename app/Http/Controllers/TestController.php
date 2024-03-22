<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Http;

class TestController extends Controller
{
    public function index(): JsonResponse
    {
        return response()->json(['message' => 'Hello World!'],200);
    }
}

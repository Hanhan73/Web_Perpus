<?php

namespace App\Http\Controllers;

use App\Mail\AttachmentMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class emailCOntroller extends Controller
{
    public function email()
    {
        Mail::to('farhanmuzhaffar@gmail.com')->send(new AttachmentMail);
    }
}

<!DOCTYPE html>

<html lang="en">
<head>
@extends('component.login')
@include('component.head')
</head>  

<body class="hold-transition sidebar-mini">
<div class="wrapper">

@include('component.navbar')
@include('component.sidebaruser')

  <div class="content-wrapper">
    <h1 class="m-10 p-100" style="text-align: center;">Selamat Datang</h1>
  </div>
@include('component.footer')  
</div>


@include('component.script')
</body>
</html>

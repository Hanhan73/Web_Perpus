<!DOCTYPE html>

<html lang="en">
<head>
 @include('component.head')
 @extends('component.login')
</head>  

<body class="hold-transition sidebar-mini">
<div class="wrapper">

@include('component.navbar')
@include('component.sidebar')

  <div class="content-wrapper">
      <h1 class="m-10 p-100" style="text-align: center;">Selamat Datang Admin</h1>
  </div>  

</div>
  @include('component.footer')  

@include('component.script')
</body>
</html>

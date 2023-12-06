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
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Data User</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('admin.home')}}">Home</a></li>
              <li class="breadcrumb-item active">Data User</li>
            </ol>
          </div>
        </div>
      </div>
    </div>

    <div class="content">
      <div class="card card-info card-outline">

            <div class="card-body">
            <table class="table table-bordered">
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                    </tr>
                    @foreach ($dataUser as $item)
                    <tr>
                      <td>{{$item->name}}</td>
                        <td>{{$item->email}}</td>
                    </tr>
                    @endforeach
                        </table>
            </div>
            <div class="card-footer">
                {{$dataUser->links('pagination::bootstrap-4')}}
            </div>
      </div>
  </div>


@include('component.footer')

@include('component.script')
@include('sweetalert::alert')
</body>
</html>

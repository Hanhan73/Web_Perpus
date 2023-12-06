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
            <h1 class="m-0">Peminjaman</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('admin.home')}}">Home</a></li>
              <li class="breadcrumb-item active">Peminjaman</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
      <div class="card card-info card-outline">
            <div class="card-body">
            <table class="table table-bordered">
                    <tr>
                        <th>Peminjam</th>
                        <th>Judul</th>
                        <th>Approve?</th>
                    </tr>
                    @foreach ($pinjam as $item)
                    <tr>
                      <td>{{$item->nama_peminjam}}</td>
                        <td>{{$item->judul_buku}}</td>
                        @if ($item->approve==Null)
                        <td><a href="#">Approve</a><a href="#">Reject</a></td>
                        @endif
                        
                    </tr>
                    @endforeach
                        </table>
            </div>
            <div class="card-footer">
                {{$pinjam->links('pagination::bootstrap-4')}}
            </div>
  </div>

@include('component.footer')
@include('component.script')
@include('sweetalert::alert')
</body>
</html>

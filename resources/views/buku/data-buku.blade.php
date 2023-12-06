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
            <h1 class="m-0">Data Buku</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('admin.home')}}">Home</a></li>
              <li class="breadcrumb-item active">Data Buku</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
    <div class="content">
      <div class="card card-info card-outline">
        <div class="form-search" style="float: right;">
          <form action="{{route('search-buku')}}" method="get">
            <div class="form-group" style="display: flex">
              <input type="text" name="search_name" class="form-control" placeholder="Cari disini..">
              <button type="submit" class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i></button>
              <a href="{{ route('data-buku') }}" class="btn btn-primary"><i class="fa fa-xing" aria-hidden="true"></i></a>
            </div>
          </form>
        </div>
            <div class="card-header">
                <div class="card-tools">
                <a href="{{route('create-buku')}}" class="btn btn-success">Tambah Buku <i class="fas fa-plus-square"></i></a>
                </div>
            </div>

            <div class="card-body">
            <table class="table table-bordered">
            <tr>
                <th>No.</th>
                <th>Judul</th>
                <th>Penulis</th>
                <th>Penerbit</th>
                <th>Kategori</th>
                <th>ISBN</th>
                <th>Tahun Terbit</th>
                <th>Deskripsi</th>
                <th>Stok</th>
                <th>Aksi</th>
            </tr>
            <?php $i = ($dataBuku->currentpage()-1)* $dataBuku->perpage()+1;?>
            @foreach ($dataBuku as $item)
            <tr>
                <td>{{ $i++; }}</td>
                <td>{{$item->judul}}</td>
                <td>{{$item->penulis}}</td>
                <td>{{$item->penerbit}}</td>
                <td>{{$item->kategori}}</td>
                <td>{{$item->ISBN}}</td>
                <td>{{$item->tahun_terbit}}</td>
                <td>{{$item->deskripsi}}</td>
                <td>{{$item->stok}}</td>
                <td><a href="{{url('edit-buku', $item->id) }}"><i class="fas fa-edit"></i></a> | 
                    <a href="{{url('delete-buku', $item->id) }}"><i class="fas fa-trash" style="color: red"></i></a></td>
            </tr>
            @endforeach
                </table>
            </div>
            <div class="card-footer">
                {{$dataBuku->links('pagination::bootstrap-4')}}
            </div>
      </div>
  </div>
@include('component.footer')
@include('component.script')
@include('sweetalert::alert')
</body>
</html>

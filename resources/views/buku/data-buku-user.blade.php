<!DOCTYPE html>
<html lang="en">
<head>
  @include('component.head')
  @extends('component.login')
</head>

<body class="hold-transition sidebar-mini">
<div class="wrapper">
  @include('component.navbar')
  @include('component.sidebaruser')

  <div class="content-wrapper">
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Semua Buku</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Data Buku</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
    <div class="content">
      <div class="card card-info card-outline">
        <div class="form-search" style="float: right;">
          <form action="{{route('search-buku-user')}}" method="get">
            <div class="form-group" style="display: flex">
              <input type="text" name="search_name" class="form-control" placeholder="Cari disini..">
              <button type="submit" class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i></button>
              <a href="{{ route('data-buku-user') }}" class="btn btn-primary"><i class="fa fa-xing" aria-hidden="true"></i></a>
            </div>
          </form>
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
                <td>
                  @if (in_array($item->id,$listbuku))
                    <a href="{{url('returnBook-buku', $item->id) }}"><i class="fas fa-book">Kembalikan Buku</i></a>
                  @elseif($item->stok <= 0)
                  <p>Tidak Tersedia</p> 
                    @else
                    <a href="{{url('changeStock-buku', $item->id) }}"><i class="fas fa-book"> Pinjam Buku</i></a>
                  @endif
                  </td>
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

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
              <h1 class="m-0">Tambah Buku</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item">Data Buku</li>
                <li class="breadcrumb-item active">Tambah Buku</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
      <div class="content">
        <div class="card card-info card-outline">
        <div class="card-header">
          <h3>Masukkan Data Buku Baru</h3>
        </div>
          <div class="card-body">
            <form action="{{route('simpan-buku')}}" method="post" enctype="multipart/form-data">
              {{ csrf_field() }}
              <div class="form-group">
                <input type="text" name="judul" id="judul" class="form-control" placeholder="Judul Buku">
              </div>
              <div class="form-group">
                <input type="text" name="penulis" id="penulis" class="form-control" placeholder="Penulis Buku">
              </div>
              <div class="form-group">
                <input type="text" name="penerbit" id="penerbit" class="form-control" placeholder="Penerbit Buku">
              </div>
              <div class="form-group">
                <input type="text" name="kategori" id="kategori" class="form-control" placeholder="Kategori Buku">
              </div>
              <div class="form-group">
                <input type="text" name="ISBN" id="ISBN" class="form-control" placeholder="ISBN">
              </div>
              <div class="form-group">
                <input type="number" name="tahun_terbit" id="tahun_terbit" class="form-control" placeholder="Tahun Terbit">
              </div>
              <div class="form-group">
                <textarea name="deskripsi" id="deskripsi" class="form-control" placeholder="Deskripsi"></textarea>
              </div>
              <div class="form-group">
                <input type="number" name="stok" id="stok" class="form-control" placeholder="Stok">
              </div>
              <div class="form-group">

                <button type="submit" class="btn btn-success">Simpan Buku</button>
              </div>
            </form>
          </div>

        </div>
      </div>
      @include('component.footer')
      @include('component.script')
</body>

</html>
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
            <h1 class="m-0">Data Log Peminjaman</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('admin.home')}}">Home</a></li>
              <li class="breadcrumb-item active">Data Log</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
    <div class="content">
      <a href="{{route('generatepdf')}}">
        <button class="btn btn-primary"><i class="fa fa-file-pdf-o" aria-hidden="true"> Kirim Laporan</i></button>
      </a>
      <div class="card card-info card-outline">
            <div class="card-body">
            <table class="table table-bordered">
                    <tr>
                        <th>Peminjam</th>
                        <th>Judul</th>
                        <th>Tanggal Meminjam</th>
                        <th>Tanggal Mengembalikan</th>
                        <th>Approve?</th>
                    </tr>
                    @foreach ($dataLog as $item)
                    <tr>
                      <td>{{$item->nama_peminjam}}</td>
                        <td>{{$item->judul_buku}}</td>
                        <td>{{$item->tgl_pinjam}}</td>
                        @if ($item->tgl_kembali==Null)
                        <td>Belum Dikembalikan</td>
                          @else
                          <td>{{$item->tgl_kembali}}</td>
                        @endif
                          @if ($item->approve==1)
                            <td>Disetujui</td>
                            @elseif ($item->approve==2)
                            <td>Ditolak</td>
                        @endif
                        
                    </tr>
                    @endforeach
                        </table>
            </div>
            <div class="card-footer">
                {{$dataLog->links('pagination::bootstrap-4')}}
            </div>
      </div>
  </div>

@include('component.footer')
@include('component.script')
@include('sweetalert::alert')
</body>
</html>

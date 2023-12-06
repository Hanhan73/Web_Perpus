<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan Log Peminjaman</title>
</head>
<body class="hold-transition sidebar-mini">
<div class="main-panel">
    <div class="content">
        <div class="page-inner">
            <div class="page-header">
                <h4 style="text-align: center">Laporan Log Peminjaman</h4>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class=" display table table-striped table-hover" border="0.5">
                                <tr>
                                    <th>Peminjam</th>
                                    <th>Judul</th>
                                    <th>Tanggal Pinjam</th>
                                    <th>Tanggal Kembali</th>
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
                                </tr>
                                @endforeach
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@include('component.script')
@include('sweetalert::alert')
</body>
</html>

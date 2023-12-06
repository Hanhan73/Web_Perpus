<?php

namespace App\Http\Controllers;

use App\Models\Buku;
use App\Models\log_peminjaman;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PDF;

class BukuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $dataBuku = Buku::paginate(5);
        return view('buku.data-buku', compact('dataBuku'));
    }

    public function indexuser()
    {
        $dataBuku = Buku::paginate(5);
        $bukuUser = auth::user()->id;
        $bukuUser = User::with(['logPeminjaman' => function ($q) {
            $q->whereNull('tgl_kembali');
        }])->where('id', auth::user()->id)->first();
        // dd($bukuUser);
        $listbuku = [];
        foreach ($bukuUser->logPeminjaman as $key => $value) {
            array_push($listbuku, $value['buku_id']);
        }

        // $bukuPinjam = log_peminjaman::where('user_id', auth::user()->id);
        // dd($bukuPinjam);
        // dd($listbuku);
        return view('buku.data-buku-user', compact('dataBuku', 'listbuku'));
    }

    public function indexLog()
    {
        $dataLog = log_peminjaman::paginate(5);
        return view('buku.data-log', compact('dataLog'));
    }
    public function indexDTUser()
    {
        $dataUser = User::paginate(5);
        return view('buku.data-user', compact('dataUser'));
    }

    public function pinjam()
    {
        $pinjam = log_peminjaman::with(["buku", "user"])->whereNull("approve")->paginate(5);

        return view('buku.peminjaman', compact('pinjam'));
    }

    public function setuju()
    {
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('buku.create-buku');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Buku::create([
            'judul' => $request->judul,
            'penulis' => $request->penulis,
            'penerbit' => $request->penerbit,
            'kategori' => $request->kategori,
            'ISBN' => $request->ISBN,
            'tahun_terbit' => $request->tahun_terbit,
            'deskripsi' => $request->deskripsi,
            'stok' => $request->stok,
        ]);


        return redirect('data-buku')->with('toast_success', 'Data Berhasil Ditambahkan!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $buku = Buku::findorfail($id);
        return view('buku.edit-buku', compact('buku'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $buku = Buku::findorfail($id);
        $buku->update($request->all());
        return redirect('data-buku')->with('toast_success', 'Data Berhasil Diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $buku = Buku::findorfail($id);
        $buku->delete();
        return back()->with('info', 'Data Berhasil Dihapus!');
    }

    public function changeStock($id)
    {
        $userid = auth::user()->id;
        $user = User::find($userid);
        // dd(auth::user()->id);
        $buku = Buku::find($id);
        // dd($id);
        Buku::find($id)->decrement('stok');

        log_peminjaman::create([
            'nama_peminjam' => $user->name,
            'judul_buku' => $buku->judul,
            'tgl_pinjam' => now(),
            'user_id' => $user->id,
            'buku_id' => $buku->id,
        ]);

        return back()->with('info', 'Buku Berhasil Dipinjam!');
    }

    public function returnBook($id)
    {
        $userid = auth::user()->id;
        $user = User::find($userid);
        $buku = Buku::find($id);
        Buku::find($id)->increment('stok');


        log_peminjaman::where('buku_id', $buku->id)
            ->where('user_id', $userid)
            ->whereNull('tgl_kembali')
            ->update([
                'tgl_kembali' => now(),
            ]);

        return back()->with('info', 'Buku Berhasil Dikembalikan!');
    }

    public function search(Request $request)
    {
        $get_name = $request->search_name;
        $dataBuku = Buku::where('judul', "LIKE", '%' . $get_name . '%')->paginate(5);
        return view('buku.data-buku', compact('dataBuku'));
    }

    public function searchBukuUser(Request $request)
    {
        $get_name = $request->search_name;
        $dataBuku = Buku::where('judul', "LIKE", '%' . $get_name . '%')->paginate(5);
        $bukuUser = auth::user()->id;
        $bukuUser = User::with(['logPeminjaman' => function ($q) {
            $q->whereNull('tgl_kembali');
        }])->where('id', auth::user()->id)->first();
        // dd($bukuUser);
        $listbuku = [];
        foreach ($bukuUser->logPeminjaman as $key => $value) {
            array_push($listbuku, $value['buku_id']);
        }

        return view('buku.data-buku-user', compact('dataBuku', 'listbuku'));
    }


    public function generatepdf()
    {
        $dataLog = log_peminjaman::all();
        $userid = auth::user()->id;
        $user = User::find($userid);
        $pdf = PDF::loadview('buku.data-pdf', ['dataLog' => $dataLog])->setpaper('A4', 'portait')->setOptions(['defaultFont' => 'sans-serif']);
        return $pdf->download('Laporan' . $user->name . now() . '.pdf');
    }
}

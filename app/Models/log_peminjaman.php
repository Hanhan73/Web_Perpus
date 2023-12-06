<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class log_peminjaman extends Model
{
    protected $table = "log_peminjaman";
    protected $primarykey = "id";
    protected $fillable = [
        'id', 'nama_peminjam', 'judul_buku', 'tgl_pinjam', 'user_id', 'buku_id'
    ];

    public function buku()
    {
        return $this->belongsTo('\App\Models\Buku', 'buku_id');
    }
    public function user()
    {
        return $this->belongsTo('\App\Models\User', 'user_id');
    }
}

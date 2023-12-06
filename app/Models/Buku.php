<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Buku extends Model
{
    protected $table = "buku";
    protected $primarykey = "id";
    protected $fillable = [
        'id', 'cover', 'judul', 'penulis', 'penerbit', 'kategori',  'ISBN', 'tahun_terbit', 'deskripsi', 'stok',
    ];

    public function logPeminjaman()
    {
        return $this->hasMany('\App\Models\log_peminjaman');
    }
}

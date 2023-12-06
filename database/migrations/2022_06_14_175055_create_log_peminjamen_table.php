<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('log_peminjaman', function (Blueprint $table) {
            $table->id();
            $table->string('nama_peminjam', 1000);
            $table->string('judul_buku', 1000);
            $table->date('tgl_pinjam');
            $table->date('tgl_kembali');
            $table->integer('user_id');
            $table->integer('buku_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('log_peminjaman');
    }
};

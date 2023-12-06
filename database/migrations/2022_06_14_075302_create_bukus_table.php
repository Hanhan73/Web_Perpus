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
        Schema::create('buku', function (Blueprint $table) {
            $table->id();
            $table->string('judul', 1000);
            $table->string('penulis', 1000);
            $table->string('penerbit', 1000);
            $table->string('kategori', 1000);
            $table->string('ISBN', 1000);
            $table->integer('tahun_terbit');
            $table->integer('stok');
            $table->text('deskripsi');
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
        Schema::dropIfExists('buku');
    }
};

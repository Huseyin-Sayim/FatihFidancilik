<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SettingsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('settings')->insert([
            [
                "name" => "Fatih Fidancılık",
                "key" => "url",
                "value" => "http://127.0.0.1:8000/"
            ],
            [
                "name" => "Hakkımızda",
                "key" => "about",
                "value" => "1992 yılında fidan üretim ve alım satım alanında faaliyet göstermeye başlayan firmamız İzmir-İstanbul yolu üzerinde Manisa ili  Akhisar ilçesindedir.İklim ve bitki örtüsü fidan üretim ve alım satımına elverişlidir.

Firmamız yıllık fidan üretimi miktarını her geçen gün artırarak faaliyet alanını genişletmeye,fidan çeşitliliğinin ve kalitesinin günümüzde kurulan modern bahçe tesislerine uygun anaç ve çeşitlerden seçerek üretimine devam etmektedir"
            ],
            [
                "name" => "Konum",
                "key" => "maps",
                "value" => "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3103.2002640588016!2d27.833398911310795!3d38.9422530715965!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14b9d228a0cade63%3A0x5bb355b7df33f0d3!2zRmF0aWggRmlkYW5jxLFsxLFr!5e0!3m2!1str!2str!4v1734953468241!5m2!1str!2str"
            ],
            [
                "name" => "Adres",
                "key" => "address",
                "value" => "Ulucami Mah. No:11 (Novada Karşısı)"
            ],
            [
                "name" => "Telefon",
                "key" => "phone",
                "value" => "0553 623 09 23"
            ],
            [
                "name" => "Telefon",
                "key" => "phone",
                "value" => "0532 624 16 14"
            ]
        ]);
    }
}

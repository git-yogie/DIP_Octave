clc;

%baca gambar yang akan dijadikan input
gambar = imread('1.tiff');
%pesan yang akan disembunyikan dalam gambar
pesan = "halo nama saya yogie dari prodi pkom";
%nama file output
fileName = "justStego.png";
%jalankan fungsi dan masukkan parameter
HideText(gambar,pesan,fileName)

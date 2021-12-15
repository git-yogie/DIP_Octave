function ShowText(gambar,jumlah_karakter)
  baris = size(gambar, 1);
  baris = size(gambar, 2);

  panjang_pesan = jumlah_karakter * 8;
   
  counter = 1;
  for i = 1 : baris
      for j = 1 : baris
          if (counter <= panjang_pesan)
              extracted_bits(counter, 1) = mod(double(gambar(i, j)), 2);
              counter = counter + 1;
          end
      end
  end
  binValues = [ 128 64 32 16 8 4 2 1 ];
  binMatrix = reshape(extracted_bits, 8,
                    (panjang_pesan/8));
  textString = char(binValues*binMatrix);

  printf("isi Pesan : ")
  disp(textString);
endfunctions

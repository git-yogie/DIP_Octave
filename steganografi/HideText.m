function HideText(gambar,pesan,namaFile)
  
  pkg load image 
  input = gambar;
  input=imresize(input, [512 512]);
  len = length(pesan) * 8;

  nilai_ascii = uint8(pesan);
  bin_pesan = transpose(dec2bin(nilai_ascii, 8));
  bin_pesan = bin_pesan(:);
   

  N = length(bin_pesan);
  bin_num_pesan=str2num(bin_pesan);
   
  output = input;

  baris = size(input, 1);
  kolom = size(input, 2);
   
  embed_counter = 1;
  for i = 1 : baris
      for j = 1 : kolom
          if(embed_counter <= len) 
              LSB = mod(double(input(i, j)), 2);    
              temp = double(xor(LSB, bin_num_pesan(embed_counter)));
              output(i, j) = input(i, j)+temp;
              embed_counter = embed_counter+1;
          end
           
      end
  end
  imwrite(output, namaFile); 
  printf("proses Encode Selesai %d karakter berhasil di sematkan.!!",length(pesan))
endfunction

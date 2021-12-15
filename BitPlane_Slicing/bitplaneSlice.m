function bitplaneSlice(foto)
  pkg load image;
  bit1 = bitget(foto,1);
  imwrite(bit1,"bitPlaneEdited1.png");
  bit2 = bitget(foto,2);
  imwrite(bit2,"bitPlaneEdited2.png");
  bit3 = bitget(foto,3);
  imwrite(bit3,"bitPlaneEdited3.png");
  bit4 = bitget(foto,4);
  imwrite(bit4,"bitPlaneEdited4.png");
  bit5 = bitget(foto,5);
  imwrite(bit5,"bitPlaneEdited5.png");
  bit6 = bitget(foto,6);
  imwrite(bit6,"bitPlaneEdited6.png");
  bit7 = bitget(foto,7);
  imwrite(bit7,"bitPlaneEdited7.png");
  bit8 = bitget(foto,8);
  imwrite(bit8,"bitPlaneEdited8.png");
endfunction





function GetsomeBit(image,bit,fileName)
  pkg load communications;
  [baris,kolom] = size(image);
  result = zeros(baris,kolom);

  for i = 1:baris
    for j = 1:kolom
      num = image(i,j);
      binNum = de2bi(num,8);
      result(i,j) = binNum(bit);
    endfor
  endfor
    
  imwrite(result,fileName);
endfunction
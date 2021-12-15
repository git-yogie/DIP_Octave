pkg load communications;

image = imread("1.tiff");
[baris,kolom] = size(image);
bit = 1;


result = zeros(baris,kolom);

for i = 1:baris
  for j = 1:kolom
    num = image(i,j);
    binNum = de2bi(num,8);
    result(i,j) = binNum(bit);
  endfor
endfor
  
imwrite(result,"result.png");
AsilGoruntu = imread ( 'Fig0304(a)(breast_digital_Xray).tif' );
NegatifiAlinmisGoruntu = 255 - AsilGoruntu;
imshow(NegatifiAlinmisGoruntu);
title('Negatifi Alýnmýþ Görüntü');
figure

imshow(NegatifiAlinmisGoruntu);
yatayeksen = 315;
duseyeksen = 415;
r = 50; 

hold on;

teta = 0 : (2 * pi / 10000) : (2 * pi);
pline_x = r * cos(teta) + yatayeksen;
pline_y = r * sin(teta) + duseyeksen;
plot(pline_x, pline_y, 'r--', 'LineWidth', 0.05);  

hold off;
title('Negatif Görüntüde Çerçeveli Lezyon');
figure

A = imadjust(AsilGoruntu, [0.5 0.75], [0 1]);
imshow(A);
title('0.5-0.75 Aralýðýný Siyah Beyaz Skalaya Yayma');
figure

B = imadjust(NegatifiAlinmisGoruntu, [0.5 0.75 ], [0 1]);
imshow(B);
title('Figure 1 ve Figure 3 ün Karýþýmý');

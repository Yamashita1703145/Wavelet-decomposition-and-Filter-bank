function h=affiche(b)
%Affichage d'une image
%Display the image

if (size(b,3)==1)
%clf;
if ((b(1,1)==21) && (b(2,2)==21))
   h=image(b);
else
   h=imagesc(b);
end
colormap(gray);
else
   b=b-min(min(min(b)));
   b=b/max(max(max(b)));
   imagesc(b);
end
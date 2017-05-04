function map=create_gaussian(map_s,sigma,x,y,type)
%x=num(:,1)';
%y=num(:,2)';
%sigma=num(:,3)';
%type=num(:,4);
%map_s=xlsread('Book1.xlsx',2);
[m,n]=size(x);
map=zeros(map_s,map_s,3);
for i=1:n
    map(:,:,1)=map(:,:,1)+gauss(x(i),y(i),sigma(i),map_s,type(i));
%     if(type == 2)
%         %d=((x(i)-x(end)).^2+(y(i)-y(end)).^2);
%         map(:,:,1)=map(:,:,1)+gauss(x(i),y(i),sigma(i),map_s,type(i));
%     else
%         map(:,:,1)=map(:,:,1)+gauss(x(i),y(i),sigma(i),map_s,type(i));
%     end
end
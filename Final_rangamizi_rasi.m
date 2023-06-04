clc
clear
close all

a=[0    1    0    0    1    0    1    
1    0    0    0    0    1    1    
0    0    0    1    0    1    1    
0    0    1    0    1    0    0    
1    0    0    1    0    1    1    
0    1    1    0    1    0    0    
1    1    1    0    1    0    0 
];
% %input('  enter a =');
n=size(a,1);
m=perms([1:n]);
nn=1;
for i=1:size(m,1)
    for j=1:size(m,2)
        if j+1<=size(m,2)
            KK(nn,1)=m(i,j);
            KK(nn,2)=m(i,j+1);
        end
        nn=nn+1;
    end
    
end
aa=find(KK(:,1)==0);
KK(aa,:)=[];
KK = unique(KK,'rows');
K=1;
m1=sum(sum(a))/2;
m2=size(KK,1)/(2);
K=(n-(m2-m1)*(.0785*n^2-1.0640*n+3.9565));
K1=fix((n-(m2-m1)*(.0785*n^2-1.0640*n+3.9565)));
if K-K1>=.5
    K=K1+1
else
    K=K1
end





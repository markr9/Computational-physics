%Veff/R against r/a0 for l=0 to 4
l=0:1:4; %l qunatum#
Z=1; %H atom charge
r=0.2:0.01:25; %radius [a0]
i=1;
while i<6
    figure(1)
    V=(l(i)*(l(i)+1)./r.^2-2*Z./r)*1; %a=r/a0, V=Veff/R
    plot(r,V)
    hold on
    i=i+1;
end
xlabel('r/a0')
ylabel('Veff/R')
title('Effective potential for Z=1')
axis([0 25 -1 0.5]) %need only a small part of total plot
grid on
hold off
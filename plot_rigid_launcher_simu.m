figure; set(gcf,'color','white'); clf; 
x_label = 'Time (s)';

subplot(421);
plot(tt,y(:,6)*180/3.14); 
grid; ylabel('Angle of Attack (°)'); xlabel(x_label)
incmax = max(abs(y(:,6)))*180/3.14;
legend(['AoA max = ',num2str(incmax),' °']);

subplot(422);
plot(tt,y(:,8));
grid; ylabel('Wind (m/s)'); xlabel(x_label)

subplot(423);
plot(tt,y(:,5)*180/3.14);
grid; ylabel('Deflection angle (°)'); xlabel(x_label)

subplot(424);
plot(tt,y(:,2)*180/3.14);
grid; ylabel('Attitude angle(°)'); xlabel(x_label)

subplot(425);
plot(tt,y(:,4)*180/3.14);
grid; ylabel('Deflection rate (°/s)'); xlabel(x_label)

subplot(426);
plot(tt,y(:,1)*180/3.14);
grid; ylabel('Attitude rate (°/s)'); xlabel(x_label)

subplot(427)
plot(tt,y(:,7)*180/3.14);
grid; ylabel('Deflection consumption (°)'); xlabel(x_label)

subplot(428)
plot(tt,y(:,3));
grid; ylabel('Derivative of lateral position (m/s)'); xlabel(x_label)

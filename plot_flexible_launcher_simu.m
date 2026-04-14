% réponses temporelles linéaires
% ------------------------------
couleur = 'r';

figure; set(gcf,'color','white'); clf; 

subplot(521);
plot(tt,y(:,8)*180/3.14,couleur); 
grid; ylabel('Angle of Attack (°)'); xlabel(x_label)
incmax = max(abs(y(:,8)))*180/3.14;
legend(['AoA max = ',num2str(incmax),' °']);

subplot(522);
plot(tt,y(:,10),couleur);
grid; ylabel('Wind (m/s)'); xlabel(x_label)

subplot(523);
plot(tt,y(:,5)*180/3.14,couleur);
grid; ylabel('Deflection angle (°)'); xlabel(x_label)

subplot(524);
plot(tt,y(:,2)*180/3.14,couleur);
grid; ylabel('Attitude angle(°)'); xlabel(x_label)

subplot(525);
plot(tt,y(:,4)*180/3.14,couleur);
grid; ylabel('Deflection rate (°/s)'); xlabel(x_label)

subplot(526);
plot(tt,y(:,1)*180/3.14,couleur);
grid; ylabel('Attitude rate (°/s)'); xlabel(x_label)

subplot(527)
plot(tt,y(:,9)*180/3.14,couleur);
grid; ylabel('Deflection consumption (°)'); xlabel(x_label)

subplot(528)
plot(tt,y(:,3),couleur);
grid; ylabel('Derivative of lateral position (m/s)'); xlabel(x_label)

subplot(529);
plot(tt,y(:,12)*180/3.14,couleur);
grid; ylabel('Measured attitude angle (°)');xlabel(x_label)

subplot(5,2,10);
plot(tt,(y(:,2)-y(:,12)).*180/3.14,couleur);
grid; ylabel('\Theta - \Theta_m (deg)'); xlabel(x_label)

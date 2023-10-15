clear all;

clc;

global Quad;


flying_space;
plot_mars_uav;
mars_uav_parameters;



SimOut = sim('QuadrotorSimulink');

for S = 1 : 1 : size(SimOut,1)  
    
    Quad.X = X_out.signals.values(S);
    Quad.Y = Y_out.signals.values(S);
    Quad.Z = Z_out.signals.values(S);
    Quad.phi = Phi_out.signals.values(S);
    Quad.theta = Theta_out.signals.values(S);
    Quad.psi = Psi_out.signals.values(S);
  
    

        plot_quad         

        drawnow;
        
        
  
end



% figure();
% plot(SimOut,Z_out.signals.values)
% hold on;
% plot(SimOut,Z_desired.signals.values);
% title('Altitude');
% 
% 
% 
% figure();
% plot(SimOut,X_out.signals.values)
% hold on;
% plot(SimOut,X_desired.signals.values);
% title('X');
% 
% 
% figure();
% plot(SimOut,Y_out.signals.values)
% hold on;
% plot(SimOut,Y_desired.signals.values);
% title('Y');



% figure();
% plot(SimOut,Psi_out.signals.values)
% hold on;
% plot(SimOut,Psi_desired.signals.values);
% title('Psi');



figure();
grid on
plot3(X_out.signals.values,Y_out.signals.values,-Z_out.signals.values)
hold on
plot3(X_desired.signals.values,Y_desired.signals.values,-Z_desired.signals.values)
grid on
legend('PID response Mars UAV','Desired Square trajectory')
xlabel('x')
ylabel('y')
zlabel('Altitude')


% figure();
% plot(SimOut,X_out.signals.values)
% hold on
% 
% 
% plot(SimOut,Y_out.signals.values)
% 
% hold on
% plot(SimOut,Z_out.signals.values)
% %plot(SimOut,Y_desired.signals.values);
% 
% hold off



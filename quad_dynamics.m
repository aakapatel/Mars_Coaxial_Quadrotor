
function quad_dynamics
global Quad;



Quad.X_ddot = ([cos(Quad.phi)*sin(Quad.theta)*cos(Quad.psi)+sin(Quad.phi)*sin(Quad.psi)]*Quad.U1-Quad.Kdx*Quad.X_dot)/Quad.m;
Quad.Y_ddot = ([cos(Quad.phi)*sin(Quad.psi)*sin(Quad.theta)-cos(Quad.psi)*sin(Quad.phi)]*Quad.U1-Quad.Kdy*Quad.Y_dot)/Quad.m;
Quad.Z_ddot = ([cos(Quad.phi)*cos(Quad.theta)]*Quad.U1-Quad.Kdz*Quad.Z_dot)/Quad.m-Quad.g;

Quad.p_dot = (Quad.q*Quad.r*(Quad.Jy - Quad.Jz) - Quad.Jp*Quad.p*Quad.Obar + Quad.l*Quad.U2)/Quad.Jx;
Quad.q_dot = (Quad.p*Quad.r*(Quad.Jz - Quad.Jx) + Quad.Jp*Quad.q*Quad.Obar + Quad.l*Quad.U3)/Quad.Jy;
Quad.r_dot = (Quad.p*Quad.q*(Quad.Jx - Quad.Jy) + Quad.U4)/Quad.Jz;


Quad.phi_ddot = Quad.p_dot;
Quad.theta_ddot = Quad.q_dot;
Quad.psi_ddot = Quad.r_dot;

% Calculating the Z velocity & position
Quad.Z_dot = Quad.Z_ddot*Quad.Ts + Quad.Z_dot;
Quad.Z = Quad.Z_dot*Quad.Ts + Quad.Z;

% Calculating the X velocity & position
Quad.X_dot = Quad.X_ddot*Quad.Ts + Quad.X_dot;
Quad.X = Quad.X_dot*Quad.Ts + Quad.X;

% Calculating the Y velocity & position
Quad.Y_dot = Quad.Y_ddot*Quad.Ts + Quad.Y_dot;
Quad.Y = Quad.Y_dot*Quad.Ts + Quad.Y;

% Calculating angular velocity and position
Quad.phi_dot = Quad.phi_ddot*Quad.Ts + Quad.phi_dot;
Quad.phi = Quad.phi_dot*Quad.Ts + Quad.phi;

Quad.theta_dot = Quad.theta_ddot*Quad.Ts + Quad.theta_dot;
Quad.theta = Quad.theta_dot*Quad.Ts+Quad.theta;

Quad.psi_dot = Quad.psi_ddot*Quad.Ts + Quad.psi_dot;
Quad.psi = Quad.psi_dot*Quad.Ts+Quad.psi;


Quad.p = Quad.phi_dot;
Quad.q = Quad.theta_dot;
Quad.r = Quad.psi_dot;



% Plotting variables
Quad.Z_plot(Quad.counter) = Quad.Z;
Quad.Z_ref_plot(Quad.counter) = Quad.Z_des;

Quad.X_plot(Quad.counter) = Quad.X;
Quad.X_ref_plot(Quad.counter) = Quad.X_des;

Quad.Y_plot(Quad.counter) = Quad.Y;
Quad.Y_ref_plot(Quad.counter) = Quad.Y_des;

Quad.phi_plot(Quad.counter) = Quad.phi;
Quad.phi_ref_plot(Quad.counter) = Quad.phi_des;

Quad.theta_plot(Quad.counter) = Quad.theta;
Quad.theta_ref_plot(Quad.counter) = Quad.theta_des;

Quad.psi_plot(Quad.counter) = Quad.psi;
Quad.psi_ref_plot(Quad.counter) = Quad.psi_des;

Quad.counter = Quad.counter + 1;

end


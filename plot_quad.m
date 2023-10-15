

global Quad

%% Draw the arms and rotors
[Quad.Xtemp,Quad.Ytemp,Quad.Ztemp]=rotateBFtoGF(Quad.X_armX,Quad.X_armY,Quad.X_armZ,Quad.phi,Quad.theta,Quad.psi);
set(Quad.X_arm,'xdata',Quad.Xtemp+Quad.X,'ydata',-(Quad.Ytemp+Quad.Y),'zdata',-(Quad.Ztemp+Quad.Z))

[Quad.Xtemp,Quad.Ytemp,Quad.Ztemp]=rotateBFtoGF(Quad.Y_armX,Quad.Y_armY,Quad.Y_armZ,Quad.phi,Quad.theta,Quad.psi);
set(Quad.Y_arm,'xdata',Quad.Xtemp+Quad.X,'ydata',-(Quad.Ytemp+Quad.Y),'zdata',-(Quad.Ztemp+Quad.Z))

[Quad.Xtemp,Quad.Ytemp,Quad.Ztemp]=rotateBFtoGF(Quad.Motor1X,Quad.Motor1Y,Quad.Motor1Z,Quad.phi,Quad.theta,Quad.psi);
set(Quad.Motor1,'xdata',Quad.Xtemp+Quad.X,'ydata',-(Quad.Ytemp+Quad.Y),'zdata',-(Quad.Ztemp+Quad.Z-2*Quad.t))

[Quad.Xtemp,Quad.Ytemp,Quad.Ztemp]=rotateBFtoGF(Quad.Motor2X,Quad.Motor2Y,Quad.Motor2Z,Quad.phi,Quad.theta,Quad.psi);
set(Quad.Motor2,'xdata',Quad.Xtemp+Quad.X,'ydata',-(Quad.Ytemp+Quad.Y),'zdata',-(Quad.Ztemp+Quad.Z-2*Quad.t))

[Quad.Xtemp,Quad.Ytemp,Quad.Ztemp]=rotateBFtoGF(Quad.Motor3X,Quad.Motor3Y,Quad.Motor3Z,Quad.phi,Quad.theta,Quad.psi);
set(Quad.Motor3,'xdata',Quad.Xtemp+Quad.X,'ydata',-(Quad.Ytemp+Quad.Y),'zdata',-(Quad.Ztemp+Quad.Z-2*Quad.t))

[Quad.Xtemp,Quad.Ytemp,Quad.Ztemp]=rotateBFtoGF(Quad.Motor4X,Quad.Motor4Y,Quad.Motor4Z,Quad.phi,Quad.theta,Quad.psi);
set(Quad.Motor4,'xdata',Quad.Xtemp+Quad.X,'ydata',-(Quad.Ytemp+Quad.Y),'zdata',-(Quad.Ztemp+Quad.Z-2*Quad.t))


[Quad.Xtemp,Quad.Ytemp,Quad.Ztemp]=rotateBFtoGF(Quad.Motor1X,Quad.Motor1Y,3*Quad.Motor1Z,Quad.phi,Quad.theta,Quad.psi);
set(Quad.Motor5,'xdata',Quad.Xtemp+Quad.X,'ydata',-(Quad.Ytemp+Quad.Y),'zdata',-(Quad.Ztemp+Quad.Z-2*Quad.t))

[Quad.Xtemp,Quad.Ytemp,Quad.Ztemp]=rotateBFtoGF(Quad.Motor2X,Quad.Motor2Y,3*Quad.Motor2Z,Quad.phi,Quad.theta,Quad.psi);
set(Quad.Motor6,'xdata',Quad.Xtemp+Quad.X,'ydata',-(Quad.Ytemp+Quad.Y),'zdata',-(Quad.Ztemp+Quad.Z-2*Quad.t))

[Quad.Xtemp,Quad.Ytemp,Quad.Ztemp]=rotateBFtoGF(Quad.Motor3X,Quad.Motor3Y,3*Quad.Motor3Z,Quad.phi,Quad.theta,Quad.psi);
set(Quad.Motor7,'xdata',Quad.Xtemp+Quad.X,'ydata',-(Quad.Ytemp+Quad.Y),'zdata',-(Quad.Ztemp+Quad.Z-2*Quad.t))

[Quad.Xtemp,Quad.Ytemp,Quad.Ztemp]=rotateBFtoGF(Quad.Motor4X,Quad.Motor4Y,3*Quad.Motor4Z,Quad.phi,Quad.theta,Quad.psi);
set(Quad.Motor8,'xdata',Quad.Xtemp+Quad.X,'ydata',-(Quad.Ytemp+Quad.Y),'zdata',-(Quad.Ztemp+Quad.Z-2*Quad.t))






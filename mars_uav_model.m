

global Quad



Quad.plot_arm = 0.3;     % Distance from the center of mass to the each motor (m)
Quad.plot_arm_t = .02;   %Thickness of the quadrotor's arms for drawing purposes (m)
Quad.plot_prop = .1;   %Radius of the propellor (m)

% Vertex Values for Y axis arm (m). Measurements from a 3DR kit
x1=-Quad.plot_arm;
x2=Quad.plot_arm;
y1=-Quad.plot_arm_t;
y2=Quad.plot_arm_t;
z1=-Quad.plot_arm_t;
z2=Quad.plot_arm_t;

% Vertex locations
vertex_matrix=[x1 y1 z1; 
   x2 y1 z1;
   x2 y2 z1;
   x1 y2 z1;
   x1 y1 z2;
   x2 y1 z2;
   x2 y2 z2;
   x1 y2 z2];

% Faces Matrix, entries refer to vertices in each face
face_matrix=[1 2 6 5;              
     2 3 7 6;
     3 4 8 7;
     4 1 5 8;
     1 2 3 4;
     5 6 7 8];

 
 X_arm=patch('faces',face_matrix,...
     'vertices',vertex_matrix,...
     'facecolor','b',...
     'edgecolor',[0 0 0],'facecolor','k');

% Vertex Values for X axis arm (m). Measurements from a 3DR kit
y1=-Quad.plot_arm;
y2=Quad.plot_arm;
x1=-Quad.plot_arm_t;
x2=Quad.plot_arm_t;
z1=-Quad.plot_arm_t;
z2=Quad.plot_arm_t;

vertex_matrix=[x1 y1 z1; 
   x2 y1 z1;
   x2 y2 z1;
   x1 y2 z1;
   x1 y1 z2;
   x2 y1 z2;
   x2 y2 z2;
   x1 y2 z2];

Y_arm=patch('faces',face_matrix,...
     'vertices',vertex_matrix,...
     'facecolor','b',...
     'edgecolor',[0 0 0],'facecolor','k');
 
 % Draw the Rotor area
 t=0:pi/10:2*pi;    %rotor circumfrence points
 X=Quad.plot_prop*cos(t);      
 Y=Quad.plot_prop*sin(t); 
 Z=zeros(size(t))+Quad.plot_arm_t;
 C=zeros(size(t));
 Quad.C = C;

 Motor1 = patch(X+Quad.plot_arm,Y,Z,C,'facealpha',.3,'facecolor','g'); %(Motor 1)
 Motor2 = patch(X,Y-Quad.plot_arm,Z,C,'facealpha',.3,'facecolor','r'); %(Motor 2)
 Motor3 = patch(X-Quad.plot_arm,Y,Z,C,'facealpha',.3,'facecolor','c'); %(Motor 3)
 Motor4 = patch(X,Y+Quad.plot_arm,Z,C,'facealpha',.3,'facecolor','m'); %(Motor 4)
 Motor5 = patch(X+Quad.plot_arm,Y,-Z,C,'facealpha',.3,'facecolor','g'); %(Motor 5)
 Motor6 = patch(X,Y-Quad.plot_arm,-Z,C,'facealpha',.3,'facecolor','r'); %(Motor 6)
 Motor7 = patch(X-Quad.plot_arm,Y,-Z,C,'facealpha',.3,'facecolor','c'); %(Motor 7)
 Motor8 = patch(X,Y+Quad.plot_arm,-Z,C,'facealpha',.3,'facecolor','m'); %(Motor 8)
 
 %Coordinates of each face in each axis (4 coordinates x 6 faces)
 Quad.X_armX = get(X_arm,'xdata');
 Quad.X_armY = get(X_arm,'ydata');
 Quad.X_armZ = get(X_arm,'zdata');
 
 Quad.Y_armX = get(Y_arm,'xdata');
 Quad.Y_armY = get(Y_arm,'ydata');
 Quad.Y_armZ = get(Y_arm,'zdata');
  
 %Coordinates of each rotor in each axis (21 coordinates x 1 face)
 Quad.Motor1X = get(Motor1,'xdata');
 Quad.Motor1Y = get(Motor1,'ydata');
 Quad.Motor1Z = get(Motor1,'zdata');

 Quad.Motor2X = get(Motor2,'xdata');
 Quad.Motor2Y = get(Motor2,'ydata');
 Quad.Motor2Z = get(Motor2,'zdata');
 
 Quad.Motor3X = get(Motor3,'xdata');
 Quad.Motor3Y = get(Motor3,'ydata');
 Quad.Motor3Z = get(Motor3,'zdata');
 
 Quad.Motor4X = get(Motor4,'xdata');
 Quad.Motor4Y = get(Motor4,'ydata');
 Quad.Motor4Z = get(Motor4,'zdata');
 
 Quad.Motor5X = get(Motor5,'xdata');
 Quad.Motor5Y = get(Motor5,'ydata');
 Quad.Motor5Z = get(Motor5,'zdata');

 Quad.Motor6X = get(Motor6,'xdata');
 Quad.Motor6Y = get(Motor6,'ydata');
 Quad.Motor6Z = get(Motor6,'zdata');
 
 Quad.Motor7X = get(Motor7,'xdata');
 Quad.Motor7Y = get(Motor7,'ydata');
 Quad.Motor7Z = get(Motor7,'zdata');
 
 Quad.Motor8X = get(Motor8,'xdata');
 Quad.Motor8Y = get(Motor8,'ydata');
 Quad.Motor8Z = get(Motor8,'zdata');
 


 
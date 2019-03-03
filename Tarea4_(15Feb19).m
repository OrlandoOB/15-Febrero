%Sustituir las soluciones del ejercicio pasado en las ecuacioes originales
%usando "subs" y dar valores a las contantes  donde sea necesario

%% Problema 1
%Script para Resolver (Despejar x cuando y=0) 'x' en términos de 'a'

clc
clear

syms x a

%Se define la Ecuación
Y = 2*x+a;

%Se resuelve la ecuación en X cuando Y=5
X = solve(Y==5,x)

%Se sustituye  los valores de cosntantes definiendolas con un valor
x_sust_a=subs(X,a,1)

%Se sustituye X resuelta y las constantes en la Ecuación Original
y_comp = subs(Y,[a x],[1 x_sust_a])


%% Problema 2
%Script para Resolver 'x' en términos de 'a', 'b'
clc
clear

syms x a b

%Se define la Ecuación
Y = x.^2+a*x+b

%Se resuelve la ecuación en X cuando Y=0
X = solve(Y==0,x) 

%Se sustituye  los valores de cosntantes definiendolas con un valor
x_sust1_ab = subs(X(1,1), [a b],[5 2])
x_sust2_ab = subs(X(2,1), [a b],[5 2])

%Se sustituye X resuelta y las constantes en la Ecuación Original
y_comp1 = subs(Y,[a b x],[5 2 x_sust1_ab])
y_comp2 = subs(Y,[a b x],[5 2 x_sust2_ab])

vpa(y_comp1)
vpa(y_comp2)


%% Problema 3
%Script para Resolver 'x' 

clc
clear

syms x a b

%Se define la Ecuación
Y = 2*exp(x)+3*cos(x)

%Se resuelve la ecuación en X cuando Y=0
X = solve(Y==0,x)

%Se sustituye  los valores de cosntantes definiendolas con un valor
x_sust=subs(X)

%Se sustituye X resuelta y las constantes en la Ecuación Original
comp1 = subs(Y,[x],[x_sust])


%% P4
%Script para resolver un sistema de ecuaciones para 'x', 'y' en términos de
%de 'c'

%2x -3cy = 5
%cx +2y  = 7

clc
clear

syms x y c
%Se define el Sistema de Ecuaciones
Ec1 = 2*x -3*c*y;
Ec2 = c*x +2*y;

%Se resuelve el Sist Ecuaciones con todas las soluciones (x,y)
[X Y] = solve([Ec1 == 5 Ec2 == 7],[x y])

%Se sustituye  los valores de cosntantes definiendolas con un valor
[X_sust_c] = subs([X], [c], [1])
[Y_sust_c] = subs([Y], [c], [1])

%Se sustituye X Y resueltas y las constantes en la Ecuación Original
Ec1_comp = subs(Ec1 == 5, [c x y], [1 X_sust_c Y_sust_c])
Ec2_comp = subs(Ec2 == 7, [c x y], [1 X_sust_c Y_sust_c])


%% Problema 5
%Resolver el siguiente sistema de ecuaciones algebraícas no lineales
%para las variables x, y.
clc
clear

syms x y

%Se define el Sistema de Ecuaciones
Ec1 = 3*x.^2 -2*x +y == 7
Ec2 = x*y +x == 5

%Se resuelve el Sist Ecuaciones con todas las soluciones (x,y)
[X Y] = solve([Ec1 Ec2],[x y])

%Se sustituye X Y resueltas y las constantes en la Ecuación Original
Ec1_comp_11 = subs(Ec1, [x y], [X(1,1) Y(1,1)])
Ec2_comp_11 = subs(Ec2, [x y], [X(1,1) Y(1,1)])
vpa(Ec1_comp_11)
vpa(Ec2_comp_11)

Ec1_comp_21 = subs(Ec1, [x y], [X(2,1) Y(2,1)])
Ec2_comp_21 = subs(Ec2, [x y], [X(2,1) Y(2,1)])
vpa(Ec1_comp_21)
vpa(Ec2_comp_21)

Ec1_comp_31 = subs(Ec1, [x y], [X(3,1) Y(3,1)])
Ec2_comp_31 = subs(Ec2, [x y], [X(3,1) Y(3,1)])
vpa(Ec1_comp_31)
vpa(Ec2_comp_31)



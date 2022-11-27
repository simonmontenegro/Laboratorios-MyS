%no se alcanzó a terminar
A = [-15 10;5 -7.5];
B = [0.5; 0.25];
C = [1 0;0 1];
D = 0;
T1 = 0.001;
T2 = 0.1;
T3 = 2;
M = ss (A , B , C , D );
M1_z = c2d (M , T1, "zoh");
M2_z = c2d (M , T2, "zoh");
M3_z = c2d (M , T3, "zoh");

M1_f = c2d (M , T1, "foh");
M2_f = c2d (M , T2, "foh");
M3_f = c2d (M , T3, "foh");

figure(1)
title("zoh")
hold on
plot(step ( M1_z ))
plot(step ( M2_z ))
plot(step ( M3_z ))
legend("M1","M2","M3")
hold off

figure(2)
title("foh")
hold on
plot(step ( M1_f ))
plot(step ( M2_f ))
plot(step ( M3_f ))
legend("M1","M2","M3")
hold off
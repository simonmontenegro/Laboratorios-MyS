[A,B,C,D] = bam(1,2,3,4,5,6)
figure
step(mab(A,B,C,D))
figure
step(test(1,2,3,4,5,6))

function [A,B,C,D] = bam(a,b,c,d,e,f)
    s = tf("s");
    H1 = a/(b*s-c);
    H2 = d/(e*s-f);
    [num,den] = tfdata(feedback(H1,H2, -1),'v');
    [A,B,C,D] = tf2ss(num,den);
end


function H = mab(A,B,C,D)
    [b,a] = ss2tf(A,B,C,D);
    H = tf(b,a);
end


function H = test(a,b,c,d,e,f)
    s = tf("s");
    H1 = a/(b*s-c);
    H2 = d/(e*s-f);
    H = feedback(H1,H2, -1);
end

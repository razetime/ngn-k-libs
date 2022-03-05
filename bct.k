/ Bitwise Cyclic Tag (https://esolangs.org/wiki/Bitwise_Cyclic_Tag)
/ 
/ 00111
/ 101
i:0
c:-1_(1:`)-"0"
d:-1_(1:`)-"0"
bct:{[d;c;i]
 \(d;c[(#c)!i+!c[i]+1])
 e:c@i
 n:(#c)!i+1
 ((~e)_d,(c[i]**d)#c@n;c;(#c)!n+e)}.
cond: {[d;c;i] 0<(#d)&#c}.
cond bct/(d;c;i);

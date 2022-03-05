/ Bigint Arithmetic for ngn/k.
 
/ Relevant functions:
/ bg	 greater than	bl	 lesser than
/ beq  equal to     bneq not equal to
/ badd add          bsub subtract
/ bmul multiply     bdiv divide

/ Other Globals used: 
/ bcon: convert string to (sign; digits)
/ bpd: pad x on left to length y 
/ bal: right align digit arrays

bcon: {(~"-"=*x; (x^"-")-"0")}
bpd: {(((#x)-y)#0),x}
bal: {x bpd'|/#'x}

/ Library starts here.
beq: ~
bneq: ~:~
bg: {
  $[&/"-"=*'(x;y);:o[1_y;1_x]; 0N] / both negative? swap args
  ((sx;vx);(sy;vy)): bcon'(x;y)
  $[~sx=sy; :sx>sy; 0N] / different signs
  ald: bal(vx;vy)
  (=/ald)|>/ald }

/ badd: {

/  }

/ bsub: {

/  }

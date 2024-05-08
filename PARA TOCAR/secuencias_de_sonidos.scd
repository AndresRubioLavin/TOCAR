TempoClock.tempo=(120/60)/4;
//-36 DO, -34 RE, -32 MI, -31 FA, -29 SOL, -27 LA, -25 SI, -24 DO

(
(
~son1 = Pdef(\son1, Pbind(\instrument, \audio1,
	\dur, Pseq([Pn(1/2,2), Pn(1/4,2)], inf),
	\sus, Pseq([0.2], inf),
	\rel, Pseq([0.4], inf),
	\rate, Pseq([-20, -22, -17 ].midicps, inf),
	\sp, 0,
	\amp, 0.9
))
);

(
~son2 = Pdef(\son2, Pbind(\instrument, \audio2,
	\dur, Pseq([Pn(1/4, 2), 1/2],inf),
	\sus, Pseq([0.04], inf),
	\rel, Pseq([0.4], inf),
	\rate, Pseq([-46,-44].midicps, inf),
	\sp, Pseq([0], inf),
	\amp, 0.6
))
);

(
~son3 = Pdef(\son3, Pbind(\instrument, \audio3,
	\dur, Pseq([Pn(1/4,3), 1/4, 1/2, 1/4 ], inf),
	\sus, Pseq([0.4], inf),
	\rel, Pseq([0.4], inf),
	\rate, Pseq([-36,-34, -32, -29].midicps, inf),
	\sp, Pseq([0], inf),
	\amp, 0.9
))
);

(
~son4 = Pdef(\son4, Pbind(\instrument, \audio4,
	\dur, Pseq([1/2, 1/4], inf),
	\sus, Pseq([0.2], inf),
	\rel, Pseq([0.2], inf),
	\rate, Pseq([-20, -22, -17 ].midicps, inf),
	\sp, Pseq([0], inf),
	\amp, 0.9,
	\out, 0
))
);

(
~son5 = Pdef(\son5, Pbind(\instrument, \audio5,
	\dur, Pseq([Pn(1/4,2), 1/2], inf),
	\sus, Pseq([1], inf),
	\rel, Pseq([2], inf),
	\rate, Pseq([-20,-22].midicps, inf),
	\sp, Pseq([0,1], inf),
	\amp, 0.9
))
);

(
~son6 = Pdef(\son6, Pbind(\instrument, \audio6,
	\dur, Pseq([Pn(1/2,2), Pn(1/4,2)], inf),
	\sus, Pseq([0.2], inf),
	\rel, Pseq([0.4], inf),
	\rate, Pseq([-20, -22, -17 ].midicps, inf),
	\sp, 0,
	\amp, 0.9
))
);

(
~son7 = Pdef(\son7, Pbind(\instrument, \audio7,
	\dur, Pseq([Pn(1/4,4), 1/8], inf),
	\sus, Pseq([0.4, 0.02], inf),
	\rel, Pseq([0.2, 0.4], inf),
	\rate, Pseq([-36,-34].midicps, inf),
	\sp, 0,
	\amp, 0.6
))
);

(
~son8 = Pdef(\son8, Pbind(\instrument, \audio8,
	\dur, Pseq([1/4, Pn(1/16,3)], inf),
	\sus, Pseq([0.2], inf),
	\rel, Pseq([0.9], inf),
	\rate, Pseq([-56,-49, -47].midicps, inf),
	\sp, Pseq([1,0], inf),
	\amp, 0.9
))
);

(
~son9 = Pdef(\son9, Pbind(\instrument, \audio9,
	\dur, Pseq([Pn(1/4,8),1/4 ], inf),
	\sus, Pseq([0.4], inf),
	\rel, Pseq([0.2, 0.4], inf),
	\rate, Pseq([-36,-34, -32, -32,-27].midicps, inf),
	\sp, Pseq([0,0.2], inf),
	\amp, 1
))
);

(
~son10 = Pdef(\son10, Pbind(\instrument, \audio10,
	\dur, Pseq([1/4], inf),
	\sus, Pseq([0.4, 0.02], inf),
	\rel, Pseq([0.2, 0.4], inf),
	\rate, Pseq([1,2,0.5,3], inf),
	\sp, 0,
	\amp, 0.9
))
);

(
~son11 = Pdef(\son11, Pbind(\instrument, \audio6,
	\dur, Pseq([1/4, 1/8, 1/4], inf),
	\sus, Pseq([0.4, 0.02], inf),
	\rel, Pseq([0.2, 0.4], inf),
	\rate,  Pseq([-36,-34, -32, -32].midicps, inf),
	\sp, 0,
	\amp, 0.5
))
);

(
~son12 = Pdef(\son12, Pbind(\instrument, \audio7,
	\dur, Pseq([1/4, Pn(1/8,3), 1/16], inf),
	\sus, Pseq([0.4, 0.02], inf),
	\rel, Pseq([0.2, 0.4], inf),
	\rate, Pseq([1], inf),
	\sp, 0,
	\amp, 0.5
))
);

(
~son13 = Pdef(\son13, Pbind(\instrument, \audio10,
	\dur, Pseq([1/16, 1/8, 1/16], inf),
	\sus, Pseq([0.4, 0.02], inf),
	\rel, Pseq([0.2, 0.4], inf),
	\rate, Pseq([-36, -32, -32].midicps, inf),
	\sp, 0,
	\amp, 0.5
))
);
);



~son1.play.quant(4);
~son1.stop;
~son2.play.quant(4);
~son2.stop;
~son3.play.quant(4);
~son3.stop;
~son4.play.quant(4);
~son4.stop;
~son5.play.quant(4);
~son5.stop;
~son6.play.quant(4);
~son6.stop;
~son7.play.quant(4);
~son7.stop;


//~son8.play.quant(4);
//~son8.stop;
//~son9.play.quant(4);
//~son9.stop;
~son10.play.quant(4);
~son10.stop;


~son11.play.quant(4);
~son11.stop;
~son12.play.quant(4);
~son12.stop;
~son13.play.quant(4);
~son13.stop;



s.quit; // APAGA supercollider
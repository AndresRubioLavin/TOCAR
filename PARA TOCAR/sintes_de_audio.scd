s.boot; // PRENDER SuperCollider
{PinkNoise.ar(0.4)!2}.play
// Ruta en Linu0x para declarar buffers
(
b = Buffer.read(s, thisProcess.nowExecutingPath.dirname +/+"musica/piano1.mp3");
c = Buffer.read(s, thisProcess.nowExecutingPath.dirname +/+"musica/bajo.mp3");
d = Buffer.read(s, thisProcess.nowExecutingPath.dirname +/+"musica/guitar1.mp3");
e = Buffer.read(s, thisProcess.nowExecutingPath.dirname +/+"musica/violin1.mp3");
f = Buffer.read(s, thisProcess.nowExecutingPath.dirname +/+"musica/violin2.mp3");
g = Buffer.read(s, thisProcess.nowExecutingPath.dirname +/+"musica/tamb1.mp3");
h = Buffer.read(s, thisProcess.nowExecutingPath.dirname +/+"musica/tamb2.mp3");
i = Buffer.read(s, thisProcess.nowExecutingPath.dirname +/+"musica/trompeta1.mp3");
j = Buffer.read(s, thisProcess.nowExecutingPath.dirname +/+"musica/ukulele.mp3");
k = Buffer.read(s, thisProcess.nowExecutingPath.dirname +/+"musica/tarola.mp3");
);

// Ruta en Mac
// b = Buffer.read(s, "/Users/name/Desktop/folder/sonido2.wav");

// Ruta en Windows, nota la letra C. Debes voltear las diagonales pues windows las pone al revés \
// b = Buffer.read(s, "C:/Users/name/Desktop/folder/sonido2.wav");

// SynthDef Mono. Es ideal para hacer mover el sonido entre bocinas con paneo.
(
(
SynthDef(\audio1, {|rate=1, sp=0, at=0.001, sus=1, rel=0.001, pan=0, amp=1, out=0|
					var son, hpf, paneo, env;
					son=PlayBuf.ar(b.numChannels, b.bufnum, rate, 1, sp * b.numFrames, 0);
					hpf=HPF.ar(son, 20);
					paneo=Pan2.ar(hpf, pan, amp);
					env=EnvGen.kr(Env.new([0, 1, 1, 0], [at, sus * b.duration, rel]), doneAction: 2);
					Out.ar(out, paneo * env);
				}).add;
);

// SynthDef Estéreo. Es ideal para sonidos ambientales largos
(
SynthDef(\audio2, {|rate=1, sp=0, at=0.001, sus=1, rel=0.001, pan=0, amp=1, out=0|
					var son, hpf, paneo, env;
					son=PlayBuf.ar(c.numChannels, c.bufnum, rate, 1, sp * c.numFrames, 0);
					hpf=HPF.ar(son, 20);
					paneo=Pan2.ar(hpf, pan, amp);
					env=EnvGen.kr(Env.new([0, 1, 1, 0], [at, sus * c.duration, rel]), doneAction: 2);
					Out.ar(out, paneo * env);
				}).add;
);

(
SynthDef(\audio3, {|rate=1, sp=0, at=0.001, sus=1, rel=0.001, pan=0, amp=1, out=0|
					var son, hpf, paneo, env;
					son=PlayBuf.ar(d.numChannels, d.bufnum, rate, 1, sp * d.numFrames, 0);
					hpf=HPF.ar(son, 20);
					paneo=Pan2.ar(hpf, pan, amp);
					env=EnvGen.kr(Env.new([0, 1, 1, 0], [at, sus * d.duration, rel]), doneAction: 2);
					Out.ar(out, paneo * env);
				}).add;
);

(
SynthDef(\audio4, {|rate=1, sp=0, at=0.001, sus=1, rel=0.001, pan=0, amp=1, out=0|
					var son, hpf, paneo, env;
					son=PlayBuf.ar(e.numChannels, e.bufnum, rate, 1, sp * e.numFrames, 0);
					hpf=HPF.ar(son, 20);
					paneo=Pan2.ar(hpf, pan, amp);
					env=EnvGen.kr(Env.new([0, 1, 1, 0], [at, sus * e.duration, rel]), doneAction: 2);
					Out.ar(out, paneo * env);
				}).add;
);

(
SynthDef(\audio5, {|rate=1, sp=0, at=0.001, sus=1, rel=0.001, pan=0, amp=1, out=0|
					var son, hpf, paneo, env;
					son=PlayBuf.ar(f.numChannels, f.bufnum, rate, 1, sp * f.numFrames, 0);
					hpf=HPF.ar(son, 20);
					paneo=Pan2.ar(hpf, pan, amp);
					env=EnvGen.kr(Env.new([0, 1, 1, 0], [at, sus * f.duration, rel]), doneAction: 2);
					Out.ar(out, paneo * env);
				}).add;
);

(
SynthDef(\audio6, {|rate=1, sp=0, at=0.001, sus=1, rel=0.001, pan=0, amp=1, out=0|
					var son, hpf, paneo, env;
					son=PlayBuf.ar(g.numChannels, g.bufnum, rate, 1, sp * g.numFrames, 0);
					hpf=HPF.ar(son, 20);
					paneo=Pan2.ar(hpf, pan, amp);
					env=EnvGen.kr(Env.new([0, 1, 1, 0], [at, sus * g.duration, rel]), doneAction: 2);
					Out.ar(out, paneo * env);
				}).add;
);
(
SynthDef(\audio7, {|rate=1, sp=0, at=0.001, sus=1, rel=0.001, pan=0, amp=1, out=0|
					var son, hpf, paneo, env;
					son=PlayBuf.ar(h.numChannels, h.bufnum, rate, 1, sp * h.numFrames, 0);
					hpf=HPF.ar(son, 20);
					paneo=Pan2.ar(hpf, pan, amp);
					env=EnvGen.kr(Env.new([0, 1, 1, 0], [at, sus * h.duration, rel]), doneAction: 2);
					Out.ar(out, paneo * env);
				}).add;
);
(
SynthDef(\audio8, {|rate=1, sp=0, at=0.001, sus=1, rel=0.001, pan=0, amp=1, out=0|
					var son, hpf, paneo, env;
					son=PlayBuf.ar(i.numChannels, i.bufnum, rate, 1, sp * i.numFrames, 0);
					hpf=HPF.ar(son, 20);
					paneo=Pan2.ar(hpf, pan, amp);
					env=EnvGen.kr(Env.new([0, 1, 1, 0], [at, sus * i.duration, rel]), doneAction: 2);
					Out.ar(out, paneo * env);
				}).add;
);
(
SynthDef(\audio9, {|rate=1, sp=0, at=0.001, sus=1, rel=0.001, pan=0, amp=1, out=0|
					var son, hpf, paneo, env;
					son=PlayBuf.ar(j.numChannels, j.bufnum, rate, 1, sp * j.numFrames, 0);
					hpf=HPF.ar(son, 20);
					paneo=Pan2.ar(hpf, pan, amp);
					env=EnvGen.kr(Env.new([0, 1, 1, 0], [at, sus * j.duration, rel]), doneAction: 2);
					Out.ar(out, paneo * env);
				}).add;
);

(
SynthDef(\audio10, {|rate=1, sp=0, at=0.001, sus=1, rel=0.001, pan=0, amp=1, out=0|
					var son, hpf, paneo, env;
					son=PlayBuf.ar(k.numChannels, k.bufnum, rate, 1, sp * k.numFrames, 0);
					hpf=HPF.ar(son, 20);
					paneo=Pan2.ar(hpf, pan, amp);
					env=EnvGen.kr(Env.new([0, 1, 1, 0], [at, sus * k.duration, rel]), doneAction: 2);
					Out.ar(out, paneo * env);
				}).add;
);
// --- Reverberación - bus 9
(
SynthDef(\rev, {|in = 9, mix = 0.4, room = 0.9, damp = 0.1, amp = 1, gate = 1, out = 0|
	var sen, env;
	sen = FreeVerb.ar(InFeedback.ar(in, 2), mix, room, damp, amp);
	env = EnvGen.kr(Env.asr(0.01, 1, 0.1), gate, doneAction: 0);
	Out.ar(out, sen * env);
}).add
);
);

// Activar efecto
~rev=Synth(\rev); // 9 Reverberación

// Modificación de efecto
~rev.set(\mix, 0.5, \room, 0.5, \damp, 0.5);

// Probar sonidos

Synth(\audio1);
Synth(\audio2);
Synth(\audio3);
Synth(\audio4);
Synth(\audio5);
Synth(\audio6);
Synth(\audio7);
Synth(\audio8);
Synth(\audio9);
Synth(\audio10);
s.quit; // APAGAR SuperCollider
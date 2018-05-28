/*
SuperCollider OSC sample code
2018/5/27 Lin, Ping-Yen

reference:
https://www.youtube.com/watch?v=ZVTbRNu2BI0
https://ccrma.stanford.edu/~ruviaro/texts/A_Gentle_Introduction_To_SuperCollider.pdf
*/

//// part 1: simple example ////
/*
using one switch
switch:
[key: \sw2, path: '/clean_switch_2']
*/
(
OSCdef(
	key: \sw2,
	func: {arg msg, time, addr, port;

		[msg, time, addr, port].postln

	},
	path: '/clean_switch_2');
)

//// part 2: sound control ////
/*
using one switch and 5 sliders
switch:
[key: \switch1, path: '/clean_switch_1']

slider:
[key: \slider1, path: '/clean_slider_1']
[key: \slider2, path: '/clean_slider_2']
[key: \slider3, path: '/clean_slider_3']
[key: \slider4, path: '/clean_slider_4']
[key: \slider5, path: '/clean_slider_5']
*/
// connect key on the smartphone
(
OSCdef(
	key: \switch1,
	func: {arg msg, time, addr, port;
		x.set(\gate, msg[1])},
	path: '/clean_switch_1');

OSCdef(
	key: \slider1,
	func: {arg msg, time, addr, port;
		x.set(\freq, msg[1].linexp(0,1,20,500))},
	path: '/clean_slider_1');

OSCdef(
	key: \slider2,
	func: {arg msg, time, addr, port;
		x.set(\nharm, msg[1].linlin(0,1,1,50))},
	path: '/clean_slider_2');

OSCdef(
	key: \slider3,
	func: {arg msg, time, addr, port;
		x.set(\amp, msg[1].linexp(0,1,0.001,1))},
	path: '/clean_slider_3');

OSCdef(
	key: \slider4,
	func: {arg msg, time, addr, port;
		x.set(\pan, msg[1].linlin(0,1,-1,1))},
	path: '/clean_slider_4');

OSCdef(
	key: \slider5,
	func: {arg msg, time, addr, port;
		x.set(\detune, msg[1].linexp(0.1,1,0.01,12))},
	path: '/clean_slider_5');
)

// define sound
(
SynthDef.new(\tone, {
	arg freq = 40, nharm = 12, detune = 0.2, gate = 0, pan = 0, amp = 1, out = 0;
	var sig, env;
	env = EnvGen.kr(Env.adsr(0.05,0.1,0.5,3),gate);
	sig = Blip.ar(
		freq *
		LFNoise1.kr(0.2!16).bipolar(detune.neg,detune).midiratio,
		nharm
	);
	sig = sig * LFNoise1.kr(0.5!16).exprange(0.1,1);
	sig = Splay.ar(sig);
	sig = Balance2.ar(sig[0], sig[1], pan);
	sig = sig * env * amp;
	Out.ar(out, sig);
}).add
)

// play the sound
x = Synth.new(\tone);



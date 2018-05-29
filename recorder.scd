// EE6641 ASAS
// TIG: Supercollider
// Record audio to wav file
//
// Po-Chien Hsu
// May 26, 2018


// Problem 1
// Please record Twinkle Twinkle Little Star from the previous homework,
// and save it as a wav file.

// write Twinkle Twinkle Little Star for both hands
/////////////YOUR CODES HERE/////////////////



// recording initialization
// specifying the filename and number of channels
s.prepareForRecord(path: "LittleStar_yourID.wav", numChannels: 1);

(
// play Twinkle Twinkle Little Star
/////////////YOUR CODES HERE/////////////////



// start recording
s.record;
)

// stop recording and save as a wav file
s.stopRecording;



// Problem 2
// Please record an ever playing music for 3 seconds,
// and save it as a wav file.

// write an ever playing music called "bubbles"
(
SynthDef("bubbles", { |out|
    var f, sound;
    f = LFSaw.kr(0.4, 0, 24, LFSaw.kr([8, 7.23], 0, 3, 80)).midicps; // glissando function
    sound = CombN.ar(SinOsc.ar(f, 0, 0.04), 0.2, 0.2, 4); // echoing sine wave
    Out.ar(out, sound);
}).add;

SynthDef("tpulse", { |out = 0, freq = 700, sawFreq = 440.0|
    Out.ar(out, SyncSaw.ar(freq, sawFreq, 0.1))
}).add;
)

// play "bubbles"
x = Synth.new("bubbles");

// recording initialization
// specifying the filename and number of channels
/////////////YOUR CODES HERE/////////////////


// record for 3 seconds
/////////////YOUR CODES HERE/////////////////



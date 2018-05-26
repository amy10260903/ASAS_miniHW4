> EE6641 Analysis and Synthesis of Digital Audio Signals
# ASAS_miniHW4  SuperCollider  Recorder
Due date: 2018/06/05


## Overview
Thanks to the previous SuperCollider homework, we are capable of writing a simple piece of music. Then, we might want to do further signal processing with our music on Python. But How? The easiest way is to record the audio we want and save it as a .wav file, so that we can load it into Python.


## Recorder
Write Audio to Harddisk

### ```s.prepareForRecord(path, numChannels)```
Recording initialization. Allocates the necessary buffer for recording the server's output.
* **path**    The path and the file name of the recorded file. 
* **numChannels**    The number of output channels to record. 
  
### ```s.record(path, bus, numChannels, node, duration)```
Starts or resumes recording the output.
* **path**    Optional if specified at ```.prepareForRecord```.
* **bus**    Optional.
* **numChannels**    Optional if specified at ```.prepareForRecord```.
* **node**    Optional.
* **duration**     If set, this limits recording to a given time in seconds. Optional if follow by ```.stopRecording```.

### ```s.stopRecording```
Stops recording, closes the file, and frees the associated resources.


## Reference
* [Recorder | SuperCollider 3.9.3 Help](http://doc.sccode.org/Classes/Recorder.html)
* [Recording in SuperCollider (WIP)](https://github.com/supercollider/supercollider/wiki/Recording-in-SuperCollider-(WIP))


## Homework
### Problem 1 (50%)
1. Please record Twinkle Twinkle Little Star from the previous homework and save it as a wav file. You must record the whole piece of music, which means you can't execute ```s.stopRecording``` before the music ends. The recorded audio have to be **mono**. 
2. If you can't open the exported file by a media player, load it in to Python and check whether your file satisfies the spec. (Python library ```soundfile``` recommended)
3. You have to hand in the wav file named as **RecordAsWav_yourID.wav**.

### Problem 2 (50%)
1. Please record an ever playing music for **3 seconds** and save it as a wav file. The recorded audio have to be **stereo**.
2. You have to hand in the wav file named as **bubbles_yourID.wav**.

### Bonus (10%)
1. Please record Twinkle Twinkle Little Star in **stereo** save it as a wav file..
2. You have to hand in the wav file named as **bonus_yourID.wav**.

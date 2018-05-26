> EE6641 Analysis and Synthesis of Digital Audio Signals
# ASAS_miniHW4  SuperCollider  Recorder
Due date: 2018.06.05

## Overview
Thanks to the previous SuperCollider homework, we are capable of writing a simple piece of music. Then, we might want to do further signal processing with our music on Python. But How? The easiest way is to record the audio we want and save it as a .wav file, so that we can load it into Python.

## Recorder
Write Audio to Harddisk
### Description
A Recorder allows you to write audio to harddisk, reading from a given bus and a certain number of channels.

After making sure the server is booted, this is how you start recording in SuperCollider:
```
Server.default.prepareForRecord(path, numChannels);
```
By default, the global variable ```s``` refers to ```Server.default```, so you may replace ```Server.default``` with ```s```.

### Functons
1. ```.prepareForRecord(path, numChannels)```
Recording initialization. Allocates the necessary buffer for recording the server's output.
Arguments:

2. ```.record(path, bus, numChannels, node, duration)```


3. ```.stopRecording```



## Reference
* [Recorder | SuperCollider 3.9.3 Help](http://doc.sccode.org/Classes/Recorder.html)
* [Recording in SuperCollider (WIP)](https://github.com/supercollider/supercollider/wiki/Recording-in-SuperCollider-(WIP))


## Homework
### Problem 1 (50%)
1. 

2.

### Problem 1 (50%)
1. 

2.

### Bonus (10%)
1. 

2.

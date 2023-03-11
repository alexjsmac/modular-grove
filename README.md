# Modular Grove
A VR Forest Exploration Through Sound and Space

## Setup Instructions
Windows-only at this time. Mainly because of the use of an Oculus Quest 2 for development.

*BUT* if you have a headset that works on a different OS, I think the main work involved 
in getting this to run would be setting up [gdosc](https://gitlab.com/frankiezafe/gdosc)
for your alternative OS.

### Software Requirements
- [Godot v3.5](https://godotengine.org/download/3.x/windows/)
- [Pure Data](https://puredata.info/downloads/pure-data)
- [Visual Studio C++ Workload](https://visualstudio.microsoft.com/vs/community/)
  - Use the installer to set up the "Desktop Development with C++" workload

### Hardware Requirements
- A VR headset that supports [OpenXR](https://www.khronos.org/OpenXR/)
- A VR-capable Windows computer

### Detailed Steps
- Set up the VR headset to be connected to your computer as detailed in the device's manual
- Open up the Godot project and run it, the project should launch on the connected headset
- Open Pure Data (Pd)
  - Install the external "mrpeach" and add a path for it (usually in your user's Documents folder, 
  ie. `C:\Users\Alex\Documents\Pd\externals\mrpeach`)
  - Configure the audio settings as desired for your situation
  - Open the Pd file called `algo-midi.pd` in the Pd folder of this project
    - Check Pd's console, there should be no errors there
- Back in the VR environment, click the button on the table to begin!
- You should be hearing sound now and the cubes should begin moving

## Helpful Resources
I couldn't have put this project together without these great community contributions:
- [Godot campfire scene tutorial](https://www.youtube.com/watch?v=x4xS3N2GF-Q&ab_channel=DevLogLogan)
- [Godot plugin for OSC](https://gitlab.com/frankiezafe/gdosc)
- [Pd DIY library](https://forum.pdpatchrepo.info/topic/1877/diy2-effects-sample-players-synths-and-sound-synthesis)
- [Pd patch to model Music Thing Modular's Turing Machine](https://github.com/Elektromatic/turingTest0Coast)
- [Pd patches for multichannel mixing](https://github.com/solipd/AudioLab)

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

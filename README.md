# PTZ-CamControl

### What it is
CamControl is a Software to control your PTZ-Camera over ethernet via the Visca Protokoll. If your Camera supports to receive UDP packages with Visca protocoll infromation that Software is for you.

You can Navigate your Camera in 4 different Directions left, right, up and down. 

You can Zoom in and out.

You can use the 9 Buttons to navigate the Camera presets.
This Presets are also registered as hotkeys in the System and can be triggerd by hitting **[ctrl] + [1-9]**

Information which Packages should be send by the Buttons can be configured in the CamControl.conf File. This File shold be saved in the same Directory like the CamControll.exe.

### What it is NOT

You are not able to set any Presets to the Camera this Software only Supports read-access to your Camera

### Installation

#### 1.) Run with GUI
Just Start the CamControll.exe and you are good to go
Every time you start the software, the comand from Configfile inside of Section [Presets] with the Name [StartPosition] will be called.
Every time you stop the software, the comand from Configfile inside of Section [Presets] with the Name [ParkingPosition] will be called.

#### 2.) Run without GUI
Same as [Run With GUI] just add the Parameter "--invisible".
Hotkeys will be registered.

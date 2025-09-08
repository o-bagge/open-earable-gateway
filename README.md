# OpenEarable Gateway

This repository is a clone of the nRF5340 Audio application, specifically configured for programming **gateway devices** using nRF5340 Audio DKs to stream Audio from a phone or PC to OpenEarables via Bluetooth LE.

## Overview

The nRF5340 Audio Gateway is designed to act as a central device that can connect to multiple audio headsets and manage audio streaming. This repository provides the necessary configuration and build instructions to program nRF5340 Audio DKs as gateway devices.

### Prerequisites

1. **nRF Connect SDK**: Ensure you have the nRF Connect SDK installed and properly configured
2. **Hardware**: nRF5340 Audio Development Kit
3. **Tools**: 
   - `west` build tool
   - `nrfutil` for programming
   - USB connection to the development kit

## ⚠️ **Important Configuration Note**  
The name of your OpenEarable must be specified in `unicast_client/overlay-unicast_client.conf` so that the gateway device can connect to it:
```ini
# Change the device name here to the name of your earable
CONFIG_BT_DEVICE_NAME="OpenEarable-XXXX"
```

## Building and Programming

## Method 1: VS Code (Recommended)
1. **Install Visual Studio Code (VS Code)**  
   - Download and install from [https://code.visualstudio.com](https://code.visualstudio.com)

2. **Install the J‑Link Software and Documentation Package**
   - Download and install from [https://www.segger.com/downloads/jlink/](https://www.segger.com/downloads/jlink/)
     
3. **Install nRF-Util**  
   - Download from [nRF Util – Nordic Semiconductor](https://www.nordicsemi.com/Products/Development-tools/nRF-Util)  
   - Add `nrfutil` to your system's `PATH` environment variable

4. **Install the nRF Connect for VS Code Extension**  
   - Open VS Code  
   - Go to the Extensions tab and install **"nRF Connect for VS Code"**  
   - Install all required dependencies when prompted

5. **Install the Toolchain via nRF Connect**  
   - Open the **nRF Connect** tab in VS Code  
   - Click **"Install Toolchain"**  
   - Select and install **version 3.0.1**

6. **Install the nRF Connect SDK**  
   - In the **nRF Connect** tab, select **"Manage SDK"**  
   - Install **SDK version 3.0.1**

7. **Open the Firmware Folder in VS Code**  
   - Use `File > Open Folder` or drag-and-drop the firmware directory into VS Code
   - OR in the **APPLICATIONS** section of the nRF Connect tab:
     - Select `Open Exisiting Application`
     - Select the `open-earable-gateway` directory

8. **Configure the Application Build**
   - If not already open, navigate to the nrfConnect extension tab in VSCode
   - In the **APPLICATIONS** section of the nRF Connect extension tab:  
     - Select the `open-earable-gateway` application  
     - Click **"+ Add build configuration"** to set up a new build
     - Select the SDK version 3.0.1, toolchain version 3.0.1, and `nrf5340_audio_dk/nrf5340/cpuapp` as board target
     - Configure the development kit as the gateway device. This can be achieved by adding `unicast_client/overlay-unicast_client.conf` to `Extra Kconfig fragments`
     - To build **with FOTA** (firmware over-the-air update functionality):
       - Leave the `Base configuration files (Kconfig fragments)` dropdown empty
       - as `Extra CMAKE arguments` set `-DFILE_SUFFIX="fota"`
       - as `Build directory` name set `build_fota`
     -  To build **without FOTA**:
        - Select `prj.conf` as the `Base configuration files (Kconfig fragments)`
        - Do not set any of the FOTA flags described above

10. **Build and Flash**
   - Connect the development kit via usb to your comuter
   - Click on `Generate and Build` and wait for the application to build (this will take some time)
   - Connect your development kit via usb to your computer and click on `Flash` in the `Actions` tab



### Method 2: Command Line

#### Building the Gateway Firmware

Use the following `west` command to build the gateway firmware:

```bash
west build -b nrf5340_audio_dk/nrf5340/cpuapp --pristine -- \
  -DEXTRA_CONF_FILE=".\unicast_client\overlay-unicast_client.conf" \
  -DFILE_SUFFIX=release
```

**Command breakdown:**
- `-b nrf5340_audio_dk/nrf5340/cpuapp`: Specifies the board and core (application core)
- `--pristine`: Cleans the build directory before building
- `-DEXTRA_CONF_FILE=".\unicast_client\overlay-unicast_client.conf"`: Adds the gateway configuration overlay
- `-DFILE_SUFFIX=release`: Uses `prj_release.conf` instead of the default `prj.conf`

#### Programming the Device

After building, program the firmware to your development kit:

```bash
west flash
```

**Note**: If you have multiple development kits connected, you may need to specify the serial number:

```bash
west flash --serial-number <SEGGER_SERIAL_NUMBER>
```

To find the serial number of connected devices:

```bash
nrfutil device list
```

## Device Verification

After programming, verify the gateway is working correctly:

1. **Plug in** the nRF5340 Audio DK into your phone or PC (macOS is not supported) and select it as the audio output.
2. **Check LED indicators**:
   - The nRF5340 Audio DK should turn green
   - LED3 should start blinking
3. **Connect OpenEarable**:
   - Power on your OpenEarable and enter bonding mode by pressing the button for 13 seconds
   - Your OpenEarable should automatically connect to the nRF5340 Audio DK and start playing audio
   - LED1 will turn blue on the nRF5340 Audio DK when it is connected to the OpenEarable

## Troubleshooting

### Build Issues
- Ensure you're using the correct board specification (`nrf5340_audio_dk/nrf5340/cpuapp`)
- Verify the nRF Connect SDK version is compatible
- Clean the build directory with `west build --pristine` if encountering build errors

### Programming Issues
- Check USB connection and ensure the device is powered on
- Verify the correct serial number if multiple devices are connected
- Use `nrfutil device list` to confirm device connectivity

### Performance Issues
- Ensure you're using `prj_release.conf` (via `-DFILE_SUFFIX=release`) to avoid debug overhead
- The release configuration disables logging and debug features that can impact audio streaming performance

### Conneciton Issues
- Make sure the name of your OpenEarable matches exactly `CONFIG_BT_DEVICE_NAME` in `unicast_client/overlay-unicast_client.conf`
- Erase bonding information on the nRF5340 Audio DK by holding `BTN 5` during startup. Then enter bonding mode again on the OpenEarable by pressing its button for 13 seconds

## Repository Structure

```
├── prj_release.conf              # Release configuration (recommended base)
├── prj.conf                      # Debug configuration (not recommended for streaming)
├── unicast_client/
│   └── overlay-unicast_client.conf  # Gateway-specific configuration overlay
├── unicast_server/               # Headset configuration (not used for gateway)
├── broadcast_source/             # Broadcast source configuration
├── broadcast_sink/               # Broadcast sink configuration
└── src/                          # Source code
```

## Additional Resources

- [nRF5340 Audio Application Documentation](https://developer.nordicsemi.com/nRF_Connect_SDK/doc/latest/nrf/applications/nrf5340_audio/README.html)
- [nRF Connect SDK Documentation](https://developer.nordicsemi.com/nRF_Connect_SDK/doc/latest/)
- [nRF5340 Audio DK User Guide](https://developer.nordicsemi.com/nRF_Connect_SDK/doc/latest/nrf/hardware/nrf5340_audio_dk.html)

## License

This project is based on the nRF5340 Audio application from Nordic Semiconductor and is licensed under the same terms as the original project. 
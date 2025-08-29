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
### Method 1: VS Code (Recommended)

1. **Open the project** in VS Code with the nRF Connect extension
2. **Add build configuration** with the following settings:
    - **SDK and Toolchain version**: `v3.0.1`
    - **Board target**: `nrf5340_audio_dk/nrf5340/cpuapp`
    - **Base configuration files (Kconfig fragments)**: `prj_release.conf` - disables debug features for clean audio stream
    - **Extra Kconfig fragments**: `unicast_client/overlay-unicast_client.conf` - configures the DK as a gateway device
3. **Build and flash the project** using the nRF Connect extension

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
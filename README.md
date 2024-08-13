# ShowPass

ShowPass is a Bash script that retrieves and displays WiFi network information, including the SSID, password, and security type. It also generates a QR code for easy WiFi access sharing.

## Features

- Retrieves current WiFi SSID
- Fetches the WiFi password from the system keychain
- Determines the WiFi security type
- Generates a QR code for quick WiFi access sharing
- Displays network information in the terminal

## Requirements

- macOS (the script uses macOS-specific commands)
- `qrencode` (installed automatically if not present)

## Installation

1. Clone this repository or download the `showpass.sh` script.
2. Make the script executable:

```bash
   chmod +x showpass.sh
```

## Usage

Run the script from the terminal:

```bash
./showpass.sh
```

The script will:

1. Check if `qrencode` is installed and install it if necessary.
2. Retrieve and display the current WiFi SSID, password, and security type.
3. Generate and display a QR code in the terminal for easy WiFi sharing.

## Note

This script requires administrative privileges to access WiFi information. You may be prompted to enter your password when running the script.

<!-- ## License

[Insert your chosen license here]

## Contributing

[Insert contribution guidelines here]

## Support

[Insert support information here] -->

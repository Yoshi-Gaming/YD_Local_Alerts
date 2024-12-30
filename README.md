
# Localized Server Alerts

Localized Server Alerts is a lightweight script for FiveM that allows administrators to trigger custom alerts visible to players within a specific radius. This script is designed to enhance communication during events, emergencies, or general server operations.

## Features

- **Localized Alerts:** Show alerts only to players within a specified radius.
- **Customizable Design:** Modify the alert's appearance with CSS.
- **Sound Notification:** A sound is played when an alert appears.
- **Permissions-Based:** Restrict alert access to specific roles or users.

## Installation

### Prerequisites

1. **FiveM Server:** Ensure your server is running the latest version of FiveM.
2. **FXServer:** Supports FXServer only.

### Steps

1. Download the script and extract it into your `resources` folder.
2. Add the following to your `server.cfg`:

   ```plaintext
   ensure YD_Local_Alerts
   ```

3. Configure permissions as described in the **Permissions** section below.

4. Restart your server and test the script.

## Permissions

Ensure the permissions are correctly set up in your `server.cfg`. 

### Example Configuration:
```plaintext
## Permissions ##
add_ace group.admin command allow            # Allow all commands
add_ace group.admin YD_Local_Alerts.trigger allow  # Allow triggering local alerts
```

### Testing Permissions

1. Run `/alert 50 Test message` in-game.
2. If the alert displays successfully to players within the 50m radius, the permissions are configured correctly.
3. If the command fails:
   - Ensure your identifier is added to the `server.cfg`.
   - Verify that the `YD_Local_Alerts.trigger` permission is granted to the appropriate role.
   - Check the server logs for any errors.

## Customization

You can customize the alert's appearance and behavior:

1. **Appearance:** Modify `alert.css` to change the styles of the alert box (e.g., colors, fonts, etc.).
2. **Sound:** Replace the `alert.wav` file in the `html` folder with your desired sound.
3. **Duration:** Adjust the display duration in `alert.js` by modifying the `setTimeout` value.

## Commands

- **`/alert [radius] [message]`:** Sends a localized alert to players within the specified radius.

## Debugging

### Common Issues

1. **No Alert Display:**
   - Ensure `alert.html`, `alert.js`, and `alert.css` are correctly placed in the `html` folder.
   - Verify that NUI messages are correctly sent from `client.lua`.
   - Check the console (F8) for debug logs.

2. **Permission Errors:**
   - Ensure the identifier is correctly set up in `server.cfg`.
   - Verify that the `YD_Local_Alerts.trigger` ace permission is granted.

3. **Sound Not Playing:**
   - Confirm `alert.wav` exists in the `html` folder.
   - Check that the file is correctly referenced in `alert.html`.

## Acknowledgments

This script was designed to enhance server communication for FiveM-based servers and is open for customization. Contributions and feedback are welcome.

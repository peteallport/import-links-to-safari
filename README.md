# Bulk Import Links to Safari

Begrudingly crawling back to Safari because The Browser Company abandoned Arc? Me too. 
This is an AppleScript utility that transfers multiple URLs (that you copy from a bowser like Arc) and opens them directly in Safari as individual tabs.

## What it does

This script reads newline-separated URLs from your clipboard and automatically opens them in Safari. It creates a new Safari window and opens each URL in its own tab, making it easy to transfer multiple tabs from other browsers (like Arc) to Safari.

## Prerequisites

- **macOS** with AppleScript support
- **Safari** browser installed
- URLs copied to clipboard (one per line)

## How to use

### Step 1: Copy URLs to clipboard
Copy multiple URLs to your clipboard, with each URL on a separate line. For example:
```
https://www.example.com
https://www.google.com
https://www.github.com
```

### Step 2: Run the script
1. Open **Script Editor** (found in Applications > Utilities)
2. Paste the AppleScript code
3. Click the **Run** button (▶️)

### Step 3: Safari opens automatically
- Safari will launch (if not already running)
- A new window opens with the first URL
- Additional tabs are created for each subsequent URL

## Features

- **URL validation**: Only processes valid URLs that start with "http"
- **Automatic cleanup**: Ignores empty lines and invalid entries
- **Error handling**: Shows helpful error message if no valid URLs are found
- **Safari integration**: Automatically activates Safari and organizes tabs

## Use cases

- **Browser migration**: Transfer open tabs from Arc, Chrome, or other browsers to Safari
- **Bookmark restoration**: Quickly open multiple saved URLs
- **Research workflows**: Open multiple research links simultaneously
- **Link sharing**: Receive a list of URLs and open them all at once

## Troubleshooting

### "No valid URLs found in clipboard"
- Ensure URLs are copied to clipboard
- Check that URLs start with `http://` or `https://`
- Verify each URL is on a separate line
- Make sure there are no extra characters or formatting

### Safari doesn't open
- Check that Safari is installed and accessible
- Ensure Safari has permission to be controlled by scripts
- Try running Safari manually first

### Script permission errors
- Go to **System Preferences > Security & Privacy > Privacy > Automation**
- Allow Script Editor to control Safari

## Installation options

### Option 1: Script Editor
1. Open Script Editor
2. Paste the code
3. Save as "Arc to Safari Transfer.scpt"
4. Run when needed

### Option 2: Application
1. In Script Editor, go to **File > Export**
2. Choose **File Format: Application**
3. Save as "Arc to Safari Transfer.app"
4. Double-click the app to run

### Option 3: Service/Quick Action
1. Open **Automator**
2. Create new **Quick Action**
3. Add **Run AppleScript** action
4. Paste the code
5. Save as service for quick access

## License

MIT. This script is provided as-is for personal and educational use.

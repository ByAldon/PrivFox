# PrivFox

**A simple privacy helper for Firefox profiles.**

PrivFox is not a browser. It provides small scripts for Windows and Linux that apply privacy-focused Firefox preferences to your local Firefox profiles by creating or updating Firefox's `user.js` configuration file.

## What PrivFox does

PrivFox helps disable or reduce:

- Mozilla telemetry and data reporting
- Firefox studies and experiments
- Crash report auto-submission
- Firefox Suggest / QuickSuggest sponsored suggestions
- Trending/search suggestions in the address bar
- Sponsored content on the new tab page
- Extension recommendations

Before changing anything, PrivFox creates a backup of an existing `user.js` file if one is already present.

## Requirements

- Windows 10 or Windows 11, or a Linux distribution
- Mozilla Firefox installed
- Firefox must have been opened at least once so a profile folder exists

## How to use

1. Download or clone this repository.
2. Close Firefox completely.

**For Windows:**
3. Right-click `privfox.ps1`.
4. Choose **Run with PowerShell**.

If Windows blocks scripts, open PowerShell in the repository folder and run:

```powershell
powershell -ExecutionPolicy Bypass -File .\privfox.ps1

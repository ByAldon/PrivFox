# PrivFox

**A simple privacy helper for Firefox profiles.**

PrivFox is not a browser. It is a small Windows PowerShell script that applies privacy-focused Firefox preferences to your local Firefox profiles by creating or updating Firefox's `user.js` configuration file.

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

- Windows 10 or Windows 11
- Mozilla Firefox installed
- Firefox must have been opened at least once so a profile folder exists

## How to use

1. Download or clone this repository.
2. Close Firefox completely.
3. Right-click `privfox.ps1`.
4. Choose **Run with PowerShell**.

If Windows blocks scripts, open PowerShell in the repository folder and run:

```powershell
powershell -ExecutionPolicy Bypass -File .\privfox.ps1
```

Then start Firefox again.

## What files does it change?

PrivFox looks for Firefox profiles here:

```text
%APPDATA%\Mozilla\Firefox\Profiles
```

For each profile, it writes:

```text
user.js
```

If `user.js` already exists, PrivFox creates a backup first:

```text
user.js.backup-YYYYMMDD-HHMMSS
```

## How to undo

Open your Firefox profile folder and either:

- delete `user.js`, or
- restore the backup file created by PrivFox.

After that, restart Firefox.

## Important note

Some Firefox preferences may change, disappear, or behave differently in future Firefox versions. PrivFox is intentionally simple and transparent, so you can inspect every preference before running it.

## Disclaimer

PrivFox is an independent project and is not affiliated with, endorsed by, or sponsored by Mozilla or Firefox.

Firefox is a trademark of the Mozilla Foundation.

## License

This project is released under the MIT License.

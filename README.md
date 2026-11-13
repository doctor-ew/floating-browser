# Floating Browser

A small macOS browser window for keeping websites and web video visible above other apps without relying on Safari Picture-in-Picture.

## Fork attribution

This fork is based on [Floating Browser by Chris Hansen](https://github.com/chrishansen1984x-lang/floating-browser). The original copyright notice and [MIT license](LICENSE) are retained.

This fork adds browser tabs, adjustable window transparency, and a Pluto TV Home shortcut. It is maintained independently of the original project.

![Floating Browser Home screen](Screenshots/FloatingBrowser-Home.png)

## Install

This fork currently provides source only. Build it using **Build From Source** below. The prebuilt download instructions that follow describe the original project's releases.

Download the `.dmg` from the repository's **Releases** page. Open it, then drag **Floating Browser** into **Applications**.

Do not download GitHub's automatically generated "Source code" archives unless you intend to build the app yourself.

Floating Browser requires macOS 14 or later and supports both Apple silicon and Intel Macs.

### Unsigned Public Beta

The current free beta is not signed with an Apple Developer ID or notarized by Apple. macOS will block its first launch:

1. Try to open **Floating Browser** from Applications.
2. Open **System Settings > Privacy & Security**.
3. Scroll to Security and click **Open Anyway** for Floating Browser.
4. Confirm **Open**.

Do not disable Gatekeeper or run Terminal bypass commands. Read [UNSIGNED_BETA_INSTALL.md](UNSIGNED_BETA_INSTALL.md) before installing.

## Use

- Select **+** in the tab bar or press `Command-T` to open a new tab. Select a tab to switch pages, or use its **×** button or `Command-W` to close it. Closing the last tab opens a fresh Home tab. Tabs remain open for the current session; the tab list is not restored after quitting.
- Links that request a new window open in a new tab. `Command`-click a web link to open it in a new tab.
- Choose **More > Transparency** to adjust window transparency from 0% to 75%. The setting is saved and also applies in Mini Player.
- Select the house button to return to the site launcher.
- The launcher includes Netflix, YouTube, Hulu, Disney+, Max, Prime Video on Amazon, Apple TV+, Peacock, Paramount+, Tubi, and Pluto TV.
- Open any page, then choose **More > Add Current Site** to save it to the launcher.
- Open **More** to edit, reorder, or remove saved sites; open the page in Safari; open Passwords; change ad blocking; or toggle always-on-top behavior.
- Select the Mini Player button after video starts to create a compact borderless window. Its corner controls close Mini or return to the full browser.
- Press `Command-L` to select the address field and `Command-R` to reload.
- Use **More > Open in Safari** when a streaming service refuses embedded playback.

Website behavior can change without an app update. Some services allow browsing but reject protected video in embedded WebKit views. The blocker is intentionally lighter than browser extensions such as uBlock Origin and pauses itself on major streaming services for compatibility.

Safari Password AutoFill is not available for arbitrary third-party sites inside an ordinary embedded WebKit app. Use **More > Open Passwords...** to retrieve a login manually, or **More > Open in Safari** for Safari's full AutoFill experience. Floating Browser never reads or stores passwords itself.

Floating Browser is not affiliated with, endorsed by, or sponsored by any third-party service linked from its launcher.

## Privacy

Floating Browser has no developer analytics, advertising, or developer-operated data collection service. Website data stays in WebKit's local storage on the Mac and can be removed with **More > Clear Website Data**. See [PRIVACY.md](PRIVACY.md).

## Build From Source

Requirements:

- macOS 14 or later
- Xcode with the macOS SDK
- Swift 6

```sh
./build-local.sh
```

The local build installs to:

```text
/Applications/Floating Browser.app
```

Run the tests without installing:

```sh
swift test
```

Create the unsigned public-beta DMG and checksum:

```sh
./package-unsigned-beta.sh
```

## Contributing

Bug reports and focused pull requests are welcome. Never post streaming-account credentials, private URLs, cookies, or personal browsing information in an issue. See [CONTRIBUTING.md](CONTRIBUTING.md).

Floating Browser is released under the [MIT License](LICENSE).

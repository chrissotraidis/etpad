<h1 align="center">ETPad</h1>

<p align="center">
  <strong>Wolfenstein: Enemy Territory, native on iPad.</strong><br>
  The classic objective-based WWII shooter on iPad and Apple silicon Mac, built on ET: Legacy. Join live servers,
  practice against bots offline, and play with touch, an Xbox or PlayStation controller, or keyboard and mouse.
  The original game data is free and downloads inside the app.
</p>

<p align="center">
  <a href="https://github.com/chrissotraidis/etpad/releases/latest"><img alt="Release 0.1.1 preview" src="https://img.shields.io/badge/release-0.1.1%20preview-FF9F0A"></a>
  <img alt="iPadOS 16 or later" src="https://img.shields.io/badge/iPadOS-16%2B-0A84FF?logo=apple">
  <img alt="Apple silicon Mac" src="https://img.shields.io/badge/Mac-Apple%20silicon-0A84FF?logo=apple">
  <img alt="ET: Legacy 2.86.2" src="https://img.shields.io/badge/ET%3A%20Legacy-2.86.2-B22222">
  <img alt="Native ARM64" src="https://img.shields.io/badge/runtime-native%20ARM64-30D158">
  <img alt="Renderer: Metal through ANGLE" src="https://img.shields.io/badge/renderer-Metal%20(ANGLE)-5E5CE6">
  <img alt="Free game data downloads in the app" src="https://img.shields.io/badge/game%20data-free%20in--app%20download-8E8E93">
  <a href="COPYING.txt"><img alt="License: GPLv3" src="https://img.shields.io/badge/license-GPLv3-8E8E93"></a>
  <a href="https://github.com/chrissotraidis/padmint"><img alt="Build with PadMint" src="https://img.shields.io/badge/PadMint-build%20your%20own-3EB489"></a>
  <a href="https://discord.gg/xwHfUD2bxW"><img alt="Join the community on Discord" src="https://img.shields.io/badge/Discord-Join%20the%20community-5865F2?logo=discord&amp;logoColor=white"></a>
</p>

<p align="center">
  <a href="#get-etpad"><strong>Get ETPad</strong></a> ·
  <a href="#controls">Controls</a> ·
  <a href="#a-look-around">Screenshots</a> ·
  <a href="#status">Status</a> ·
  <a href="#frequently-asked-questions">FAQ</a>
</p>

<p align="center">
  <img src="docs/readme/hero-launcher.jpg" alt="The ETPad launcher on iPad: Play Online, Practice with Bots and Main Menu over wartime poster art" width="920">
</p>

ETPad is an unofficial Apple port of [ET: Legacy](https://www.etlegacy.com/),
the open-source continuation of Splash Damage and id Software's
Wolfenstein: Enemy Territory. The ET: Legacy 2.86.2 engine, Legacy mod and
network protocol are kept, so ETPad plays on the same public servers as
desktop players. ETPad adds what an iPad needs: a native launcher, a live server
browser, touch controls designed around ET's HUD, controller, keyboard and mouse
handoff, offline bots, in-app game data download and external displays.

> [!NOTE]
> **ETPad 0.1.0 is out.** [Download it](https://github.com/chrissotraidis/etpad/releases/latest),
> build your own copy with [PadMint](https://github.com/chrissotraidis/padmint),
> or build from source. It's an early preview: it installs and plays on a
> physical iPad Pro, with bot rounds and public servers. Long sessions, every
> controller family, keyboard and trackpad, and external displays still need
> more testing on real hardware. [Tell us how it goes.](https://github.com/chrissotraidis/etpad/issues/new/choose)

## Highlights

<table>
  <tr>
    <td width="50%"><img src="docs/readme/touch-oasis.jpg" alt="Oasis warmup on iPad with the invisible movement stick, the FIRE button and the inner and outer rings of touch controls"></td>
    <td width="50%"><img src="docs/readme/whos-playing.jpg" alt="The Who's Playing Now server list with live ET: Legacy servers, maps, player and bot counts and ping"></td>
  </tr>
  <tr>
    <td valign="top"><strong>Built for thumbs.</strong> Your left thumb moves with an invisible stick that appears under it, and your right thumb aims. FIRE sits under your right thumb, with jump, reload, crouch and the rest in rings around it, clear of ET's health and ammo HUD.</td>
    <td valign="top"><strong>Real servers, right now.</strong> <strong>Play Online</strong> asks the official masters and lists live ET: Legacy servers with players, bots, map and ping. Tap to join; maps download on first join.</td>
  </tr>
  <tr>
    <td width="50%"><img src="docs/readme/command-map.jpg" alt="ET's command map and player setup on Oasis, ready to pick a team and class"></td>
    <td width="50%"><img src="docs/readme/mac-battery.jpg" alt="Battery on a public server in the Apple silicon Mac build"></td>
  </tr>
  <tr>
    <td valign="top"><strong>Practice offline.</strong> <strong>Practice with Bots</strong> starts a round on Oasis, Goldrush, Radar, Battery, Fuel Dump or Rail Gun with 5, 9 or 15 bots. No network needed.</td>
    <td valign="top"><strong>On your Mac too.</strong> The same engine builds as a native Apple silicon Mac app that plays on the same servers.</td>
  </tr>
</table>

## Get ETPad

You need an iPad on iPadOS 16 or later. ETPad needs Wolfenstein: Enemy Territory's
original data files, which Splash Damage gives away for free: on first launch,
tap **Download Free Game Data** and ETPad fetches and verifies them for you. If
you already have `pak0.pk3`, `pak1.pk3` and `pak2.pk3`, you can import them
from Files instead.

<details open>
<summary><strong>Download the app</strong> (easiest)</summary>

1. Download `ETPad-unsigned.ipa` from the
   [latest release](https://github.com/chrissotraidis/etpad/releases/latest).
2. Install it with a sideloading tool that signs it with your own Apple ID, such
   as [Sideloadly](https://sideloadly.io/) (Mac or Windows) or
   [AltStore](https://altstore.io/). Developers can sign it with Xcode or `devicectl`.
3. Open ETPad, tap **Download Free Game Data**, then **Play Online** or
   **Practice with Bots**.

With a free Apple ID, iPadOS stops opening sideloaded apps after seven days.
Refresh or reinstall over the existing app; your settings and game data stay.

</details>

<details>
<summary><strong>Build your own copy with PadMint</strong> (Apple silicon Mac)</summary>

With Xcode and its iOS platform installed, plus `brew install cmake ninja xcodegen`,
open [PadMint](https://github.com/chrissotraidis/padmint) and choose **ETPad**.
There is no game file to pick: the game data downloads inside the app after you
install it. PadMint builds the latest release in about 10 minutes with about
4 GB of free space, and checks the result.

</details>

<details>
<summary><strong>Build from source</strong></summary>

You need an Apple silicon Mac with full Xcode selected, about 8 GB of free space and:

```sh
brew install cmake ninja xcodegen
git clone https://github.com/chrissotraidis/etpad.git
cd etpad

# Unsigned iPad app and IPA
scripts/build-etpad.sh --platform device --output build/output \
  --ipa build/output/ETPad-unsigned.ipa

# Apple silicon Mac app and ZIP
scripts/build-etpad.sh --platform macos --output build/output \
  --zip build/output/ETPad-mac.zip
```

The script fetches pinned dependencies and checks the `libs` submodule. Sign and
install the IPA as above. On Mac, `/usr/bin/python3 scripts/prepare-game-data.py --download`
fetches and verifies the free game data. [BUILDING.md](docs/BUILDING.md) covers
launching the Mac app, the iPad Simulator, optional Mac bots and the optional
Vulkan renderer.

</details>

**Updating:** install the new version over the existing app. Deleting ETPad
first also deletes its settings, downloaded maps and game data.

## Controls

**Touch.** The left thumb drives an invisible floating stick that appears where
you touch; push it well past the rim to sprint. The right thumb looks. **FIRE**
is the large red button: hold it and slide to aim while firing. Jump, Reload,
Alt and Crouch ring FIRE, with Use, weapon Next/Prev and Prone on an outer ring.
Score, Menu and Chat sit under **•••** at the top left, and **Back** closes ET's
menus.

**Controller.** Xbox, PlayStation and MFi controllers work everywhere, including
ET's own menus (the left stick moves the cursor, A clicks, B goes back).

| Controller | Action |
| --- | --- |
| Left / right stick | Move / look |
| RT / LT | Fire / alternate fire or scope |
| A / B / X / Y | Jump / crouch / reload / grenade |
| LB | Use (doors, ladders, objectives) |
| Hold RB | Quick-chat wheel: point the right stick, release to send |
| L3 / R3 | Sprint / prone |
| View / Menu | Scoreboard / game menu |
| D-pad right / left | Next weapon / last weapon |
| D-pad up / down | Class tool (syringe, pliers, smoke) / class item (health, ammo, dynamite) |

**Keyboard and mouse.** ET's standard bindings. During play the pointer locks for
mouse look; in menus it clicks normally.

Every input works at any time. Picking up a controller or typing hides the touch
controls, and the next touch brings them back without firing a shot. The **•••**
menu holds match actions, Settings (touch layout, controller mapping, resolution,
field of view, player name) and Help. [CONTROLS.md](docs/CONTROLS.md) has every
binding and the full touch reference.

## A look around

<table>
  <tr>
    <td width="50%"><img src="docs/readme/map-download.jpg" alt="ET's own map download screen fetching a server's data pack on iPad"></td>
    <td width="50%" valign="middle"><strong>Join any Legacy server</strong><br>First joins download the server's maps and data through ET's own downloader. Downloaded files are data only; ETPad runs just its built-in Legacy mod.<br><br><sub>Screenshots: iPad Pro 12.9-inch (6th generation) running ETPad, and the Apple silicon Mac build on a public server.</sub></td>
  </tr>
</table>

## Frequently asked questions

### Installing

<details>
<summary><strong>Is there an App Store version?</strong></summary>

No. Download the unsigned IPA and install it with Sideloadly, AltStore or Xcode,
or build your own copy with PadMint. No jailbreak is needed.

</details>

<details>
<summary><strong>Do I need to own Enemy Territory?</strong></summary>

No. Wolfenstein: Enemy Territory has been a free download from
[Splash Damage](https://www.splashdamage.com/games/wolfenstein-enemy-territory/)
since 2003. ETPad downloads that official release inside the app, checks every
file's SHA-256, and copies out only the three data files it needs. It never runs
the installer. The data stays under its original EULA and is never bundled in
ETPad's builds. Details: [GAME_DATA.md](docs/GAME_DATA.md).

</details>

<details>
<summary><strong>Which iPads does it run on?</strong></summary>

Any iPad on iPadOS 16 or later, in landscape. It has been played on an iPad Pro
12.9-inch (6th generation) and tested in the iPad Simulator. iPhone is not
supported.

</details>

<details>
<summary><strong>It stopped opening after a week</strong></summary>

Apps signed with a free Apple ID expire after seven days. Refresh it in your
sideloading tool, or install the IPA again over the existing app. A paid Apple
Developer account signs for a year.

</details>

### Playing

<details>
<summary><strong>Can I play online with PC players?</strong></summary>

Yes, on ET: Legacy servers that run the standard Legacy mod, which is most of
the ones listed under **Play Online**. Servers that need another mod with its own
code (Jaymod, ETPro, N!tmod and others) can't be joined on iPad, because iPadOS
doesn't allow apps to load downloaded code. ETPad tells you when that's the case.

</details>

<details>
<summary><strong>Can I play alone?</strong></summary>

Yes. **Practice with Bots** starts an offline round with 5, 9 or 15 bots on six
classic maps. You can also host a game for your local network from ET's own menu.

</details>

<details>
<summary><strong>Does it work with an external display?</strong></summary>

The game follows its window to a connected display and uses that screen's
resolution, the same approach the other Pad ports use. It hasn't been checked
with a physical monitor yet; reports are welcome.

</details>

<details>
<summary><strong>How does it run?</strong></summary>

ET's engine runs natively on ARM64 and renders through ANGLE to Metal. An
optional Vulkan → MoltenVK → Metal renderer also works. Measurements and their
limits are in [PERFORMANCE.md](docs/PERFORMANCE.md).

</details>

### Problems and the project

<details>
<summary><strong>Something went wrong. What should I send?</strong></summary>

Open **••• → Help → Report a Problem**. ETPad prepares your description with
device information and a short log for you to review, then you share it; nothing
is sent automatically. Attach it to a
[bug report](https://github.com/chrissotraidis/etpad/issues/new/choose). If the
problem also happens in desktop ET: Legacy, report it to
[ET: Legacy](https://github.com/etlegacy/etlegacy/issues) as well.

</details>

<details>
<summary><strong>Is this an official ET: Legacy release?</strong></summary>

No. ETPad is an independent community port, not affiliated with or endorsed by
the ET: Legacy team, Splash Damage, id Software, Bethesda or ZeniMax.

</details>

<details>
<summary><strong>What does ETPad change in ET: Legacy?</strong></summary>

ETPad keeps ET: Legacy's full history from baseline
`f49e6db1e54eb292b4abe9e761210bf98522672f`. Its Apple work lives under
[`apple/`](apple/): the iPad app shell, launcher, server browser, touch
and controller input, game data download and packaging. Engine fixes it needed
(such as a large-download fix) are small and recorded in
[DECISIONS.md](docs/DECISIONS.md), which also credits the adapted UTP, TribesPad,
GoldenPad and SunPad components.

</details>

<details>
<summary><strong>Was AI used to make it?</strong></summary>

Yes. ETPad uses substantial AI assistance for code, tests, documentation,
debugging and maintenance. There is no audited percentage of AI-generated code;
build, test and device-acceptance records state what has actually been checked.
This describes ETPad's workflow, not the authorship of ET: Legacy, Enemy
Territory or its other upstream projects.

</details>

## Status

| Area | State |
| --- | --- |
| Physical iPad | iPad Pro 12.9" (6th gen): install, in-app data download, Oasis and Goldrush bot rounds, live server list and a public server join with map download |
| iPad Simulator | Data setup, touch menus, bot rounds through intermission, landscape and resume, public map rotations and reconnect |
| Apple silicon Mac | Source-built app: Oasis and Goldrush bot rounds, ten minutes on a public server with a map change and reconnect |
| Engine | ET: Legacy 2.86.2 with the built-in Legacy mod; Metal through ANGLE, optional Vulkan through MoltenVK |
| Not yet checked on hardware | Every controller family, keyboard and trackpad, external displays, long sessions |

Test procedures, logs and package audits are in [HANDOFF.md](docs/HANDOFF.md).

## Contributing

The most useful help right now is reports from real iPads: model, iPadOS
version, how you were playing, what happened, and a screenshot or the report
from **Report a Problem**. Use the
[issue forms](https://github.com/chrissotraidis/etpad/issues/new/choose) or say
hello on [Discord](https://discord.gg/xwHfUD2bxW). Keep game files, saves and
credentials out of issues, and follow [SECURITY.md](SECURITY.md) for
security-sensitive reports.

<details>
<summary><strong>Developer notes</strong></summary>

Run builds serially from the repository root. The iPad Simulator app builds with
`scripts/build-etpad.sh --platform simulator --output build/output`, and
[`scripts/sim.sh`](scripts/sim.sh) drives one reserved Simulator; never run the
Mac game and the Simulator together. See [SIMULATOR.md](docs/SIMULATOR.md).

The read-only [`check-apple-package.py`](scripts/check-apple-package.py) audits
architectures, dependencies, runtime paths, signatures and the media boundary of
every export. Upstream engine development follows ET: Legacy's
[CONTRIBUTING.md](CONTRIBUTING.md).

| Guide | Contents |
| --- | --- |
| [Building](docs/BUILDING.md) | Build and launch commands, bots, optional Vulkan, package audit |
| [Controls](docs/CONTROLS.md) · [UI design](docs/UI-DESIGN.md) | Bindings, touch and menu behavior, layouts |
| [Game data](docs/GAME_DATA.md) | Official source, SHA-256 pins and EULA |
| [Performance](docs/PERFORMANCE.md) | Profiling method and measurements |
| [Handoff](docs/HANDOFF.md) | Acceptance, evidence and open gates |
| [Releasing](docs/RELEASING.md) | Release checklist, PadMint recipe and player check |
| [Decisions](docs/DECISIONS.md) · [Goal](docs/GOAL.md) | Architecture, provenance and requirements |

| Path | Purpose |
| --- | --- |
| `apple/ios/Host/` | iPad app: launcher, server browser, touch controls, settings and data setup |
| `apple/ios/`, `apple/macos/`, `apple/shared/` | Engine platform layers, renderer glue and shared input |
| `src/`, `etmain/` | ET: Legacy engine and Legacy mod |
| `scripts/` | Build, data, Simulator and package-audit tools |
| `docs/` | Guides, evidence and decisions |
| `padmint.json` | PadMint build recipe |

</details>

## Credits and licensing

ETPad builds on [ET: Legacy](https://github.com/etlegacy/etlegacy), derived from
id Software and Splash Damage's Wolfenstein: Enemy Territory. Apple integration
uses SDL, GL4ES, ANGLE, Omni-bot and optional MoltenVK, and adapts components
from UTP, TribesPad, GoldenPad and SunPad, with exact provenance in
[DECISIONS.md](docs/DECISIONS.md).

Engine and mod source is GPLv3-or-later with the additional terms and exclusions
below; see [COPYING.txt](COPYING.txt). Builds include the GPL Legacy mod pack and
dependency notices. Wolfenstein: Enemy Territory's original game data is
separately licensed, never included, and not relicensed by this project.
Wolfenstein and Enemy Territory are trademarks of their respective owners.

## LICENSE

### ET: Legacy

Wolfenstein: Enemy Territory GPL Source Code
Copyright (C) 1999-2010 id Software LLC, a ZeniMax Media company.

OpenWolf GPL Source Code
Copyright (C) 2011 Dusan Jocic

XreaL GPL Source Code (renderer2)
Copyright (C) 2010-2011 Robert Beckebans

Quake3e GPL Source Code
Copyright (C) 2016 Eugene

ET: Legacy
Copyright (C) 2012-2024 ET:Legacy Team <mail@etlegacy.com>

  ET: Legacy is free software: you can redistribute it and/or modify it under
  the terms of the GNU General Public License as published by the Free Software
  Foundation, either version 3 of the License, or (at your option) any later
  version.

  ET: Legacy is distributed in the hope that it will be useful, but WITHOUT ANY
  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
  A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

  You should have received a copy of the GNU General Public License along with
  ET: Legacy (see COPYING.txt). If not, see <https://www.gnu.org/licenses/>.

  ADDITIONAL TERMS:  The Wolfenstein: Enemy Territory GPL Source Code is also
  subject to certain additional terms. You should have received a copy of these
  additional terms immediately following the terms and conditions of the GNU GPL
  which accompanied the Wolf ET Source Code.  If not, please request a copy in
  writing from id Software at id Software LLC, c/o ZeniMax Media Inc., Suite 120,
  Rockville, Maryland 20850 USA.

  EXCLUDED CODE:  The code described below and contained in the Wolfenstein:
  Enemy Territory GPL Source Code release is not part of the Program covered by
  the GPL and is expressly excluded from its terms.  You are solely responsible
  for obtaining from the copyright holder a license for such code and complying
  with the applicable license terms.


### MD4 Message-Digest Algorithm

Copyright (C) 1991-1992, RSA Data Security, Inc. Created 1991. All rights reserved.

  License to copy and use this software is granted provided that it is identified
  as the "RSA Data Security, Inc. MD4 Message-Digest Algorithm" in all mater
  ial mentioning or referencing this software or this function.

  License is also granted to make and use derivative works provided that such work
  s are identified as "derived from the RSA Data Security, Inc. MD4 Message-Digest
  Algorithm" in all material mentioning or referencing the derived work.

  RSA Data Security, Inc. makes no representations concerning either the merchanta
  bility of this software or the suitability of this software for any particular p
  urpose. It is provided "as is" without express or implied warranty of any
  kind.


### MD5 Message-Digest Algorithm

The MD5 algorithm was developed by Ron Rivest. The public domain C language
implementation used in this program was written by Colin Plumb in 1993, no copyright
is claimed.

  This software is in the public domain. Permission to use, copy, modify, and
  distribute this software and its documentation for any purpose and without fee is
  hereby granted, without any conditions or restrictions. This software is provided
  "as is" without express or implied warranty.

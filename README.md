# Ores Avoid Water

[![GitHub](https://img.shields.io/badge/Github-Source-white?logo=github)](https://github.com/Eldrinn-Elantey/ores-avoid-water)

Moves ore patches out of lakes in Factorio 2.1. Map generation picks each patch center from a set of candidate points, and this mod makes it prefer the ones on land. Patch count and ore amount stay the same.

## What it does

- Regular ore patches spawn on land when their region has dry candidates, and fall back to water when it has none
- Starting patches avoid lakes under Space Exploration, which turns the vanilla lake check off
- Works with Space Exploration placement on Nauvis, planets and moons, and with vanilla placement
- Covers every resource placed through these functions, including Krastorio 2 ores

The mod moves patch centers only. A large patch next to the shore can still reach into the water at its edge.

It changes newly generated chunks. Chunks you already explored keep their ore where it was.

## Installation

Download `ores-avoid-water_<version>.zip` from [Releases](https://github.com/Eldrinn-Elantey/ores-avoid-water/releases) and put it into `%APPDATA%\Factorio\mods` without unpacking. In multiplayer every player needs the same version.

Water Ores lets ore spawn on water tiles, which works against this mod. Turn it off if you want ore on land.

## Compatibility

The mod edits the patch placement expressions of Space Exploration and of the base game. If a Space Exploration update changes their format, the mod leaves them as they are and writes a warning to `factorio-current.log`.

MIT licensed, see [License.txt](License.txt).

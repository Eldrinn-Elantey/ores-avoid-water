# Ores Avoid Water

[![FACTORIO](https://img.shields.io/badge/dynamic/json?color=orange&label=Factorio&query=downloads_count&suffix=%20downloads&url=https://mods.factorio.com/api/mods/ores-avoid-water&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAACGVBMVEUAAAABAAAAAQAAAAEBAQEAAQEBAQDYhDvehje8eDmAgYDShj+ZZjPfhTfDdTiPUyvrkDynZTDafTTSeziCTSqeZzK2dTXWgT2NUzSAgQCMWjhtRjTVfTZ3QyJBQEDefzRrLA1gLQdwLASFOQtPLinkjELLeDZtLwxJJBKWPQ+cSxtkMiJdOiP1kz1XIgawYy2STyZlPi63dDpxRCVeIQbFjlVXOSmcbDusbjZ4Mgx2OhS/YCHTpW5GIhRnOhtDLCW2czeEOg+FNA2oYy7KllwnGhbNZjK/dTYpHxh9UTFOKhiAAQFIMCY3IhcdEg4oHBkpGxUZEBFbNhsvIh95RSFpOhsbDQ0AAQAyIxkAAABJMyQqIh4oHBq2bCzgijunZTSfViqtYy2yfU2udT6xay2zaiu3aii1aC2gXCynWiiuYiuYWS2qc0e5eD25bCqjYSmcWiSdVyO1aCulYyqZVCaXSR24dT2yaCmXVCWlXSevZiqFRSDEgEivaS2YXyyvZCqnYCq2bzGseUWpZSqJVSexajKyZyh/Ox2SYDaiZSqVVSaybje2aCmCPBiqYSacYSqlZCzBayurYSmdXy2vaSmfWia6dz66ayZyPh6NUyekXCamZiqrZSyoYSu3bTO7aCvFbiehVyNNJxdvSCuaXClLKRd/SSOiYSm6bSu5aii0YiaHQxxxPBySVidHJxlzOx1YLRdTOCGeXii5isPXAAAAXXRSTlMAAAAAAAAAcN1nAlUFF8mflsS//v64O12UAmBUPcEEv9t6e9+7aKHaDhHf/RbeeH7Cb27Hd3zjGv7YDRDd/ppnxNp4edy2BcYzWFQClFg2ufy6vo6gwBQDUQFp32wXrE9IAAAAvElEQVQYGQXBPyuEAQAH4N/zXlJKdimTstxCBouRSOjcnzK4T6ZEce+dk7AwGQ0m020WMSulnLvzPJIkJtP8JDKRzPA9a//2K0XGFTG3d8eue/Apmd8C4OZDsnAAoONdstiigyblWyxpUhpY1tAzUK2j+1qMi2qTkhUNui9JsdpER7GmpfScdQ09pNg45Ao1+k9D2VQDcPEwke0jAE4e/9iBNqe0z64jpn4ro/rxuX6dy4hiVIyPKIcmSf4BuN02xRLLCCIAAAAASUVORK5CYII=)](https://mods.factorio.com/mod/ores-avoid-water) [![GitHub](https://img.shields.io/badge/Github-Source-white?logo=github)](https://github.com/Eldrinn-Elantey/ores-avoid-water)

Moves ore patches out of lakes in Factorio 2.1. Map generation picks each patch center from a set of candidate points, and this mod makes it prefer the ones on land. Patch count and ore amount stay the same.

## What it does

- Regular ore patches spawn on land when their region has dry candidates, and fall back to water when it has none
- Starting patches avoid lakes under Space Exploration, which turns the vanilla lake check off
- Works with Space Exploration placement on Nauvis, planets and moons, and with vanilla placement
- Covers every resource placed through these functions, including Krastorio 2 ores

The mod moves patch centers only. A large patch next to the shore can still reach into the water at its edge.

It changes newly generated chunks. Chunks you already explored keep their ore where it was.

## Compatibility

The mod edits the patch placement expressions of Space Exploration and of the base game. If a Space Exploration update changes their format, the mod leaves them as they are and writes a warning to `factorio-current.log`.

[Water Ores](https://mods.factorio.com/mod/Water_Ores) lets ore spawn on water tiles, which works against this mod. Turn it off if you want ore on land.

MIT licensed, see [License.txt](https://github.com/Eldrinn-Elantey/ores-avoid-water/blob/master/License.txt).

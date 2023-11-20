# Made in Haxe (Bare)

Made in Haxe is a barebones sample mod, which adds a functionless new item and a new Creative Mode tab to hold it.

It does this WITHOUT using PickHaxe's compatibility APIs. The code in these repos is instead very similar to standard sample projects for the respective loader, but adapted for Haxe. You still use PickHaxe's build tools to create each mod, but without the inter-version and inter-loader compat, each mod will only work for one version of Minecraft.

## Compatibility

MC Version | Forge | Fabric
---|---|---
1.20.2 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-bare-forge-1.20.2_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-bare-fabric-1.20.2_develop)
1.19.4 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-bare-forge-1.19.4_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-bare-fabric-1.19.4_develop)

## Building

- Make sure you have Haxe 5.0.0-dev installed.
- `cd ./fabric-1.19.4/`
- `haxelib run pickhaxe build fabric 1.19.4`
- `haxelib run pickhaxe make fabric 1.19.4`
- Look in `./build/fabric/1.19.4/`
# Made in Haxe

Made in Haxe is a barebones sample mod, which adds a functionless new item and a new Creative Mode tab to hold it.

It does this WITHOUT using the PickHaxe Compat library. The code in these repos is very similar to standard sample projects for the respective loader, but migrated for Haxe. You still use PickHaxe's build tools to create each mod, but without the inter-version and inter-loader compat, each mod will only work for one version of Minecraft.

## Compatibility

MC Version | Forge | Fabric
---|---|---
1.21.1 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.21.1_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.21.1_develop)
1.20.6 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.20.6_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.20.6_develop)
1.19.4 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.19.4_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.19.4_develop)
1.18.2 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.18.2_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.18.2_develop)
1.17.1 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.17.1_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.17.1_develop)
1.16.5 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.16.5_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.16.5_develop)

## Building

- Make sure you have Haxe 5.0.0-dev installed.
- `cd ./fabric-1.21.1/`
- `haxelib run pickhaxe build fabric 1.21.1`
- `haxelib run pickhaxe make fabric 1.21.1`
- Look in `./build/fabric/1.21.1/`
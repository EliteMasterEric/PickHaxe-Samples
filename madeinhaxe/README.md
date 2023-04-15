# Made in Haxe

Made in Haxe is a barebones sample mod, which adds a functionless new item and a new Creative Mode tab to hold it.


## Compatibility

MC Version | Forge | Fabric
---|---|---
1.19.4 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.19.4_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.19.4_develop)
1.19.3 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.19.3_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.19.3_develop)
1.19.2 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.19.2_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.19.2_develop)
1.19.1 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.19.1_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.19.1_develop)
1.19 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.19_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.19_develop)
1.18.2 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.18.2_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.18.2_develop)
1.18.1 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.18.1_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.18.1_develop)
1.18 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.18_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.18_develop)
1.17.1 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.17.1_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.17.1_develop)
1.17 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.17_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.17_develop)
1.16.5 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.16.5_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.16.5_develop)
1.16.4 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.16.4_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.16.4_develop)
1.16.3 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.16.3_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.16.3_develop)
1.16.2 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.16.2_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.16.2_develop)
1.16.1 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.16.1_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.16.1_develop)
1.16 | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-forge-1.16_develop) | ![](https://byob.yarr.is/EliteMasterEric/Pickhaxe-Samples/build-madeinhaxe-fabric-1.16_develop)

**Legend**:
- `✓`: Builds and runs successfully in a modded game
- `⚠`: Fails to build due to issues with external libraries
- `✗`: Fails to build due to issues with PickHaxe
- `?`: Not tested

**Issue List**:
- Tested using the `develop` version of PickHaxe
- 1.19.4 Forge: Requires using `--mappings mojang` on build and make


## Building

- Make sure you have Haxe 4.3.0 installed.
- `haxelib run pickhaxe build fabric 1.19.3`
- `haxelib run pickhaxe gradlew fabric 1.19.3 build`
- Look in `./build/fabric/1.19.3/`
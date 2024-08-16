# PickHaxe Compat

PickHaxe Compat is a library for PickHaxe projects designed to assist in the creation of Minecraft mod projects which compile to Minecraft mods for multiple game versions and mod loaders, without splitting code into additional paths or branches.

# Usage

Download `pickhaxe-compat` via [haxelib](https://lib.haxe.org/p/PickHaxe/):

```
haxelib git pickhaxe-compat https://github.com/EliteMasterEric/pickhaxe-compat
```

Then add an entry to your PickHaxe project's `project.xml`:

```xml
<haxelib name="pickhaxe-compat" />
```

# Support

If you have a question, please head to one of the official discussion areas:
- The [PickHaxe Discussions](https://github.com/EliteMasterEric/PickHaxe/discussions) page.
- The [forum thread](https://discord.com/channels/162395145352904705/1085695464466296932) on the official Haxe Discord.
- The [Issues tab](https://github.com/EliteMasterEric/PickHaxe/issues).

# Contributing

Contributions are highly welcome and greatly appreciated. See [CONTRIBUTING.md](/CONTRIBUTING.md) for more information.

# License

PickHaxe's tools and APIs are made available under the MIT License. See [LICENSE.md](/LICENSE.md) for more details.

PickHaxe's sample projects are made available under the LGPLv3 License. See [LICENSE.md](https://github.com/EliteMasterEric/PickHaxe-Samples/blob/master/LICENSE.md) for more details.

PickHaxe's Minecraft API is generated from official mapping names from Mojang for fields and methods in the Minecraft codebase. These names are covered by a specific license. All modders should be aware of this license. For the latest license text, refer to the mapping file itself, or the reference copy here: https://github.com/MinecraftForge/MCPConfig/blob/master/Mojang.md

PickHaxe's Minecraft API includes documentation generated from the [Parchment mappings](https://parchmentmc.org/), which are made available under a CC0 1.0 Universal license. See [LICENSE.txt](https://github.com/ParchmentMC/Parchment/blob/versions/1.20.x/LICENSE.txt) for more details.

PickHaxe interoperates with the [Fabric](https://fabricmc.net/) mod loader and the [Forge](https://github.com/MinecraftForge/MinecraftForge) mod loader respectively; these are licensed under the Apache v2 and LGPL licenses, respectively.

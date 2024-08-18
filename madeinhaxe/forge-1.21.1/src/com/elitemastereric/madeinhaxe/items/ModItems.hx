package com.elitemastereric.madeinhaxe.items;

import com.elitemastereric.madeinhaxe.MadeInHaxeMod;

import net.minecraft.core.Registry;
import net.minecraft.core.registries.Registries;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.resources.ResourceKey;
import net.minecraft.world.item.CreativeModeTab;
import net.minecraft.world.item.CreativeModeTabs;
import net.minecraft.world.item.Item;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraft.world.item.Item.Properties as ItemProperties;
import net.minecraft.world.item.Tier;
import net.minecraft.network.chat.Component;
import net.minecraftforge.registries.RegistryObject;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.fml.javafmlmod.FMLJavaModLoadingContext;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.event.BuildCreativeModeTabContentsEvent;

/**
 * A static container for all of our items.
 */
class ModItems {
    // References to our items..

    // Create a Deferred Register to hold Items which will all be registered under the "madeinhaxe" namespace
    public static final ITEMS:DeferredRegister<Item> = DeferredRegister.create(ForgeRegistries.ITEMS, MadeInHaxeMod.MOD_ID);
    // Create a Deferred Register to hold CreativeModeTabs which will all be registered under the "madeinhaxe" namespace
    public static final CREATIVE_MODE_TABS:DeferredRegister<CreativeModeTab> = DeferredRegister.create(Registries.CREATIVE_MODE_TAB, MadeInHaxeMod.MOD_ID);

    public static final GLYPH_HAXE:RegistryObject<Item> = ITEMS.register("glyph_haxe", () -> new Item(new ItemProperties()));

    // Item Groups
    public static final ITEM_GROUP:RegistryObject<CreativeModeTab> = CREATIVE_MODE_TABS.register("made_in_haxe", () -> CreativeModeTab.builder()
            .withTabsBefore(CreativeModeTabs.SPAWN_EGGS.location())
            .title(Component.translatable("itemGroup.madeinhaxe.made_in_haxe"))
            .icon(() -> GLYPH_HAXE.get().getDefaultInstance())
            .displayItems(ModItems.addItemsToGroup)
            .build());

    static function addItemsToGroup(parameters:CreativeModeTab_ItemDisplayParameters, output:CreativeModeTab_Output):Void {
        output.accept(GLYPH_HAXE.get().getDefaultInstance());
    }

    public static function addListeners(modEventBus:IEventBus):Void {
        // Register the Deferred Register to the mod event bus so items get registered
        ModItems.ITEMS.register(modEventBus);
        // Register the Deferred Register to the mod event bus so tabs get registered
        ModItems.CREATIVE_MODE_TABS.register(modEventBus);
    }
}

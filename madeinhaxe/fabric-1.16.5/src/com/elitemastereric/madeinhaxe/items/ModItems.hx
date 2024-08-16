package com.elitemastereric.madeinhaxe.items;

import com.elitemastereric.madeinhaxe.MadeInHaxeMod;

import net.fabricmc.fabric.api.item.v1.FabricItemSettings;
import net.fabricmc.fabric.api.itemgroup.v1.FabricItemGroup;
import net.fabricmc.fabric.api.itemgroup.v1.ItemGroupEvents;
import net.minecraft.core.Registry;
import net.minecraft.core.registries.BuiltInRegistries; // Registries
import net.minecraft.resources.ResourceLocation; // Identifier
import net.minecraft.world.item.ArmorItem;
import net.minecraft.world.item.ArmorMaterial;
import net.minecraft.world.item.AxeItem;
import net.minecraft.world.item.CreativeModeTab; // ItemGroup
import net.minecraft.world.item.HoeItem;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.PickaxeItem;
import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.ShovelItem;
import net.minecraft.world.item.SwordItem;
import net.minecraft.world.item.Tier; // ToolMaterial

/**
 * A static container for all of our items.
 */
class ModItems {
    // References to our items.
    // Item.Settings is used to store properties such as stack size and durability.
    // FabricItemSettings is an extension of this which allows setting an equipment slot and custom damage value handler.

    public static final GLYPH_HAXE:Item = new Item(new FabricItemSettings());

    // Item Groups
    public static final ITEM_GROUP:CreativeModeTab = FabricItemGroup.builder(new ResourceLocation(MadeInHaxeMod.MOD_ID, "made_in_haxe"))
        .icon(() -> new ItemStack(GLYPH_HAXE))
        .build();

    public static function onInitialize():Void {
        // Add each of our items to the item registry.

        Registry.register(BuiltInRegistries.ITEM, new ResourceLocation(MadeInHaxeMod.MOD_ID, "glyph_haxe"), GLYPH_HAXE);

        ItemGroupEvents.modifyEntriesEvent(ITEM_GROUP).register(addEntriesToItemGroup);
    }

    static function addEntriesToItemGroup(entries:net.fabricmc.fabric.api.itemgroup.v1.FabricItemGroupEntries):Void {
        entries.accept(GLYPH_HAXE);
    }
}

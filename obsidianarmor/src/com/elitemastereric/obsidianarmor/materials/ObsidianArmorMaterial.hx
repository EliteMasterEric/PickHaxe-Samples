package com.elitemastereric.obsidianarmor.materials;

import net.minecraft.world.item.ArmorItem.ArmorItem_Type;
import net.minecraft.world.item.ArmorMaterial;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.world.entity.EquipmentSlot;
import net.minecraft.world.item.ArmorMaterial;
import net.minecraft.world.item.ArmorMaterials;
import net.minecraft.world.item.ArmorMaterial.Layer as ArmorLayer;
import net.minecraft.world.item.crafting.Ingredient;
import net.minecraft.world.item.Items;

class ObsidianArmorMaterial #if minecraft_lteq_1_20_4 implements ArmorMaterial #end
{
  public static final NAME:String = "obsidian";
  public static final TOUGHNESS:Single = 0.0;
  public static final DURABILITY:Array<Int> = [137, 158, 168, 116]; // Durability of Boots, Leggings, Chestplate, Helmet
  public static final PROTECTION:Array<Int> = [2, 4, 6, 2]; // Armor points of Boots, Leggings, Chestplate, Helmet
  public static final ENCHANTABILITY:Int = 20;
  public static final EQUIP_SOUND:net.minecraft.core.Holder<SoundEvent> = SoundEvents.ARMOR_EQUIP_DIAMOND;
  // TODO: Fix rest/spread operator
  public static final REPAIR_INGREDIENT:Ingredient = Ingredient.of(Items.OBSIDIAN);
  public static final KNOCKBACK_RESISTANCE:Single = 0.0;
  public static final DYEABLE:Bool = false;

#if minecraft_gteq_1_20_5
}
#else

  public function new() {
    super();
    // Unlike Java, Haxe requires a constructor on constructable classes, even if it's empty.
  }


  public function getDurabilityForSlot(slot:EquipmentSlot):Int
  {
    return DURABILITY[slot.getIndex()];
  }

  public function getDurabilityForType(type:ArmorItem_Type):Int
  {
    return DURABILITY[type.getSlot().getIndex()];
  }

  public function getDefenseForSlot(slot:EquipmentSlot):Int
  {
    return PROTECTION[slot.getIndex()];
  }

  public function getDefenseForType(type:ArmorItem_Type):Int
  {
    return PROTECTION[type.getSlot().getIndex()];
  }

  public function getEnchantmentValue():Int
  {
    return ENCHANTABILITY;
  }

  public function getEquipSound():SoundEvent
  {
    return EQUIP_SOUND;
  }

  public function getRepairIngredient():Ingredient
  {
    return REPAIR_INGREDIENT;
  }

  public function getName():String
  {
    return NAME;
  }

  public function getToughness():Single
  {
    return TOUGHNESS;
  }

  public function getKnockbackResistance():Single
  {
    return KNOCKBACK_RESISTANCE;
  }
}
#end
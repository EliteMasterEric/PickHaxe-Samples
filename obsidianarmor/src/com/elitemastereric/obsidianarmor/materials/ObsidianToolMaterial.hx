package com.elitemastereric.obsidianarmor.materials;

import net.minecraft.world.item.Items;
import net.minecraft.world.item.Tier;
import net.minecraft.world.item.Tiers;
import net.minecraft.world.item.crafting.Ingredient;

class ObsidianToolMaterial implements Tier
{
  #if minecraft_gteq_1_20_5
  private static final INCORRECT_BLOCKS_FOR_DROPS:net.minecraft.tags.TagKey<net.minecraft.world.level.block.Block> = 
    net.minecraft.tags.BlockTags.INCORRECT_FOR_STONE_TOOL;
  #end

  #if minecraft_lteq_1_20_4
  private static final MINING_LEVEL:Int = Tiers.STONE.getLevel();
  #end
  // private static final MINING_LEVEL:Int = 1;
  private static final DURABILITY:Int = 64;
  private static final MINING_SPEED:Single = 9.0;
  private static final ATTACK_DAMAGE:Single = 1.0;
  private static final ENCHANTABILITY:Int = 20;
  private static final REPAIR_INGREDIENT:Ingredient = Ingredient.of(Items.OBSIDIAN);

  public function new() {
    // Unlike Java, Haxe requires a constructor on constructable classes, even if it's empty.
  }

  public function getUses():Int
  {
    return DURABILITY;
  }

  public function getSpeed():Single
  {
    return MINING_SPEED;
  }

  public function getAttackDamageBonus():Single
  {
    return ATTACK_DAMAGE;
  }

  public function getEnchantmentValue():Int
  {
    return ENCHANTABILITY;
  }

  public function getRepairIngredient():Ingredient
  {
    return REPAIR_INGREDIENT;
  }

  #if minecraft_gteq_1_20_5
  public function getIncorrectBlocksForDrops():net.minecraft.tags.TagKey<net.minecraft.world.level.block.Block>
  {
    return INCORRECT_BLOCKS_FOR_DROPS;
  }
  #end

  #if minecraft_lteq_1_20_4
  public function getLevel():Int
  {
    return MINING_LEVEL;
  }
  #end
}

package com.elitemastereric.obsidianarmor.items;

//import net.pickhaxe.compat.world.item.ArmorItem;
import com.elitemastereric.obsidianarmor.materials.ObsidianArmorMaterial;
import com.elitemastereric.obsidianarmor.materials.ObsidianToolMaterial;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.core.Registry;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.entity.EquipmentSlot;
import net.minecraft.world.item.ArmorItem;
import net.minecraft.world.item.ArmorItem.ArmorItem_Type;
import net.minecraft.world.item.ArmorMaterial;
import net.minecraft.world.item.AxeItem;
import net.minecraft.world.item.HoeItem;
import net.minecraft.world.item.Item.Item_Properties;
import net.minecraft.world.item.Items;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.PickaxeItem;
import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.ShovelItem;
import net.minecraft.world.item.SwordItem;
import net.minecraft.world.item.Tier;
import net.pickhaxe.compat.core.Registries;
import net.pickhaxe.compat.core.Registry;
import net.pickhaxe.compat.world.item.CreativeModeTab;
import net.pickhaxe.compat.world.item.Item;

class ModItems {
  // References to our items.
  // Item.Settings is used to store properties such as stack size and durability.

  // Tools
  public static final OBSIDIAN_TOOL_MATERIAL:Tier = new ObsidianToolMaterial();
  public static final OBSIDIAN_PICKAXE:Item = new PickaxeItem(OBSIDIAN_TOOL_MATERIAL,
    #if minecraft_lteq_1_20_4 1, -2.8, #end
    new Item_Properties().rarity(Rarity.RARE).fireResistant());
  public static final OBSIDIAN_AXE:Item = new AxeItem(OBSIDIAN_TOOL_MATERIAL, 
    #if minecraft_lteq_1_20_4 -6.0, -3.0, #end
    new Item_Properties().rarity(Rarity.RARE).fireResistant());
  public static final OBSIDIAN_SHOVEL:Item = new ShovelItem(OBSIDIAN_TOOL_MATERIAL,
    #if minecraft_lteq_1_20_4 1.5, -3.0, #end
    new Item_Properties().rarity(Rarity.RARE).fireResistant());
  public static final OBSIDIAN_SWORD:Item = new SwordItem(OBSIDIAN_TOOL_MATERIAL,
    #if minecraft_lteq_1_20_4 3, -2.4, #end
    new Item_Properties().rarity(Rarity.RARE).fireResistant());
  public static final OBSIDIAN_HOE:Item = new HoeItem(OBSIDIAN_TOOL_MATERIAL, 
    #if minecraft_lteq_1_20_4 -2, 0.0, #end
    new Item_Properties().rarity(Rarity.RARE).fireResistant());

  // Armor
  #if minecraft_gteq_1_20_5

  public static final OBSIDIAN_ARMOR_MATERIAL:net.minecraft.core.Holder<ArmorMaterial> = buildArmorMaterial(
    ObsidianArmorMaterial.NAME,
    ObsidianArmorMaterial.PROTECTION,
    ObsidianArmorMaterial.ENCHANTABILITY,
    ObsidianArmorMaterial.EQUIP_SOUND,
    () -> ObsidianArmorMaterial.REPAIR_INGREDIENT,
    ObsidianArmorMaterial.DYEABLE,
    ObsidianArmorMaterial.TOUGHNESS,
    ObsidianArmorMaterial.KNOCKBACK_RESISTANCE);  
  #else
  public static final OBSIDIAN_ARMOR_MATERIAL:ArmorMaterial = new ObsidianArmorMaterial();
  #end
  public static final OBSIDIAN_HELMET:Item = new ArmorItem(OBSIDIAN_ARMOR_MATERIAL, ArmorItem_Type.HELMET, new Item_Properties().rarity(Rarity.RARE).fireResistant()
    #if minecraft_gteq_1_20_5 .durability(ObsidianArmorMaterial.DURABILITY[3]) #end  
  );
  public static final OBSIDIAN_CHESTPLATE:Item = new ArmorItem(OBSIDIAN_ARMOR_MATERIAL, ArmorItem_Type.CHESTPLATE, new Item_Properties().rarity(Rarity.RARE).fireResistant()
    #if minecraft_gteq_1_20_5 .durability(ObsidianArmorMaterial.DURABILITY[2]) #end  
  );
  public static final OBSIDIAN_LEGGINGS:Item = new ArmorItem(OBSIDIAN_ARMOR_MATERIAL, ArmorItem_Type.LEGGINGS, new Item_Properties().rarity(Rarity.RARE).fireResistant()
    #if minecraft_gteq_1_20_5 .durability(ObsidianArmorMaterial.DURABILITY[1]) #end  
  );
  public static final OBSIDIAN_BOOTS:Item = new ArmorItem(OBSIDIAN_ARMOR_MATERIAL, ArmorItem_Type.BOOTS, new Item_Properties().rarity(Rarity.RARE).fireResistant()
    #if minecraft_gteq_1_20_5 .durability(ObsidianArmorMaterial.DURABILITY[0]) #end  
  );

  // Creative Mode Tab
  public static final CREATIVE_TAB:CreativeModeTab = CreativeModeTab.builder()
    .displayItems(function(params, entries) {
      entries.accept(OBSIDIAN_AXE);
      entries.accept(OBSIDIAN_PICKAXE);
      entries.accept(OBSIDIAN_SHOVEL);
      entries.accept(OBSIDIAN_SWORD);
      entries.accept(OBSIDIAN_HOE);

      entries.accept(OBSIDIAN_HELMET);
      entries.accept(OBSIDIAN_CHESTPLATE);
      entries.accept(OBSIDIAN_LEGGINGS);
      entries.accept(OBSIDIAN_BOOTS);
    })
    .icon(getTabIcon)
    .build();

  public static function register():Void
  {
    ObsidianArmorMod.LOGGER.info("Registering items...");

    OBSIDIAN_PICKAXE.register(ResourceLocation.fromNamespaceAndPath(ObsidianArmorMod.MOD_ID, "obsidian_pickaxe"));
    OBSIDIAN_AXE.register(ResourceLocation.fromNamespaceAndPath(ObsidianArmorMod.MOD_ID, "obsidian_axe"));
    OBSIDIAN_SHOVEL.register(ResourceLocation.fromNamespaceAndPath(ObsidianArmorMod.MOD_ID, "obsidian_shovel"));
    OBSIDIAN_SWORD.register(ResourceLocation.fromNamespaceAndPath(ObsidianArmorMod.MOD_ID, "obsidian_sword"));
    OBSIDIAN_HOE.register(ResourceLocation.fromNamespaceAndPath(ObsidianArmorMod.MOD_ID, "obsidian_hoe"));

    OBSIDIAN_HELMET.register(ResourceLocation.fromNamespaceAndPath(ObsidianArmorMod.MOD_ID, "obsidian_helmet"));
    OBSIDIAN_CHESTPLATE.register(ResourceLocation.fromNamespaceAndPath(ObsidianArmorMod.MOD_ID, "obsidian_chestplate"));
    OBSIDIAN_LEGGINGS.register(ResourceLocation.fromNamespaceAndPath(ObsidianArmorMod.MOD_ID, "obsidian_leggings"));
    OBSIDIAN_BOOTS.register(ResourceLocation.fromNamespaceAndPath(ObsidianArmorMod.MOD_ID, "obsidian_boots"));
  }

  public static function registerCreativeTab():Void
  {
    ObsidianArmorMod.LOGGER.info("Registering Creative Mode tab...");

    CREATIVE_TAB.register(ResourceLocation.fromNamespaceAndPath(ObsidianArmorMod.MOD_ID, "obsidian_armor"));
  }

  static function getTabIcon():ItemStack {
    return new ItemStack(OBSIDIAN_CHESTPLATE);
  }

  static function buildArmorMaterial(name:String, protection:Array<Int>,
    enchantmentValue:Int, equipSound:net.minecraft.core.Holder<net.minecraft.sounds.SoundEvent>,
    repairIngredient:java.util.function.Supplier<net.minecraft.world.item.crafting.Ingredient>,
    dyeable:Bool, toughness:Single, knockbackResistance:Single):net.minecraft.core.Holder<ArmorMaterial>
  {

    var defense = new java.util.HashMap<net.minecraft.world.item.ArmorItem.ArmorItem_Type,Int>();
    defense.put(ArmorItem_Type.BOOTS, protection[0]);
    defense.put(ArmorItem_Type.LEGGINGS, protection[1]);
    defense.put(ArmorItem_Type.CHESTPLATE, protection[2]);
    defense.put(ArmorItem_Type.HELMET, protection[3]);

    var layers = net.pickhaxe.java.util.List.of([
      new net.minecraft.world.item.ArmorMaterial_Layer(ResourceLocation.fromNamespaceAndPath(ObsidianArmorMod.MOD_ID, name), "", dyeable)
    ]);

    var armorMaterial = new net.minecraft.world.item.ArmorMaterial(defense, enchantmentValue, equipSound, repairIngredient, layers, toughness, knockbackResistance);

    var holder = net.minecraft.core.Registry.registerForHolder(BuiltInRegistries.ARMOR_MATERIAL, ResourceLocation.withDefaultNamespace(name), armorMaterial);

		return holder;
  }
}

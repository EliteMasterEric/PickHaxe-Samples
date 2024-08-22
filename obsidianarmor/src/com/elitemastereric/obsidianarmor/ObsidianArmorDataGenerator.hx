package com.elitemastereric.obsidianarmor;

import net.minecraft.tags.ItemTags;
import com.elitemastereric.obsidianarmor.items.ModItems;
import com.elitemastereric.obsidianarmor.ObsidianArmorMod;
import java.nio.file.Path;
import net.minecraft.core.HolderLookup.HolderLookup_Provider;
import net.pickhaxe.compat.data.models.ItemModelGenerators;
import net.minecraft.data.models.model.ModelTemplates;
import net.pickhaxe.datagen.DataGenerator;
#if fabric
import net.fabricmc.fabric.api.datagen.v1.FabricDataOutput;
import net.fabricmc.fabric.api.datagen.v1.provider.FabricLanguageProvider.FabricLanguageProvider_TranslationBuilder as TranslationBuilder;
#end

/**
 * Provides an interface through which JSON files for the resources folder can be generated through code.
 * 
 * JSON files go into `generated/build/resources/<loader>/<mcversion>/data` and will be included automatically in the JAR.
 */
class ObsidianArmorDataGenerator extends DataGenerator {

	public override function onGenerateItemTags(itemTagProvider:PickHaxeItemTagsProvider, provider:HolderLookup_Provider):Void {
		ObsidianArmorMod.LOGGER.info("Generating Obsidian Armor item tags...");

		// Apply tool tags to tools.
		itemTagProvider.getTagBuilder(ItemTags.SWORDS).add(ModItems.OBSIDIAN_SWORD.getKey());
        itemTagProvider.getTagBuilder(ItemTags.PICKAXES).add(ModItems.OBSIDIAN_PICKAXE.getKey());
        itemTagProvider.getTagBuilder(ItemTags.SHOVELS).add(ModItems.OBSIDIAN_SHOVEL.getKey());
        itemTagProvider.getTagBuilder(ItemTags.AXES).add(ModItems.OBSIDIAN_AXE.getKey());
        itemTagProvider.getTagBuilder(ItemTags.HOES).add(ModItems.OBSIDIAN_HOE.getKey());

        // Apply armor tags to armor.
        itemTagProvider.getTagBuilder(ItemTags.HEAD_ARMOR).add(ModItems.OBSIDIAN_HELMET.getKey());
        itemTagProvider.getTagBuilder(ItemTags.CHEST_ARMOR).add(ModItems.OBSIDIAN_CHESTPLATE.getKey());
        itemTagProvider.getTagBuilder(ItemTags.LEG_ARMOR).add(ModItems.OBSIDIAN_LEGGINGS.getKey());
        itemTagProvider.getTagBuilder(ItemTags.FOOT_ARMOR).add(ModItems.OBSIDIAN_BOOTS.getKey());
	}

    public override function onGenerateItemModels(itemModelGenerators:ItemModelGenerators):Void {
		ObsidianArmorMod.LOGGER.info("Generating Obsidian Armor item models...");

        // Display these as flat items, oriented to be held as tools/weapons.
        itemModelGenerators.generateFlatItem(ModItems.OBSIDIAN_SWORD, ModelTemplates.FLAT_HANDHELD_ITEM);
        itemModelGenerators.generateFlatItem(ModItems.OBSIDIAN_PICKAXE, ModelTemplates.FLAT_HANDHELD_ITEM);
        itemModelGenerators.generateFlatItem(ModItems.OBSIDIAN_AXE, ModelTemplates.FLAT_HANDHELD_ITEM);
        itemModelGenerators.generateFlatItem(ModItems.OBSIDIAN_SHOVEL, ModelTemplates.FLAT_HANDHELD_ITEM);
        itemModelGenerators.generateFlatItem(ModItems.OBSIDIAN_HOE, ModelTemplates.FLAT_HANDHELD_ITEM);

        // Display as flat models, with support for armor trims.
        itemModelGenerators.generateArmorTrims(cast ModItems.OBSIDIAN_HELMET);
        itemModelGenerators.generateArmorTrims(cast ModItems.OBSIDIAN_CHESTPLATE);
        itemModelGenerators.generateArmorTrims(cast ModItems.OBSIDIAN_LEGGINGS);
        itemModelGenerators.generateArmorTrims(cast ModItems.OBSIDIAN_BOOTS);
	}

	#if fabric
    public override function onGenerateTranslations(dataOutput:FabricDataOutput, languageCode:String, translationBuilder:TranslationBuilder):Void {
		switch (languageCode) {
			case "en_us":
				onGenerateTranslations_en_us(dataOutput, translationBuilder);
		}
	}

	private function addBaseTranslations(dataOutput:FabricDataOutput, languageCode:String, translationBuilder:TranslationBuilder):Void {
		try {
			translationBuilder.add(getBaseTranslationPath(dataOutput, languageCode));
		} catch (e) {
			ObsidianArmorMod.LOGGER.error('Failed to load base translation file for "${languageCode}".', e);
		}
	}

    private function getBaseTranslationPath(dataOutput:FabricDataOutput, languageCode:String):Path {
		return dataOutput.getModContainer().findPath('assets/${ObsidianArmorMod.MOD_ID}/lang/${languageCode}.base.json').get();
	}

	private function onGenerateTranslations_en_us(dataOutput:FabricDataOutput, translationBuilder:TranslationBuilder):Void {
		ObsidianArmorMod.LOGGER.info("Generating Obsidian Armor 'en_us' translations...");

		// Hardcoded translations.
		addBaseTranslations(dataOutput, 'en_us', translationBuilder);
    }
	#end
}
package com.elitemastereric.madeinhaxe;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.elitemastereric.madeinhaxe.items.ModItems;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.javafmlmod.FMLJavaModLoadingContext;
import net.minecraftforge.fml.event.lifecycle.FMLCommonSetupEvent;

import com.mojang.logging.LogUtils;

@:meta(net.minecraftforge.fml.common.Mod(value = "madeinhaxe"))
class MadeInHaxeMod {
    public static final MOD_ID:String = "madeinhaxe";

	public static final LOGGER:Logger = LoggerFactory.getLogger(MOD_ID);

    public function new() {
        var modEventBus:IEventBus = FMLJavaModLoadingContext.get().getModEventBus();

        // Register the commonSetup method for modloading
        modEventBus.register(this);

        ModItems.addListeners(modEventBus);
    }

    @:strict(net.minecraftforge.eventbus.api.SubscribeEvent())
    public function onInitialize(event:FMLCommonSetupEvent):Void {
        // Some common setup code
        LOGGER.info("Hello, world! Welcome to Minecraft Forge.");
    }
}

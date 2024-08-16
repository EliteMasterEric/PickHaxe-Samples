package com.elitemastereric.madeinhaxe;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.elitemastereric.madeinhaxe.items.ModItems;

import net.fabricmc.api.ModInitializer;

class MadeInHaxeMod implements ModInitializer {
    public static final MOD_ID:String = "madeinhaxe";

	public static final LOGGER:Logger = LoggerFactory.getLogger(MOD_ID);

    public function new() {
        // This function NEEDS to exist but we don't need to do anything here.
    }

    /**
     * Runs when Minecraft is in a mod-load-ready state.
     * Some things (like resources) may still be uninitialized, so proceed with caution.
     */
	public function onInitialize():Void {
		LOGGER.info("Initializing Made in Haxe...");

        ModItems.onInitialize(); // Initialize our items.
	}
}

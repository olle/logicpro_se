package com.studiomediatech.logicpro;

/**
 * Contains the command line arguments that were passed to the application at
 * start.
 * 
 * @author olle
 */
public class Arguments {
	private final String[] args;

	public volatile boolean isServer;
	public volatile boolean isClient;
	
	public Arguments() {
		this(new String[0]);
	}

	public Arguments(String[] args) {
		this.args = args;
		setDefaults();
		parseStringArguments();
	}

	private void setDefaults() {
		this.isServer = false;
		this.isClient = true;
	}

	private void parseStringArguments() {
		for (String arg : this.args) {
			if (arg.matches("-s|--server")) {
				this.isServer = true;
				this.isClient = false;
			}
			if (arg.matches("-c|--client")) {
				this.isClient = true;
				this.isServer = false;
			}
		}
	}
}

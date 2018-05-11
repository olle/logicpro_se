package com.studiomediatech.logicpro.peer;

import com.studiomediatech.logicpro.client.Client;
import com.studiomediatech.logicpro.server.Server;

/**
 * A peer is a network node that caters to either a Server or a {@link Client},
 * keeping the connectivity and registry negotiation hidden.
 * 
 * @author olle
 * @since R1
 */
public class Peer {

	IPeer application;

	public Peer(boolean isServer) {
		if (isServer) {
			initializeServer();
		} else {
			initializeClient();
		}
	}

	private void initializeServer() {
		this.application = new Server().loadDefaults();
	}

	private void initializeClient() {
		this.application = new Client();
	}

	public void start() {
		this.application.start();
	}

}

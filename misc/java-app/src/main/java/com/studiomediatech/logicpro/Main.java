package com.studiomediatech.logicpro;

import com.studiomediatech.logicpro.peer.Peer;

/**
 * The Peer runs locally but connects to the network, negotiating with the
 * Registry and provides info to the Client. The Client may only talk to it's
 * own Peer, and interacts with the network only through it. The Application
 * only runs locally and knows nothing else but it's Client.
 * 
 * @author olle
 */
public class Main {

	private final String[] args;
	volatile boolean isServer = false;

	public static void main(String[] args) {
		new Main(args).run();
	}

	public Main(String[] args) {
		this.args = args;
	}

	private void run() {
		parseParameters();
		startPeer();
	}

	private void parseParameters() {
		for (String argument : this.args) {
			if (argument.matches("-s|--server")) {
				this.isServer = true;
			}
		}
	}

	private void startPeer() {
		try {
			new Peer(this.isServer).start();
		} catch (Exception e) {
			System.err.println("Could not start peer.");
			System.exit(1);
		}
	}
}

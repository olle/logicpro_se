package com.studiomediatech.logicpro.server;

import java.net.URL;

import org.mortbay.jetty.webapp.WebAppContext;

import com.studiomediatech.logicpro.peer.IPeer;

public class Server implements IPeer {
	public static final int PORT = 44330;

	private final org.mortbay.jetty.Server server;

	public Server() {
		server = new org.mortbay.jetty.Server();
		String packageName = getClass().getPackage().getName();
		String resourcePath = packageName.replaceAll("\\.", "/");
		URL url = getClass().getClassLoader().getResource(resourcePath);
		server.setHandler(new WebAppContext(url.toExternalForm(), "/"));
	}

	@Override
	public void start() {
		try {
			server.start();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public IPeer loadDefaults() {
		// TODO: Lookup and load default settings, if any!
		return this;
	}

}

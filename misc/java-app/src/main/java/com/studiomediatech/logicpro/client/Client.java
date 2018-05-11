package com.studiomediatech.logicpro.client;

import java.awt.Desktop;
import java.io.IOException;
import java.net.URI;
import java.net.URL;

import org.mortbay.jetty.Server;
import org.mortbay.jetty.servlet.Context;
import org.mortbay.jetty.servlet.ServletHolder;
import org.mortbay.jetty.webapp.WebAppContext;

import com.studiomediatech.logicpro.peer.IPeer;

/**
 * <b>IMPORTANT:</b> Client content is kept in {@code src/main/resources} of
 * this project, mapping the path to this class' package name. When packaging
 * this project into a JAR, all resources will be bundled with the file.
 * 
 * @author olle
 */
public class Client implements IPeer {
	public static final int PORT = 44331;
	public static final String ADDRESS = "http://localhost:" + PORT + "/";

	private final Server server;

	public Client() {
		this.server = new Server(PORT);

		String packageName = getClass().getPackage().getName();
		String resourcePath = packageName.replaceAll("\\.", "/");

		URL url = getClass().getClassLoader().getResource(resourcePath);
		server.setHandler(new WebAppContext(url.toExternalForm(), "/"));

		Context ajaxContext = new Context(this.server, "/ajax");
		ajaxContext.addServlet(new ServletHolder(new ClientAjax()), "/*");
	}

	@Override
	public void start() {
		try {
			this.server.start();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		try {
			Desktop.getDesktop().browse(URI.create(Client.ADDRESS));
		} catch (IOException ok) {
			System.err.println("Could not open client application page.");
			System.exit(1);
		}
	}
}

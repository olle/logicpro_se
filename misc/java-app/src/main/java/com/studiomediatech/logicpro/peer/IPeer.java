package com.studiomediatech.logicpro.peer;

/**
 * Define object that are able to be instances under the control of a network
 * {@link Peer} - they can take part in a peer-to-peer network.
 * 
 * @author olle
 */
public interface IPeer {
	/**
	 * Starts this peering object, making it `active'.
	 */
	public void start();
}

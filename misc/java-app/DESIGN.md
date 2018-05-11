Design
======

This document is the design document for the system, with both a functional and technical description of the planned implementation.

It describes a runnable Java application that 1) starts a peer module doing P2P mesh-networking and autonomous data-synchroinzation as well as 2) providing a local server for a web application that simply __uses__ the current local data, agnostic to the peer network.

## Technical Architecture

### Target platform and technical stack

The technical stack for our application must be well supported by some target platforms. We can easily assume that our users have Apple hardware, since the forum context is software for that system. It is also very common for the users to run the software on a high performant computer, which could mean that there is a high potential for our P2P software to actually be hosted by lots of users.

Almost ubiquitous to this platform is Java, so we will base our peer-technology on that programming langauge and the JVM. And _all_ target platforms have full support for HTML, JavaScript and CSS - this is how we will implement our user experience and interaction design (UX).

__Languages__:

- Java
- HTML
- JavaScript
- CSS

__Communication__:

- HTTP

Initially there will be no lower level networking, HTTP can serve as a good enough transport for any type of data and we will try to use it as much as possible. This also means that there is no true _discovery_ feature for our mesh-network, instead a registry located at `http://logicpro.se` will serve as a dispatch service for peers that connect.

NOTE: this is a deliberate decision but still a necessary evil - true P2P is preferred, but requires broadcast and discovery communication that choose to leave out at this point.

### Architectural overview

For starters, let's be clear about the security issue. There is no plan to support encryption or security for the content that is delivered in the mesh-network. Using HTTP as a transport protocol should at least provide a transparency with regards to attack vectors, their dangers and the possibility to handle them. Currently, there are no plans to support SSL/TLS or the like - the information will be transported _in the open_.

Nodes, or peers, should be able to communicate with each other using semantical HTTP commands, such as `GET` or `POST`. `GET` will typically actively fetch data and `POST` will allow passive push or uploading of information.

Let's review a small example scenario:

- A peer starts up and connects with to the repository address `http://logicpro.se`
- It receives a list of known, connected peers and can send it's _joining_ state to them
- Any peer that responds can then interacted with to perform data-synchronization
- All peers can send and receive a _heartbeat_, in order to update the list of connected peers
- Any peer may interact with it's local data, amending it or adding information (posts)
- It is not possible to delete data, disabeling may be possible
- Notification of changes to the local data is published to connected peers
- Specific data-requests from peers can be handled
- Data-synchronization is an automated task and emits a local notification to the user

### Modular Architecture

The modularity and applicaiton design will very much be a factor in handling the complexity. This is the current vision of a modular design that will be able to serve us the best:

#### 1. Autonomous peer module

The actual running peer should be able to function autonomously. It can be started and participate in the mesh-network regardless if there's a user interacting with it on the peer or not. The peer module may also function in the case of a network failure, in which case it will try to reconnect with the mesh-network.

But, the peer module should have a constrait, it must only run when as long as it has an non failing storage system - asserted at runtime. Any storage system failure or inconsistency must cause a fail-fast and prevent the peer module from continuing.

This fail-state must then be made visible to the end-user and allow for manual data-recovery or roll-back.

#### 2. Message driven client application

End users interact with the system through a separate client web application. It may be run regardless of the peer module state (ok/offline/failed). This means that any interaction with the client should be decoupled and crash-safe for the peer-module.

## Technical Design

### P2P Mesh Networking over HTTP

TODO: NAT traversal is required.
NOTE: Or not? What about WebSocket?

Initially there's one trusted and public host for the P2P mesh network discovery service `http://logicpro.se`. It maintains a list of the currently available clients and their addresses. 

### Packetized information

All information pertaining to the application is contained in an information package. Packages have a fixed serialization format, with a header and a payload. Each package is easily identifiable through a UUID, contained within in it's header. The payload, when encoced is 

## Interaction Design & User Experience

...



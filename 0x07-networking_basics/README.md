# Networking Basics 0

This directory contains tasks for the Networking Basics project in ALX.

## Notes

### Table of Contents

- [OSI Model](#osi-model)
  - [Layer 1: Physical Layer](#physical-layer)
  - [Layer 2: Data Link Layer](#data-layer)
  - [Layer 3: Network Layer](#network-layer)
  - [Layer 4: Transport Layer](#transport-layer)
  - [Layer 5: Session Layer](#session-layer)
  - [Layer 6: Application Layer](#application-layer)
- [Types of Networks](#network-types)
  - [LAN vs WAN](#lan-vs-wan)

### OSI Model<a name="osi-model" />

- Open Systems Interconnection model (OSI model)
- A **conceptual model** that provides a **common basis** for the coordination of \[ISO\] **standards development** for the purpose of **systems interconnection.**
- According to OSI reference model, cummunication between systems are split into **seven abstraction layers**:
  1. Physical
  2. Data Link
  3. Network
  4. Transport
  5. Session
  6. Presentation
  7. Application
- Each intermediate layer **serves a class of functionality** to the layer above it and is **served by the later below it**.
- Classes of functionality are realized through **standardized communication protocols**
- Each layer in the model has its own well-defined functions, and the functions of each layer communicate and interact with the layers immediately above and below it.
- The [Internet protocol suite aka TCP/IP](https://en.wikipedia.org/wiki/Internet_protocol_suite) has a separate model. It combines the physical and data link layers of the OSI model into a single link layer, and has a single application later for all protocols above the transport later, as opposed to the separate application, presentation and session layers of the OSI model.
- The OSI model allows transparent communication through equivalent exchange of **protocol data units (PDUs)** between two parties, through what is known as **peer-to-peer networking**
- The model has become very important due in large part to its commonly accepted user-friendly framework.
- **Communication protocols** enable an **entity in one host** to interact with a **corresponding entity at the same layer in another host**.
- At each level N, two entities at the communication devices (aka layer N *peers*) exchange **PDUs** by means of a layer N protocol.
- Each PDU contains a payload called the ***Service Data Unit (SDU)*** along with protocol related headers or footers.
- Data processing by two communication OSI-compatible devices proceeds as follows:
  1. The data to be transmitted is composed at the topmost layer of the transmitting device (layer N) into a PDU.
  2. The PDU is passed to layer N-1, where it is known as the SDU.
  3. At layer N-1 the SDU is concatenated with a header, a footer, or both. This produces a layer N-1 PDU. Which is then passed to later N-2.
  4. The process continues until reaching the lowermost level, from which the data is transmitted to the reeiving device.
  5. At the receiving device the data is passed from the lowest to the highers layer as a series of SDUs while being stripped from each layer's header or footer until reaching the topmost layer, where the data is consumed

#### Layer 1: Physical Layer<a name="physical-layer" />

- This layer is responsible for the transmission and reception of unstructured raw data between a device.
- Examples are like network interface controller, Ethernet hub, or network switch and a physical transmission medium.
- The layer converts the digital bits into electrical, radio, or optical signals.
- Layer specs define characteristics such as voltage levels, timing of voltage changes, physical data rates, maximum transmission distances, modulation scheme, channel access method and physical connectors.
- Bit rate control is done at the physical layer.
- The physical layer also speccifies how encoding occurs over a physical signal

#### Layer 2: Data Link Layer<a name="data-layer" />

- This layer provides node-to-node data transfer. This is a link between two directly connected nodes.
- It detects and possibly corrects errors that may occur in the physical layer.
- It defines the protocol to establish and terminate a connection between two physically connected devices.
- It also defines the protocol for flow control between them
- IEEE 802 divides the data link layer into two sublayers.
  1. Medium Access Control (MAC) - responsible for how devices in a network access a medium and permission to transmit data.
  2. Logical Link Control (LLC) - identifies and encapsulates network layer protocols and handles error checking and fram sync.

#### Layer 3: Network Layer<a name="network-layer" />

- Provides functional and procedural means of transferring packets from one node to another connected in "different networks".
- A network is a medium to which many nodes can be connected.
- Every node has an address and the network permits nodes connected to it to transfer messages to other nodes connected to it by merely providing the content of a message and the address of the destination node.
- Message delivery at the network is not necessarily guaranteed to be reliable

#### Layer 4: Transport Layer<a name="transport-layer" />

- Provides functional and procedural means of transferring variable-length data sequences
- The layer maintains quality-of-service functions.
- Tranport protocols may be connection-oriented or connectionless.
- The layer also handles the riliability of a given link between source and destination host through flow control, error control, and acknowledgements of sequence and existence.
- Some protocols are state - and connection-oriented. Meaning that the layer can keep track of the segments and retransmit those that fail delivery through the acknowledgment hand-shake system. (makes me think of the hand-shake system that goes on with http coz of TCP)
- UDP, for example, is used in applications that can acceps some packet loss, reordering, errors or duplication. (as seen in streaming, multiplayer games and voice over IP)
- TCP and UDP were not developed under the OSI reference model and do not strictly conform to the OSI definition of the transport layer, but can be categorized as layer 4 protocols within OSI.

#### Layer 5: Session Layer<a name="session-layer" />

- The layer handles setup, controls the connections and ends the teardown between to or more computers. Collectilvey known as the session.
- DNS and other Name Resolution protocols reside under this layer.
- Common functions of this layer include logon (establishment), name lookup (management) and user logoff (termination)

#### Layer 6: Presentation Layer<a name="presentation-layer" />

- Implements data formatting and data translation into a format specified by the [application layer](#application-layer) during the de/encapsulation of outgoing/incoming messages
- The layer handles protocol conversion, data de/encryption, data de/compressoin.
- Because the layer transforms data into the form that the application layer accepts, it's sometimes called the syntax layer.

#### Layer 7: Application Layer<a name="application-layer" />

- This is the layer closest to the end-user.
- Think of programs such as web browsers and email programs.
- Functions in this layer typically include file sharing, message handling, and database access.
- Most common protocols in this layer include HTTP, FTP, SMB/CIFS/ TFTP, and SMTP.

### Types of Networks<a name="network-types" />

- It's helpful to think of the different types of networks in terms of scope or scale.
- Common types of area networks are:
  - LAN: Local Area Network
  - WAN: Wide Area Network
  - WLAN: Wireless Local Area Network

#### LAN vs WAN<a name="lan-vs-wan" />

- LAN connects networked devices over a relatively short distance while WAN spans a large physical distance. The internet is a WAN.
- WAN is geographically-dispersed collection of LANs.
- Most WANs aren't owned by a single entity and exist under collective or distributed ownership and mangement.

# Networking Basics 0

This directory contains tasks for the Networking Basics project in ALX.

## Notes

### Table of Contents

- [OSI Model](#osi-model)

### OSI Model<a name="osi-model" />

- Open Systems Interconnection model (OSI model)
- A **conceptual model** that provides a **common basis** for the coordination of \[ISO\] **standards development** for the purpose of **systems interconnection.**
- According to OSI reference model, cummunication between systems are split into **seven abstraction layers**:
  - Physical
  - Data
  - Link
  - Network
  - Transport
  - Session
  - Presentation
  - Application
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


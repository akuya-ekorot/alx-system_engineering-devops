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
- Each intermediate layer *serves a class of functionality* to the layer above it and is *served by the later below it*.
- Classes of functionality are realized through *standardized communication protocols*
- Each layer in the model has its own well-defined functions, and the functions of each layer communicate and interact with the layers immediately above and below it.
- The [Internet protocol suite aka TCP/IP](https://en.wikipedia.org/wiki/Internet_protocol_suite) has a separate model. It combines the physical and data link layers of the OSI model into a single link layer, and has a single application later for all protocols above the transport later, as opposed to the separate application, presentation and session layers of the OSI model.

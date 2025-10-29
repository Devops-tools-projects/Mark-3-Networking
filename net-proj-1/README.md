# Networking Basics

## OSI model

It is the Standardized concept that describes the seven layers computers used to communicate and send data over the network.

        |_____ Application Layer___|
        |_____Presentation Layer___|
        |_____Session Layer________|
        |_____Transport Layer______|
        |_____Network Layer________|
        |_____Data Link Layer______|
        |_____Physical Layer_______|

## Layer-1(Physical)
They can be copper(electrical), Fibre(light), (or) WIFI (RF).
- This specifications define the transmission and reception of RAW BIT STREAMS between a device and a SHARED Physical medium.
- It Defines things like Voltage levels, timing, rates, distances, modulations and connectors.

### HUB:
It is a networking device. anything received on any port of a hub is transmitted on every other Port, that including errors & Collisions. in Hub, no device addressing is available, all data is processed by all devices. if multiple devices transmit at once a collision occures. it has no media access control and no collision detection.


                    |__PC__|
                        |
                        |
            |__PC__|---(HUB) ---|__PC__|
                        |
                        |
                    |__PC__|

## Layer-2(Data Link):

It runs over the layer-1 (Physical layer). so for layer-2 to operate properly, we need a funtioning Layer-1. Layer-2 uses the connection of Layer-1 to establish a connection and send data in frames.

### Frames:
it introduces the concept of frames. it is a format for sending info over the layer-2 network. Devices at L2 have a unique hardware (MAC) address

        EX: 3e:22:fb:b9:5b:75 --> 48 bits, in hex, 24 bits for manufacturer frames caan be addressed to a destination (or) broad cast(ALL F's)

MAC can be formed of OUI(Organizationaly Unique Identifier) and NIC (Network Interface Controler). so Together, A MAC address is globaly Unique. Frames that are used in layer-2 has few different components.

  1) **Preamble(56 bits [ SFD-8 bits])** : it has start frame delimiter, it is used to let the devices know that it is the start of a frame.
  2) **Destination/Source MAC address** : All the devices in Layer-2 has a unique MAC address and we can send frame to a specific device, by mentioning its MAC address in destination (or) ALL(F's) to send it on all devices.
  3) **ET(16 Bits)** : This is commonly used to specify, which layer3 protocol is placing. its data inside the frame.
  4) **Payload (46-1500 Bytes)** : The "Payload" is the data that frame carries from source to destination. its generally provided by "Layer 3" and "Ether Type(ET)" attribute defines which L3 Protocol is used.

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


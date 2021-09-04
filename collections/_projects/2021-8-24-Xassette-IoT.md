---
layout: article
title: Xassette IoT
categories: Hardware
tags: linux 
eyeCatcher: https://z3.ax1x.com/2021/08/26/huiE1f.jpg
---

## Hardware Resources
* SoC: MediaTek MT7628 1xMIPS 24Kc@580Mhz
* RAM: 64MB DDR2
* ROM: 8M SPI flash EN25Q64
* WLAN: 802.11n, 2T2R, speed up to 300Mbps
* EPHY: 5×100M with 2 onboard RJ-45 ports
* USB: 1×USB2.0 HS
* Connectivity: 2×UART¹, 1×I2C, 1×I2S, 1×SPI², 1×SDIO³, 4×PWM


Note:
1. UART1 is used as debug serial at baud rate 57600
2. Shared with onboard NOR flash
3. Supports SDXC up to 2TB

## Schematic
![sch](https://github.com/SdtElectronics/Xassette-IoT/raw/master/hw/schematic.png)


PDF format is available at [hw/anBreakout.pdf](https://github.com/SdtElectronics/Xassette-IoT/raw/master/hw/anBreakout.pdf)

## Board Gerber
See [Releases](https://github.com/SdtElectronics/Xassette-IoT/releases/)

## Schematic & PCB Layout Source
![peach](https://z3.ax1x.com/2021/08/15/fg78RH.jpg)


Please contact me if you want hardware design sources (in Ki-CAD format).


Note: `IOxx` in the schematic as well as the silk numbers onboard correspond to the GPIO indices in the table below.


![pinmux](https://github.com/SdtElectronics/Xassette-IoT/raw/master/img/pinmux.png)

## Flashing New Firmware
See [Guide on Firmware](docs/fwGuide.md)

## Errata
In v0.2
* Silk text error: MDI1 should be MDI2
* Net error: 1V8 is not connected
[![Alire](https://img.shields.io/endpoint?url=https://alire.ada.dev/badges/a0b_atsam3x8e.json)](https://alire.ada.dev/crates/a0b_atsam3x8e.html)

# ATSAM3X8E Base Support Package

This crate provides basic support of ATSAM3X8E chip, including files generated from SVD file.

## System's Clock Configaration Parameters

 * `dt:&eefc:wait-state` flash wait state
 * `dt:&pmc:div` PLL's divider
 * `dt:&pmc:mul` PLL's multiplier
 * `dt:&pmc:prescaler` master clock prescaler

## Typical configuration parameter values

### System's Clock Configuration

| Parameter                     | Main Clock 12 MHz | 
| :-------: | :---------------: |
| `dt:&cpu0:clock-frequency` | 84_000_000 |
| `dt:&eefc:wait-state` | 4 |
| `dt:&pmc:div` | 1 |
| `dt:&pmc:mul` | 14 |
| `dt:&pmc:prescaler` | 2 |

### Memory configuration

| Parameter                  | SAM3X8E                                 |
| :------------------------: | :-------------------------------------: |
| `dt:/chosen/a0b,flash:reg` | "0x00080000", "DT_SIZE_K(512)" |
| `dt:/chosen/a0b,sram:reg`  | "0x20070000", "DT_SIZE_K(96)"  |



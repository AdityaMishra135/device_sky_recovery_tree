# Recovery Tree For Redmi 12 5G / Poco M6 Pro 5G

The POCO_M6_PRO 5G (codenamed "sky") is an upper-mid-range smartphone from Xiaomi.

## Device specifications

| Feature                 | Specification                                                                                                 |
| :---------------------- | :------------------------------------------------------------------------------------------------------------ |
| CPU                     | Octa-core<br>2X Cortex A78@ 2.2GHz<br>6X Cortex A55@ 2.0GHz                                                   |
| Chipset                 | Qualcomm® Snapdragon™ 4 Gen 2 Mobile Platform<br>(_Samsung_ Foundry's _FinFET_  *4nm*)                        |
| GPU                     | Qualcomm® Adreno™ 619                                                                                         |
| Memory                  | 4GB \| 6GB \| 8GB \| (LPDDR4x)                                                                                |
| Shipped Android Version | 13.0                                                                                                          |
| Storage                 | 128GB \| 256GB UFS 2.2                                                                                        |
| Battery                 | 5000mAh (typ) Li Polymer                                                                                      |
| Dimensions              | 168.60mm x 76.28mmx 8.17mm (Weight: 199g)                                                                     |
| Display                 | 1080P IPS LCD (6.79" FHD+ Display \| Refresh rate: 90Hz Touch sampling Rate: 240Hz Peak Brightness: 550 nits) |
| Rear Camera             | 50 MP, f/1.8, (wide), PDAF<br>2 MP, f/2.4, (depth)                                                            |
| Front Camera            | 8 MP, f/2.0, (wide), 1.12µm                                                                                   |
| Release Date            | 2023, August 01 (Global)                                                                                      |

# How To Build

### Clone & Sync Source

```
mkdir -p ~/OrangeFox_14
cd ~/OrangeFox_14
git clone https://gitlab.com/OrangeFox/sync.git
cd sync
./orangefox_sync.sh --branch 14.1 --path ~/fox_14.1
```

### Clone Device-tree

```
cd ~/fox_14.1/device
mkdir -p sky
cd sky
git clone https://github.com/AdityaMishra135/device_sky_recovery_tree.git
```

### BUILD!

```
cd ~/fox_14.1
source build/envsetup.sh
lunch twrp_sky-ap2a-eng
mka adbd recoveryimage
```

### Special Thanks 
@pjgowtham

## Device Picture (Redmi 12 5G)

![Redmi12_5G](https://github.com/prateekmaru/device_xiaomi_sky/assets/47496067/7dac6202-af1d-4942-944a-a8bd167ecf3e)


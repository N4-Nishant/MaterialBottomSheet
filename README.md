# MaterialBottomSheet

This library is developed to provide Bottom-Sheets implemented using extended typescript.

## Download & Install

Install using npm

```npm i @ohos/material-bottomsheet```

## Usage Instructions

1. Import files and code dependencies

```ets
import { BottomSheet, BottomSheetModel }  from '@ohos/material-bottomsheet'
```

2. Initialize TabBar model data

```
private model: BottomSheetModel = new BottomSheetModel()
```

3. Code for creating Bottom-Sheet

```
this.model
      .setBottomSheetBackgroundColor('#F0F3FF')
      .setBackgroundScreenColor('#A5A5A5')
      .setBackgroundOpacity(0.6)
      .setBorderRadius('14vp')
      .setBody(this.customDesign)
      
BottomSheet({
            model: this.model,
            visible: $visible,
            body: this.model.getBody(),
            fullScreenBottomSheet: false
          })
```
![Bottom-Sheet](https://user-images.githubusercontent.com/82766420/178322478-828a9a08-19f6-445b-b32e-59a69cbeed1d.png)

4. Code for creating Full screen Bottom-Sheet

```
this.model
      .setBottomSheetBackgroundColor('#F0F3FF')
      .setBackgroundScreenColor('#A5A5A5')
      .setBackgroundOpacity(0.6)
      .setBorderRadius('14vp')
      .setBody(this.customDesign)
 
BottomSheet({
            model: this.model,
            visible: $visible,
            body: this.model.getBody(),
            fullScreenBottomSheet: true
          })
```
![Full screen Bottom-Sheet](https://user-images.githubusercontent.com/82766420/178322411-82e10531-ade4-4e18-a3aa-19157dcede3a.png)

## Compatibility

Supports OpenHarmony API version 9

## Code Contribution

If you find any problems during usage, you can submit an [Issue] to us. Of course, we also welcome you to send us [PR].

## Open source License

Licensed under [Apache-2.0 license].

# Reference:

Design by : Nishant Trivedi

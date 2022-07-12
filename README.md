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

2. Initialize Bottom-Sheet model data

```
private model: BottomSheetModel = new BottomSheetModel()
```

3. Code for creating Model Bottom-Sheet

```
this.model
      .setBottomSheetBackgroundColor('#F0F3FF')
      .setBackgroundScreenColor('#A5A5A5')
      .setBackgroundOpacity(0.6)
      .setBorderRadius('14vp')
      .setBody(this.customDesign)
      
BottomSheet({
            model: this.model,
            visible: $visibleDialog1,
            body: this.model.getBody()
          })
```

4. Code for creating Standard Bottom-Sheet

```
this.model1
      .setBottomSheetBackgroundColor('#F0F3FF')
      .setBackgroundScreenColor('#A5A5A5')
      .setBackgroundOpacity(0.6)
      .setBorderRadius('14vp')
      .setBody(this.customDesign1)
 
BottomSheet({
            model: this.model1,
            visible: $visibleDialog2,
            body: this.model.getBody()
          })
```

## Compatibility

Supports OpenHarmony API version 9

## Code Contribution

If you find any problems during usage, you can submit an [Issue] to us. Of course, we also welcome you to send us [PR].

## Open source License

Licensed under [Apache-2.0 license].

# Reference:

Design by : Nishant Trivedi

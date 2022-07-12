# BottomSheet

This library is developed to provide Bottom-Sheets implemented using extended typescript.

## Download & Install

Install using npm

```npm i @ohos/bottomsheet```

## Usage Instructions

1. Import files and code dependencies

```ets
import { BottomSheet, BottomSheetModel }  from '@ohos/bottomsheet'
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
![Model Bottom Sheet](https://user-images.githubusercontent.com/82766420/178438938-81737d65-5b0a-4579-ba89-9bfc77098578.png)

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
![Standard Bottom Sheet](https://user-images.githubusercontent.com/82766420/178438992-d008bc36-c3b2-4fca-91ca-adf8b2b72e4b.png)

## Compatibility

Supports OpenHarmony API version 9

## Code Contribution

If you find any problems during usage, you can submit an [Issue] to us. Of course, we also welcome you to send us [PR].

## Open source License

Licensed under [Apache-2.0 license].

# Reference:

Design by : Nishant Trivedi

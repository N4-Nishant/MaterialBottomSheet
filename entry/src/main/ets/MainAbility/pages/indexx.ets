import prompt from '@system.prompt';
import { BottomSheet, BottomSheetModel, BottomSheetOptions, BottomSheetType, CustomDesign, LibraryDesign }  from '@ohos/material-bottomsheet'

@Entry
@Component
struct Index {
  private model : BottomSheetModel = new BottomSheetModel()


  aboutToAppear() {
    this.model
      .setBottomSheetType(BottomSheetType.STANDARD)
      .setBottomSheetBackgroundColor(Color.White)
      .setBackgroundOpacity(0.2)
      .setClicked(false)
  }


  build() {
    Stack({alignContent : Alignment.Bottom}) {
      Column() {
        Text("Background Screen")
        .fontSize('30fp')
        .textAlign(TextAlign.Center)
      }
      .width('100%')
      .height('100%')
      .backgroundColor(Color.Grey)
      .opacity(this.model.getClicked() == false ? 1 : this.model.getBackgroundOpacity())
      .onClick(()=> this.model.setClicked(false))

      Column() {
        BottomSheet({
          model : this.model
        })
      }
      .width('100%')
      .height('72vp')
      .backgroundColor(this.model.getBottomSheetBackgroundColor())
      .onClick(()=> this.model.setClicked(true))
    }
  }
}
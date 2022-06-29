import prompt from '@system.prompt';
import { BottomSheet, BottomSheetModel, BottomSheetType }  from '@ohos/material-bottomsheet'

@Entry
@Component
struct Index {
  private model : BottomSheetModel = new BottomSheetModel()
  @State clicked : boolean = false

  @Builder
  customDesign() : any {
    Row(){
      Text("UI provided by the user")
        .fontSize('25fp')
    }
  }

  aboutToAppear() {
    this.model
      .setBottomSheetType(BottomSheetType.STANDARD)
      .setBottomSheetBackgroundColor(Color.White)
      .setBackgroundOpacity(0.75)
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
      .opacity(this.clicked == false ? 1 : this.model.getBackgroundOpacity())
      .onClick(()=> this.clicked = false)


      Column() {
        BottomSheet({
          model : this.model,
          ui : this.customDesign()
        })
      }
      .width('100%')
      .height('72vp')
      .backgroundColor(this.model.getBottomSheetBackgroundColor())
      .onClick(()=> this.clicked = true)
    }
  }
}

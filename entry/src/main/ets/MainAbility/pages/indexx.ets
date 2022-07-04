import prompt from '@system.prompt';
import { BottomSheet, BottomSheetModel, BottomSheetType }  from '@ohos/material-bottomsheet'

@Entry
@Component
struct Index {
  private model: BottomSheetModel = new BottomSheetModel()
  @State clicked: boolean = false

  @Builder
  customDesign(): any {
    Column(){
      Text("UI provided by the user")
        .fontSize('25fp')
    }
    .backgroundColor(Color.Yellow)
  }

  aboutToAppear() {
    this.model
      .setBottomSheetType(BottomSheetType.STANDARD)
      .setBottomSheetBackgroundColor('#F0F3FF')
      .setBackgroundScreenColor('#A5A5A5')
      .setBackgroundOpacity(0.6)
      .setHeight('72vp')
      .setBorderWidth('1vp')
      .setBorderRadius('14vp')
      .setPadding('10vp')
      .setUI(this.customDesign)
  }

  build(){
    Column(){
      if(this.clicked == false){
        Stack({alignContent : Alignment.Bottom}){
          Column(){
            Text("Background Screen")
              .fontSize('30fp')
              .textAlign(TextAlign.Center)
          }
          .height('100%')
          .width('100%')
          .backgroundColor('#E5E5E5')
          Button('Bottom Sheet')
            .onClick(() => this.clicked = true)
        }
        .width('100%')
        .height('100%')
      }
      else{
          BottomSheet({
            model : this.model,
            clicked : $clicked,
            ui : null,
          })
      }
    }
  }
}

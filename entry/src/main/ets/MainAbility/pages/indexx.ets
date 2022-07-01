import prompt from '@system.prompt';
import { BottomSheet, BottomSheetModel, BottomSheetType }  from '@ohos/material-bottomsheet'

@Entry
@Component
struct Index {
  private model : BottomSheetModel = new BottomSheetModel()
  @State check : boolean = false

  @Builder
  customDesign() : any {
    Row(){
      Text("UI provided by the user UI")
        .fontSize('25fp')
    }
  }

  aboutToAppear() {
    this.model
      .setBottomSheetType(BottomSheetType.STANDARD)
      .setBottomSheetBackgroundColor(Color.White)
      .setBackgroundOpacity(0.5)
      .setHeight('72vp')
      .setBorderWidth('1vp')
      .setBorderRadius('14vp')
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
      .backgroundColor('#E5E5E5')
      .opacity(this.check == false ? 1 : this.model.getBackgroundOpacity())
      .onClick(()=> this.check = false)

      if(this.check==false){
        Column(){
          Button('Bottom Sheet')
            .onClick(()=>this.check=true)
        }.width('100%')
      }
      else{
        Column() {
          BottomSheet({
            model : this.model,
            ui : this.customDesign()
          })
        }
        .width('100%')
        .height(this.model.getHeight())
        .borderWidth(this.model.getBorderWidth())
        .borderRadius(this.model.getBorderRadius())
        .borderColor(this.model.getBorderColor())
        .backgroundColor(this.model.getBottomSheetBackgroundColor())
      }

    }
  }
}

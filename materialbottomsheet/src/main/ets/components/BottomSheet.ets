import { BottomSheetModel } from './BottomSheetModel';

@Component
export struct BottomSheet {
  @State private model: BottomSheetModel = undefined
  @State fullScreenBottomSheet: boolean = false
  @Link private visible: boolean
  @BuilderParam
  private body: () => any

  aboutToAppear(){
    if(this.model == null || this.model == undefined){
      return
    }

    if(this.fullScreenBottomSheet == null || this.fullScreenBottomSheet == undefined){
      this.fullScreenBottomSheet = false
    }

  }

  build() {
    Stack({
      alignContent:  Alignment.Bottom
    }) {

      Column() {
      }
      .height('100%')
      .width('100%')
      .backgroundColor(this.model.getBackgroundScreenColor())
      .opacity(this.model.getBackgroundOpacity())
      .onClick(() => {
        this.visible = false
      })

      Column() {
        if(this.fullScreenBottomSheet == true){
          Column(){
            this.body()
          }
          .height('100%')
          .onClick(() => this.fullScreenBottomSheet = !this.fullScreenBottomSheet)
        }
        else{
          Column(){
            this.body()
          }
        }
      }
      .width('100%')
      .borderRadius(this.model.getBorderRadius())
      .borderColor(this.model.getBorderColor())
      .backgroundColor(this.model.getBottomSheetBackgroundColor())
      .alignItems(HorizontalAlign.Center)
    }
    .height('100%')
    .width('100%')
  }
}

export { BottomSheetModel } from './BottomSheetModel';


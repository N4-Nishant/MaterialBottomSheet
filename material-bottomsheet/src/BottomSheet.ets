import { BottomSheetModel } from './BottomSheetModel';
import { BottomSheetType } from './BottomSheetType';

@Component
export struct BottomSheet {
  @State private model: BottomSheetModel = undefined
  @State fullScreenBottomSheet: boolean = false
  @Link private clicked: boolean
  @BuilderParam
  private ui: () => any
  @BuilderParam
  private fullScreenUI: () => any

  aboutToAppear() {
    this.ui = this.model.getUI()
    this.fullScreenUI = this.model.getFullScreenUI()
  }

  build() {
    Stack({ alignContent: this.model.getBottomSheetType() == BottomSheetType.EXPANDING ? Alignment.BottomEnd : Alignment.Bottom }) {

        Column() {
        }
        .height('100%')
        .width('100%')
        .backgroundColor(this.model.getBackgroundScreenColor())
        .opacity(this.model.getBackgroundOpacity())
        .onClick(() => {
          this.clicked = false
        })

        if(this.model.getBottomSheetType() == BottomSheetType.STANDARD){
          Column() {
            this.ui()
          }
          .width('100%')
          .padding(this.model.getPadding())
          .borderWidth(this.model.getBorderWidth())
          .borderRadius(this.model.getBorderRadius())
          .borderColor(this.model.getBorderColor())
          .backgroundColor(this.model.getBottomSheetBackgroundColor())
          .alignItems(HorizontalAlign.Center)
        }

        else if(this.model.getBottomSheetType() == BottomSheetType.MODEL){
          Column() {
            if(this.fullScreenBottomSheet == true){
              Column(){
                this.fullScreenUI()
              }
              .height('100%')
            }
            else{
              Column(){
                this.ui()
              }
            }
          }
          .width('100%')
          .padding(this.model.getPadding())
          .borderWidth(this.model.getBorderWidth())
          .borderRadius(this.model.getBorderRadius())
          .borderColor(this.model.getBorderColor())
          .backgroundColor(this.fullScreenBottomSheet == false ? this.model.getBottomSheetBackgroundColor() : this.model.getFullBottomSheetBackgroundColor())
          .alignItems(HorizontalAlign.Center)
          .onClick(() => this.fullScreenBottomSheet = !this.fullScreenBottomSheet)
        }

      else if(this.model.getBottomSheetType() == BottomSheetType.EXPANDING){
        Column(){
          if(this.fullScreenBottomSheet == true){
            Column(){
              this.fullScreenUI()
            }
            .height('100%')
          }
          else{
            Column(){
              this.ui()
            }
          }
        }
        .width(this.fullScreenBottomSheet == false ? '35%' : '100%')
        .padding(this.model.getPadding())
        .borderWidth(this.model.getBorderWidth())
        .borderRadius(this.model.getBorderRadius())
        .borderColor(this.model.getBorderColor())
        .backgroundColor(this.fullScreenBottomSheet == false ? this.model.getBottomSheetBackgroundColor() : this.model.getFullBottomSheetBackgroundColor())
        .onClick(() => this.fullScreenBottomSheet = !this.fullScreenBottomSheet)
      }
    }
    .height('100%')
    .width('100%')
  }
}

export { BottomSheetModel } from './BottomSheetModel';

export { BottomSheetType } from './BottomSheetType';

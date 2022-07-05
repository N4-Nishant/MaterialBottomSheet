import { BottomSheetModel } from './BottomSheetModel';
import { BottomSheetType } from './BottomSheetType';

@Component
export struct BottomSheet {
  @State private model: BottomSheetModel = undefined
  @State fullScreenBottomSheet: boolean = false
  @Link private clicked: boolean
  @BuilderParam
  private ui: () => any

  aboutToAppear() {
    this.ui = this.model.getUI()
  }

  build() {
    Stack({ alignContent: Alignment.Bottom }) {

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
          .height(this.model.getHeight())
          .padding(this.model.getPadding())
          .borderWidth(this.model.getBorderWidth())
          .borderRadius(this.model.getBorderRadius())
          .borderColor(this.model.getBorderColor())
          .backgroundColor(this.model.getBottomSheetBackgroundColor())
          .alignItems(HorizontalAlign.Center)
        }

        else if(this.model.getBottomSheetType() == BottomSheetType.MODEL){
          Column() {
            if(this.fullScreenBottomSheet == false){
              Button('🠕')
                .onClick(() => this.fullScreenBottomSheet = true)
            }
            else{
              Button('🠗')
                .onClick(() => this.fullScreenBottomSheet = false)
            }
            Column().height('5%')

            this.ui()
          }
          .width('100%')
          .height(this.fullScreenBottomSheet == false ? this.model.getHeight() : '100%')
          .padding(this.model.getPadding())
          .borderWidth(this.model.getBorderWidth())
          .borderRadius(this.model.getBorderRadius())
          .borderColor(this.model.getBorderColor())
          .backgroundColor(this.model.getBottomSheetBackgroundColor())
          .alignItems(HorizontalAlign.Center)
        }
    }
  }
}

export { BottomSheetModel } from './BottomSheetModel';

export { BottomSheetType } from './BottomSheetType';

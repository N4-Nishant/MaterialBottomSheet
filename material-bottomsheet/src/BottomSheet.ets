import { BottomSheetModel } from './BottomSheetModel';
import { BottomSheetType } from './BottomSheetType';

@Component
export struct BottomSheet {
  @State private model: BottomSheetModel = undefined
  @State modelSheetHeight: boolean = false
  @Link private clicked: boolean
  @BuilderParam
  private ui: () => any

  aboutToAppear() {
    this.ui = this.model.getUI()
  }

  onClick() {
    if (this.model.getBottomSheetType() == BottomSheetType.MODEL) {
      this.modelSheetHeight = !this.modelSheetHeight
    }
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

      Column() {
        this.ui()
      }
      .width('100%')
      .height(this.modelSheetHeight == false ? this.model.getHeight() : '100%')
      .padding(this.model.getPadding())
      .borderWidth(this.model.getBorderWidth())
      .borderRadius(this.model.getBorderRadius())
      .borderColor(this.model.getBorderColor())
      .backgroundColor(this.model.getBottomSheetBackgroundColor())
      .onClick(() => this.onClick())
      .alignItems(HorizontalAlign.Center)

    }
  }
}

export { BottomSheetModel } from './BottomSheetModel';

export { BottomSheetType } from './BottomSheetType';

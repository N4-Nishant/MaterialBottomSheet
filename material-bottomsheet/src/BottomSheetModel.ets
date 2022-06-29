import {BottomSheetType} from './BottomSheetType';
import {CustomDesign} from './CustomDesign';

export class BottomSheetModel {

  private bottomSheetType : BottomSheetType = BottomSheetType.STANDARD
  private bottomSheetBackgroundColor : Color | string = Color.White
  private backgroundOpacity : number = 1
  private ui : () => any = null
  private clicked : boolean = false

  getBottomSheetType() : BottomSheetType {
    return this.bottomSheetType
  }

  getBottomSheetBackgroundColor() : Color | string {
    return this.bottomSheetBackgroundColor
  }

  getBackgroundOpacity() : number {
    return this.backgroundOpacity
  }

  getUI() : () => any {
    return this.ui
  }

  getClicked() : boolean {
    return this.clicked
  }

  setBottomSheetType(bottomSheetType : BottomSheetType)  {
    this.bottomSheetType = bottomSheetType
    return this
  }

  setBottomSheetBackgroundColor(bottomSheetBackgroundColor : Color | string)  {
    this.bottomSheetBackgroundColor = bottomSheetBackgroundColor
    return this
  }

  setBackgroundOpacity(backgroundOpacity : number)  {
    this.backgroundOpacity = backgroundOpacity
    return this
  }

  setUI(ui : () => any) {
    this.ui = ui
    return this
  }

  setClicked(clicked : boolean) {
    this.clicked = clicked
    return this
  }

}
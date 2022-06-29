import {BottomSheetType} from './BottomSheetType';

export class BottomSheetModel {

  private bottomSheetType : BottomSheetType = BottomSheetType.STANDARD
  private bottomSheetBackgroundColor : Color | string = Color.White
  private backgroundOpacity : number = 1

  getBottomSheetType() : BottomSheetType {
    return this.bottomSheetType
  }

  getBottomSheetBackgroundColor() : Color | string {
    return this.bottomSheetBackgroundColor
  }

  getBackgroundOpacity() : number {
    return this.backgroundOpacity
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

}

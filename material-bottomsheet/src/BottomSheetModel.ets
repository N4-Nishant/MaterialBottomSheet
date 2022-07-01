import {BottomSheetType} from './BottomSheetType';

export class BottomSheetModel {

  private bottomSheetType : BottomSheetType = BottomSheetType.STANDARD
  private bottomSheetBackgroundColor : Color | string = Color.White
  private backgroundOpacity : number = 1
  private height : number | string = '100%'
  private borderWidth : number | string = '1vp'
  private borderRadius : number | string = '4vp'
  private borderColor : Color | string = '#A5A5A5'

  getBottomSheetType() : BottomSheetType {
    return this.bottomSheetType
  }

  getBottomSheetBackgroundColor() : Color | string {
    return this.bottomSheetBackgroundColor
  }

  getBackgroundOpacity() : number {
    return this.backgroundOpacity
  }

  getHeight() : number | string {
    return this.height
  }

  getBorderWidth() : number | string {
    return this.borderWidth
  }

  getBorderRadius() : number | string {
    return this.borderRadius
  }

  getBorderColor() : Color | string {
    return this.borderColor
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

  setHeight(height : number | string) {
    this.height = height
    return this
  }

  setBorderWidth(borderWidth : number | string) {
    this.borderWidth = borderWidth
    return this
  }

  setBorderRadius(borderRadius : number | string) {
    this.borderRadius = borderRadius
    return this
  }

  setBorderColor(borderColor : Color | string) {
    this.borderColor = borderColor
    return this
  }

}

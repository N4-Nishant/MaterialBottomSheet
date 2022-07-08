import {BottomSheetType} from './BottomSheetType';

export class BottomSheetModel {

  private bottomSheetType : BottomSheetType = BottomSheetType.STANDARD
  private bottomSheetBackgroundColor : Color | string = '#F0F3FF'
  private fullBottomSheetBackgroundColor : Color | string = '#F0F3FF'
  private backgroundScreenColor : Color | string = '#A5A5A5'
  private backgroundOpacity : number = 1
  private borderWidth : number | string = '1vp'
  private borderRadius : number | string = '4vp'
  private borderColor : Color | string = '#A5A5A5'
  private padding : number | string = '1vp'
  private ui : () => any = null
  private fullScreenUI : () => any = null

  getBottomSheetType() : BottomSheetType {
    return this.bottomSheetType
  }

  getBottomSheetBackgroundColor() : Color | string {
    return this.bottomSheetBackgroundColor
  }

  getFullBottomSheetBackgroundColor() : Color | string {
    return this.fullBottomSheetBackgroundColor
  }

  getBackgroundScreenColor() : Color | string {
    return this.backgroundScreenColor
  }

  getBackgroundOpacity() : number {
    return this.backgroundOpacity
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

  getPadding() : number | string {
    return this.padding
  }

  getUI() : () => any {
    return this.ui
  }

  getFullScreenUI() : () => any {
    return this.fullScreenUI
  }

  setBottomSheetType(bottomSheetType : BottomSheetType)  {
    this.bottomSheetType = bottomSheetType
    return this
  }

  setBottomSheetBackgroundColor(bottomSheetBackgroundColor : Color | string)  {
    this.bottomSheetBackgroundColor = bottomSheetBackgroundColor
    return this
  }

  setFullBottomSheetBackgroundColor(fullBottomSheetBackgroundColor : Color | string)  {
    this.fullBottomSheetBackgroundColor = fullBottomSheetBackgroundColor
    return this
  }

  setBackgroundScreenColor(backgroundScreenColor : Color | string) {
    this.backgroundScreenColor = backgroundScreenColor
    return this
  }

  setBackgroundOpacity(backgroundOpacity : number)  {
    this.backgroundOpacity = backgroundOpacity
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

  setPadding(padding : number | string) {
    this.padding = padding
    return this
  }

  setUI(ui : () => any) {
    this.ui = ui
    return this
  }

  setFullScreenUI(fullScreenUI : () => any) {
    this.fullScreenUI = fullScreenUI
    return this
  }

}

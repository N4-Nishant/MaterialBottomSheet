/*
 * Copyright (c) 2022 Application Library Engineering Group.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

export class BottomSheetModel {
  private bottomSheetBackgroundColor: Color | string = '#F0F3FF'
  private backgroundScreenColor: Color | string = '#A5A5A5'
  private backgroundOpacity: number = 0.6
  private borderRadius: number | string = '4vp'
  private borderColor: Color | string = '#A5A5A5'
  private body: () => any = null


  getBottomSheetBackgroundColor(): Color | string {
    return this.bottomSheetBackgroundColor
  }

  getBackgroundScreenColor(): Color | string {
    return this.backgroundScreenColor
  }

  getBackgroundOpacity(): number {
    return this.backgroundOpacity
  }

  getBorderRadius(): number | string {
    return this.borderRadius
  }

  getBorderColor(): Color | string {
    return this.borderColor
  }

  getBody(): () => any {
    return this.body
  }

  setBottomSheetBackgroundColor(bottomSheetBackgroundColor: Color | string) {
    if (this.bottomSheetBackgroundColor == null || this.bottomSheetBackgroundColor == undefined) {
      this.bottomSheetBackgroundColor = '#F0F3FF'
      return this
    }
    this.bottomSheetBackgroundColor = bottomSheetBackgroundColor
    return this
  }

  setBackgroundScreenColor(backgroundScreenColor: Color | string) {
    if (this.backgroundScreenColor == null || this.backgroundScreenColor == undefined) {
      this.backgroundScreenColor = '#A5A5A5'
      return this
    }
    this.backgroundScreenColor = backgroundScreenColor
    return this
  }

  setBackgroundOpacity(backgroundOpacity: number) {
    if (this.backgroundOpacity == null || this.backgroundOpacity == undefined) {
      this.backgroundOpacity = 0.6
      return this
    }
    this.backgroundOpacity = backgroundOpacity
    return this
  }

  setBorderRadius(borderRadius: number | string) {
    if (this.borderRadius == null || this.borderRadius == undefined) {
      this.borderRadius = '4vp'
      return this
    }
    this.borderRadius = borderRadius
    return this
  }

  setBorderColor(borderColor: Color | string) {
    if (this.borderColor == null || this.borderColor == undefined) {
      this.borderColor = '#A5A5A5'
      return this
    }
    this.borderColor = borderColor
    return this
  }

  setBody(body: () => any) {
    this.body = body
    return this
  }
}

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

import { BottomSheetModel } from './BottomSheetModel';

@Component
export struct BottomSheet {
  @State private model: BottomSheetModel = undefined
  @Link private visible: boolean
  @BuilderParam
  private body: () => any

  aboutToAppear() {
    if (this.model == null || this.model == undefined) {
      return
    }

  }

  build() {
    Stack({
      alignContent: Alignment.Bottom
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

      if (this.body != null && this.body != undefined) {
        Column() {
          this.body()
        }
        .width('100%')
        .borderRadius(this.model.getBorderRadius())
        .borderColor(this.model.getBorderColor())
        .backgroundColor(this.model.getBottomSheetBackgroundColor())
        .alignItems(HorizontalAlign.Center)
      }
    }
    .height('100%')
    .width('100%')
  }
}

export { BottomSheetModel } from './BottomSheetModel';


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

import prompt from '@system.prompt';
import { BottomSheet, BottomSheetModel }  from '@ohos/bottomsheet'

@Entry
@Component
struct Index {
  private model: BottomSheetModel = new BottomSheetModel()
  private model1: BottomSheetModel = new BottomSheetModel()
  @State visibleDialog1: boolean = false
  @State visibleDialog2: boolean = false

  @Builder
  customDesign(): any {
    Column() {
      Row() {
        Image($r("app.media.icon"))
          .objectFit(ImageFit.Cover)
          .height(24)
          .width(24)
        Blank(10)
        Text("Preview")
          .fontSize('16fp')
        Blank(1000)
      }
      .height('60vp')

      Row() {
        Image($r("app.media.icon"))
          .objectFit(ImageFit.Cover)
          .height(24)
          .width(24)
        Blank(10)
        Text("Share")
          .fontSize('16fp')
        Blank(1000)
      }
      .height('60vp')

      Row() {
        Image($r("app.media.icon"))
          .objectFit(ImageFit.Cover)
          .height(24)
          .width(24)
        Blank(10)
        Text("Get Link")
          .fontSize('16fp')
        Blank(1000)
      }
      .height('60vp')

      Row() {
        Image($r("app.media.icon"))
          .objectFit(ImageFit.Cover)
          .height(24)
          .width(24)
        Blank(10)
        Text("Remove")
          .fontSize('16fp')
        Blank(1000)
      }
      .height('60vp')
    }
    .width('100%')
  }

  @Builder
  customDesign1(): any {
    Column() {
      Row() {
        Image($r("app.media.icon"))
          .objectFit(ImageFit.Cover)
          .height(24)
          .width(24)
        Blank(10)
        Text("Song_Name")
          .fontSize('16fp')
        Blank(130)
        Text("01:24")
          .fontSize('16fp')
        Blank(10)
        Button('||')
          .onClick(() => null)
      }
      .width('100%')
      .height('72vp')
    }
  }

  aboutToAppear() {

    if (this.visibleDialog1 == null || this.visibleDialog1 == undefined) {
      this.visibleDialog1 = false
    }

    if (this.visibleDialog2 == null || this.visibleDialog2 == undefined) {
      this.visibleDialog2 = false
    }

    this.model
      .setBottomSheetBackgroundColor('#F0F3FF')
      .setBackgroundScreenColor('#A5A5A5')
      .setBackgroundOpacity(0.6)
      .setBorderRadius('14vp')
      .setBody(this.customDesign)

    this.model1
      .setBottomSheetBackgroundColor('#F0F3FF')
      .setBackgroundScreenColor('#A5A5A5')
      .setBackgroundOpacity(0.6)
      .setBorderRadius('14vp')
      .setBody(this.customDesign1)

  }

  build() {
    Column() {
      Stack({ alignContent: Alignment.Top }) {
        Column() {
        }
        .height('100%')
        .width('100%')
        .backgroundColor('#E5E5E5')

        if (this.visibleDialog1 == false && this.visibleDialog2 == false) {
          Row() {
            Button('Model Bottom Sheet')
              .width('48%')
              .height('56vp')
              .onClick(() => this.visibleDialog1 = true)
            Blank(10)
            Button('Standard Bottom Sheet')
              .width('48%')
              .height('56vp')
              .onClick(() => this.visibleDialog2 = true)
          }
        }

        else {
          if (this.visibleDialog1 == true) {
            BottomSheet({
              model: this.model,
              visible: $visibleDialog1,
              body: this.model.getBody()
            })
          }
          else {
            BottomSheet({
              model: this.model1,
              visible: $visibleDialog2,
              body: this.model1.getBody()
            })
          }
        }
      }
      .width('100%')
      .height('100%')
    }
  }
}

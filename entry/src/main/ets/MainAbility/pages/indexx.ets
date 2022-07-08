import prompt from '@system.prompt';
import { BottomSheet, BottomSheetModel, BottomSheetType }  from '@ohos/material-bottomsheet'

@Entry
@Component
struct Index {
  private model: BottomSheetModel = new BottomSheetModel()
  private model1: BottomSheetModel = new BottomSheetModel()
  private model2: BottomSheetModel = new BottomSheetModel()
  @State clicked: boolean = false

  @Builder
  customDesign(): any {
    Row(){
      Image($r("app.media.icon"))
        .objectFit(ImageFit.Cover)
        .height(24)
        .width(24)
      Blank(10)
      Text("Song_Name")
        .fontSize('16fp')
      Blank(95)
      Text("01:34")
        .fontSize('16fp')
      Blank(15)
      Button('||')
        .onClick(() => null)
    }
  }

  @Builder
  customDesign1(): any {
    Column(){
      Row(){
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
      Row(){
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
      Row(){
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
      Row(){
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
  customDesign2() : any {
    Column(){
      Image($r("app.media.icon"))
        .objectFit(ImageFit.Cover)
        .height(24)
        .width(24)
    }
  }

  aboutToAppear() {
    this.model
      .setBottomSheetType(BottomSheetType.STANDARD)
      .setBottomSheetBackgroundColor('#F0F3FF')
      .setFullBottomSheetBackgroundColor('#F0F3FF')
      .setBackgroundScreenColor('#A5A5A5')
      .setBackgroundOpacity(0.6)
      .setBorderWidth('1vp')
      .setBorderRadius('14vp')
      .setPadding('10vp')
      .setUI(this.customDesign)

    /*this.model1
      .setBottomSheetType(BottomSheetType.MODEL)
      .setBottomSheetBackgroundColor('#F0F3FF')
      .setFullBottomSheetBackgroundColor('#F0F3FF')
      .setBackgroundScreenColor('#A5A5A5')
      .setBackgroundOpacity(0.6)
      .setBorderWidth('1vp')
      .setBorderRadius('14vp')
      .setPadding('10vp')
      .setUI(this.customDesign1)
      .setFullScreenUI(this.customDesign1)*/

    /*this.model2
      .setBottomSheetType(BottomSheetType.EXPANDING)
      .setBottomSheetBackgroundColor('#A000E3')
      .setBackgroundScreenColor('#A5A5A5')
      .setBackgroundOpacity(0.6)
      .setBorderWidth('1vp')
      .setBorderRadius('14vp')
      .setPadding('10vp')
      .setUI(this.customDesign2)
      .setFullScreenUI(this.customDesign1)*/
  }

  build(){
    Column(){
        Stack({alignContent : Alignment.Bottom}){
          Column(){
            Row(){
              Text("Albums")
                .textAlign(TextAlign.Center)
                .fontSize('16fp')
                .backgroundColor('#A000E3')
                .width('100%')
                .height('72vp')
                .fontColor(Color.White)
            }
            Blank(10)
            Column(){
              Image($r("app.media.icon"))
                .width(100)
                .height(100)
                .objectFit(ImageFit.Cover)
              Blank(10)
              Text("Song_1")
                .fontSize('24fp')
            }
            Blank(20)
            Column(){
              Image($r("app.media.icon"))
                .width(100)
                .height(100)
                .objectFit(ImageFit.Cover)
              Blank(10)
              Text("Song_2")
                .fontSize('24fp')
            }
            Blank(20)
            Column(){
              Image($r("app.media.icon"))
                .width(100)
                .height(100)
                .objectFit(ImageFit.Cover)
              Blank(10)
              Text("Song_3")
                .fontSize('24fp')
            }
            Blank(20)
            Column(){
              Image($r("app.media.icon"))
                .width(100)
                .height(100)
                .objectFit(ImageFit.Cover)
              Blank(10)
              Text("Song_4")
                .fontSize('24fp')
            }
          }
          .height('100%')
          .width('100%')
          .backgroundColor('#E5E5E5')
          if(this.clicked == false){
            Button('Bottom Sheet')
              .onClick(() => this.clicked = true)
          }
          else{
            BottomSheet({
              model : this.model,
              clicked : $clicked,
              ui : null,
              fullScreenUI : null,
            })

            /*BottomSheet({
              model : this.model1,
              clicked : $clicked,
              ui : null,
              fullScreenUI : null,
            })*/

            /*BottomSheet({
              model : this.model2,
              clicked : $clicked,
              ui : null,
              fullScreenUI : null,
            })*/
          }
        }
        .width('100%')
        .height('100%')
    }
  }
}

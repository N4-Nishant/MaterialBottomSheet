import prompt from '@system.prompt';
import { BottomSheet, BottomSheetModel }  from '@ohos/material-bottomsheet'

@Entry
@Component
struct Index {
  private model: BottomSheetModel = new BottomSheetModel()
  @State visible: boolean = false


  @Builder
  customDesign(): any {
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


  aboutToAppear() {

    if(this.visible == null || this.visible == undefined){
      this.visible = false
    }

    this.model
      .setBottomSheetBackgroundColor('#F0F3FF')
      .setBackgroundScreenColor('#A5A5A5')
      .setBackgroundOpacity(0.6)
      .setBorderRadius('14vp')
      .setBody(this.customDesign)

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

          if(this.visible == false){
            Button('Bottom Sheet')
              .onClick(() => this.visible = true)
          }

          else{
            BottomSheet({
              model : this.model,
              visible : $visible,
              body : this.model.getBody(),
              fullScreenBottomSheet : false,
            })

            BottomSheet({
              model : this.model,
              visible : $visible,
              body : this.model.getBody(),
              fullScreenBottomSheet : true,
            })

          }
        }
        .width('100%')
        .height('100%')
    }
  }
}

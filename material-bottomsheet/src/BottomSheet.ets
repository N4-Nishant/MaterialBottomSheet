import {BottomSheetModel} from './BottomSheetModel';
import {BottomSheetType} from './BottomSheetType';

@Component
export struct BottomSheet{
  @State private model : BottomSheetModel = undefined

  @BuilderParam
  private ui : () => any

  build(){
    Column(){
      if(this.model.getBottomSheetType()==BottomSheetType.STANDARD){
        Row(){
          this.ui()
        }
      }
    }
  }
}

export {BottomSheetModel} from './BottomSheetModel';
export {BottomSheetType} from './BottomSheetType';

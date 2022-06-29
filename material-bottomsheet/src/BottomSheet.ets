import {BottomSheetModel} from './BottomSheetModel';
import {BottomSheetType} from './BottomSheetType';
import {CustomDesign, LibraryDesign} from './CustomDesign';

@Component
export struct BottomSheet{
  @State private model : BottomSheetModel = undefined

  build(){
    Column(){
      if(this.model.getBottomSheetType()==BottomSheetType.STANDARD){
        Row(){
          CustomDesign()
        }
      }
    }
  }
}

export {BottomSheetModel} from './BottomSheetModel';
export {BottomSheetType} from './BottomSheetType';
export {CustomDesign, LibraryDesign} from './CustomDesign';

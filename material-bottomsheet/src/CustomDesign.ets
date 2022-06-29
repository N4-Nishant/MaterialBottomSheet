@Component
export struct CustomDesign {
  @Builder
  customDesign(): any {
    Text("Custom builder design")
  }

  build() {
    Column() {
      LibraryDesign({
        ui: this.customDesign()
      })
    }
  }
}

@Component
export struct LibraryDesign {
  @BuilderParam
  private ui: () => any

  build() {
    Column() {
      Text("Library with custom builder").fontSize('20fp')

      this.ui()
    }.margin('24vp')
  }
}
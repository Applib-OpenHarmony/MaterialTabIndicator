import prompt from '@system.prompt';
import { Tab, TabBarOptions, TabBar, TabBarType, IconType, TabBarModel }  from '@ohos/material-tabs'

@Entry
@Component
struct Index {
  private options: TabBarOptions [] = [
    new TabBarOptions(1, $r('app.string.tab_1'), $r('app.media.icon')),
    new TabBarOptions(2, $r('app.string.tab_2'), $r('app.media.icon')),
    new TabBarOptions(3, $r('app.string.tab_3'), $r('app.media.icon')),
    new TabBarOptions(4, $r('app.string.tab_4'), $r('app.media.icon')),
    new TabBarOptions(5, $r('app.string.tab_5'), $r('app.media.icon')),
    new TabBarOptions(6, $r('app.string.tab_6'), $r('app.media.icon'))
  ]
  private model1: TabBarModel = new TabBarModel()
  private model2: TabBarModel = new TabBarModel()
  private model3: TabBarModel = new TabBarModel()
  private model4: TabBarModel = new TabBarModel()
  private model5: TabBarModel = new TabBarModel()
  private model6: TabBarModel = new TabBarModel()

  aboutToAppear() {
    this.model1
      .setTabBarType(TabBarType.fixed)
      .setTabIconType(IconType.none)
      .setTabBarOptions(this.options)

    this.model2
      .setTabBarType(TabBarType.fixed)
      .setTabIconType(IconType.top)
      .setTabBarOptions(this.options)

    this.model3
      .setTabBarType(TabBarType.fixed)
      .setTabIconType(IconType.leading)
      .setTabBarOptions(this.options)

    this.model4
      .setTabBarType(TabBarType.scrollable)
      .setTabIconType(IconType.none)
      .setTabBarOptions(this.options)

    this.model5
      .setTabBarType(TabBarType.scrollable)
      .setTabIconType(IconType.top)
      .setTabBarOptions(this.options)

    this.model6
      .setTabBarType(TabBarType.scrollable)
      .setTabIconType(IconType.leading)
      .setTabBarOptions(this.options)
  }

  private onTabSelected(id) {
    prompt.showToast({
      message: "Selected tab id - " + id
    });
  }

  build() {
    Column() {

      Blank(10)

      TabBar({
        selectedTabId: 1,
        model: this.model1,
        onSelect: this.onTabSelected
      })

      Blank(25)

      TabBar({
        selectedTabId: 1,
        model: this.model2,
        onSelect: this.onTabSelected
      })

      Blank(25)

      TabBar({
        selectedTabId: 1,
        model: this.model3,
        onSelect: this.onTabSelected
      })

      Blank(25)

      TabBar({
        selectedTabId: 1,
        model: this.model4,
        onSelect: this.onTabSelected
      })

      Blank(25)

      TabBar({
        selectedTabId: 1,
        model: this.model5,
        onSelect: this.onTabSelected
      })

      Blank(25)

      TabBar({
        selectedTabId: 1,
        model: this.model6,
        onSelect: this.onTabSelected
      })
    }
  }
}

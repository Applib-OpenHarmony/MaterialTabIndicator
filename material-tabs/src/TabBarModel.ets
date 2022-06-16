import { TabBarType } from './TabBarType';
import { IconType } from './IconType';
import { TabBarOptions } from './TabBarOptions';

export class TabBarModel {
  private tabId: number = -1
  private tabName: string | Resource = ""
  private tabIcon: Resource = null

  private tabWidth: string = '30%'

  private barType: TabBarType = TabBarType.fixed
  private iconType: IconType = IconType.none
  private tabBarOptions: TabBarOptions[] = []

  private selectedTabColor: string | Color = "#A020F0"
  private nonSelectedTabColor: string | Color = "#4f5958"
  private tabBackgroundColor: string | Color = "#fbfdfc"
  private rectColor: string | Color = "#e6eaea"

  private models: TabBarModel[] = []

  getSelectedTabColor(): string | Color {
    return this.selectedTabColor
  }

  getNonSelectedTabColor(): string | Color {
    return this.nonSelectedTabColor
  }

  getTabBackgroundColor(): string | Color {
    return this.tabBackgroundColor
  }

  getRectColor(): string | Color {
    return this.rectColor
  }

  getTabName(): string | Resource {
    return this.tabName
  }

  getTabId(): number {
    return this.tabId
  }

  getTabIcon(): Resource {
    return this.tabIcon
  }

  getBarType(): TabBarType {
    return this.barType
  }

  getIconType(): IconType {
    return this.iconType
  }

  getTabWidth(): string  {
    return this.tabWidth
  }

  getTabBarOptions(): TabBarOptions[] {
    return this.tabBarOptions
  }

  setTabBarType(barType: TabBarType) {
    this.barType = barType
    return this
  }

  setTabIconType(iconType: IconType) {
    this.iconType = iconType
    return this
  }

  setTabName(tabName: string | Resource) {
    this.tabName = tabName
    return this
  }

  setTabId(tabId: number) {
    this.tabId = tabId
    return this
  }

  setTabIcon(tabIcon: Resource) {
    this.tabIcon = tabIcon
    return this
  }

  setTabBarOptions(tabBarOptions: TabBarOptions[]) {
    this.tabBarOptions = tabBarOptions
    return this
  }

  buildModels() {
    let list: TabBarModel[] = []

    let width = this.getBarType() == TabBarType.fixed
      ? (100 / this.getTabBarOptions().length) + '%'
      : '30%'

    for (var i = 0; i < this.getTabBarOptions().length; i++) {
      let item = this.getTabBarOptions()[i]

      let model = new TabBarModel()
        .setTabId(item.getId())
        .setTabName(item.getName())
        .setTabIcon(item.getIcon())
        .setTabIconType(this.getIconType())
        .setTabBarType(this.getBarType())

      model.tabWidth = width

      list.push(model)
    }

    this.models = list
  }

  getModels(): TabBarModel[]{
    return this.models
  }
}

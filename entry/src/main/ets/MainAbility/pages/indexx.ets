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
import { TabBarOptions, TabBar, TabBarType, IconType, TabBarModel }  from '@ohos/material-tabs'

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
      .setTabBarType(TabBarType.FIXED)
      .setTabIconType(IconType.NONE)
      .setTabBarOptions(this.options)

    this.model2
      .setTabBarType(TabBarType.FIXED)
      .setTabIconType(IconType.TOP)
      .setTabBarOptions(this.options)

    this.model3
      .setTabBarType(TabBarType.FIXED)
      .setTabIconType(IconType.LEADING)
      .setTabBarOptions(this.options)

    this.model4
      .setTabBarType(TabBarType.SCROLLABLE)
      .setTabIconType(IconType.NONE)
      .setTabBarOptions(this.options)

    this.model5
      .setTabBarType(TabBarType.SCROLLABLE)
      .setTabIconType(IconType.TOP)
      .setTabBarOptions(this.options)

    this.model6
      .setTabBarType(TabBarType.SCROLLABLE)
      .setTabIconType(IconType.LEADING)
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

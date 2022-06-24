# MaterialTabIndicator

This library is developed to provide Tab-Bars with different icon types and different bar types implemented using extended typescript.

## Download & Install

Install using npm

```npm i @ohos/material-tabs```

## Usage Instructions


1. Import files and code dependencies

```ets
import { Tab, TabBarOptions, TabBar, TabBarType, IconType, TabBarModel }  from '@ohos/material-tabs'
```

2. Initialize TabBar model data

```
private model: TabBarModel = new TabBarModel()
```

3. Code for creating Fixed TabBar with No icon(only text)

```
this.model1
      .setTabBarType(TabBarType.fixed)
      .setTabIconType(IconType.none)
      .setTabBarOptions(this.options)
      
TabBar({
        selectedTabId: 1,
        model: this.model1,
        onSelect: this.onTabSelected
      })
```
![FixedTab_NoIcon](https://user-images.githubusercontent.com/82766420/174062780-1c180681-c7a2-4573-913e-dece1013607e.png)

4. Code for creating Fixed TabBar with Top icon

```
this.model2
      .setTabBarType(TabBarType.fixed)
      .setTabIconType(IconType.top)
      .setTabBarOptions(this.options)
 
TabBar({
        selectedTabId: 1,
        model: this.model2,
        onSelect: this.onTabSelected
      })
```
![FixedTab_TopIcon](https://user-images.githubusercontent.com/82766420/174062838-d6333fe7-cddb-4158-b9f9-ef5b16159e82.png)

5. Code for creating Fixed TabBar with Leading icon

```
this.model3
      .setTabBarType(TabBarType.fixed)
      .setTabIconType(IconType.leading)
      .setTabBarOptions(this.options)
      
TabBar({
        selectedTabId: 1,
        model: this.model3,
        onSelect: this.onTabSelected
      })
```
![FixedTab_LeadingIcon](https://user-images.githubusercontent.com/82766420/175473906-c0001113-dcc4-4066-b781-73b57351ce38.png)


6. Code for creating Scrollable TabBar with No icon(only text)

```
this.model4
      .setTabBarType(TabBarType.scrollable)
      .setTabIconType(IconType.none)
      .setTabBarOptions(this.options)
      
TabBar({
        selectedTabId: 1,
        model: this.model4,
        onSelect: this.onTabSelected
      })
```
![ScrollableTab_NoIcon](https://user-images.githubusercontent.com/82766420/174062930-1b1e36b2-c333-4ad1-aaf1-3202e90f4ca0.png)

7. Code for creating Scrollable TabBar with Top icon

```
this.model5
      .setTabBarType(TabBarType.scrollable)
      .setTabIconType(IconType.top)
      .setTabBarOptions(this.options)
      
TabBar({
        selectedTabId: 1,
        model: this.model5,
        onSelect: this.onTabSelected
      })
```
![ScrollableTab_TopIcon](https://user-images.githubusercontent.com/82766420/174062969-20507926-89f2-4060-b19c-6c5ef7ca19b4.png)

8. Code for creating Scrollable TabBar with Leading icon

```
this.model6
      .setTabBarType(TabBarType.scrollable)
      .setTabIconType(IconType.leading)
      .setTabBarOptions(this.options)
      
TabBar({
        selectedTabId: 1,
        model: this.model6,
        onSelect: this.onTabSelected
      })
```
![ScrollableTab_LeadingIcon](https://user-images.githubusercontent.com/82766420/174062997-88dc48f7-610d-4428-aa84-57e4a7112ca3.png)

## Compatibility

Supports OpenHarmony API version 8

## Code Contribution

If you find any problems during usage, you can submit
an [Issue](https://github.com/Applib-OpenHarmony/Material_UI_Tab-Indicator/issues) to us. Of course, we also welcome you to
send us [PR](https://github.com/Applib-OpenHarmony/Material_UI_Tab-Indicator/pulls).

## Open source License

Licensed under [Apache-2.0 license](https://github.com/N4-Nishant/Material_UI_Tab-Indicator/blob/main/LICENSE)

# Reference:

Design by : Nishant Trivedi

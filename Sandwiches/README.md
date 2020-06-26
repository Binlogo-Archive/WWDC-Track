# WWDC20: Introduction to SwiftUI 演示代码

运行环境：Xcode 12

## 演示概览

- 创建 Multiplatform 项目
- `List` 创建列表

  - `ForEach` 动态 Cell + 静态 Cell

- `NavigationView` 导航栏

  - `NavigationLink` 导航转场跳转
  - `.navigationTitle` 导航栏标题
  - `.navigationBarItems` 导航栏控件

- 创建详情页

- `Image` 图片展示

  - `.resizable`
  - `.aspectRatio`

- `Spacer` 弹性布局轻量辅助视图

- 点击缩小/放大

  - `.onTapGesture` 手势交互
  - `@State` 状态属性控制

- 动画支持

  - `.withAnimation`
  - `.transition`

- SafeArea 边距控制

  - `edgesIgnoringSafeArea`

- 多平台/多环境预览演示与支持

  - `.preferredColorScheme`
  - `.environment`

- 列表增删改与数据交互

  - `@StateObject`、`@ObservedObject`、`ObservableObject`等实现数据状态观察 · 数据交互
  - `onMove` 编辑状态 · 改
  - `onDelete` 编辑或侧滑 · 删

## 操作技巧

- Command + 点击，快速打开 Code Actions

  - 或者右键：Show Code Actions -

- Library 中有 Modifier 一栏可供查找，Command + Shift + L 快速打开 Library -

- Control + Option + 点击预览控件，快速打开属性面板

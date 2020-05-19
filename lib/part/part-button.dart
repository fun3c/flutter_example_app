const widgetIntro = """
  Material 组件库中提供了多种按钮组件如 `RaisedButton`、`FlatButton`、`OutlineButton`等，它们都是直接或间接对`RawMaterialButton`组件的包装定制，
  所以他们大多数属性都和`RawMaterialButton`一样。
  在介绍各个按钮时我们先介绍其默认外观，而按钮的外观大都可以通过属性来自定义，我们在后面统一介绍这些属性。另外，所有`Material` 库中的按钮都有如下相同点：
  1. 按下时都会有“水波动画”（又称“涟漪动画”，就是点击时按钮上会出现水波荡漾的动画）。
  2. 有一个onPressed属性来设置点击回调，当按钮按下时会执行该回调，如果不提供该回调则按钮会处于禁用状态，禁用状态不响应用户点击。
""";
const flatButtonIntro = 'FlatButton即扁平按钮，默认背景透明并不带阴影。按下后，会有背景色。例如下：';
const flatButton1 = """
```
FlatButton(
  onPressed: () {},
  textColor: Colors.blue,
  padding: EdgeInsets.all(8.0),
  child: Text('Button', style: TextStyle(fontSize: 20.0)),
)
""";

const flatButton2 = """
```
  FlatButton.icon(
    icon: const Icon(Icons.add, size: 20.0),
    onPressed: () {},
    textColor: Colors.blue,
    label: Text('Button', style: TextStyle(fontSize: 20.0)),
  ),
""";

const raisedButtonIntro = 'RaisedButton 即"漂浮"按钮，它默认带有阴影和灰色背景。按下后，阴影会变大。例如下：';

const raisedButton1 = """
```
RaisedButton(
  onPressed: () {},
  textColor: Colors.white,
  color: Colors.blue,
  child: buildBtnText(),
)
""";

const raisedButton2 = """
```
RaisedButton.icon(
  icon: const Icon(Icons.add, size: 20.0),
  onPressed: () {},
  textColor: Colors.white,
  color: Colors.blue,
  label: buildBtnText(),
)
""";
const outlineButtonIntro =
    'OutlineButton默认有一个边框，不带阴影且背景透明。按下后，边框颜色会变亮、同时出现背景和阴影(较弱)，例如下：';
const OutlineButton1 = """
```
OutlineButton(
  onPressed: () {},
  textColor: Colors.blue,
  highlightedBorderColor:
      Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
  child: buildBtnText(),
)
""";

const OutlineButton2 = """
```
OutlineButton.icon(
  icon: const Icon(Icons.add, size: 20.0),
  onPressed: () {},
  textColor: Colors.blue,
  highlightedBorderColor:
      Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
  label: buildBtnText(),
)
""";
const imgIconWidgetIntro = """
Flutter中，我们可以通过Image组件来加载并显示图片，`Image`的数据源可以是asset、文件、内存以及网络。

#### ImageProvider
`ImageProvider` 是一个抽象类，主要定义了图片数据获取的接口`load()`，从不同的数据源获取图片需要实现不同的`ImageProvider` ，
如`AssetImage`是实现了从Asset中加载图片的`ImageProvider`，而`NetworkImage`实现了从网络加载图片的`ImageProvider`。

#### Image
`Image widget`有一个必选的image参数，它对应一个`ImageProvider`。下面我们分别演示一下如何从asset和网络加载图片。
""";

const imgIconPart = """
Image(
  image: AssetImage("images/avatar.png"),
  width: 100.0
);

Image.asset("images/avatar.png",
  width: 100.0,
)
""";

const imgIconPart2 = """
Image(
  image: NetworkImage('https://www.devio.org/img/avatar.png',
  width: 100.0),
);
Image.network('https://www.devio.org/img/avatar.png', width: 100.0));
""";

const imgIconWidgetIntro2 = """
### Icon图标
Flutter中，可以像Web开发一样使用`iconfont`，即“字体图标”，它是将图标做成字体文件，然后通过指定不同的字符而显示不同的图片。

### 使用Material Design字体图标
""";

const imgIconPart3 = """
Text(icons,
  style: TextStyle(
      fontFamily: "MaterialIcons",
      fontSize: 34.0,
      color: Colors.green
  ),
);
""";

const imgIconWidgetIntro3 = """
### IconData和Icon

通过这个示例可以看到，使用图标就像使用文本一样，但是这种方式需要我们提供每个图标的码点，这并对开发者不友好，所以，Flutter封装了IconData和Icon来专门显示字体图标，
""";

const imgIconPart4 = """
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Icon(Icons.accessible,color: Colors.green,),
    Icon(Icons.error,color: Colors.green,),
    Icon(Icons.fingerprint,color: Colors.green,),
  ],
)
""";

const imgIconWidgetIntro4 = """
### 使用自定义字体图标

我们也可以使用自定义字体图标。在Flutter中，我们使用ttf格式即可。

1.导入字体图标文件；这一步和导入字体文件相同，假设我们的字体图标文件保存在项目根目录下，路径为"fonts/iconfont.ttf"：

-------
-------

fonts:
  \\- family: myIcon  #指定一个字体名
    fonts:
      \\- asset: fonts/iconfont.ttf
------
------
2.为了使用方便，我们定义一个MyIcons类，功能和Icons类一样：将字体文件中的所有图标都定义成静态变量：

-------
-------
class MyIcons{
  static const IconData weChat = const IconData(
      0xec7d,  
      fontFamily: 'myIcon', 
      matchTextDirection: true
  );
}

-------
-------

3.使用
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Icon(MyIcons.wechat,color: Colors.green,),
    ...
  ],
)
""";

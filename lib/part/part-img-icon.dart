const imgIconWidgetIntro = """
*Flutter*中，我们可以通过Image组件来加载并显示图片，`Image`的数据源可以是asset、文件、内存以及网络。

#### ImageProvider
`ImageProvider` 是一个抽象类，主要定义了图片数据获取的接口`load()`，从不同的数据源获取图片需要实现不同的`ImageProvider` ，
如`AssetImage`是实现了从Asset中加载图片的`ImageProvider`，而`NetworkImage`实现了从网络加载图片的`ImageProvider`。

#### Image
`Image widget`有一个必选的image参数，它对应一个`ImageProvider`。下面我们分别演示一下如何从asset和网络加载图片。
""";

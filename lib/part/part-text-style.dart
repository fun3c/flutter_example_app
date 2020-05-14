const String textStyleStr0 = """
`Text` 用于显示简单样式文本，它包含一些控制文本显示样式的一些属性;
```
Text('Hello World!!!'),

Text("Hello world",
  textScaleFactor: 1.5,
);
```
""";

const String textStyleStr1 = """
`maxLines、overflow`：指定文本显示的最大行数，默认情况下，文本是自动折行的，如果指定此参数，则文本最多不会超过指定的行。如果有多余的文本，可以通过overflow来指定截断方式，默认是直接截断，本例中指定的截断方式TextOverflow.ellipsis，它会将多余文本截断后以省略符“...”表示；
``` 
Text('Hello World!!!*4' * 4, 
maxLines: 1,
overflow: TextOverflow.ellipsis,
),
```

""";
const String textStyleStr2 = """
`textAlign`：文本的对齐方式；可以选择左对齐、右对齐还是居中。注意，对齐的参考系是Text widget本身。本例中虽然是指定了居中对齐，但因为Text文本内容宽度不足一行，Text的宽度和文本内容长度相等，那么这时指定对齐方式是没有意义的，只有Text宽度大于文本内容长度时指定此属性才有意义。
```
Container(
  padding: EdgeInsets.all(20.0),
  margin: EdgeInsets.only(top: 10.0),
  constraints: BoxConstraints(
    minWidth: double.infinity,
  ),
  color: Colors.yellow,
  child: Text(
    '文本的居左对齐方式',
    textAlign: TextAlign.left,
  ),
),
```
""";

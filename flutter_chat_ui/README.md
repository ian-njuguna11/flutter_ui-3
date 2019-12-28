<!-- # flutter_chat_ui

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference. -->

# What I learn from this UI:
#### To share a Theme across an entire app, provide a `ThemeData` to the MaterialApp constructor.Now that you’ve defined a theme, use it within the widgets’ build() methods by using the `Theme.of(context)` method.

```
MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.red, accentColor: Color(0XFFFEF9EB)),
      home: HomeScreen(),
    );
```
``` 
Container(
  color: Theme.of(context).accentColor,
  child: Text(
    'Text with a background color',
    style: Theme.of(context).textTheme.title,
  ),
);
```
#### In row/column use `MainAxisAlignment.spaceBetween` place the free space evenly between the children.
```
Row /*or Column*/( 
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
),
```
#### If I want to have a specific size, I use `SizedBox`. Lately I've even been using `SizedBox` in place of paddings to separate items in `Column` or `Row`.

#### A widget that expands a child of a Row, Column, or Flex so that the child fills the available space is `Expanded`. 
If multiple children are expanded, the available space is divided among them according to the `flex` factor.

An `Expanded` widget must be a descendant of a `Row`, `Column`, or `Flex`, and the path from the Expanded widget to its enclosing `Row`, `Column`, or `Flex` must contain only `StatelessWidgets` or `StatefulWidgets` (not other kinds of widgets, like `RenderObjectWidgets`).

#### Widget under `Flexible` are by default `WRAP_CONTENT` although you can change it using parameter `Fit`.

#### Widget under `Expanded` is `MATCH_PARENT` you can change it using `flex`.

#### To handle text overflow use

> Using Ellipsis
```
Text(
  "This is a long text",
  overflow: TextOverflow.ellipsis,
),
```
![Alt TextOverflow.ellipsis](https://i.stack.imgur.com/5KQfk.png)
> Using Fade

```
Text(
  "This is a long text",
  overflow: TextOverflow.fade,
  maxLines: 1,
  softWrap: false,
),
```
![Alt TextOverflow.ellipsis](https://i.stack.imgur.com/1k14T.png)

> Using clip

```
Text(
  "This is a long text",
  overflow: TextOverflow.clip,
  maxLines: 1,
  softWrap: false,
),
```
![Alt TextOverflow.ellipsis](https://i.stack.imgur.com/MfXil.png)

**Note:**

If you are using Text inside a Row, you can put above Text inside Expanded like:
```
Expanded(
  child: AboveText(),
)
```
#### `ClipRRect`
It’s the same as `ClipRect` with rounded corners. Notice how you can have different curvatures for each corner, you’re not forced to make **all four corners the same radius**. In this example only three corners were given values. All we had to do to keep the bottom left corner “square”, and was not assign it any value. It’s square by default.

```
ClipRRect(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(25.0),
    topRight: Radius.circular(25.0),
    bottomRight: Radius.circular(25.0),
  ),
  child: Align(
    alignment: Alignment.bottomRight,
    heightFactor: 0.5,
    widthFactor: 0.5,
    child: Image.network(
      "https://static.vinepair.com/wp-content/uploads/2017/03/darts-int.jpg"),
  ),
)
```

#### `ListView.Builder` reverse property

 if the reading direction is left-to-right and `scrollDirection` is `Axis.horizontal`, then the scroll view scrolls from left to right when `reverse` is false and from right to left when `reverse` is true.
 Similarly, if `scrollDirection` is `Axis.vertical`, then the scroll view scrolls from top to bottom when `reverse` is false and from bottom to top when `reverse` is true.

#### Dismissing keyboard programmatically
Trying to hide the keyboard when tapping away from a form field. To do this, I tried wrapping my entire app in a `GestureDetector` and then calling `FocusScope.of(context).unfocus()`.

```
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: MaterialApp(
        title: 'Scout',
        theme: theme,
        home: LoginScreen(),
        routes: routes,
      ),
    );
  }
}
```
**Reference link: https://www.youtube.com/watch?v=h-igXZCCrrc**
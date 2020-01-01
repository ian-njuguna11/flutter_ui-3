# What I learn from travel UI :-

1. **To get access to index, you need to convert your list to a map using the `asMap` operator.**

**Example**
```
final fruitList = ['apple', 'orange', 'mango'];
final fruitMap = myList.asMap(); // {0: 'apple', 1: 'orange', 2: 'mango'}

// To access 'orange' use the index 1.
final myFruit = fruitMap[1] // 'orange'

// To convert back to list
fruit fruitListAgain = fruitMap.values.toList();
```
Note: For all important points related to list.

2. **Stack widget**

* A Stack allows you to stack elements on top of each other, with the last element in the array taking the highest priority. You can use `Align`, `Positioned` or `Container` to position the children of a stack.
* Default `fit` is `Fit.loose`.
* Default **non positioned** align to `topLeft`.
* Use `Overflow` property to show entire child or clip it.
* Default order of widget is bottom to top.(first child painted at bottom.)
* Each child can be positioned or non positioned.

#### Align
Widgets are moved by setting the alignment with `Alignment`, which has static properties like topCenter, bottomRight, and so on. Or you can take full control and set `Alignment(1.0, -1.0)`, which takes x,y values ranging from 1.0 to -1.0, with (0,0) being the center of the screen.

```
Stack(
    children: [
        MyWidget(),
        Align(
            alignment: Alignment.topCenter,
            child: MyWidget(),
        ),
        Container(
            alignment: Alignment(-0.9, -0.9),
            child: MyWidget(),
        )  
    ]
);
```
![Alt Stack- Align](https://fireship.io/lessons/flutter-widget-positioning-guide/img/aligned.png)

#### Positioned
As an alternative to align, you can position children relative to the parent widget.

```
Stack(
    children: [
        MyWidget(),
        Positioned(
            bottom: 20,
            left: 20,
            child: MyWidget(color: Colors.blue),
        ),
        Positioned(
            top: 50,
            right: 50,
            child: MyWidget(color: Colors.red)
        )
    ]
)
```
![Alt Stack- Align](https://fireship.io/lessons/flutter-widget-positioning-guide/img/positioned.png)

3. **Flutter `crossAxisAlignment` vs `mainAxisAlignment`**
    * **Row**:
    ```  
    mainAxisAlignment = Horizontal Axis
    crossAxisAlignment = Vertical Axis
    ```

    ![Alt Row alignment](https://flutter.dev/assets/ui/layout/row-diagram-ad51795e19e3e1d412815b287c9caa694ad357892e3ab8b3ef1da0c4c6e011db.png)

    * **Column**:

    ```
    mainAxisAlignment = Vertical Axis
    crossAxisAlignment = Horizontal Axis
    ```
    ![Alt Column alignment](https://flutter.dev/assets/ui/layout/column-diagram-4e2ce8e33c32a09d090280fb7b2925baaf58f6de7876a551c207ab904e2fafc6.png)

**Default crossAxisAlignment of Column is center.**
<!-- **Default crossAxisAlignment of Column is center.**


Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => DestinationScreen(destination: dest))),


####  onPressed: () => Navigator.pop(context)
## Hero widget  for animation

## defferace btw MainAxisAlignment nd CrossAxisAlignment -->
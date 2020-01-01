# travel_ui

To get access to index, you need to convert your list to a map using the asMap operator.

Example

final fruitList = ['apple', 'orange', 'mango'];
final fruitMap = myList.asMap(); // {0: 'apple', 1: 'orange', 2: 'mango'}

// To access 'orange' use the index 1.
final myFruit = fruitMap[1] // 'orange'

// To convert back to list
fruit fruitListAgain = fruitMap.values.toList();


### stack widget

### by default crossAxisAlignment of Column is center.

```Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => DestinationScreen(destination: dest))),```


####  onPressed: () => Navigator.pop(context)
## Hero widget  for animation

## defferace btw MainAxisAlignment nd CrossAxisAlignment
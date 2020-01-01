## List methods in dart
Dart offer four types of collection. 

1. List
2. Set
3. Map
4. Queue

Today I am learning about **`List`**. It is equivalent to `Array` and is an ordered collection of items, starting with index 0.

### List methods

Covering all list method which are useful in long go in dart.


#### sublist();
Returns a new list containing the elements between `start` and `end`.
```
var colors = ["red", "green", "blue", "orange", "pink"];
print(colors.sublist(1, 3)); // [green, blue]
```
If `end` is not provided, it returns all elements starting from start till length of the list.
```
print(colors.sublist(1)); // [green, blue, orange, pink]
```
#### asMap():
Return map representation of the list.
```
List<String> sports = ['cricket', 'football', 'tennis', 'baseball'];
Map<int, String> map = sports.asMap();
print(map); // {0: cricket, 1: football, 2: tennis, 3: baseball}
 ```
#### reversed():
reversed is a getter which reverses iteration of the list depending upon given list order.
```
var descList= [6,5,4,3,2,1];
print(descList.reversed.toList()); // [1,2,3,4,5,6]

var ascList = [1,2,3,4,5,6];
print(ascList.reversed.toList()); // [6,5,4,3,2,1]
```
#### shuffle():
This method re-arranges order of the elements in the given list randomly.
```
var myList= [1,2,3,4,5];
myList.shuffle();
print('$myList'); // [5,4,3,1,2]
```
#### whereType():
If we want to get list where type is `int` from the combination of `int` and `String` or other type then use this. method.

```
var mixList = [1, "a", 2, "b", 3, "c", 4, "d"];
var num = mixList.whereType<String>();
print(num); // ("a", "b", "c", "d")
```

#### firstWhere():
Returns the **first element** that satisfies the given **condition** satisfied. like this there is also `lastWhere` method for last satisfied condition.
```
var list = ['one', 'two', 'three', 'four'];
print(list.firstWhere((i) => i.length > 3)); // three
```

#### singleWhere():
This method returns the **first matching element** from the list when there’s an **exact** match.
```
var mList = [1, 2, 3, 4];
print(mList.singleWhere((i) => i == 3)); // 3
```
#### fold():
Reduces a collection to a **single value** by iteratively combining each element of the collection with an existing value.
```
var lst = [1,2,3,4,5];
var res = lst.fold(2, (i, j) => i + j);
print('res is ${res}'); // res is 17
 ```
here 2 is `initial value`.

#### reduce():
Same as `fold` only difference is, this method doesn’t take any `initialValue` and the given list should be `non-empty`.

```
var lst = [1,2,3,4,5];
var res = lst.reduce((i, j) => i + j);
print('res is ${res}'); // res is 15
```

#### followedBy():
To add new item to list.
```
var sportsList = ['cricket', 'tennis', 'football'];
print(sportsList.followedBy(['golf', 'chess']).toList()); 
// [cricket, tennis, football, golf, chess]
```

Reference: https://medium.com/flutter-community/useful-list-methods-in-dart-6e173cac803d
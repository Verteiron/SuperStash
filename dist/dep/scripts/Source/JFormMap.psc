
;/  Associative key-value container.
    Inherits JValue functionality
/;
Scriptname JFormMap Hidden


;/  creates new container object. returns container identifier (integer number).
    identifier is the thing you will have to pass to the most of container's functions as a first argument
/;
int function object() global native

;/  returns value associated with key
/;
int function getInt(int object, form key, int default=0) global native
float function getFlt(int object, form key, float default=0.0) global native
string function getStr(int object, form key, string default="") global native
int function getObj(int object, form key, int default=0) global native
form function getForm(int object, form key, form default=None) global native

;/  creates key-value association. replaces existing value if any
/;
function setInt(int object, form key, int value) global native
function setFlt(int object, form key, float value) global native
function setStr(int object, form key, string value) global native
function setObj(int object, form key, int container) global native
function setForm(int object, form key, form value) global native

;/  returns true, if something associated with key
/;
bool function hasKey(int object, form key) global native

;/  returns type of the value associated with key.
    0 - no value, 1 - none, 2 - int, 3 - float, 4 - form, 5 - object, 6 - string
/;
int function valueType(int object, form key) global native

;/  returns new array containing all keys
/;
int function allKeys(int object) global native

;/  returns new array containing all values
/;
int function allValues(int object) global native

;/  destroys key-value association
/;
bool function removeKey(int object, form key) global native

;/  returns count of items/associations
/;
int function count(int object) global native

;/  removes all items from container
/;
function clear(int object) global native

;/  inserts key-value pairs from the source map
/;
function addPairs(int object, int source, bool overrideDuplicates) global native

;/  Simplifies iteration over container's contents.
    Increments and returns previous key, pass defaulf parameter to begin iteration. Usage:
    string key = JMap.nextKey(map)
    while key
      <retrieve values here>
      key = JMap.nextKey(map, key)
    endwhile
/;
form function nextKey(int object, form previousKey=None, form endKey=None) global native

;/  Retrieves N-th key. negative index accesses items from the end of container counting backwards.
    Worst complexity is O(n/2)
/;
form function getNthKey(int object, int keyIndex) global native

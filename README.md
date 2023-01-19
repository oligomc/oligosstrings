# Oligo's Strings Datapack (ostr)

## Description
Provides functions for modifying strings

## Installation
Once the data pack is [installed](https://minecraft.fandom.com/wiki/Tutorials/Installing_a_data_pack), type `/reload` in-game to load all data pack assets.

The data pack can be disabled in-game using the command `/function ostr:uninstall`, whereafter the contents can be removed from the data packs folder.

## Usage
Provides two functions for modifying strings:
1. `/function ostr:parse` - parses a string into a character array.
2. `/function ostr:concat` - concatenates an array of strings into a single string. Requires command blocks, and thus will be completed after all functions are completed (see `call` in next section)

Inputs and outputs to each function can be found in the `ostr:io` NBT storage namespace. The namespace contains 3 modifiable tags:
1. `in`: the input string (for `ostr:parse`) or string array (for `ostr:concat`)
2. `out`: the output from the respective function
3. `call`: the command to be run after `ostr:concat` is completed. This function will be run later in the same tick it is called at the same time command blocks are processed. Defaults to `'tellraw @a {"nbt":"out", "storage":"ostr:io"}'` which simply prints the result to the chat.

### Examples
To concatenate the strings `"hello "` and `"world"`, run the following code in a function file or two separate command blocks:
```
data modify storage ostr:io in set value ["hello ", "world"]
function ostr:concat
data get storage ostr:io out 
## returns "hello world"
```
To parse the string `hello` into an array of characters, run the following code in a function file or two separate command blocks:
```
data modify storage ostr:io in set value "hello"
function ostr:parse
data get storage ostr:io out
## returns ["h", "e", "l", "l", "o"]
```

## Credits
Datapack assets written by Oligo

## License
MIT
# The BASED Baba Mod

This is a utility mod for Baba Is You that simplifies the process of adding BASED baserules into your levelpack. This is useful if you don't want to lag the game with a lot of text blocks on the screen.

*Ideally*, this mod should be compatable with other mods since it doesn't override any existing functions from the game.

## Installing
Just copy the contents of the `Lua` into the `Lua` folder in your levelpack (Or just copy the `Lua` folder directly into the levelpack) Make sure `mods=1` is enabled for your levelpack as well.

## Configuring the BASED mod
All of the configuration is defined in `Lua/basedconfig/baserules.lua`. This lua file is reloaded whenever you start or restart a level in your levelpack. So you don't have to close the game every time you want to edit baserules. Just edit the lua file and restart the level! It's that ~~BASED~~ easy!

Documentation of `baserules.lua` is provided in the file itself. At a high level, you can define the baserules that will be applied if you form `level is <X>`, where `<X>` is a custom property name that you define yourself in `baserules.lua`. You can even define baserule sets that only happen *per level*. (Again, more details in `baserules.lua` itself)

### How do I define a custom property to use with this mod?
It's pretty simple:

1) In the level editor, add a text object that you won't plan to use.
2) Open the palette and right-click on the text object
3) Click `Change Name...` and rename it to `text_<X>`, where `<X>` is your custom property name (Ex: "text_hello", "text_based", "text_thisisreallylongtodemonstratelongnames")
4) Make sure `Text Type` is either "Baba" or "You"
5) Make sure clicking `Change Type...` has "text" as the value
6) And that's it! Feel free to customize the other options as well, but they're not needed for this mod.


## Changelog
- v1.1 (2/6/22)
  - Fixed "X make Y" as a baserule not working after level restart
  - Updated error message shown if `baserules.lua` has a syntax error
  - Updated presentation/documentation of `baserules.lua`

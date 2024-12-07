# Lua pairs iterator and mutable tables

This example demonstrates a common issue when working with Lua tables and the `pairs` iterator.  The `pairs` iterator creates a snapshot of the table's keys at the start of the iteration.  Any changes made to the table's structure (adding or removing keys) during iteration won't be reflected in the iteration itself.

The provided `bug.lua` file shows this behavior.  `bugSolution.lua` offers alternative approaches to handle this scenario.  This is a subtle behavior that many Lua developers fall victim to and it is important to be aware of it for writing robust and correct code.
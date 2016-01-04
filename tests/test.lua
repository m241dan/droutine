DRoutine = require( "droutine" )

print( "Starting test, Library loaded." )
local dr = DRoutine:new()

print( "Test 1: Calling Part 1\n  Expected result: \"Call on DRoutine has no thread\"\n  Actual..." )
dr()


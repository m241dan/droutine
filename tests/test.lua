DRoutine = require( "droutine" )

print( "Starting test, Library loaded:" )
for k, v in pairs( DRoutine ) do
  print( "DRoutine -> " .. k )
end

local dr = DRoutine:new()

print( "Test 1: Calling Part 1\nExpected result: \"Call on DRoutine has no thread\"\nActual...\n" )
dr()
print( "\n" )

print( "Test 2: Using Status Part 1\nExpected result: \"none\"\nActual...\n" )
print( dr:status() )
print( "\n" )

local function repeater()
   print( "Initialized." )
   local input = coroutine.yield()
   print( input )
end

dr:wrap( repeater )

print( "Test 3: Calling Part 2\nExpected result: \"Initialized.\nActual...\n" )
dr()
print( "\n" )

print( "Test 4: Using Status Part 2\nExpected result: \"suspended\"\nActual...\n" )
print( dr:status() )
print( "\n" )

print( "Test 5: Calling Part 3\nExpected result: \"Chirp\"\nActual...\n" )
dr( "Chirp" )
print( "\n" )

print( "Test 6: Using Status Part 3\nExpected result: \"dead\"\nActual..." )
print( dr:status() )
print( "\n" )

print( "Test 7: Calling Part 4\nExpected result: \"Call on DRoutine with a dead thread\"\nActual...\n" )
dr()


------------------------------------------------------------
-- Interpreter Object Library, written by Daniel R. Koris --
------------------------------------------------------------
-- The interp object's goal is to provide a container for --
-- a lua coroutine. It will allow us to call it as a      --
-- normal function, like a wrapped coroutine but will     --
-- provide allow all the functionality of a non-wrapped   --
-- coroutine.                                             --
------------------------------------------------------------

local I = {}

-- setup OOP by indexing itself
I.__index = I

---------------
-- I:new() 

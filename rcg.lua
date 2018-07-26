-- Just rename this file in .lua and you're good to go

-- --------------------------------------------------------------------------------------------------------------
-- --------------------------------Auxiliary functions-----------------------------------------------------------
-- --------------------------------------------------------------------------------------------------------------

-- Example of an auxiliary function you can define for yourself in order to 
-- not write duplicated code
function threeD6()
	math.randomseed(os.time())
	return math.random (1,6) + math.random (1,6) + math.random (1,6)
end

-- Heres another function to help you calculate modifiers. This way you only write the function once
-- Tip: you were mixing data types (sometimes mod was a string and sometimes an integer)
-- 		Its better to always work with same data types for a same variable to avoid errors
function getModifier(attribute)
	local mod = 999

	if (attribute == 3) then 
			mod = "-3"

	elseif (attribute == 4 or attribute == 5) then 
		mod = "-2"

	elseif (attribute >= 6 and attribute <= 8) then 
		mod = "-1"

	elseif (attribute >= 9 and attribute <= 12) then 
		mod = "+0"

	elseif (attribute >= 13 and attribute <= 15) then 
		mod = "+1"

	elseif (attribute == 16 or attribute == 17) then 
		mod = "+2"

	elseif (attribute == 18 or attribute == 19) then 
		mod = "+3"

	elseif attribute == 20 then 
		mod = "+4"

	elseif attribute >= 21 then 
		mod = "+5"
	end		
	return mod
end

-- --------------------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------------------

--	 variable definition WHAT ARE THESE? Rename them accordingly to what they are ;)
local cha, con, dex, int, str, wil
local cha_mod, con_mod, dex_mod, int_mod, str_mod, wil_mod

-- 3d6 for all attributes

cha = threeD6();
con = threeD6();
dex = threeD6();
int = threeD6();
str = threeD6();
wil = threeD6();
s = (math.random (3,18) +3)



print "Enter Level Number" 

-- to calculate level "bonus points"

r = io.read()
level = r

-- if (r % 2 == 0) then
--		r = r
-- You can check directly if the two values are different
if(r % 2 ~= 0)
	r = r - 1
end

x = (r / 2)
-- -------to put "bonus points" into attributes---------------
print "Calculating bonus attribute points due to level..."

math.randomseed(os.time())
roll30 = math.random (1,30)

repeat
   	if (x > 1) then
		if (roll30 == 1) then 
			cha = cha + 1

		-- Working with ranges will save you lots of individual value checking
		elseif ((roll30 >= 2 and  roll30 <= 5) or (roll30 >= 17 and roll30 <= 19) or (roll30 <= 21 and roll30 >= 22) or roll30 == 30) then 
			con = con + 1
		
		elseif (roll30 == 6 or roll30 == 20 or roll30 == 26 or roll30 == 27) then
			dex = dex + 1
		
		elseif (roll30 == 7 or roll30 == 8) then
			int = int + 1
		
		elseif ((roll30 >= 9 and roll30 <= 11) or (roll30 >= 14 and roll30 <= 29)) 
			str = str + 1

		elseif (roll30 == 12 or roll30 == 13) then 
			wil = wil + 1 

		-- You should always explain what went wrong
		else 
			print "{Error} while calculating bonus levels on character attributes"
		end
    end
	x = x - 1
	if (x <= 0) then 
		x = 0 
	end
	roll30 = math.random(1,30)

until x == 0
print "Done.";
-- ==========TO CALCULATE ATTRIBUTE MODIFIER (probably there's a way to make it shorter but I didn't wanna mess with it)
print "Calculating attribute modifiers...";

cha_mod = getModifier(cha);
con_mod = getModifier(con);
dex_mod = getModifier(dex);
int_mod = getModifier(int);
str_mod = getModifier(str);
wil_mod = getModifier(wil);

if(cha_mod == 999 or con_mod == 999 or dex_mod == 999 or int_mod == 999 or str_mod == 999 or wil_mod == 999) then
	print "{Error} while calculating attribute modifiers"
end

print "Done.";


-- =================================================================

-- It starts printing here
print " "
print "==========Random Character Attributes for MYFAROG 2.6=========="
print " "
print ("CHA", cha, cha_mod)	
print ("CON", con, con_mod)
print ("DEX", dex, dex_mod)
print ("INT", int, int_mod)
print ("STR", str, str_mod)
print ("WIL", wil, wil_mod)

-- This calculates weight, size, HP and SP from attributes

math.randomseed(os.time())
height = (58+ (math.random(4,24)))
math.randomseed(os.time())
weight = (height + (math.random(4,24)*3) + (ee*10) +40)

print ()
HP = (ee + b + ((r-1)*2))
print ("HP:", HP)
SP = (8+bb)
print ("SP:", SP)
print ("Level: " .. level)
print ()


print ("Height is " .. height .. " inches, or " .. (height*2.54) .. " cm")

print ("Weight is " .. weight .. " pounds, or " .. (weight * 0.453) .. "kg")

print ()

if weight <= 60 then print ("He is a tiny man.")
	elseif weight >=  61 and weight <= 75 then print ("He is a very small man (-4 to size)")
	elseif weight >=  76 and weight <= 95 then print ("He is a very small man (-3 to size)")
	elseif weight >=  96 and weight <= 115 then print ("He is a small man (-2 to size)")
	elseif weight >=  116 and weight <= 135 then print ("He is a rather small man (-1 to size)")
	elseif weight >=  136 and weight <= 165 then print ("He is a normal-sized man (+0 to size)")
	elseif weight >=  166 and weight <= 205 then print ("He is a rather big man (+1 to size)")
	elseif weight >=  206 and weight <= 255 then print ("He is a big man (+2 to size)")
	elseif weight >=  256 then print ("He is a giant man (+3 to size")

	end


math.randomseed(os.time())
print ("The character is " .. (15+(math.random(1,3))) .. " years old and he will die of old age at " .. (b*5) .. ".")

print ()
print ("The character starts with " .. s .. " oz of silver")
print ()


-- CR Skills

-- this thing decides the modifier to CR basing on level
cr = (r/2)
if cr > 5 then cr = 5 end
math.floor(cr) 


print ("His CR (Character Role, +" .. (cyka) .. " bonus) are:")
print ()

-- It randomizes the skills to choose, sometimes it repeats choices
t = 4
math.randomseed(os.time())

skills = math.random (1,74)

repeat

skills = math.random(1,74)

	if skills <= 3 then print ("Acrobatics")
	elseif skills == 4 or skills == 5 then print ("Acting")
	elseif skills == 6 then print ("Alchemy")
	elseif skills == 7 or skills == 8 or skills == 9 then print ("Climbing")
	elseif skills == 10 or skills == 11 then print ("Crafts")
	elseif skills == 12 then print ("Dancing")
	elseif skills == 13 then print ("Flute Playing")
	elseif skills == 14 or skills == 15 or skills == 16 then print ("Foraging")
	elseif skills == 17 or skills == 18 then print ("Fortitude")
	elseif skills == 19 or skills == 20 or skills == 21 or skills == 22 or skills == 23 then print ("Healing")
	elseif skills == 24 then print ("Lyre Playing")
	elseif skills == 25 or skills == 26 or skills == 27 then print ("Mechanics")
	elseif skills == 28 or skills == 29 or skills == 30 or skills == 31 or skills == 32 or skills == 33 then print ("Melee")
	elseif skills == 33 or skills == 34 or skills == 35 or skills == 36 or skills == 37 or skills == 38 then print ("Missile")
	elseif skills == 39 or skills == 40 or skills == 41 or skills == 42 or skills == 43 then print ("Navigation")
	elseif skills == 44 then print ("Poetry")
	elseif skills == 45 or skills == 46 or skills == 47 then print ("Religious Traditions")
	elseif skills == 48 or skills == 49 or skills == 50 then print ("Riding")
	elseif skills == 51 or skills == 52 then print ("Rune Lore")
	elseif skills == 53 or skills == 54 then print ("Seamanship")
	elseif skills == 55 then print ("Singing")
	elseif skills == 56 or skills == 57 then print ("Social Skills")
	elseif skills == 58 or skills == 59 or skills == 60 then print ("Stamina")
	elseif skills == 61 or skills == 62 or skills == 63 then print ("Stealth")
	elseif skills == 64 or skills == 65 then print ("Swimming")
	elseif skills == 66 or skills == 67 or skills == 68 or skills == 69 then print ("Tracking")
	elseif skills == 70 or skills == 71 or skills == 72 then print ("Trickery")
	elseif skills == 73 or skills == 74 then print ("World Lore")
	
	end
	
	t = t-1
	


until t == 0

print ()

-- Trained Skills, same as CR
tr = (r/4)

if tr > 4 then tr = 4 end

print ("His TR (Trained, +" .. tr .. " bonus) are:")

print ()

t = 4
math.randomseed(v+math.random(1,150))

skills = math.random (1,74)

repeat

skills = math.random(1,74)

	if skills <= 3 then print ("Acrobatics")
	elseif skills == 4 or skills == 5 then print ("Acting")
	elseif skills == 6 then print ("Alchemy")
	elseif skills == 7 or skills == 8 or skills == 9 then print ("Climbing")
	elseif skills == 10 or skills == 11 then print ("Crafts")
	elseif skills == 12 then print ("Dancing")
	elseif skills == 13 then print ("Flute Playing")
	elseif skills == 14 or skills == 15 or skills == 16 then print ("Foraging")
	elseif skills == 17 or skills == 18 then print ("Fortitude")
	elseif skills == 19 or skills == 20 or skills == 21 or skills == 22 or skills == 23 then print ("Healing")
	elseif skills == 24 then print ("Lyre Playing")
	elseif skills == 25 or skills == 26 or skills == 27 then print ("Mechanics")
	elseif skills == 28 or skills == 29 or skills == 30 or skills == 31 or skills == 32 or skills == 33 then print ("Melee")
	elseif skills == 33 or skills == 34 or skills == 35 or skills == 36 or skills == 37 or skills == 38 then print ("Missile")
	elseif skills == 39 or skills == 40 or skills == 41 or skills == 42 or skills == 43 then print ("Navigation")
	elseif skills == 44 then print ("Poetry")
	elseif skills == 45 or skills == 46 or skills == 47 then print ("Religious Traditions")
	elseif skills == 48 or skills == 49 or skills == 50 then print ("Riding")
	elseif skills == 51 or skills == 52 then print ("Rune Lore")
	elseif skills == 53 or skills == 54 then print ("Seamanship")
	elseif skills == 55 then print ("Singing")
	elseif skills == 56 or skills == 57 then print ("Social Skills")
	elseif skills == 58 or skills == 59 or skills == 60 then print ("Stamina")
	elseif skills == 61 or skills == 62 or skills == 63 then print ("Stealth")
	elseif skills == 64 or skills == 65 then print ("Swimming")
	elseif skills == 66 or skills == 67 or skills == 68 or skills == 69 then print ("Tracking")
	elseif skills == 70 or skills == 71 or skills == 72 then print ("Trickery")
	elseif skills == 73 or skills == 74 then print ("World Lore")
	
	end
	
	t = t-1
	


until t == 0


-- End line, just for  a e s t e t h i c 
print ()
print ("===============================================================")





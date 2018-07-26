-- Just rename this file in .lua and you're good to go

-- Example of an auxiliary function you can define for yourself in order to 
-- not write duplicated code

function threeD6()
	math.randomseed(os.time())
	return math.random (1,6) + math.random (1,6) + math.random (1,6)
end

--	 variable definition WHAT ARE THESE? Rename them accordingly to what they are ;)
local cha, con, dex, int, str, wil
local cha_mod, con_mod, dex_mod, int_mod, str_mod, wil_mod

-- ("CHA", a, aa)	
-- ("CON", b, bb)
-- ("DEX", c, cc)
-- ("INT", d, dd)
-- ("STR", e, ee)
-- ("WIL", f, ff)


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
math.randomseed(os.time())

roll30 = math.random (1,30)

repeat
   	if x > 1 then
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

		else print "error"
		end
    else
        print("Done") 
    end
	x = x-1
	if x<=0 then x = 0 end

v = math.random(1,30)

until x == 0

-- ==========TO CALCULATE ATTRIBUTE MODIFIER (probably there's a way to make it shorter but I didn't wanna mess with it)
if a == 3 then aa = -3
	elseif a == 4 then aa = -2
	elseif a == 5 then aa = -2
	elseif a == 6 then aa = -1
	elseif a == 7 then aa = -1
	elseif a == 8 then aa = -1
	elseif a == 9 then aa = "+0"
	elseif a == 10 then aa = "+0"
	elseif a == 11 then aa = "+0"
	elseif a == 12 then aa = "+0"
	elseif a == 13 then aa = "+1"
	elseif a == 14 then aa = "+1"
	elseif a == 15 then aa = "+1"
	elseif a == 16 then aa = "+2"
	elseif a == 17 then aa = "+2"
	elseif a == 18 then aa = "+3"
	elseif a == 19 then aa = "+3"
	elseif a == 20 then aa = "+4"
	elseif a == 21 then aa = "+5"
	elseif a>21 then aa = "+5"
else print "error"
end

if b == 3 then bb = -3
	elseif b == 4 then bb = -2
	elseif b == 5 then bb = -2
	elseif b == 6 then bb = -1
	elseif b == 7 then bb = -1
	elseif b == 8 then bb = -1
	elseif b == 9 then bb = "+0"
	elseif b == 10 then bb = "+0"
	elseif b == 11 then bb = "+0"
	elseif b == 12 then bb = "+0"
	elseif b == 13 then bb = "+1"
	elseif b == 14 then bb = "+1"
	elseif b == 15 then bb = "+1"
	elseif b == 16 then bb = "+2"
	elseif b == 17 then bb = "+2"
	elseif b == 18 then bb = "+3"
	elseif b == 19 then bb = "+3"
	elseif b == 20 then bb = "+4"
	elseif b == 21 then bb = "+5"
	elseif b>21 then bb = "+5"
else print "error"
end

if c == 3 then cc = -3
	elseif c == 4 then cc = -2
	elseif c == 5 then cc = -2
	elseif c == 6 then cc = -1
	elseif c == 7 then cc = -1
	elseif c == 8 then cc = -1
	elseif c == 9 then cc = "+0"
	elseif c == 10 then cc = "+0"
	elseif c == 11 then cc = "+0"
	elseif c == 12 then cc = "+0"
	elseif c == 13 then cc = "+1"
	elseif c == 14 then cc = "+1"
	elseif c == 15 then cc = "+1"
	elseif c == 16 then cc = "+2"
	elseif c == 17 then cc = "+2"
	elseif c == 18 then cc = "+3"
	elseif c == 19 then cc = "+3"
	elseif c == 20 then cc = "+4"
	elseif c == 21 then cc = "+5"
	elseif c>21 then cc = "+5"
else print "error"
end

if d == 3 then dd = -3
	elseif d == 4 then dd = -2
	elseif d == 5 then dd = -2
	elseif d == 6 then dd = -1
	elseif d == 7 then dd = -1
	elseif d == 8 then dd = -1
	elseif d == 9 then dd = "+0"
	elseif d == 10 then dd = "+0"
	elseif d == 11 then dd = "+0"
	elseif d == 12 then dd = "+0"
	elseif d == 13 then dd = "+1"
	elseif d == 14 then dd = "+1"
	elseif d == 15 then dd = "+1"
	elseif d == 16 then dd = "+2"
	elseif d == 17 then dd = "+2"
	elseif d == 18 then dd = "+3"
	elseif d == 19 then dd = "+3"
	elseif d == 20 then dd = "+4"
	elseif d == 21 then dd = "+5"
	elseif d>21 then dd = "+5"
else print "error"
end

if e == 3 then ee = -3
	elseif e == 4 then ee = -2
	elseif e == 5 then ee = -2
	elseif e == 6 then ee = -1
	elseif e == 7 then ee = -1
	elseif e == 8 then ee = -1
	elseif e == 9 then ee = "+0"
	elseif e == 10 then ee = "+0"
	elseif e == 11 then ee = "+0"
	elseif e == 12 then ee = "+0"
	elseif e == 13 then ee = "+1"
	elseif e == 14 then ee = "+1"
	elseif e == 15 then ee = "+1"
	elseif e == 16 then ee = "+2"
	elseif e == 17 then ee = "+2"
	elseif e == 18 then ee = "+3"
	elseif e == 19 then ee = "+3"
	elseif e == 20 then ee = "+4"
	elseif e == 21 then ee = "+5"
	elseif e>21 then ee = "+5"
else print "error"
end

if f == 3 then ff = -3
	elseif f == 4 then ff = -2
	elseif f == 5 then ff = -2
	elseif f == 6 then ff = -1
	elseif f == 7 then ff = -1
	elseif f == 8 then ff = -1
	elseif f == 9 then ff = "+0"
	elseif f == 10 then ff = "+0"
	elseif f == 11 then ff = "+0"
	elseif f == 12 then ff = "+0"
	elseif f == 13 then ff = "+1"
	elseif f == 14 then ff = "+1"
	elseif f == 15 then ff = "+1"
	elseif f == 16 then ff = "+2"
	elseif f == 17 then ff = "+2"
	elseif f == 18 then ff = "+3"
	elseif f == 19 then ff = "+3"
	elseif f == 20 then ff = "+4"
	elseif f == 21 then ff = "+5"
	elseif f>21 then ff = "+5"
else print "error"
end

-- =================================================================

-- It starts printing here
print " "
print "==========Random Character Attributes for MYFAROG 2.6=========="
print " "
print ("CHA", a, aa)	
print ("CON", b, bb)
print ("DEX", c, cc)
print ("INT", d, dd)
print ("STR", e, ee)
print ("WIL", f, ff)

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





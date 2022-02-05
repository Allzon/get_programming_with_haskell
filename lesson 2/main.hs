-- CalcChange v.1
calcChangeV1 owed given = if given - owed > 0
                        then given - owed
                        else 0

-- CalcChange v.2
calcChangeV2 owed given = if change > 0
                        then change
                        else 0
    where change = given - owed

-- QuickCheck 2.3 Fill in the missing part of the following where clause:
doublePlusTwo x = doubleX + 2
    where doubleX = x * 2

--


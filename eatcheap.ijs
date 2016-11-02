NB. Necassary protein per day in grams
proteinPerDay =: 60

NB. Necassary meals per day
mealsPerDay =: 3

NB. Necassary calories per meal
caloriesPerMeal =: 1000 

NB. =============== FoodType objects (Instances of an enum) =======================
NB. Main macronutrient of the food
CARBS =: 0
PROTEIN =: 1
FAT =: 2
FRUITVEG =: 3
MIXTURE =: 4

NB. =============== Food objects =======================

NB. Food values: £££PerUnit servingsPerUnit proteinPerServing caloriesPerServing foodType

NB. 	      ££   srv prtn cals type
NB. Carbs
rice =: 	      13,   83,  4.7,  211, CARBS
cocopops =:     1.5,  10,  1.7,  117, CARBS
cornflakes =:   1.84, 15,  2.1,  113, CARBS
brownbread =:   0.8 , 17,  2.5,  55 , CARBS
sweetpotato =:  0.95, 10,  1.2,  98 , CARBS

NB. Proteins
wheypowder =:   26,   13,  20,   129, PROTEIN
mince =:	      2,    2,   46.2, 588, PROTEIN

NB. Fats
milk =: 	      1,    11 , 6.8,  138, FAT
peanutbutter =: 1,    8.5, 10 ,  248, FAT
sunfloweroil =: 0.6,  30,  0,    135, FAT
butter =: 	      0.7,  25,  0.06, 74,  FAT

NB. Fruit and Veg
carrots =:      0.35, 2,   1.5, 105, FRUITVEG 

NB. Accessor methods, each one is "per *whatever the measure is usually considered in terms of*"
NB. £££ per unit
pounds =: 0&{
NB. Servings per unit
servings =: 1&{
NB. Protein per serving
protein =: 2&{
NB. Calories per serving
calories =: 3&{
NB. The FoodType
constituentType =: 4&{ 

NB. £££ per serving
poundsPerServing =: pounds % servings

NB. Calories per £££
caloriesPerPound =: calories % poundsPerServing

NB. Protein per £££
proteinPerPound =: protein % poundsPerServing

NB. =============== Meal objects =======================

NB. Usage example: basicchilli =: meal rice and mince and onions and tomatosauce

NB. You might also say: ingredients =: rice and mince and onions and tomatosauce
NB.	              basicchilli =: meal ingredients

NB. If I for example have 4 slices of bread with 2 servings of peanutbutter and 2 servings of butter, I can say:
NB. meal =: (4 of brownbread) and (2 of peanutbutter) and (2 of butter)
NB. This meal is unspeakably efficient by the way. It's stats are 0.479529 1 30.12 864

NB.                  £££ per serving      srv      protein          calories      foodType (mixture)
meal =: ,&4 @: ((+/ @: poundsPerServing) , 1 , (+/ @: protein) , (+/ @: calories)) NB. 4

of =: #"0

and =: ,.

minceandsweetpotatoes =: meal mince and (4 of sweetpotato)

NB. =============== BowlOfCereal objects (implements Meal) =======================

NB. Making a bowl of some cereal
bowlofcereal =: meal @: (milk&and)

bowlofcocopops =: bowlofcereal cocopops

NB. =============== Sandwich objects (implements Meal) =======================

NB. Making a sandiwich
sandwich =: meal @: ((2 of brownbread)&and)

peanutbutterAndButterSandwich =: sandwich peanutbutter and butter

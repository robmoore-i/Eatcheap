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
SUGAR =: 3
MIXTURE =: 4
FRUITVEG =: 5

NB. =============== Food objects =======================

NB. Food values: £££PerUnit servingsPerUnit proteinPerServing caloriesPerServing foodType

NB. 	            ££   srv  prtn  cals type
NB. Carbs
rice =: 	        13,   83,  4.7,  211,  CARBS
cocopops =:       1.5,  10,  1.7,  117,  CARBS
cornflakes =:     1.84, 15,  2.1,  113,  CARBS
brownbread =:     0.8 , 17,  2.5,  55 ,  CARBS
sweetpotato =:    0.95, 10,  1.2,  98 ,  CARBS
alpen =:          1.39, 17,  5,    170,  CARBS
wholemealbread =: 0.89, 23,  3.1,  71,   CARBS

NB. Proteins
wheypowder =:     26,   13,  20,   129,  PROTEIN
mince =:	        2,    2,   46.2, 588,  PROTEIN
chailatte =:      1.4,  12,  1.5,  90,   PROTEIN
chickenthighs =:  2.25, 2,   45.1, 588,  PROTEIN
sardines =:       0.44, 1,   21.3, 239,  PROTEIN

NB. Fats
milk =: 	        1,    11 , 6.8,  138,  FAT
peanutbutter =:   1,    8.5, 10 ,  248,  FAT
sunfloweroil =:   0.6,  30,  0,    135,  FAT
butter =: 	      0.7,  25,  0.06, 74,   FAT

NB. Fruit and Veg
carrots =:        0.35, 2,   1.5,  105,  FRUITVEG
pepper =:         0.85, 3,   1.8,  50,   FRUITVEG

NB. Sugar
honey =:          1.1,  30,  0.1,  37.2, SUGAR 

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

NB. Returns 1 if left argument is more calorie efficient that right argument, 0 otherwise
moreCalorieEfficientThan =: caloriesPerPound@:[ > caloriesPerPound@:]

NB. As above, but for protein efficiency instead
moreProteinEfficientThan =: proteinPerPound@:[ > proteinPerPound@:]

NB. =============== Meal objects =======================

NB. Usage example: basicchilli =: meal rice and mince and onions and tomatosauce

NB. You might also say: ingredients =: rice and mince and onions and tomatosauce
NB.	              basicchilli =: meal ingredients

NB. If I for example have 4 slices of bread with 2 servings of peanutbutter and 2 servings of butter, I can say:
NB. meal =: (4 of brownbread) and (2 of peanutbutter) and (2 of butter)
NB. This meal is amazingly efficient by the way. It's stats are 0.479529 1 30.12 864

NB.                  £££ per serving      srv      protein          calories      foodType (mixture)
meal =: ,&4 @: ((+/ @: poundsPerServing) , 1 , (+/ @: protein) , (+/ @: calories)) NB. 4

of =: #"0

and =: ,.

proteinshake =: meal wheypowder and (5 of milk) 

NB. =============== BowlOfCereal objects (implements Meal) =======================

NB. Making a bowl of some cereal
bowlofcereal =: meal @: (milk&and)

bowlofalpen =: bowlofcereal alpen

NB. =============== Sandwich objects (implements Meal) =======================

NB. Making a sandiwich
sandwich =: meal @: ((2 of brownbread)&and)

peanutbutterAndButterSandwich =: sandwich peanutbutter and butter

NB. =============== Tabling functions =======================

tabledimensions =: 2&,@:(>:@:#)

columnlabels =: [: <;._2 [: , [: ,&';'"1 'name' , ]

rowlabelnames =: 'unit price;servings per unit;protein (g)/serving;calories/serving;food type;'
rowlabels =: (< ([ ;. _2) rowlabelnames)

data =: <@:,."1@:".

tablebody =: columnlabels , rowlabels , data

parseinput =: ([ ;. _2) @: ,&';'

maketable =: (tabledimensions $ tablebody) @: parseinput

with =: [ , ';' , ]

cereals =: 'cocopops' with 'cornflakes' with 'alpen'

compareCereals =: maketable cereals

NB. Necassary protein per day in grams
proteinPerDay =: 60

NB. Necassary meals per day
mealsPerDay =: 3

NB. Necassary calories per meal
caloriesPerMeal =: 1000 

NB. =============== FoodType objects =======================
NB. Constituent types
CARBS =: 0
PROTEIN =: 1
FAT =: 2
FRUITVEG =: 3

NB. =============== Food objects =======================

NB. Food values: £££PerUnit servingsPerUnit proteinPerServing caloriesPerServing consituentType

NB. 	      ££   svs  prtn cals type
NB. Carbs
rice =: 	      15,   83,  4.7, 211, CARBS
cocopops =:     1.5,  10,  1.7, 117, CARBS
cornflakes =:   1.84, 15,  2.1, 113, CARBS
brownbread =:   0.8 , 17,  2.5, 55 , CARBS

NB. Proteins
wheypowder =:   25,   13,  20,  129, PROTEIN

NB. Fats
milk =: 	      1,    11 , 6.8, 138, FAT
peanutbutter =: 1,    8.5, 10 , 248, FAT

NB. Accessor methods, each one is "per *whatever the measure is usually considered in terms of*"
NB. £££ per unit
pounds =: 0&{
NB. Servings per unit
servings =: 1&{
NB. Protein per serving
protein =: 2&{
NB. Calories per serving
calories =: 3&{
NB. Main macronutrient of the food
constituentType =: 4&{ 

NB. £££ per serving
poundsPerServing =: pounds % servings

NB. Calories per £££
caloriesPerPound =: calories % poundsPerServing

NB. =============== Meal objects =======================

NB. Creates a food object for a given meal given as right argument a list of foods
NB.meal =: (+/ pounds"1) (+/ servings"1) (+/ protein"1) (+/ calories"1) (+./ constituentType"1)


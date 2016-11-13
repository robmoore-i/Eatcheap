NB. =============== Food class =======================

NB. Accessor methods, each one is named "per *whatever the measure is usually considered in terms of*"
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

NB. =============== Simple methods on foods ============
NB. £££ per serving
poundsPerServing =: pounds % servings

NB. Calories per £££
caloriesPerPound =: calories % poundsPerServing

NB. Protein per £££
proteinPerPound =: protein % poundsPerServing

NB. =============== Constructor ============
extendfoodstats =: ] ,  (poundsPerServing , proteinPerPound , caloriesPerPound)

NB. =============== Instances ============

NB. Food values: £££PerUnit servingsPerUnit proteinPerServing caloriesPerServing foodType

NB. 	        ££   srv  prtn  cals type
NB. Carbs
rice =:           extendfoodstats (13,   83,  4.7,  211,  CARBS)
cocopops =:       extendfoodstats (1.5,  10,  1.7,  117,  CARBS)
cornflakes =:     extendfoodstats (1.84, 15,  2.1,  113,  CARBS)
brownbread =:     extendfoodstats (0.8 , 17,  2.5,  55 ,  CARBS)
sweetpotato =:    extendfoodstats (0.95, 10,  1.2,  98 ,  CARBS)
alpen =:          extendfoodstats (1.39, 17,  5,    170,  CARBS)
wholemealbread =: extendfoodstats (0.89, 23,  3.1,  71,   CARBS)

NB. Proteins
wheypowder =:     extendfoodstats (26,   13,  20,   129,  PROTEIN)
mince =:          extendfoodstats (2,    2,   46.2, 588,  PROTEIN)
chailatte =:      extendfoodstats (1.4,  12,  1.5,  90,   PROTEIN)
chickenthighs =:  extendfoodstats (2.25, 2,   45.1, 588,  PROTEIN)
sardines =:       extendfoodstats (0.44, 1,   21.3, 239,  PROTEIN)
chickenwings =:   extendfoodstats (1.25, 5,   21.4, 224,  PROTEIN)

NB. Fats
milk =:           extendfoodstats (1,    11 , 6.8,  138,  FAT)
peanutbutter =:   extendfoodstats (1,    8.5, 10 ,  248,  FAT)
sunfloweroil =:   extendfoodstats (0.6,  30,  0,    135,  FAT)
butter =:         extendfoodstats (0.7,  25,  0.06, 74,   FAT)
margerine =:      extendfoodstats (1.15, 50,  0.05, 62,   FAT)

NB. Fruit and Veg
carrots =:        extendfoodstats (0.35, 2,   1.5,  105,  FRUITVEG)
pepper =:         extendfoodstats (0.85, 3,   1.8,  50,   FRUITVEG)

NB. Sugar
honey =:          extendfoodstats (1.1,  30,  0.1,  37.2, SUGAR)
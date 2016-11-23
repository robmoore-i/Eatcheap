NB. =============== Food class =======================

NB. =============== Accessor methods ============
NB. £££ per unit
poundsPerUnit =: 0&{
NB. Servings per unit
servingsPerUnit =: 1&{
NB. Protein per serving
proteinPerServing =: 2&{
NB. Calories per serving
caloriesPerServing =: 3&{
NB. £££ per serving
poundsPerServing =: poundsPerUnit % servingsPerUnit
NB. Calories per £££
caloriesPerPound =: caloriesPerServing % poundsPerServing
NB. Protein per £££
proteinPerPound =: proteinPerServing % poundsPerServing

NB. =============== Constructor ============
extendfoodstats =: ] ,  (poundsPerServing , proteinPerPound , caloriesPerPound)

NB. =============== Instances ============

NB. Food values: £££PerUnit servingsPerUnit proteinPerServing caloriesPerServing

NB. 	                        ££   srv  prtn  cals type
NB. Carbs
rice =:           extendfoodstats (13,   83,  4.7,  211)
cocopops =:       extendfoodstats (1.5,  10,  1.7,  117)
cornflakes =:     extendfoodstats (1.84, 15,  2.1,  113)
brownbread =:     extendfoodstats (0.8 , 17,  2.5,  55)
sweetpotato =:    extendfoodstats (0.95, 10,  1.2,  98)
alpen =:          extendfoodstats (1.39, 17,  5,    170)
wholemealbread =: extendfoodstats (0.89, 23,  3.1,  71)
spicedbagel =:    extendfoodstats (1.65, 5,   9.4,  235)

NB. Proteins
wheypowder =:     extendfoodstats (26,   13,  20,   129)
mince =:          extendfoodstats (2,    2,   46.2, 588)
chailatte =:      extendfoodstats (1.4,  12,  1.5,  90)
chickenthighs =:  extendfoodstats (2.25, 2,   45.1, 588)
sardines =:       extendfoodstats (0.44, 1,   21.3, 239)
chickenwings =:   extendfoodstats (1.25, 5,   21.4, 224)
chickenfillet =:  extendfoodstats (3,    2,   48,   212)

NB. Fats
milk =:           extendfoodstats (1,    11 , 6.8,  138)
peanutbutter =:   extendfoodstats (1,    8.5, 10 ,  248)
sunfloweroil =:   extendfoodstats (0.6,  30,  0,    135)
butter =:         extendfoodstats (0.7,  25,  0.06, 74)
margerine =:      extendfoodstats (1.15, 50,  0.05, 62)

NB. Fruit and Veg
carrots =:        extendfoodstats (0.35, 2,   1.5,  105)
pepper =:         extendfoodstats (0.85, 3,   1.8,  50)

NB. Sugar
honey =:          extendfoodstats (1.1,  30,  0.1,  37.2)
jhome =: jpath '~user'

0!:1 < jhome , '/projects/eatcheap/foods.ijs'

NB. =============== FoodType objects (An enum basically) =======================
NB. Main macronutrient of the food
CARBS =: 0
PROTEIN =: 1
FAT =: 2
SUGAR =: 3
MIXTURE =: 4
FRUITVEG =: 5

NB. =============== Meal objects =======================

NB. Usage example: basicchilli =: meal rice and mince and onions and tomatosauce

NB. You might also say: ingredients =: rice and mince and onions and tomatosauce
NB.	              basicchilli =: meal ingredients

NB. If I for example have 4 slices of bread with 2 servings of peanutbutter and 2 servings of butter, I can say:
NB. meal =: (4 of brownbread) and (2 of peanutbutter) and (2 of butter)
NB. This meal is amazingly efficient by the way. It's stats are 0.479529 1 30.12 864

NB.                  £££ per serving      srv          protein                        calories         foodType (mixture)
meal =: ,&4 @: ((+/ @: poundsPerServing) , 1 , (+/ @: proteinPerServing) , (+/ @: caloriesPerServing)) NB. 4

of =: #"0

and =: ,.

proteinshake =: meal wheypowder and (5 of milk) 

NB. =============== BowlOfCereal =======================

NB. Making a bowl of some cereal
bowlofcereal =: meal @: (milk&and)

bowlofalpen =: bowlofcereal alpen

NB. =============== Sandwich =======================

NB. Making a sandiwich
sandwich =: meal @: ((2 of brownbread)&and)

peanutbutterAndButterSandwich =: sandwich peanutbutter and butter

NB. =============== Tabling functions =======================

tabledimensions =: 2&,@:(>:@:#)

columnlabels =: [: <;._2 [: , [: ,&';'"1 'name' , ]

rowlabelnames =: 'unit price;servings/unit;protein (g)/serving;calories/serving;food type;pounds/serving;protein/pound;calories/pound;'
rowlabels =: (< ([ ;. _2) rowlabelnames)

data =: <@:,."1@:".

tablebody =: columnlabels , rowlabels , data

adjusttokens =: ';' ,~ ]
parseinput =: ([ ;. _2) @: adjusttokens

maketable =: (tabledimensions $ tablebody) @: parseinput

with =: [ , ';' , ]

cereals =: 'cocopops' with 'cornflakes' with 'alpen'

compareCereals =: maketable cereals

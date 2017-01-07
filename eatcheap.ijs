load 'j/Eatcheap/foods.ijs'

NB. =============== Meal objects =======================

NB. Usage example: basicchilli =: meal rice and mince and onions and tomatosauce

NB. You might also say: ingredients =: rice and mince and onions and tomatosauce
NB.	              basicchilli =: meal ingredients

NB. If I for example have 4 slices of bread with 2 servings of peanutbutter and 2 servings of butter, I can say:
NB. meal =: (4 of brownbread) and (2 of peanutbutter) and (2 of butter)
NB. This meal is amazingly efficient by the way. It's stats are 0.479529 1 30.12 864

meal =: extendfoodstats @: ((+/ @: poundsPerServing) , 1 , (+/ @: proteinPerServing) , (+/ @: caloriesPerServing))

of =: #"0

and =: ,.

proteinshake =: meal wheypowder and (5 of milk) 

NB. =============== BowlOfCereal =======================

NB. Making a bowl of some cereal
bowlofcereal =: meal @: (milk&and)

bowlofalpen =: bowlofcereal alpen

NB. =============== Sandwich =======================

NB. Making a sandiwich
sandwich =: [: meal ] and~ 2 of [

tastysandwich =: brownbread sandwich peanutbutter and butter

NB. =============== Tabling functions =======================

tabledimensions =: 2&,@:(>:@:#)

columnlabels =: [: <;._2 [: , [: ,&';'"1 'name' , ]

rowlabelnames =: 'unit price;servings/unit;protein (g)/serving;calories/serving;pounds/serving;protein/pound;calories/pound;'
rowlabels =: (< ([ ;. _2) rowlabelnames)

data =: <@:,."1@:".

tablebody =: columnlabels , rowlabels , data

adjusttokens =: ';' ,~ ]
parseinput =: ([ ;. _2) @: adjusttokens

maketable =: (tabledimensions $ tablebody) @: parseinput

with =: [ , ';' , ]

cereals =: 'cocopops' with 'cornflakes' with 'alpen'

compareCereals =: maketable cereals

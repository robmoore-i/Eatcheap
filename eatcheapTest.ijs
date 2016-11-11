jhome =: jpath '~user'

0!:1 < jhome , '/projects/Jutl/Jutl.ijs'
0!:1 < jhome ,  , '/projects/eatcheap/eatcheap.ijs'

canCalculatePoundsPerServing =: 0 : 0
testfood =. 10 2 0 0 0
'canCalculatePoundsPerServing'
(poundsPerServing testfood) shouldEqual 5
)

canCalculateCaloriesPerPound =: 0 : 0
testfood =. 1 2 0 20 0
'canCalculateCaloriesPerPound'
(caloriesPerPound testfood) shouldEqual 40
)

canCalculateProteinPerPound =: 0 : 0
testfood =. 1 2 20 0 0
'canCalculateProteinPerPound'
(proteinPerPound testfood) shouldEqual 40
)

canCorrectlyCombineFoodsIntoMeals =: 0 : 0
testfood1 =. 1 2 5 200 0
testfood2 =. 2 5 10 50 1
'canCorrectlyCombineFoodsIntoMeals'
(meal (2 of testfood1) and testfood2) shouldEqual (1.4 1 20 450 4)
)

jt =: runTests canCalculatePoundsPerServing ; canCalculateCaloriesPerPound ; canCalculateProteinPerPound ; canCorrectlyCombineFoodsIntoMeals



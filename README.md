# Eatcheap
I currently eat for less than £4 per day while living in central London as a person who requires a certain amount of protein and calories every day. This is surely what computers were made for.

# Build instructions (from scratch):

1. Go to http://www.jsoftware.com/stable.htm and download J804 for your operating system

2. Unzip it wherever you like, but remember where obviously, the folder that is unzipped is called your J home

3. Go to https://github.com/robknows/Eatcheap which is my code. On the right you will see a big gree button which says "Clone or download". Click it and choose "Download zip. There are no viruses, I promise

4. Unzip it and cut it (as in cut/paste or copy/paste). I'll probably be called "Eatcheap-master" or something"

5. Go to your J home and find the folder called "projects", which should be empty. Once in the projects folder, paste the Eatcheap-master folder there.

6. Now go back to J home (1 folder leve up). Probably in the "bin" directory you will find a .exe file called J or Jqt or JTerm or something like that. Double click it

7. In the navbar at the top (file | edit | view ...etc) under "view", click "editor".

8. On the left in the tab called "files" you'll see a folder navigator. ".." means the folder 1 level up. Navigate to the projects folder and then into the Eatcheap-master directory.

9. Find the "eatcheap.ijs" file and double click it to open it in the editor (editor is called JQT)

10. At the top there is a button that is like a "play" button. Press it.

11. In the window that you used to open the editor, the little rectangular one with the light brown background, you'll see all the lines of code loaded into the J interpreter.

12. You can now run the program! Below is usage for the functions

==================================
# Available functions:

poundsPerServing x

Where x is a food defined as a list with 5 number elements, representing the £££ per unit (ie cost of box of cornflakes), the number of servings per unit (ie number of bowls of cereal you can get from a box of cornflakes), the protein per serving, the calories per serving and the "food type" which currently has no use... but I will later, to determine the healthiness of meals you know. Carbs+protein+fat+healthyshit=balanced meal.

Example- poundsPerServing rice

Returns the number of pounds you spend per serving of the food. In the above case, rice

Similar usage for caloriesPerPound and proteinPerPound

==================================
bowlofcereal x

Equivilant to 'meal milk and x'

Example- bowlofcereal cocopops

Meaning- meal milk and cocopops

==================================
sandwich x

Equivilant to 'meal (2 of brownbread) and x'

Example- sandwich peanutbutter

Meaning- meal (2 of brownbread) and peanutbutter

==================================
meal x and (n of y) and z

Where x, y and z are 

And n is any number, even a decimal if you have maybe half a serving of rice for example cos youre not hungry or whatever.

This function returns the stats (same meaning as the normal food stats). of the meal resulting in combining the ingredients given. The £££ per unit is worked out as the combined price per serving of each ingredient.

Example- meal rice and mince and (2 of pepper)

Meaning- A meal of rice, mince and 2 peppers.

==================================
maketable x with y with z

Where x, y and z are string eg they are wrapped with single quotes which are code representing meals.

Example- maketable 'cocopops' with 'cornflakes' with 'alpen' with 'meal brownbread and butter'

Result- A pretty table showing the stats for each of the different breakfast choices next to each other.

==================================

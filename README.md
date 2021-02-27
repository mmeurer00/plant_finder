# PlantFinder🌱

Welcome to PlantFinder! A program allows a user to enter the common name of a plant species into their terminal, and receive an output of the species classification (scientific name, family common name, genus, and family). 

## Installation 🌳
Users can access PlantFinder by cloning this repository. 

1. Scroll up and find the green "Code" button:

2. Click it, and a tab should drop down including a github link (make sure to select the one under SSH).

3. Manually copy or click the clipboard icon to copy the link.

4. In the user terminal enter 'git clone':
```
user@Users-MacBook_Air % git clone [github link]
```
and press enter.

5. Navigate to the plant_finder file. 
```
user@Users-MacBook_Air plant_finder % 
```
6. Once inside plant_finder run the program by typing 'bin/run' in your terminal:
```
user@Users-MacBook_Air plant_finder % bin/run
```
7. Congrats 🎉  you can now search for plants!
## Usage 🌲
When prompted with the following line, type in your plant species common name into the terminal.
```bash
Please enter the common name of a plant species (enter 'exit' to close program):
```
For example, if you were to enter:
```
Evergreen oak
```
The program would return:
```
-Scientific name: Quercus rotundifolia 

-Family common name: Beech family 

-Family: Fagaceae

-Genus: Quercus 
```
Once running, the program will keep running until prompted, which can be done by entering 'exit':
```
exit
```
You know the program has quit when the user receives the message:
```
Thank you for using Plant Base!
```

## Contributing 🌿

Bug reports and pull requests are welcome on GitHub at https://github.com/mmeurer00/plant_finder.

## License 🌵

[MIT](https://github.com/mmeurer00/plant_finder/blob/main/LICENSE)
 
# Terminal-app
Assignment 


The link to my github repository : git@github.com:vijaypabial/Terminal-app.git

** Purpose && Scope

This application is designed to keep information of the products available from the company. This will help them keep the detailed information of their products. 
User can choose the way they want to add the information. This application will provide up to date information of the existing products of the company.  Target audience will be wholesale providers. So they can order products according to their needs. Other type of users can also use the application to for their personal use. This will help them organise the data they have and keeping accounts of avialble stock on hand.

** Features && Functionality

1.	Getting user input:
From the start of the application user can input information to choose different options and it will guide you if you have made an error during typing , when choosing different options. Different exit points are available at different stages of the application.  You can add information when creating a new file. 

2.	List of stock visible to the customer.
Because the information is saved in a secure folder, all the information can be accessed whenever the need arises. It is easy to create a new file and you have an access to it straightway to add information and its saved in the secure folder for later access.

3.	Login for suppliers to update information
Application is pin protected, so the user can only acces the information if they have the pin to enter the application. You will only be allowed to attempt the pin three times and the application will shut itself. 

Interaction && features:



This application can be accessed through the terminal on OSX or command prompt in Windows. The file for this application can be downloaded from “github” through this link (https://github.com/vijaypabial/Terminal-app). 


Run the application through the Terminal or Command prompt when you are in the folder where you have kept the downloaded file.
Once application is running you will be prompted to the welcome message and will be asked to put in your pin (which is "12"). You will only get three turns to enter your pin and application will quit. you can type exit to quit as well.

After successful entry of the pin the next step will be to enter as a supplier or exit the app. Type the desired option. If you choose to exit it will quit the application.

if supplier option is chosen, you will enter the next menu of options : Read or Add or Exit. *Please be aware entry must be first first letter capital.* Invalid entry will result in error message and you will be asked to type available options. *Please enter the filename with .csv in the end of the filename.* The contents of the file will be displayed in rows format. once finished with the file, either choose another file or type "exit" to exit this menu and main menu will appear with options : "supplier" and "Exit".
Enter the supplier option to go to next menu. Again you be prompted to options : Read or Add or Exit. 

To add a new file type "Add". You will be asked to add a file name. Enter the desired filename and press enter or return. Now you can enter data and when finished entering data type "exit" to exit the file. 

Your new file is saved in the diectory with other files and you will be able to access any of the files through "Read" option.

Under "Read" option, a full list of available files will be displayed and you be asked to choose one of the options. Type the desired filename and press enter

Flowchart is also available to show the overview of the flow of the application

https://github.com/vijaypabial/Terminal-app/blob/master/docs/Supply%20Mania%20Flowchart%20-%20Account%20ownership%20diagram.pdf

As soon as you start the application, the prompt is also self-explanatory. Please follow the instructions on the prompt if there are specific demands made by the system. 
Errors will be displayed when the incorrect selections will be made or requirement has been typed wrong. Please choose and type the available options for smoother operation. 

Implementation plan:

The project started with the information sorting. I have used "Trello" to organize the information. The requirements were diced into each task on its own and then I worked on these tasks one by one. The trello board is attached below.

https://github.com/vijaypabial/Terminal-app/blob/master/docs/Screen%20Shot%202020-03-13%20at%204.39.43%20pm.png

The aim was to add various other features but I had lot of trouble sorting out the basic issues in my code like indenting properly which led to a lot of trouble for myself. 

Ethical Issues:

I had to search for the codes to how to add files in csv format and how to access them. I have used all the open source content. So, there are no issues to use this application.







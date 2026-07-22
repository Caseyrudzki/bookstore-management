## Bookstore Management

## Contact

Casey Rudzki

Email: casey.d.rudzki@gmail.com

Linkedin: https://www.linkedin.com/in/casey-rudzki/

## About
<p align="center">
This project is a simple bookstore management project which uses the AL coding language and is run on BC 250. This project includes the following files: 

- Table50103Book.al: A table in which the user can add books to their database. 

- Table50104Lending.al: A table in which the user can track which books have been checked out, returned, as well as see if any fines are present. 

- Codeunit50103ISBN.al: A codeunit which verifies whether a book's ISBN is valid by checking that the ISBN is fully numeric, and 13 digits long. 

- Page50103BookCard.al: A page of type card where the user can add new books to the database. This card uses the ISBN codeunit in order to verify a valid ISBN has been entered. 

- Page50105LendingCard.al: A page of type card where the user can add new lenders to the database. This card will automatically calculate the due date of the book, and add a fine if the book is overdue. 

- Page50104BookList.al: A page of type list where the user can see all books which are present in the database. The user can click on any record and be taken to the card page where they can see the details closer and modify if needed.

- Page50105LendingList.al: A page of type list where the user can see all lenders present in the database. The user can click on any record to be taken to the card page to see details and modify fields. 

- Query50101Fine.al: A query which checks and displays which customers need to pay a fee for overdue books. 

- Report50101.al: Generates an Excel report of the Lending table. 

## Getting Started

This project was developed to be run on an On-Prem instance of BC 250, however launch.json may need to be modified in order to run on the your instance. You will need to have VS Code installed, along with the AL Language extension for Microsoft Dynamics 365 Business Central.

- Open launch.json

- Depending whether you use an OnPrem or Sandbox enviroment, either leave it as is, or change OnPrem to Sandbox.

 ```sh
 "environmentType": "OnPrem",
  ```

- Insert the URL of your version of BC here:

```sh
"server": "your link here",
```

- Make sure the server instance aligns with yours
```sh
 "serverInstance": "BC250",
```

- If you're on a different version of BC, make sure the version in app.json aligns
```sh
  "application": "24.0.0.0",
```

## Running The Project

- Open the project in VS Code

```sh
ctrl + shift + 'p'
```

- Choose "Download Symbols"

- After symbols are downloaded, on the top ribbon of VS code, click "Run" 

- Choose "Run Without Debugging" 

- The project will start up on the Query page, you can search up the names of the other pages in the search bar in order to access and test them out. 

## Credits
https://www.udemy.com/course/learn-business-central-al-with-3-real-world-projects/learn/lecture/50852183#overview by Dr. Gomathi S

</p>

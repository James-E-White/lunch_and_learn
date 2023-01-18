
<div align="center">
<h1>:spoon: Food is LIFE! :spoon:</h1>
<br>
  <img src="https://i0.wp.com/ohhiblog.com/wp-content/uploads/2017/06/giphy-5.gif?resize=627%2C337&ssl=1.gif"><br>
  "Varietry is the Spice of Life...Mix it up, try new things with the Lunch and learn app! Type in a country or not! The app will randomly select a country if none is typed in search. Enjoy food recipes from around the world." 
</div>

:spoon: [Learning Goals](#learning-goals)
<br>
:spoon: [Project Overview](#project-overview)
<br>
:spoon: [Planning](#planning)
<br>
:spoon: [Tech Stack](#tech-stack)
<br>
:spoon: [Deployment](#deployment)
<br>

### Learning Goals
Back end
  - Expose an API that aggregates data from multiple external APIs
  - Expose an API for CRUD functionality
  - Determine completion criteria based on the needs of other developers
  - Test both API consumption and exposure, making use of at least one mocking tool (VCR, Webmock, etc).
  - Code follows DRY and SRP design
  

### Project Overview
- You are a back-end developer working on a team that is building an application to search for cuisines by country, and provide opportunity to learn more about that countries culture. This app will allow users to search for recipes by country, favorite recipes, and learn more about a particular country.

Your team is working in a service-oriented architecture. The front-end will communicate with your back-end through an API. Your job is to expose that API that satisfies the front-end team’s requirements.

### Setup/Installation Guide
- Fork this repository
- Clone your fork
- From the command line, install gems and set up your DB:
  - ```bundle```
- APIs used
  -  Please follow the link to get your ``Edamam_key`` used later: https://www.
  -  Please follow the link to get your ``Youtube_key`` used later: https://www.
  -  Please follow the link to get your ``Unsplash_key`` used later: https://www.
  - ```bundle exec figaro install```
  - Go to ```config/application.yml```
  - Name your API keys from Edamam ```Edamam_key```respectfully
  - Name your API keys from Youtube ```Youtube_key```respectfully
  - Name your API keys from Unsplash ```Unsplash_key```respectfully
- Run ```rails db:{create,migrate}```
- Run the test suite with ```bundle exec rspec.```


<br>

### Planning
Database Design<br>
![lunch_and_learn db](https://user-images.githubusercontent.com/99758586/201795623-337ddea2-568f-42c0-a20d-6da1786aec13.png)
<br>
<img width="938" alt="recipes-show" src="https://user-images.githubusercontent.com/108167041/213066306-4b5440d5-0944-42a9-a4fe-597172ddb9be.png">
<img width="513" alt="Screenshot 2023-01-17 at 6 26 32 PM" src="https://user-images.githubusercontent.com/108167041/213066662-09a2f68f-b822-40e4-a390-9e8f2b1285a6.png">


<br>

<br>

### Tech Stack

![rubyonrails](https://img.shields.io/badge/rubyonrails-6.0.6-000000?style=for-the-badge&logo=rubyonrails&logoColor=red)
<br>
![ruby](https://img.shields.io/badge/ruby-2.7.4-000000?style=for-the-badge&logo=ruby&logoColor=red)
<br>
![json](https://img.shields.io/badge/json-000000?style=for-the-badge&logo=json&logoColor=white)
<br>
![postgresql](https://img.shields.io/badge/postgresql-000000?style=for-the-badge&logo=postgresql&logoColor=light-blue)
<br>
![Markdown](https://img.shields.io/badge/markdown-000000.svg?style=for-the-badge&logo=markdown&logoColor=white)
<br>


 

### Deployment
Currently Local-host only: 
run rails s in terminal
in browser type localhost:3000
Than add whatever endpoints you want
ie....localhost:3000/api/v1/recipes?country=thailand

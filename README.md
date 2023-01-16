
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
  -
  - Consume two or more external APIs 
  - Code follows DRY and SRP design
  -
  

### Project Overview


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
Database Design
<br>
  ![Lunc_and_learn_DB](#)
  <br>

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
![Bootstrap](https://img.shields.io/badge/bootstrap-000000?style=for-the-badge&logo=bootstrap&logoColor=white)
<br> 
![Heroku](https://img.shields.io/badge/heroku-000000.svg?style=for-the-badge&logo=heroku&logoColor=%23430098)
<br>
![HTML5](https://img.shields.io/badge/html5-000000.svg?style=for-the-badge&logo=html5&logoColor=23E34F26)
<br>
![Markdown](https://img.shields.io/badge/markdown-000000.svg?style=for-the-badge&logo=markdown&logoColor=white)
<br>
![Miro](https://img.shields.io/badge/Miro-000000?style=for-the-badge&logo=Miro&logoColor=yellow)
<br>

 

### Deployment
Currently Local-host only: 
run rails s in terminal
in browser type localhost:3000
Than add whatever endpoints you want
ie....localhost:3000/api/v1/recipes?country=thailand


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
:spoon: [Setup/Installation Guide](#setup/installation-guide)
<br>
:spoon: [Planning](#planning)
<br>
:spoon: [Tech Stack](#tech-stack)
<br>
:spoon: [Deployment](#deployment)
<br>

### Learning Goals
This app consumes four external APIs and consolidates the data to be consumed by the front end:
* Randomizing a country for the user to learn about is provided by consuming the [REST Countries API](https://restcountries.com)
* Exploring recipes specific to a country is provided by consuming the [Edamam Recipe API](https://developer.edamam.com/edamam-recipe-api)
* Learning resources for a particular country, including images of that country and a short history video, are provided by consuming the [Unsplash API](https://unsplash.com/documentation) and the [Youtube API](https://developers.google.com/youtube/v3/getting-started)
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
  - Use these API's link
  -[Edamam Recipe API](https://developer.edamam.com/edamam-recipe-api), 
  -[Unsplash API](https://unsplash.com/documentation),
  -[Youtube API](https://developers.google.com/youtube/v3/getting-started)
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


 

### Endpoint
# Endpoints Available
## Base URL
http://localhost:3000/api/v1

## Get recipes for a random country
GET `/recipes`
### Example response
```JSON
{
    "data": [
        {
            "id": null,
            "type": "recipe",
            "attributes": {
                "title": "Singapore Fling",
                "url": "https://food52.com/recipes/82481-singapore-fling",
                "country": "Singapore",
                "image": "https://edamam-product-images.s3.amazonaws.com..."
            }
        },
        {
            "id": null,
            "type": "recipe",
            "attributes": {
                "title": "Singapore Noodles",
                "url": "http://norecipes.com/blog/2011/11/13/singapore-noodles-recip/",
                "country": "Singapore",
                "image": "https://edamam-product-images.s3.amazonaws.com..."
            }
        }
    ]
}    
```
## Get recipes for a specified country
GET `/recipes?country=thailand`
### Example response
```JSON
{
    "data": [
        {
            "id": null,
            "type": "recipe",
            "attributes": {
                "title": "Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)",
                "url": "https://www.seriouseats.com/recipes/2013/11/andy-rickers-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup.html",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com..."
            }
        },
        {
            "id": null,
            "type": "recipe",
            "attributes": {
                "title": "THAI COCONUT CREMES",
                "url": "https://food52.com/recipes/37220-thai-coconut-cremes",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com..."
            }
        }
    ]
}   
```
## Get learning resources for a specified country
GET `/learning_resources?country=thailand`
### Example response
```JSON
{
    "data": {
        "id": null,
        "type": "learning_resource",
        "attributes": {
            "country": "thailand",
            "video": {
                "title": "THE HISTORY OF THAILAND in 10 minutes",
                "youtube_video_id": "zo1e7XUWkME"
            },
            "images": [
                {
                    "alt_tag": "standing statue and temples landmark during daytime",
                    "url": "https://images.unsplash.com/photo-1528181304800-259b08848526?ixid=MnwzNzk5ODB8MHwxfHNlYXJjaHwxfHx0aGFpbGFuZHxlbnwwfHx8fDE2Njg0NjA3Mjc&ixlib=rb-4.0.3"
                },
                {
                    "alt_tag": "five brown wooden boats",
                    "url": "https://images.unsplash.com/photo-1552465011-b4e21bf6e79a?ixid=MnwzNzk5ODB8MHwxfHNlYXJjaHwyfHx0aGFpbGFuZHxlbnwwfHx8fDE2Njg0NjA3Mjc&ixlib=rb-4.0.3"
                },
                {
                    "alt_tag": "orange temples during daytime",
                    "url": "https://images.unsplash.com/photo-1563492065599-3520f775eeed?ixid=MnwzNzk5ODB8MHwxfHNlYXJjaHwzfHx0aGFpbGFuZHxlbnwwfHx8fDE2Njg0NjA3Mjc&ixlib=rb-4.0.3"
                },
                {
                    "alt_tag": "aerial photography of body of water surrounded with mountains",
                    "url": "https://images.unsplash.com/photo-1506665531195-3566af2b4dfa?ixid=MnwzNzk5ODB8MHwxfHNlYXJjaHw0fHx0aGFpbGFuZHxlbnwwfHx8fDE2Njg0NjA3Mjc&ixlib=rb-4.0.3"
                },
                {...},
                {etc}
            ]
        }     
    }
}
```
## Post user registration
POST `/users` passing in a body containing user name, email, password, password confirmation
```JSON
{
  "name": "Jim Beans",
  "email": "jimmybean@yahoo.com",
}
```
### Example response
```JSON
{
  "data": {
    "type": "user",
    "id": "1",
    "attributes": {
      "name": "Jimmy Jam",
      "email": "jimmy@gmail.com",
      "api_key": "jgn983hy48thw9begh98h4539h4"
    }
  }
}
```
## Post user login
POST `/users` passing in a body containing user name and email
```JSON
{
  "name": "Jimmy Jam",
  "email": "jimmy@deal.com"
}
```
### Example Response
```JSON
{
  "data": {
    "type": "user",
    "id": "1",
    "attributes": {
      "name": "Jimmy Jam",
      "email": "jimmy@deal.com",
      "api_key": "jgn983hy48thw9begh98h4539h4"
    }
  }
}
```
## Post favorite recipes for a user
POST `/favorites` passing in a body containing api key specific to the user, country, recipe link and recipe name
```JSON
{
    "api_key": "jgn983hy48thw9begh98h4539h4",
    "country": "thailand",
    "recipe_link": "https://www.tastingtable.com/.....",
    "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)"
}
```
### Example response
```JSON
{
    "success": "Favorite added successfully"
}
```
## Get a user's favorites
GET `/favorites` passing in a body containing api key specific to the user
```JSON
{
    "api_key": "jgn983hy48thw9begh98h4539h4"
}
```
### Example response
```JSON
{
    "data": [
        {
            "id": "1",
            "type": "favorite",
            "attributes": {
                "recipe_title": "Recipe: Egyptian Tomato Soup",
                "recipe_link": "http://www.thekitchn.com/recipe-egyptian-tomato-soup-weeknight....",
                "country": "egypt",
                "created_at": "2022-11-02T02:17:54.111Z"
            }
        },
        {
            "id": "2",
            "type": "favorite",
            "attributes": {
                "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)",
                "recipe_link": "https://www.tastingtable.com/.....",
                "country": "thailand",
                "created_at": "2022-11-07T03:44:08.917Z"
            }
        }
    ]
 }    
 ```

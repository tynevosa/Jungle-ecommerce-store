# Jungle - E-commerce website

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/Ethansteip/Jungle">
    <img src="" alt="The jungle ecommerce logo" width="300" style="border-radius:10px;">
  </a>

<h2 align="center">Jungle - E-commerce</h2>

  <p align="center">
    A Ruby on Rails e-commerce web application for selling products online.
    <br />
    <a href="https://github.com/Ethansteip/Jungle"><strong>Explore the docs »</strong></a>
    <br />
    <br />
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About Jungle</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About Scheduler App

<p>Jungle is a plant themed E-commerce web application built with Ruby on Rails, Bootstrap CSS, PostgreSQL, and Stripe. The application covers some of the most common features you would expect from an e-commerce site, including user authentication, product and category management handled through a password preotected admin panel, along with secure checkout which is handled by Stripe.
</p>

!["Exmaple image of scheduling app"](https://github.com/Ethansteip/scheduler/blob/master/docs/Screen%20Shot%202023-01-21%20at%201.10.08%20PM.png?raw=true)
<br>
<br>
!["Creating an appointment"](https://github.com/Ethansteip/scheduler/blob/master/docs/Screen%20Shot%202023-01-21%20at%201.10.27%20PM.png?raw=true)
<br>
<br>
!["Deleting appointments"](https://github.com/Ethansteip/scheduler/blob/master/docs/Screen%20Shot%202023-01-21%20at%201.12.05%20PM.png?raw=true)
<br>
<br>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

* Ruby on Rails 6.1
* Bootstrap 5
* PostgresSQL 9.x
* Stripe
* Rspec
* Cypress

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

### Installation
<br>


1. Clone the repo to a folder of your choice.
```
git clone git@github.com:Ethansteip/Jungle.git Jungle
```
2. cd into the newly created Jungle directory.
```
cd Jungle
```
3. Install Gem dependencies.
```
bundle install
```
### Reset and seed the database
```
bin/rails db:reset
```
### Sign-up for a stripe acount and add your credentials to the .env file
```
STRIPE_PUBLISHABLE_KEY=your_key
STRIPE_SECRET_KEY=your_secret_key
```
### Also, set the admin username and password in .env to access the admin panel
```
USER_NAME=your_admin_username
PASSWORD=your_password
```

### Start the application from the root directory
```
bin/rails s -b 0.0.0.0
```

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>
<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Ethan Steip
```
ethan.steip@gmail.com
```

Project Link: [Scheduler App](https://github.com/Ethansteip/Jungle)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

Chitter Challenge
====
Write a Twitter clone.

Instructions
---
### Project Setup
```
$ git clone https://github.com/francescoFH/chitter-challenge
$ bundle
```
### Database Setup
```
$ psql
CREATE DATABASE chitter;
CREATE DATABASE chitter_test;
```
run the SQL scripts in the `db/migrations` folder.

### To run the app
```
$ rackup -p 3000
```
Then in your browser navigate to `localhost:3000/chitter`

Interface
---
**Home page:**
![Home page screenshot](https://github.com/francescoFH/chitter-challenge/blob/master/images/homepage.png)<br><br>
**Sign up:**
![Sign up screenshot](https://github.com/francescoFH/chitter-challenge/blob/master/images/sign-up.png)<br><br>
**Making a peep:**
![Making a peep screenshot](https://github.com/francescoFH/chitter-challenge/blob/master/images/make-peep.png)<br><br>
**Viewing peeps**
![Viewing peeps screenshot](https://github.com/francescoFH/chitter-challenge/blob/master/images/viewing-peep.png)<br><br>
**Sign out:**
![sign out screenshot](https://github.com/francescoFH/chitter-challenge/blob/master/images/signout.png)<br><br>
**Incorrect email/password message:**
![Failed sign in screenshot](https://github.com/francescoFH/chitter-challenge/blob/master/images/wrong-signin.png)

User Stories
---

```
As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter
```
```
As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order
```
```
As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made
```
```
As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter
```
```
As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter
```
```
As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter
```
```
As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep
```

Tech Stack
---
- Ruby 2.6.5
- RSpec
- Sinatra
- PostreSQL

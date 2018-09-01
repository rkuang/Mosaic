# Mosaic

This is a Ruby on Rails application made with the help of Next Step Ruby on Rails tutorials.
Mosaic is based on the popular social networking application, Instagram.

<p align="center"><img src="https://github.com/rkuang/Mosaic/blob/master/app/assets/images/Screen%20Shot%202018-08-31%20at%205.24.18%20PM.png" width="300px"></p>

## Features

Users can sign up by creating an account with their email and password. After creating an account they can post images with
captions.

## Bugs

At the moment, the app is hosted on Heroku, which does not support uploading images or files onto the server. Therefore, once 
the Heroku dyno it is hosted on goes to sleep, any images uploaded to the web app will be lost. We can fix this by using an 
external storage service.

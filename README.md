# skillstack

###GA WDI London - Project 2

***skillstack*** is a skill-sharing application, built with Ruby on Rails. The concept is simple - a user can post a lesson that they are willing to teach, browse available lessons and make a booking. 

#####[View it here!](#)

![](/Users/emilyisacke/DWI/second-project/skillstack/app/assets/images/skillstack-readme.jpg)

####Approach / How it works

This app has three main models - User, Lesson and Booking. The user can post a lesson, using a foreign id of teacher, and a user can make a booking, using a foreign id of student. A user can view all of the bookings they have made, and they can also view all of their own lessons, and the bookings made for those lessons. 

![](/Users/emilyisacke/DWI/second-project/skillstack/app/assets/images/skillstack-readme2.jpg)

####The build

* HTML 5, CSS and Ruby on Rails were used to create this game. 
* The Google Web Font 'Quicksand' has been used to style the app.
* The following additional Ruby gems were used in the building of this app: 'acts_as_votable', ransack', 'geocoder', 'carrierwave' & 'rmagick'.

![](/Users/emilyisacke/DWI/second-project/skillstack/app/assets/images/skillstack-readme3.jpg)

#### Problems & Challenges

The main challenge I had with this app was how to implement a true booking system. At the moment, a student can request a booking, and the teacher can view that booking, but there is no further communication between the teacher and the student. This would be my next task if I were to continue with this app. 




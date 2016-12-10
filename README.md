# Friendship Model

This app is a basic example of a social media back end. It has a User model and a Friendship model which is a self referential many to many relationship with extra boolean columns for pending and confirmed requests

The goal of this sample app is...

* current_user.friends returns an array of users who have had a friend request confirmed.

* current_user.pending_friends returns an array of users who have sent this user a friend request

From these we can start to build a clone of a very popular social media website

#!/bin/sh

#sudo docker build -t dlrs-img .
fn create app fnwithdlrs
fn --verbose deploy --app fnwithdlrs --local
#fn deploy --create-app --app FnWithDLRS --local --no-bump
#fn list functions FnWithDLRS
#fn invoke FnWithDLRS fn-with-dlrs
fn invoke fnwithdlrs fn-with-dlrs

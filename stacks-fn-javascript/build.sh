#!/bin/sh

fn -v build
fn deploy --create-app --app tutorial --local --no-bump
fn list functions tutorial
cat download.jpeg | fn invoke tutorial imagedims

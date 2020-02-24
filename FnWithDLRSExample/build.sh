#!/bin/sh

fn -v build
fn deploy --create-app --app example --local --no-bump
fn list functions example
fn invoke example main

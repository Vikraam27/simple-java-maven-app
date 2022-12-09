#!/usr/bin/env bash

echo "change directory"
cd asimple-java-maven-app

echo "pull repository"
git pull origin master

echo "install package"
mvn package

echo "run app"
java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App

echo "wait 1 minutes"
sleep 1m

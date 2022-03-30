//This class should contain the form
//for instance this should be the first field
//PUBLIC DETAILS containing one text field
//SECURITY INFORMATION containing Phone Number TF, Button for picture next to login image, message, and another button
//to be able to another account
//PERSONAL DETAILS containing firstName,lastName, father's Name, DOB, PlaceOB
//SOCIAL MEDIA ACCOUNT, message and a button to add account, uppon selecting button with a list and two fields to add
//userName for account and URL for account
//MEDIA ACCESS one button with five options and a field
//SOCIETAL ACCESS
//POLITICAL ACCESS
//RELIGIOUS ACCESS
//MILITARY ACCESS
//ECONOMIC ACCESS
//OVERIVIEW
//The models for all the above exist, I need to make the UI and connect all the dots together
import 'package:flutter/material.dart';

class UnbordingContent {
  String image;
  String title;
  String discription;
  //Widget content;

  UnbordingContent({
    required this.image,
    required this.title,
    required this.discription,
    //required this.content,
  });
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'PUBLIC DETAILS',
    image: 'images/publicDetails.svg',
    discription: "containing one text field ",
    //content: null,
  ),
  UnbordingContent(
    title: 'SECURITY INFORMATION',
    image: 'images/securityInfo.svg',
    discription:
        "containing Phone Number TF, Button for picture next to login image, message, and another button"
        "to be able to another account ",
    //content: null,
  ),
  UnbordingContent(
    title: 'PERSONAL DETAILS',
    image: 'images/pesonalDetails.svg',
    discription: "containing firstName,lastName, father's Name, DOB, PlaceOB ",
    //content: null,
  ),
  UnbordingContent(
    title: 'SOCIAL MEDIA ACCOUNT',
    image: 'images/socialMedia.svg',
    discription:
        "message and a button to add account, uppon selecting button with a list and two fields to add"
        "userName for account and URL for account ",
    // content: null,
  ),
  UnbordingContent(
    title: 'MEDIA ACCESS',
    image: 'images/mediaAccess.svg',
    discription: "one button with five options and a field ",
    // content: null,
  ),
  UnbordingContent(
    title: 'SOCIETAL ACCESS',
    image: 'images/societalAccess.svg',
    discription: "... ",
    // content: null,
  ),
  UnbordingContent(
    title: 'POLITICAL ACCESS',
    image: 'images/politicalAccess.svg',
    discription: ".... ",
    //content: null,
  ),
  UnbordingContent(
    title: 'RELIGIOUS ACCESS',
    image: 'images/religiousAccess.svg',
    discription: ".... ",
    //content: null,
  ),
  UnbordingContent(
    title: 'MILITARY ACCESS',
    image: 'images/military.svg',
    discription: ".... ",
    // content: null,
  ),
  UnbordingContent(
    title: 'ECONOMIC ACCESS',
    image: 'images/economicAccess.svg',
    discription: "... ",
    //content: null,
  ),
  UnbordingContent(
    title: 'OVERVIEW',
    image: 'images/overview.svg',
    discription: ".Last Page",
    //content: null,
  ),
];

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
class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'PUBLIC DETAILS',
      image: 'images/quality.svg',
      discription: "containing one text field "),
  UnbordingContent(
      title: 'SECURITY INFORMATION',
      image: 'images/delevery.svg',
      discription:
          "containing Phone Number TF, Button for picture next to login image, message, and another button"
          "to be able to another account "),
  UnbordingContent(
      title: 'PERSONAL DETAILS',
      image: 'images/reward.svg',
      discription:
          "containing firstName,lastName, father's Name, DOB, PlaceOB "),
  UnbordingContent(
      title: 'SOCIAL MEDIA ACCOUNT',
      image: 'images/quality.svg',
      discription:
          "message and a button to add account, uppon selecting button with a list and two fields to add"
          "userName for account and URL for account "),
  UnbordingContent(
      title: 'MEDIA ACCESS',
      image: 'images/delevery.svg',
      discription: "one button with five options and a field "),
  UnbordingContent(
      title: 'SOCIETAL ACCESS',
      image: 'images/reward.svg',
      discription: "... "),
  UnbordingContent(
      title: 'POLITICAL ACCESS',
      image: 'images/quality.svg',
      discription: ".... "),
  UnbordingContent(
      title: 'RELIGIOUS ACCESS',
      image: 'images/delevery.svg',
      discription: ".... "),
  UnbordingContent(
      title: 'MILITARY ACCESS',
      image: 'images/reward.svg',
      discription: ".... "),
  UnbordingContent(
      title: 'ECONOMIC ACCESS',
      image: 'images/quality.svg',
      discription: "... "),
  UnbordingContent(
      title: 'OVERVIEW',
      image: 'images/delevery.svg',
      discription: ".Last Page"),
];

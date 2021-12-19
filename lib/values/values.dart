import 'package:resumeflutter/Model/ModelExperience.dart';
import 'package:resumeflutter/Model/social.dart';
import 'package:resumeflutter/Model/tools.dart';
export 'package:resumeflutter/values/colors.dart';
export 'package:resumeflutter/values/strings.dart';
export 'package:resumeflutter/values/textStyles.dart';

double limit = 1000;
final String _imagePath = 'assets/images';

List<String> sections = [
  'Intro',
  'About',
  'Education',
  'Skills',
  'Experience',
  'Projects',
  'Contact Me'
];

List<ModelExperience> experiences = [
  ModelExperience(
    time: 'October 2021 - December 2021',
    title: 'Flutter Developer',
    subtitle: 'Freelancer',
    description: 'I worked as a Flutter developer, many Projects.',
  ),
];

List<ModelExperience> education = [
  ModelExperience(
    time: 'September 2020 - Present',
    title: 'B.Tech Student',
    subtitle: 'Mahatma Jyotiba Phule Rohilkhand University',
    description:
        'Currently pursuing a 4 year Bachelor of Technology course in Computer Ebgineering',
  ),
  ModelExperience(
    time: 'April 20013 - March 2020',
    title: 'Inter School Student',
    subtitle: 'Shree Mata Prasad Mata Bheekh Inter College',
    description: 'Percentage - 65.60 % in 12th UP Board',
  ),
];

List<ModelExperience> projects = [
  ModelExperience(
    time: 'November 2021 - December 2021',
    title: 'Lyrical',
    subtitle: 'Flutter, MusicMatch API, Firebase & Firestore',
    description:
        'A flutter app that use MusicMatch,Lyricsovh API and has a Firebase Backend,In this app first of all user Register with email and password then user can search any lyrics with(title or lyrics name).You can add any lyrics and access,your history is store.',
    url: 'https://github.com/anuprajvarma/lyrical',
  ),
];

List<Tool> tools = [
  Tool(
    name: 'Flutter',
    image: '$_imagePath/flutter.png',
  ),
  Tool(
    name: 'Android',
    image: '$_imagePath/android.png',
  ),
  Tool(
    name: 'NodeJS',
    image: '$_imagePath/nodejs.png',
  ),
  Tool(
    name: 'Mongo DB',
    image: '$_imagePath/mongodb.png',
  ),
  Tool(
    name: 'Firebase',
    image: '$_imagePath/firebase.png',
  ),
  Tool(
    name: 'C++',
    image: '$_imagePath/cpp.png',
  ),
  Tool(
    name: 'Dart',
    image: '$_imagePath/dart.png',
  ),
  Tool(
    name: 'Javascript',
    image: '$_imagePath/javascript.png',
  ),
  Tool(
    name: 'Typescript',
    image: '$_imagePath/typescript.png',
  ),
  Tool(
    name: 'C',
    image: '$_imagePath/c.png',
  ),
  Tool(
    name: 'Git',
    image: '$_imagePath/git.png',
  ),
  Tool(
    name: 'Figma',
    image: '$_imagePath/Figma.png',
  ),
];

List<Social> social = [
  Social(
    name: 'Github',
    image: '$_imagePath/github.png',
    url: 'https://github.com/anuprajvarma',
  ),
  Social(
    name: 'Hackerrank',
    image: '$_imagePath/hackerrank.png',
    url: 'https://www.hackerrank.com/anupraj1854',
  ),
  Social(
    name: 'Instagram',
    image: '$_imagePath/instagram.png',
    url: 'https://www.instagram.com/anupraj_varma/',
  ),
  Social(
    name: 'Linkedin',
    image: '$_imagePath/linkedin.png',
    url: 'https://www.linkedin.com/in/anupraj-varma-a04489208/',
  ),
  Social(
    name: 'Twitter',
    image: '$_imagePath/twitter.png',
    url: 'https://twitter.com/Anupraj_varma',
  ),
];

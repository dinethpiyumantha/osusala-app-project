import 'package:flutter/material.dart';
import 'package:osusala/screens/news/models/news_model.dart';

//Colors
const oPrimaryColor = Color(0xff2f363d);
const oSecondaryColor = Color(0xff8d8e8f);
const oSuccessColor = Color(0xff00ce30);
const oDangerColor = Color(0xffff6767);
const oWhiteColor = Color(0xffffffff);
const oLightColor = Color(0xffededed);
const oDarkColor = Color(0xff24292e);
const oDarkMinColor = Color(0xff3b3e51);

const kDefaultPadding = 20.0;

const String defaltFontFamily = 'BioSans';

const String sampleTextLorem =
    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.';

const String sampleShortTextLorem =
    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.';

const String constMapStyle = '''  [{
    "featureType": "poi",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dadada"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "transit",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#c9c9c9"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  }
]
  ''';

const newsList = [
  'Covid 19 News',
  'New Medicine News',
  'Gov News',
  'Health Conference',
  'Sri lanka Health',
];

var newsObjects = [
  NewsModel(
      "Covid 19 News",
      "https://fscluster.org/sites/default/files/styles/core-group-featured-image/public/banner-696x321.png?itok=l7uFday9",
      "The virus can spread from an infected person’s mouth or nose in small liquid particles when they cough, sneeze, speak, sing or breathe. These particles range from larger respiratory droplets to smaller aerosols. You can be infected by breathing in the virus if you are near someone who has COVID-19, or by touching a contaminated surface and then your eyes, nose or mouth. The virus spreads more easily indoors and in crowded settings."),
  NewsModel(
      "New Medicine News",
      "https://img2.goodfon.com/wallpaper/nbig/b/10/medicine-form-pen-medical.jpg",
      "Each patient battling a disease or managing a chronic condition lives in the hope that tomorrow will bring a new medicine that delivers better health. America’s biopharmaceutical research companies share the same goal, constantly developing new medicines that can prevent diseases, improve patients’ health, and save lives. Since 2000, more than 500 new medicines have been approved by the FDA, helping patients live longer, healthier lives. Medications are transforming many cancers into treatable conditions, reducing the impact of cardiovascular disease, offering new options for patients with hard-to-treat diseases like Alzheimer’s and Parkinson’s, and fighting even the rarest conditions. Explore the medicines in development for a wide range of diseases below."),
  NewsModel(
      "GOV News",
      "https://lh3.googleusercontent.com/proxy/BG-WN-EDssYR9F4zQEuxkeqeadibl5lICmsNuBT1DI8o-KgajwiSPhKRVigs1ap6v_lFxSwHaur9u68Tb5f4OfdVG25oXN2zFRHGfpiY3p0Vo127fmG0R8fxx_ebpRCR3Vyz9YpP4lZvneo",
      "The impact that the Dutch had on the local medicine was only a fraction more than in the case of the Portuguese. They built more hospitals than the Portuguese, and that again was for the purpose of serving their forces, shipping personnel and other Dutch nationals in the country. Hospitals were established in strategic garrison towns, several of which possessed harbours as well. The British captured the maritime provinces from the Dutch in 1796, and annexed the Kandyan kingdom in 1815. They ruled the country till 1948 when Sri Lanka achieved independence."),
  NewsModel(
      "Health Conference",
      "https://www.ceorlhns.org/images/icagenda/frontend/images/global-conference-on-primary-healthcare-2021-paris.png",
      "Welcome to the 8th International Conference on Public Health 2022 (ICOPH 2022) which will be held on 28th – 29th July 2022 in Virtual Platform. We hope ICOPH 2022 will unite diverse researches and case studies from all over the world, in parallel sessions while offering many networking and publishing opportunities. Discover the latest trends and challenges in the field at this leading conference and enjoy everything the Virtual Conference has to offer."),
];

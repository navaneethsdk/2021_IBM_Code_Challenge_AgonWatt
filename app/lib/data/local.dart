class Data {
  String name;
  String consumerid;
  String locality;
  num nummembs;
  num tu;
  num dmin;
  num avgt;
  num y;

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    consumerid = json['consumerid'];
    locality = json['locality'];
    nummembs = json['nummembs'];
    tu = json['tu'];
    dmin = json['dmin'];
    avgt = json['avgt'];
    y = json['y'];
  }
}

List datasJson = [
  {
    "name": "Azalee Fava",
    "consumerid": "1157757006020",
    "locality": "Kozhikode",
    "nummembs": 5,
    "tu": 363,
    "dmin": 175,
    "avgt": 579,
    "y": 29.845
  },
  {
    "name": "Marla Poyer",
    "consumerid": "1168111007933",
    "locality": "Vadakara",
    "nummembs": 3,
    "tu": 251,
    "dmin": 145,
    "avgt": 1032.8,
    "y": 100.930
  },
  {
    "name": "Karleen Brott",
    "consumerid": "1168111007534",
    "locality": "Vadakara",
    "nummembs": 5,
    "tu": 474,
    "dmin": 175,
    "avgt": 1032.8,
    "y": 43.284
  },
  {
    "name": "Merlyn Atkin",
    "consumerid": "1157757006152",
    "locality": "Thamarassery",
    "nummembs": 2,
    "tu": 244,
    "dmin": 136,
    "avgt": 329.7,
    "y": 51.987
  },
  {
    "name": "Apolonia Czarnecki",
    "consumerid": "1143326005423",
    "locality": "Kozhikode",
    "nummembs": 6,
    "tu": 1125,
    "dmin": 225,
    "avgt": 579,
    "y": 0.000
  },
  {
    "name": "Gonzalo Redding",
    "consumerid": "1168111007461",
    "locality": "Koyilandy",
    "nummembs": 6,
    "tu": 1011,
    "dmin": 225,
    "avgt": 471.75,
    "y": 0.000
  },
  {
    "name": "Lahoma Jessee",
    "consumerid": "1157757006247",
    "locality": "Koyilandy",
    "nummembs": 4,
    "tu": 308,
    "dmin": 155,
    "avgt": 471.75,
    "y": 34.711
  },
  {
    "name": "Birdie Hires",
    "consumerid": "1143326005768",
    "locality": "Thamarassery",
    "nummembs": 2,
    "tu": 165,
    "dmin": 136,
    "avgt": 329.7,
    "y": 99.909
  },
  {
    "name": "Sanda Luiz",
    "consumerid": "1166131015122",
    "locality": "Vadakara",
    "nummembs": 4,
    "tu": 472,
    "dmin": 155,
    "avgt": 1032.8,
    "y": 54.299
  },
  {
    "name": "Kara Ghee",
    "consumerid": "1166131015843",
    "locality": "Kozhikode",
    "nummembs": 5,
    "tu": 628,
    "dmin": 175,
    "avgt": 579,
    "y": 0.000
  },
  {
    "name": "Josie Borchardt",
    "consumerid": "1157757006752",
    "locality": "Vadakara",
    "nummembs": 3,
    "tu": 237,
    "dmin": 145,
    "avgt": 1032.8,
    "y": 102.737
  },
  {
    "name": "Kaye Crum",
    "consumerid": "1157757006481",
    "locality": "Koyilandy",
    "nummembs": 3,
    "tu": 225,
    "dmin": 145,
    "avgt": 471.75,
    "y": 69.740
  },
  {
    "name": "Ethan Coppin",
    "consumerid": "1168111007483",
    "locality": "Thamarassery",
    "nummembs": 4,
    "tu": 254,
    "dmin": 155,
    "avgt": 329.7,
    "y": 22.960
  },
  {
    "name": "Patria Mcdonalds",
    "consumerid": "1166131015245",
    "locality": "Thamarassery",
    "nummembs": 5,
    "tu": 573,
    "dmin": 175,
    "avgt": 329.7,
    "y": 0.000
  },
  {
    "name": "Felix Ferretti",
    "consumerid": "1143326005902",
    "locality": "Kozhikode",
    "nummembs": 4,
    "tu": 345,
    "dmin": 155,
    "avgt": 579,
    "y": 40.415
  },
  {
    "name": "Alpha Shedd",
    "consumerid": "1432526005956",
    "locality": "Kozhikode",
    "nummembs": 5,
    "tu": 434,
    "dmin": 175,
    "avgt": 579,
    "y": 20.035
  },
  {
    "name": "Trista Lamacchia",
    "consumerid": "114332603522",
    "locality": "Vadakara",
    "nummembs": 8,
    "tu": 3730,
    "dmin": 310,
    "avgt": 1032.8,
    "y": 0.000
  },
  {
    "name": "Nerissa Sprow",
    "consumerid": "119437887373",
    "locality": "Thamarassery",
    "nummembs": 3,
    "tu": 245,
    "dmin": 145,
    "avgt": 329.7,
    "y": 34.253
  },
  {
    "name": "Grazyna Hackman",
    "consumerid": "1146782947428",
    "locality": "Koyilandy",
    "nummembs": 4,
    "tu": 343,
    "dmin": 155,
    "avgt": 471.75,
    "y": 27.292
  }
];

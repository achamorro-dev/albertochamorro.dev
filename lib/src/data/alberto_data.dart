class WorkExperienceData {
  final int year;
  final String title;
  final String location;
  final List<String> information;

  WorkExperienceData({this.year, this.title, this.location, this.information});

}

List<WorkExperienceData> workExperienceData = [
  WorkExperienceData(
    year: 2019,
    title: '2019-2020',
    location: 'BBVA Garanti (Turkey)',
    information: [
      'Frontend Specialist in architecture project working with frontend team at Turkey',
      'Development of reusable UI and technical components and modules working with WebComponents, LitElement library and NodeJS to use in the other applications of the company',
      'Unit tests for each development with Mocha, Chai and Sinon',
      'Agile methodologies with standup dailies, reviews, retrospectives and plannings meetings',
      'Management and support to the spanish team and helping to turkish team with problems and doubts',
    ]
  ),
  WorkExperienceData(
    year: 2018,
    title: '2018-2019',
    location: 'BBVA Compass (USA)',
    information: [
      'Full stack development of the office application for the digital signature of documents working with iPads',
      'Technologies: Angular at front side and Java Spring for services and business logic with Oracle database',
      'Specialized in the bank\'s propietary framework. Development of different POCs for USA and Spain proposals',
      'In-team trainer of the bank\'s proprietary framework to different workmates',
      'Management and support of frontend team for project of dynamic rates and currency exchange. Development of application to rates team to help with exchanges operations, segmentation tiering groups, logging transactions and more',
      'Agile methodologies with standup dailies, reviews, retrospectives and plannings meetings',
    ]
  ),
  WorkExperienceData(
    year: 2017,
    title: '2008 - 2017',
    location: 'Communications industry',
    information: [
      'Development of Java applications deployed on Unix machines, Weblogic servers with Oracle and Sybase databases',
      'Development of web tool for promotion management: architecture design, choice of technologies based on those used by the client (Java Spring, Oracle DB, HP / UX servers), technical design, coding, unit testing and E2E, implementation and corrective and evolutionary support. Creation of integrations with external systems both offline via batch and online via SOAP Service',
      'Upgrade of Oracle Weblogic 7 to 12, Oracle DB from 9i to 11g including migration of all information',
      'Development on AMDOCS CRM 7.5 product in Java 5 and PL / SQL of customer ad-hoc requirements',
    ]
  ),
];
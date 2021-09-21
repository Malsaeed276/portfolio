class Project {
  final String? title, description, link;

  Project({this.title, this.description, this.link});
}

List<Project> demo_projects = [
  Project(
      title: "Responsive mobile adn web app",
      description:
          "[UNDER UPDATING NOW]I build Flutter responsive mobile and web app that is helping the English learner to learn english but search on the dictionary of the word using API as well as a words game that test how far you know vocabulary in the language. So far the app is supporting English but with in the future if I get a good feedback I will try to add more languages.",
      link: "https://langguru-1.web.app/#/"),
  Project(
      title: "Responsive Website",
      description:
          "I build a hosting web page using flutter that support 2 languages and contains 4 pages",
      link: "https://www.sadaf-albahar.com/#/en/homePage"),
  Project(
    title: "Motivation time",
    description: "I building flutter mobile app that generate a quotes and you can save the quotes to see it later",
    link: "https://github.com/Malsaeed276/Motivation-Time",
  ),
  Project(
    title: "Teacher Questions System",
    description:
        "I build a full app for the teachers that they can add their question into the system and delete it. I used SQL Server and .Net to build the back-end and I used Flutter for the front-end.",
  ),
  Project(
    title: "Welcome page, Login Page and Sign up page - Flutter UI",
    description:
        "at first of the Language app, I made a welcome page but I delete later on since I will not use. basically the page is for login or sign up into the system to be able to save your score and your data.",
  ),
    Project(
      title: "Portfolio",
      description: "I build this portfolio using Flutter with responsive UI and host it with Firebase",
link: "https://fluppy-c80a4.web.app/#/",
    ),
];

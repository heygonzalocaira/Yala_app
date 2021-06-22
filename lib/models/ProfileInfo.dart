class Profile {
  String img;
  String imgBackground;

  String name;
  String mail;
  String description;

  Profile({
    this.img,
    this.imgBackground,
    this.name,
    this.mail,
    this.description,
  });
}

var userInfo = Profile(
  img: "https://www.eldinamo.cl/wp-content/uploads/2019/06/jordi.jpg",
  imgBackground: "https://cdn.forbes.com.mx/2014/11/1.-Harvard.jpg",
  name: "Bill Gates",
  mail: "billy@gmail.com",
  description:
      "William Henry Gates III, ​ conocido como Bill Gates, es un multimillonario magnate empresarial, informático y filántropo​ estadounidense, cofundador de la empresa de software Microsoft junto con Paul Allen",
);

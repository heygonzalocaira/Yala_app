class LearningType {
  String text;
  String img;

  LearningType({
    this.text,
    this.img,
  });
}

List<LearningType> listOptions = [
  LearningType(
    text: "Partida Rapida",
    img: "assets/images/option1.png",
  ),
  LearningType(
    text: "Partida Clásica",
    img: "assets/images/option2.png",
  ),
  LearningType(
    text: "Battle Royal",
    img: "assets/images/option3.png",
  ),
  LearningType(
    text: "Ranking",
    img: "assets/images/option4.png",
  ),
];

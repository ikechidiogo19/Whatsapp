class User {
  String tittle;
  String subtittle;
  String img;
  bool isseen;
  bool sent;

  User(
      {required this.img,
      required this.sent,
      required this.subtittle,
      required this.isseen,
      required this.tittle});
}

List<User> myuser = [
  User(
      isseen: true,
      sent: true,
      img: "Asset/dalu.png",
      subtittle: "Did you forget about our outing",
      tittle: "Leo"),
  User(
      isseen: true,
      sent: false,
      img: "Asset/Shutabug.png",
      subtittle: "Where you at ?",
      tittle: "Shutabug"),
  User(
      img: "Asset/MKBHAD.png",
      isseen: false,
      sent: false,
      subtittle: "yup",
      tittle: "Marques"),
  User(
      sent: true,
      img: "Asset/lil nas x.png",
      isseen: true,
      subtittle: "The name?",
      tittle: "Lil nas x"),
  User(
      sent: false,
      img: "Asset/Blake.png",
      isseen: false,
      subtittle: "i'm working on it",
      tittle: "Blake"),
  User(
      sent: false,
      img: "Asset/Dare.png",
      isseen: false,
      subtittle: "Bla Bla Bla",
      tittle: "Dare"),
  User(
      sent: true,
      img: "Asset/Charles.png",
      isseen: false,
      subtittle: "Did you forget about our outing",
      tittle: "Charles"),
];

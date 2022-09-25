import 'story.dart';

class Storyuser {
  final String name;
  final String img;
  final String date;
  final List<Story> stories;
  Storyuser(
      {required this.date,
      required this.stories,
      required this.img,
      required this.name});
}

final List<Storyuser> storyusers = [
  Storyuser(
    stories: stories,
    img: "Asset/Shutabug.png",
    name: "shutabug",
    date: "2 hours age",
  ),
  Storyuser(
    stories: stories,
    img: "Asset/MKBHAD.png",
    name: "Marques",
    date: "2 hours ago",
  ),
  Storyuser(
    stories: stories,
    img: "Asset/Blake.png",
    name: "Blake",
    date: "1 hours age",
  ),
  Storyuser(
    stories: stories,
    img: "Asset/Charles.png",
    name: "Charles",
    date: "yesterday, 10:40pm",
  ),
  Storyuser(
    stories: stories,
    img: "Asset/lil nas x.png",
    name: "Lil nas x",
    date: "Yesterday, 2:31pm",
  )
];

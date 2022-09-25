class Story {
  final String url;

  final String caption;

  Story({
    required this.url,
    required this.caption,
  });
}

List<Story> stories = [
  Story(caption: "12 pro max", url: "Asset/12pro.jpg"),
  Story(caption: "Totally cool", url: "Asset/Benz.jpg"),
  Story(caption: "Nice", url: "Asset/Macbook.jpg"),
  Story(caption: "macbook pro", url: "Asset/Macbookair.jpg"),
  Story(caption: "NFTs", url: "Asset/Me.jpg"),
];

class News {
  final int id;
  final String title;
  final String description;
  final String text;
  final String image;
  final String date;

  News({
    this.id,
    this.title,
    this.description,
    this.text,
    this.image,
    this.date
  });
}

List<News> news = [
  News(
      id: 1,
      title: "Lorem ipsum",
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting "
          "industry. Lorem Ipsum has been the industry's standard dummy",
      text: "Lorem Ipsum is simply dummy text of the printing and typesetting "
          "industry. Lorem Ipsum has been the industry's standard dummy",
      image: "assets/images/etoo.jpg",
      date: "21-12-2020"
  ),
  News(
      id: 2,
      title: "Lorem ipsum scrutum",
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting "
          "industry. Lorem Ipsum has been the industry's standard dummy",
      text: "Lorem Ipsum is simply dummy text of the printing and typesetting "
          "industry. Lorem Ipsum has been the industry's standard dummy",
      image: "assets/images/etoo.jpg",
      date: "12-12-2020"
  ),
  News(
      id: 3,
      title: "Lorem scrutum",
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting "
          "industry. Lorem Ipsum has been the industry's standard dummy",
      text: "Lorem Ipsum is simply dummy text of the printing and typesetting "
          "industry. Lorem Ipsum has been the industry's standard dummy",
      image: "assets/images/etoo.jpg",
      date: "11-12-2020"
  ),
];
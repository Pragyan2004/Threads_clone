class thread {
  String ? name;
  String ? posted;
  String ? description;
  String ? image;
  String ? profileImage;
  String ? replies;
  String ? like;
  String ? replier;
  String ? replier1;
  String ? replier2;

  thread(
      this.description,
      this.image,
      this.like,
      this.name,
      this.posted,
      this.profileImage,
      this.replier,
      this.replier1,
      this.replier2,
      this.replies,
      );
  factory thread.formJson(Map<String,String> jsonObject){
    return  thread(
        jsonObject['description'],
        jsonObject['image'],
        jsonObject['like'],
        jsonObject['name'],
        jsonObject['posted'],
        jsonObject['profileImage'],
        jsonObject['replier'],
        jsonObject['replier1'],
        jsonObject['replier2'],
        jsonObject['replies'],
    );
  }
}
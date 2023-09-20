class PostModel {
  String postImage;
  String postDescription;
  String likeCounts;
  String userImg;
  String userName;
  String userLocation;
  String postTime;
  int? hostId;

  PostModel({
    required this.postImage,
    required this.postDescription,
    required this.likeCounts,
    required this.userImg,
    required this.userName,
    required this.userLocation,
    required this.postTime,
    this.hostId
  });
}

import 'package:esm/Models/comments_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:esm/Models/like_mode.dart';
import 'package:esm/resources/widgets/Toolbar.dart';
import 'package:esm/resources/Widgets/app_text.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:esm/resources/widgets/sized_boxes.dart';
import 'package:flutter_svg/svg.dart';

class CommentsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CommentsScreenState();
  }

}
class _CommentsScreenState extends State<CommentsScreen>{
  final List<CommentModel> comments = [
    CommentModel(
      userName: "User1",
      userImage: "assets/images/profile.png",
      commentText: "This is an example comment.",
    ),
    CommentModel(
      userName: "User2",
      userImage: "assets/images/profile.png",
      commentText: "Typesetting, remaining essentially unchanged. "
          "It was popularised in the 1960s with the release of Letraset sheets "
          "containing Lorem Ipsum passages, and more recently with desktop publishing.",
    ),
    // Add more comments here
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: ToolbarBack(appBar: AppBar(), title: "Comments"),
    body: SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (context, index) {
                final comment = comments[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(comment.userImage),
                  ),
                  title: Text(comment.userName),
                  subtitle: Column(
                    children: [
                      Text(comment.commentText),
                      Divider(thickness: 1,)
                    ],
                  ),

                  // Add a reply button here to implement replying
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Add a comment...',
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Implement logic to add a new comment
                  },
                ),
              ),
              // Implement logic to handle user comments
            ),
          ),
        ],
      ),),
    );

  }


}
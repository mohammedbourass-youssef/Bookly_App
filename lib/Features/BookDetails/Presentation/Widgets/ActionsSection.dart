
import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Features/BookDetails/Presentation/Widgets/CustomTextButton.dart';
import 'package:flutter/material.dart';

class ActionsSection extends StatelessWidget {
  const ActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Customtextbutton(
          onPressed: () {},
          textColor: Colors.black,
          backgroundColor: Colors.white,
          buttonText: 'Free Preview',
          buttonType: ButtonType.left,
        ),
        Customtextbutton(
          onPressed: () {},
          textColor: Colors.white,
          backgroundColor: kActionColor,
          buttonText: 'DownLoad',
          buttonType: ButtonType.right,
        ),
      ],
    );
  }
}

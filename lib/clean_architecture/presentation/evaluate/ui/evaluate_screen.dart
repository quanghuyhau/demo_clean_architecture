import 'package:demo_dio_retrofit/clean_architecture/core/constants/image.dart';
import 'package:demo_dio_retrofit/clean_architecture/core/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EvaluateScreen extends StatefulWidget {
  const EvaluateScreen({super.key});

  @override
  State<EvaluateScreen> createState() => _EvaluateScreenState();
}

class _EvaluateScreenState extends State<EvaluateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _background(),
          SingleChildScrollView(
            child: Column(
              children: [
                _appBar(),
                _sendYourComments(),
                Container(
                  margin:EdgeInsets.fromLTRB(4 , 0, 4, 4),
                  padding: EdgeInsets.fromLTRB(4 , 500, 4, 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }




  _appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Center(
          child: Text(
        AppTexts.commentAndContact,
        style: TextStyle(color: Colors.white),
      )),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  _background() {
    return SizedBox.expand(
      child: Image.asset(
        AppImages.backgroundPath,
        fit: BoxFit.cover,
      ),
    );
  }

  _sendYourComments() {
    return Container(
      width: 342,
      // margin: EdgeInsets.only(b),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              // padding: ,
              child: Text(AppTexts.sendYourComments)),
        ],
      ),
    );
  }

}

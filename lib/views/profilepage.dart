import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:prayertimes/utilities/constants/constantprofile.dart';
import 'package:prayertimes/widgets/profile_list_item.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);

    var profileInfo = Expanded(
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: kSpacingUnit * 10,
              width: kSpacingUnit * 10,
              margin: EdgeInsets.only(top: kSpacingUnit * 3),
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: kSpacingUnit * 5,
                    backgroundImage: AssetImage('assets/images/doua5.png'),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: kSpacingUnit * 2.5,
                      width: kSpacingUnit * 2.5,
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        heightFactor: kSpacingUnit * 1.5,
                        widthFactor: kSpacingUnit * 1.5,
                        child: InkWell(
                          onTap: (){
                            print('click to change image');
                          },
                          child: Icon(
                            LineAwesomeIcons.pen,
                            color: kDarkPrimaryColor,
                            size: 16, //ScreenUtil().setSp(kSpacingUnit.w * 1.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: kSpacingUnit * 2),
            Text(
              'محمد صالح',
              style: kTitleTextStyle.copyWith(fontSize: 20),
            ),
            SizedBox(height: kSpacingUnit * 0.5),
            Text(
              'nicolasadams@gmail.com',
              style: kCaptionTextStyle.copyWith(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: kSpacingUnit * 2),
          ],
        ),
      ),
    );

    var header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: kSpacingUnit * 3),
        profileInfo,
        //animatedSwither,//themeSwitcher,
        //Icon(Icons.dark_mode_outlined,size: 32,),
        SizedBox(width: kSpacingUnit * 3),
      ],
    );

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //SizedBox(height: kSpacingUnit * 1),
          header,
          Expanded(
            child: Column(
              children: <Widget>[
                ProfileListItem(
                  icon: LineAwesomeIcons.moon,
                  text: 'الوضع الليلي',
                  index: 0,
                ),
                ProfileListItem(
                  icon: LineAwesomeIcons.compass,
                  text: 'تغيير الموقع',
                  index: 1,
                ),
                ProfileListItem(
                  icon: LineAwesomeIcons.share_square,
                  text: 'مشاركة التطبيق',
                  index: 2,
                ),
                ProfileListItem(
                  icon: LineAwesomeIcons.question_circle,
                  text: 'معلومات أكثر',
                  index: 3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

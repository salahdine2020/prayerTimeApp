import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:prayertimes/utilities/constants/constantprofile.dart';
import 'package:prayertimes/views/subsettingsscreen/changelocation.dart';

class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool hasNavigation;
  final int index;
  const ProfileListItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.index,
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: kSpacingUnit * 5.5,
        margin: EdgeInsets.symmetric(
          horizontal: kSpacingUnit * 4,
        ).copyWith(
          bottom: kSpacingUnit * 2,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: kSpacingUnit * 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kSpacingUnit * 3),
          color: Theme.of(context).backgroundColor,
        ),
        child: Row(
          children: <Widget>[
            Icon(
              this.icon,
              size: kSpacingUnit * 2.5,
            ),
            SizedBox(width: kSpacingUnit * 1.5),
            Text(
              this.text,
              style: kTitleTextStyle.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            if (this.hasNavigation)
              Icon(
                LineAwesomeIcons.angle_right,
                size: kSpacingUnit * 2.5,
              ),
          ],
        ),
      ),
      onTap: () {
        // todo: change to Navigation 2.0 after
        if (index == 1)
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChangeLocation(),
            ),
          );
        print('clicked $index');
      },
    );
  }
}

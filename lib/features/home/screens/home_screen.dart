import 'package:flutter/material.dart';

import '../../../core/mini_widgets.dart';
import '../../../core/utils.dart';
import '../widgets/icon_custom.dart';

/// The design of the home
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Space(0.025),
        _AppBar(),
        Space(0.025),
        _OrangeContainer(),
        Space(0.025),
        _UpcomingMettings(),
        Space(0.025),
        Expanded(
            child: Container(
          width: double.infinity,
          child: Card(
            margin: EdgeInsets.zero,
            elevation: 24.0,
            color: Colors.grey.shade100,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topRight: Radius.circular(24.0),
              topLeft: Radius.circular(24.0),
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.document_scanner,
                  size: 60,
                  color: Colors.grey,
                ),
                Space(0.01),
                TextCustom(
                  'Empty Request',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
                Space(0.01),
                TextCustom('There are no visitors at the moment'),
              ],
            ),
          ),
        ))
      ]),
    );
  }
}

class _UpcomingMettings extends StatelessWidget {
  const _UpcomingMettings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Container(
        height: 80,
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
            16.0,
          )),
          elevation: 4.0,
          child: Row(
            children: [
              Space(0.03, isHorizontal: true),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Space(0.02),
                  TextCustom(
                    'Upcoming meeting',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  Space(0.005),
                  Row(
                    children: [
                      Icon(Icons.calendar_today, size: 11),
                      Space(0.01, isHorizontal: true),
                      TextCustom('20 May 2021 | 04:28 PM'),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Image.asset('assets/icon_time.png'),
              Space(0.03, isHorizontal: true),
            ],
          ),
        ),
      ),
    );
  }
}

class _OrangeContainer extends StatelessWidget {
  const _OrangeContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Utils.orangeOne,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 12.0,
                top: 14.0,
              ),
              child: Column(
                children: [
                  Card(
                    color: Utils.orangeOne,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    elevation: 4.0,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.light_mode,
                          color: Colors.white,
                        )),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Space(0.02, isHorizontal: true),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Space(0.02),
                TextCustom(
                  'AlDohr Prayer',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                Space(0.005),
                RichText(
                  text: TextSpan(
                      text: 'Next Prayer AlAser',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                            text: ' 4 : 28 PM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                            children: [
                              TextSpan(
                                  // Note: With more time this can be improved
                                  text: '         Gaza Strip - July 2,2021 ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  ))
                            ])
                      ]),
                ),
                Space(0.015),
                Row(
                  children: [
                    _ExampleColumn(),
                    _ExampleColumn(),
                    _ExampleColumn(),
                    _ExampleColumn(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _ExampleColumn extends StatelessWidget {
  const _ExampleColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextCustom(
            'Title',
            fontSize: 11,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          Space(0.005),
          TextCustom(
            '4 : 28 PM',
            fontSize: 11,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    Utils.urlImage,
                  ),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(16.0)),
          ),
          Space(0.05, isHorizontal: true),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextCustom(
                'Wesam Shama',
                fontWeight: FontWeight.bold,
                fontSize: 19.0,
              ),
              TextCustom(
                'General Manager',
              )
            ],
          ),
          Spacer(),
          IconCustom(
            icon: Icons.notifications_none_outlined,
            hasNotification: true,
          ),
          Space(0.015, isHorizontal: true),
          IconCustom(icon: Icons.settings_outlined),
        ],
      ),
    );
  }
}

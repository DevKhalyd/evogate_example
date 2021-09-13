import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/mini_widgets.dart';
import 'screens/home_screen.dart';
import '../../core/extensions/build_context_extension.dart';

/// Contains all the widgets visibles in the screen
class HomeContainer extends StatefulWidget {
  HomeContainer({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegionCustom(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Stack(
          children: [HomeScreen(), BottomBar(), _AddButton()],
        ),
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  const _AddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 35,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: ClipPath(
        clipper: PathCustom(),
        child: Container(
          width: context.width,
          height: kToolbarHeight,
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.home,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      )),
                      Expanded(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.calendar_today),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Spacer(),
                      TextCustom(
                        'Invite Guest',
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                      Space(0.01),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.task_sharp,
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.alarm),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PathCustom extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final width = size.width;
    final height = size.height;

    return Path()
      ..lineTo(width * .4, 0)
      ..quadraticBezierTo(width * .5, kToolbarHeight, width * .6, 0)
      ..lineTo(width, 0)
      ..lineTo(width, height)
      ..lineTo(0, height)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

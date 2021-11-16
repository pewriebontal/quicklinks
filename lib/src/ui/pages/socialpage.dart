import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dough/dough.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quicklinks/src/core/launcher.dart';
import 'package:quicklinks/src/ui/widgets/footer.dart';
import 'package:quicklinks/src/utils/info.dart' as constants;
import 'package:quicklinks/src/core/route.dart' as route;
import 'package:quicklinks/src/ui/widgets/navcard.dart';
import 'package:quicklinks/src/ui/widgets/linkcard.dart';

class SocialPage extends StatelessWidget {
  final bool showCopyrightText = constants.kShowCopyrightText;

  const SocialPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const BodySocial(),
      floatingActionButton: PressableDough(
        child: FloatingActionButton(
          onPressed: () {
            launchURL(constants.kSourceCodeUrl);
          },
          backgroundColor: Colors.purple.shade800,
          tooltip: 'Source Code',
          mini: true,
          child: const Icon(
            FontAwesomeIcons.github,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: const Footer(),
      backgroundColor: Colors.white,
    );
  }
}

class BodySocial extends StatelessWidget {
  final bool isShowSubtitle = constants.kShowSubtitleText;

  const BodySocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(32.0, 0, 32.0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25.0,
              ),
              const PressableDough(
                child: CircleAvatar(
                  //TODO:check if web 50, klw android kecik skit
                  radius: 50.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              const Text(
                '@${constants.kAlias}',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox.shrink(),
              isShowSubtitle
                  ? const Text(constants.kSubtitle)
                  : const SizedBox.shrink(),
              const SizedBox(
                height: 25.0,
              ),
//              LinkCard(
//                  icon: FontAwesomeIcons.youtube,
//                  title: 'Make Her Dreams Come True',
//                  url: constants.kAngelYoutubeUrl,
//                  color: hexToColor('#F80000')),
              LinkCard(
                  icon: FontAwesomeIcons.twitter,
                  title: 'Twitter',
                  url: constants.kTwitterUrl,
                  color: Colors.blue.shade600),
              LinkCard(
                  icon: FontAwesomeIcons.instagram,
                  title: 'Instagram',
                  url: constants.kInstagramUrl,
                  color: Colors.red.shade400),
              LinkCard(
                  icon: FontAwesomeIcons.tumblr,
                  title: 'Tumblr',
                  url: constants.kTumblrUrl,
                  color: Colors.cyan.shade900),
              NavCard(
                  icon: FontAwesomeIcons.backward,
                  title: 'Go Back',
                  des: route.homepage,
                  color: Colors.grey.shade800),
              const SizedBox(
                height: 60.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

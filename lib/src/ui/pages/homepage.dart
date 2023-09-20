import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:dough/dough.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quicklinks/src/core/launcher.dart';
import 'package:quicklinks/src/ui/widgets/footer.dart';
import 'package:quicklinks/src/utils/info.dart' as constants;
import 'package:quicklinks/src/ui/widgets/navcard.dart';
import 'package:quicklinks/src/core/route.dart' as route;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const BodyHome(),
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
      backgroundColor: Colors.orange.shade50,
    );
  }
}

class BodyHome extends StatelessWidget {
  final bool isShowSubtitle = constants.kShowSubtitleText;

  const BodyHome({Key? key}) : super(key: key);

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
              NavCard(
                  icon: FluentIcons.globe_32_filled,
                  title: 'bontal.net',
                  iconColor: Colors.black,
                  des: route.webpage,
                  color: Colors.orange.shade200),
              NavCard(
                  icon: FluentIcons.news_28_filled,
                  title: 'Articles',
                  iconColor: Colors.black,
                  des: route.articlepage,
                  color: Colors.orange.shade200),
              NavCard(
                  icon: FluentIcons.people_28_filled,
                  title: 'Social Media',
                  iconColor: Colors.black,
                  des: route.socialpage,
                  color: Colors.orange.shade200),
              NavCard(
                  icon: FluentIcons.code_24_filled,
                  title: 'Dev Page',
                  iconColor: Colors.black,
                  des: route.devpage,
                  color: Colors.orange.shade200),
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

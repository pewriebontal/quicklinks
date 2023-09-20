import 'package:flutter/material.dart';
import 'package:dough/dough.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quicklinks/src/core/launcher.dart';
import 'package:quicklinks/src/ui/widgets/footer.dart';
import 'package:quicklinks/src/ui/widgets/navcard.dart';
import 'package:quicklinks/src/utils/info.dart' as constants;
import 'package:quicklinks/src/core/route.dart' as route;
import 'package:quicklinks/src/ui/widgets/linkcard.dart';

class WebPage extends StatelessWidget {
  final bool showCopyrightText = constants.kShowCopyrightText;

  const WebPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const BodyWeb(),
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

class BodyWeb extends StatelessWidget {
  final bool isShowSubtitle = constants.kShowSubtitleText;

  const BodyWeb({Key? key}) : super(key: key);

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
              LinkCard(
                  icon: FontAwesomeIcons.house,
                  title: 'Home Page',
                  url: constants.kHomePageUrl,
                  color: Colors.orange.shade200),
              LinkCard(
                  icon: FontAwesomeIcons.blog,
                  title: 'Blog',
                  url: constants.kBlogUrl,
                  color: Colors.orange.shade200),
              LinkCard(
                  icon: FontAwesomeIcons.portrait,
                  title: 'Portfolio',
                  url: constants.kPortfolioUrl,
                  color: Colors.orange.shade200),
              LinkCard(
                  icon: FontAwesomeIcons
                      .save, // if there is better icon for this let me know.
                  title: 'Softwares',
                  url:
                      "${constants.kHomePageUrl}/404", // Go to 404 I still dont have.
                  color: Colors.orange.shade200),
              NavCard(
                  icon: FontAwesomeIcons.arrowLeft,
                  title: 'Go Back',
                  iconColor: Colors.black,
                  des: route.homepage,
                  color: Colors.orange.shade100),
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

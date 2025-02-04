import 'package:fludget/constants/colors.dart';
import 'package:flutter/material.dart';

class AboutDialogImp extends StatelessWidget {
  const AboutDialogImp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backroundColor,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAboutDialog(
              context: context,
              applicationVersion: "1.0.0",
              applicationLegalese: "ACM Vit",
              applicationIcon: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset("assets/images/acm_logo.png"),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 20,
                  ),
                  child:
                      Text("This is implemenation for about dialog in flutter"),
                )
              ],
            );
          },
          child: Text(
            "Show about dialog",
          ),
        ),
      ),
    );
  }
}

class AboutDialogDesc extends StatelessWidget {
  const AboutDialogDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backroundColor,
      body: SingleChildScrollView(
        child: DefaultTextStyle(
          style: const TextStyle(color: Colors.white, height: 1.5),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "An about box. This is a dialog box with the application's icon, name, version number, and copyright, plus a button to show licenses for software used by the application.",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Class Definition / Syntax: ",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  """void showAboutDialog({
        required BuildContext context,
        String? applicationName,
        String? applicationVersion,
        Widget? applicationIcon,
        String? applicationLegalese,
        List<Widget>? children,
        bool useRootNavigator = true,
        RouteSettings? routeSettings,
      }) {
        assert(context != null);
        assert(useRootNavigator != null);
        showDialog<void>(
          context: context,
          useRootNavigator: useRootNavigator,
          builder: (BuildContext context) {
        return AboutDialog(
          applicationName: applicationName,
          applicationVersion: applicationVersion,
          applicationIcon: applicationIcon,
          applicationLegalese: applicationLegalese,
          children: children,
        );
          },
          routeSettings: routeSettings,
        );
      }""",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

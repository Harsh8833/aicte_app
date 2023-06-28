import 'package:aicte_app/MVVM/view%20model/navigation%20viewmodel/navigation_view_model.dart';
import 'package:aicte_app/MVVM/view/Navigation/widgets/nav_subtiles.dart';
import 'package:aicte_app/constants/assets.dart';
import 'package:aicte_app/constants/dimens.dart';
import 'package:aicte_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationSubMenu extends StatelessWidget {
  static const route = '/navsubmenuscreen';
  const NavigationSubMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Dimens.horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width,
              ),
              Image.asset(
                Assets.appLogo2,
                height: 100,
              ),
              SizedBox(height: 20),
              Container(
                color: Color(0xFFF75700),
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Center(
                  child: Text(
                    context
                        .read<NavigationViewModel>()
                        .selectedMenu!
                        .title
                        .toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: context
                    .read<NavigationViewModel>()
                    .selectedMenu!
                    .subMenu
                    .length,
                itemBuilder: (context, index) {
                  return NavSubTile(
                    index: index,
                  );
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 49,
                    width: 49,
                    child: IconButton.filled(
                      onPressed: () {
                        final url =
                            Uri.parse("https://www.facebook.com/officialaicte");
                        launchUrl(
                          url,
                          mode: LaunchMode.platformDefault,
                        );
                      },
                      icon: Image.asset(Assets.facebook),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Theme.of(context).colorScheme.onBackground,
                        elevation: 5,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 49,
                    width: 49,
                    child: IconButton.filled(
                      onPressed: () {
                        final url =
                            Uri.parse("https://twitter.com/AICTE_INDIA");
                        launchUrl(
                          url,
                          mode: LaunchMode.platformDefault,
                        );
                      },
                      icon: Image.asset(Assets.twitter),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Theme.of(context).colorScheme.onBackground,
                        elevation: 5,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                "Copyright © 2017. AICTE\nNelson Mandela Marg, Vasant Kunj\nNew Delhi -110070",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF959595),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

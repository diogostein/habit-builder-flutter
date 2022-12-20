import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfileBanner extends StatelessWidget {
  const ProfileBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return HBFlatCard(
      margin: const EdgeInsets.all(HBSpacings.regular),
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          const Positioned(
            top: -32,
            right: -32,
            child: HBImage(
              HBIllustrations.manConfident,
              width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(HBSpacings.regular),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HBText(
                  'Check Your Profile',
                  style: HBTextStyles.title,
                ),
                HBText(
                  'justinegoslin@gmail.com',
                  style: HBTextStyles.body.copyWith(
                    fontSize: HBFontSizes.xSmall,
                    color: Colors.grey,
                  ),
                ),
                const HBGapHeight(),
                SizedBox(
                  width: 120,
                  height: 40,
                  child: HBButton(
                    'View',
                    onPressed: () => Modular.to.pushNamed('/profile'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBCommunityPostCard extends StatelessWidget {
  final String? authorImagePath;
  final String authorTitle;
  final String authorSubtitle;
  final String message;
  final int likeCount;
  final int messageCount;

  const HBCommunityPostCard({
    super.key,
    this.authorImagePath,
    required this.authorTitle,
    required this.authorSubtitle,
    required this.message,
    this.likeCount = 0,
    this.messageCount = 0,
  });

  String _formattedCounter(int count) {
    return count > 1000 ? '${(count.toDouble() / 1000)}K' : count.toString();
  }

  @override
  Widget build(BuildContext context) {
    return HBFlatCard(
      margin: const EdgeInsets.symmetric(
        vertical: HBSpacings.xxSmall,
        horizontal: HBSpacings.regular,
      ),
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          ListTile(
            leading: HBCircleAvatar.asset(
              authorImagePath ?? '',
            ),
            title: HBText(
              authorTitle,
              style: HBTextStyles.body.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: HBFontSizes.small,
              ),
            ),
            subtitle: HBText.caption(authorSubtitle, color: Colors.grey),
            trailing: HBCircleIconButton(
              icon: Icons.reply,
              onPressed: () {},
            ),
            minVerticalPadding: 20,
          ),
          Divider(
            height: 0,
            color: Colors.black.withOpacity(.05),
          ),
          Padding(
            padding: const EdgeInsets.all(HBSpacings.regular),
            child: HBText.small(message),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: HBSpacings.regular,
              bottom: HBSpacings.regular,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.favorite,
                  color: HBMaterialColors.primarySwatch,
                  size: 16,
                ),
                const HBGapWidth(gap: 4),
                HBText(
                  _formattedCounter(likeCount),
                  style: HBTextStyles.body.copyWith(
                    fontSize: HBFontSizes.xxSmall,
                  ),
                ),
                const HBGapWidth(),
                const Icon(
                  Icons.chat_bubble_rounded,
                  color: HBMaterialColors.primarySwatch,
                  size: 16,
                ),
                const HBGapWidth(gap: 4),
                HBText(
                  _formattedCounter(messageCount),
                  style: HBTextStyles.body.copyWith(
                    fontSize: HBFontSizes.xxSmall,
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

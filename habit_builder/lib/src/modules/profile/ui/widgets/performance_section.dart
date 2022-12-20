import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'profile_counter.dart';

class PerformanceSection extends StatelessWidget {
  const PerformanceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HBFlatCard(
      margin: const EdgeInsets.symmetric(
        horizontal: HBSpacings.regular,
        vertical: HBSpacings.xxSmall,
      ),
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          ListTile(
            leading: HBCircleAvatar.asset(
              'assets/images/justine-gosling.jpg',
            ),
            title: HBText(
              'Justine Gosling',
              style: HBTextStyles.body.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: HBText.muted('Name'),
          ),
          const HBDivider(),
          Row(
            children: [
              Expanded(
                child: ProfileCounter(
                  labelText: 'Total Work Hours',
                  value: 18,
                  icon: HBIcon.circular(Icons.access_time_filled),
                ),
              ),
              Expanded(
                child: ProfileCounter(
                  labelText: 'Task Completed',
                  value: 12,
                  icon: HBIcon.circular(
                    Icons.flag,
                    color: Colors.blueAccent,
                    backgroundColor: Colors.blueAccent.withOpacity(.1),
                  ),
                ),
              ),
            ],
          ),
          const HBDivider(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(HBSpacings.regular),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  HBCircularProgressBar(
                    percentValue: .7,
                    maxValue: 10,
                    captionText: '06/14',
                  ),
                  HBGapWidth.xSmall(),
                  HBCircularProgressBar(
                    percentValue: 0,
                    maxValue: 10,
                  ),
                  HBGapWidth.xSmall(),
                  HBCircularProgressBar(
                    percentValue: .6,
                    maxValue: 10,
                    captionText: '06/15',
                  ),
                  HBGapWidth.xSmall(),
                  HBCircularProgressBar(
                    percentValue: .5,
                    maxValue: 10,
                  ),
                  HBGapWidth.xSmall(),
                  HBCircularProgressBar(
                    percentValue: .4,
                    maxValue: 10,
                    captionText: '06/16',
                  ),
                  HBGapWidth.xSmall(),
                  HBCircularProgressBar(
                    percentValue: .9,
                    maxValue: 10,
                  ),
                  HBGapWidth.xSmall(),
                  HBCircularProgressBar(
                    percentValue: 10,
                    maxValue: 10,
                    captionText: 'Today',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

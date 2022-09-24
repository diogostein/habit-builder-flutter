import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:habit_builder/src/modules/onboarding/ui/widgets/pages/create_habit_page_view_item.dart';
import 'package:habit_builder/src/modules/onboarding/ui/widgets/pages/join_community_page_view_item.dart';
import 'package:habit_builder/src/modules/onboarding/ui/widgets/pages/keep_track_page_view_item.dart';
import 'package:habit_builder/src/modules/onboarding/ui/widgets/pages/welcome_page_view_item.dart';

import 'widgets/onboarding_navigation.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with TickerProviderStateMixin {
  PageController? _pageController;
  TabController? _tabController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController?.dispose();
    _tabController?.dispose();
  }

  _onPageChanged(index) {
    _tabController?.animateTo(
      index,
      duration: HBAnimDuration.normal,
    );
    setState(() => _currentPageIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: _onPageChanged,
                children: const [
                  WelcomePageViewItem(),
                  CreateHabitPageViewItem(),
                  KeepTrackPageViewItem(),
                  JoinCommunityPageViewItem(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: HBSpacings.regular,
              ),
              child: AnimatedCrossFade(
                crossFadeState: _currentPageIndex < 3
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: HBAnimDuration.fast,
                firstChild: OnboardingNavigation(
                  tabController: _tabController,
                  onSkipPressed: () => Modular.to.navigate('/authentication'),
                  onNextPressed: () => _pageController?.nextPage(
                    duration: HBAnimDuration.normal,
                    curve: Curves.easeInOut,
                  ),
                ),
                secondChild: SizedBox(
                  width: double.infinity,
                  child: HBButton(
                    'Get Started',
                    onPressed: () => Modular.to.navigate('/authentication'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: HBSpacings.xLarge),
          ],
        ),
      ),
    );
  }
}

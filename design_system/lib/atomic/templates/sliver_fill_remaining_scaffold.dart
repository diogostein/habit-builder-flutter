import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBSliverFillRemainingScaffold extends StatelessWidget {
  final Widget? headerBar;
  final Widget body;
  final bool extendBodyBehindAppBar;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final bool extendBody;
  final bool hasBackground;

  const HBSliverFillRemainingScaffold({
    super.key,
    this.headerBar,
    required this.body,
    this.extendBodyBehindAppBar = false,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.extendBody = false,
    this.hasBackground = false,
  });

  Widget get _buildBody {
    if (hasBackground) {
      return Container(
        padding: EdgeInsets.only(bottom: bottomNavigationBar != null ? 120 : 0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: HBAssetImage(HBIllustrations.bgMountains),
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: body,
      );
    }

    return body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation ??
          FloatingActionButtonLocation.centerDocked,
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: SafeArea(
              bottom: !extendBody,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  headerBar ?? const SizedBox(),
                  Expanded(child: _buildBody),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

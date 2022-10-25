import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBSliverScaffold extends StatelessWidget {
  final Widget? headerBar;
  final bool extendBodyBehindAppBar;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final bool hasBackground;
  final List<Widget> slivers;

  const HBSliverScaffold({
    super.key,
    this.headerBar,
    this.extendBodyBehindAppBar = false,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.hasBackground = false,
    required this.slivers,
  });

  bool get _extendBody => bottomNavigationBar != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: _extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation ??
          FloatingActionButtonLocation.centerDocked,
      body: Container(
        decoration: hasBackground
            ? const BoxDecoration(
                image: DecorationImage(
                  image: HBAssetImage(HBIllustrations.bgMountains),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              )
            : null,
        child: CustomScrollView(
          slivers: [
            SliverSafeArea(
              bottom: !_extendBody,
              sliver: SliverToBoxAdapter(child: headerBar),
            ),
            ...slivers,
            SliverToBoxAdapter(
              child: SizedBox(height: _extendBody ? 120 : 0),
            ),
          ],
        ),
      ),
    );
  }
}

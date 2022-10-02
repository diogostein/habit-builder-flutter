import 'package:flutter/material.dart';

class HBScaffold extends StatelessWidget {
  final Widget? headerBar;
  final Widget body;
  final bool extendBodyBehindAppBar;

  const HBScaffold({
    super.key,
    this.headerBar,
    required this.body,
    this.extendBodyBehindAppBar = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  headerBar ?? const SizedBox(),
                  Expanded(child: body),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

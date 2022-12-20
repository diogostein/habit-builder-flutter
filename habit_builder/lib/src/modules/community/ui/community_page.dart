import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:habit_builder/src/core/mixin/menu_actions.dart';
import 'package:habit_builder/src/modules/community/data/community_repository.dart';

import '../data/models/post.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> with MenuActions {
  final _repository = Modular.get<CommunityRepository>();

  List<Post> _posts = [];

  @override
  void initState() {
    super.initState();
    _posts = _repository.getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return HBSliverScaffold(
      hasBackground: true,
      headerBar: HBHeaderBar(
        leading: HBCircleIconButton.drawer(onPressed: () {}),
        titleText: 'Community',
        trailing: InkWell(
          onTap: () => Modular.to.pushNamed('/profile'),
          child: HBCircleAvatar.asset(
            'assets/images/justine-gosling.jpg',
            placeholderInitials: 'JG',
          ),
        ),
      ),
      floatingActionButton: HBFloatingActionButton(
        onPressed: () {},
        child: const HBImage(HBSvgIcons.add),
      ),
      bottomNavigationBar: HBBottomAppBar(
        onMenuIconPressed: onMenuIconPressed,
        activeMenuIcon: HBMenuIconType.community,
      ),
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: _posts.length,
            (context, index) {
              final post = _posts[index];
              return HBCommunityPostCard(
                authorImagePath: post.author.image,
                authorTitle: post.author.name,
                authorSubtitle: post.date,
                message: post.message,
                likeCount: post.likeCount,
                messageCount: post.messageCount,
              );
            },
          ),
        ),
      ],
    );
  }
}

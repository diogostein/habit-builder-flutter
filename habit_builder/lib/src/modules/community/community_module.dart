import 'package:flutter_modular/flutter_modular.dart';

import 'data/community_repository.dart';
import 'ui/community_page.dart';

class CommunityModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => CommunityRepository()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const CommunityPage()),
      ];
}

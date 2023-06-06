

import 'package:journal/core/utils/images_utils.dart';

enum JournalImages {
  authentication(route: 'undraw_authentication.svg');

  final String route;
  final bool inAsset;
  const JournalImages({
    required this.route,
    // ignore: unused_element
    this.inAsset = true,
  });
}

extension Route on JournalImages {
  String get routeAsset {
    return routeToAsset(
      route,
      inAsset: inAsset,
    );
  }
}

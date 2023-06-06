import 'package:journal/core/utils/images_utils.dart';

enum JournalSVGS {
  bookShelves(route: 'bookshelves.svg'),
  readingBook(route: 'reading_book.svg');

  final String route;
  final bool inAsset;
  const JournalSVGS({
    required this.route,
    // ignore: unused_element
    this.inAsset = true,
  });
}

extension Route on JournalSVGS {
  String get routeAsset {
    return routeToAsset(
      route,
      inAsset: inAsset,
      type: ImgType.svg,
    );
  }
}

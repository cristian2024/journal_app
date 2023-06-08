import 'package:flutter_svg/svg.dart';
import 'package:journal/core/utils/images_utils.dart';

enum JournalSVGS {
  bookShelves(route: 'bookshelves.svg'),
  readingBook(route: 'reading_book.svg'),
  readingSeat(route: 'reading_seat.svg'),
  readingLight(route: 'reading_with_light.svg'),
  googleIcon(route: 'google_icon.svg');

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

class SvgImg extends SvgPicture {
  SvgImg({
    super.key,
    super.width,
    super.height,
    required this.svg,
  }) : super.asset(svg.routeAsset);

  final JournalSVGS svg;
}

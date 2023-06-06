enum ImgType {
  svg('svg'),
  img('imgs');

  final String folder;
  const ImgType(this.folder);
}

///si la imagen esta en assets(definido por [inAsset])
///entonces se le agrega la ruta a [route] para encontrarlo
String routeToAsset(
  String route, {
  bool inAsset = true,
  ImgType type = ImgType.img,
}) {
  if (inAsset) {
    return 'assets/${type.folder}/$route';
  }
  return route;
}

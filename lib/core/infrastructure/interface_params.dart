abstract class IParam {
  String get link;
  dynamic get json;
}

class PathParam extends IParam {
  PathParam.path(this.path) : super();

  final String path;

  @override
  Map<String, dynamic> get json => const {};

  @override
  String get link => path;
}

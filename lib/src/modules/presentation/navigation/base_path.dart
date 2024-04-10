import 'package:equatable/equatable.dart';

class BasePath with EquatableMixin {
  final String path;

  final BasePath? rootPath;

  BasePath(this.path, [this.rootPath]);

  String get completePath {
    final base = rootPath?.completePath ?? '';
    return '$base${!base.endsWith('/') ? path : path.replaceFirst('/', '')}';
  }

  String get relativePath => path.replaceFirst('/', '');

  @override
  String toString() => completePath;

  @override
  List<Object?> get props => throw UnimplementedError();
}

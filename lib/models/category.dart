import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int id;
  final String image;
  final String name;
  final List<String> podCategory;
  Category({
    required this.id,
    required this.image,
    required this.name,
    required this.podCategory,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id, image, name, podCategory];
}

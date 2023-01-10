import 'package:equatable/equatable.dart';

class ProductMagnum extends Equatable {
  final int id;
  final String image;
  final String name;
  final String cost;
  final String category;
  // final String description;
  String? description;
  String? type;
  String? oldCost;
  ProductMagnum({
    required this.id,
    required this.image,
    required this.name,
    required this.cost,
    required this.category,
    // required this.description,
    this.description,
    this.type,
    this.oldCost,
  }) {
    type = type ?? 'шт';
    oldCost = oldCost ?? '0';
    ///////////////
    description = description ?? '';
  }

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, image, name, cost, description, type, oldCost];
}

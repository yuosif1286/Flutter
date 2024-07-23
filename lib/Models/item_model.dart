class ItemModel {
  final String image;
  final String gbName;
  final String enName;
  final String? sound;

  const ItemModel(
      {required this.image,
      required this.gbName,
      required this.enName,
      this.sound});
}

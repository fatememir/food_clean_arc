import 'package:equatable/equatable.dart';

class RecipesInformation extends Equatable {
  final int id;

  final int readyInMinutes;

  final String title;

  final String image;

  const RecipesInformation(
      {required this.id,
      required this.title,
      required this.image,
      required this.readyInMinutes})
      : super();

  //we used props for handling State changes.
  //props declared when we want State to be compared against the values which declared inside props List
  //it will be able to compare different instances of RecipesInformation

  @override
  List<Object?> get props => [id, title, image, readyInMinutes];
}

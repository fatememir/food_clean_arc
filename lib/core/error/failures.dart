import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  @override
  List<Object> get props => [];

}

//General Failures
class ServerFailure extends Failure {}

//the errors that happen in cached data
class CacheFailure extends Failure {}
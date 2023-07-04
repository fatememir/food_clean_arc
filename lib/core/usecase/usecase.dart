import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

//for situation we do not need any params
class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

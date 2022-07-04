import 'package:equatable/equatable.dart';

/// Base class for our controllers
class Controller extends Equatable {
  /// Controller for base class
  const Controller();

  @override
  List<Object> get props => [];

  ///
  /// Checks if the given String [s] is null or empty
  ///
  bool isStringEmpty(String? s) => s == null || s.isEmpty;
}

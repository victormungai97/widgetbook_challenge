/// This file exposes the controllers in the folder
/// These controllers are where actual business logic eg server calls will run

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:widgetbook_challenge/api/widgetbook_api.dart';

part 'greetings.dart';

/// Base class for our controllers
abstract class Controller extends Equatable {
  /// Controller for base class
  const Controller();

  @override
  List<Object> get props => [];

  ///
  /// Checks if the given String [s] is null or empty
  ///
  bool isStringEmpty(String? s) => s == null || s.isEmpty;
}

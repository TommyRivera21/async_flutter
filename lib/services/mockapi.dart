import 'dart:math';

class MockApi {
  /// Singleton pattern used here.
  static final MockApi _mockapi = MockApi._internal();

  factory MockApi() {
    return _mockapi;
  }

  MockApi._internal();

  ///
  /// Private method to get an integer between 1 and 100 after some delay.
  ///
  Future<int> _getInteger(int delayInSeconds) {
    return Future.delayed(
      Duration(seconds: delayInSeconds),
      () => 1 + Random().nextInt(100),
    );
  }

  ///
  /// Public API starts here :)
  ///

  /// Gets a random integer between 1 and 100 very quickly, because it uses a Ferrari car :)
  Future<int> getFerrariInteger() {
    return _getInteger(1);
  }

  /// Gets a random integer between 1 and 100 not that quickly, because it uses a modest Hyundai car.
  Future<int> getHyundaiInteger() {
    return _getInteger(3);
  }

  /// Gets a random integer between 1 and 100 really slowly, because it uses a Fisher Price toy car.
  Future<int> getFisherPriceInteger() {
    return _getInteger(10);
  }
}

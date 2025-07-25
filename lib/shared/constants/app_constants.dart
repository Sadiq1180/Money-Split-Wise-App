class AppConstants {
  static const String baseUrl = "https://dummy.restapiexample.com";
  static const String otherBaseUrl = "https://jsonplaceholder1.typicode.com";
  static const Environment environment = Environment.development;
  static const ResponseMode responseMode = ResponseMode.real;
}

enum Environment { development, staging, production }

enum ResponseMode { mock, real }

/// create for the bottom sheet in adjust split
enum SplitCategory { equally, unequally, percentage, shares, adjustment }

String localDataStorageEnabled = "localDataStorageEnabled";

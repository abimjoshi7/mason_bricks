part of configuration;

enum Flavor { development, staging, release }

const BASE_URL = 'https://localhost';
const CONNECT_TIMEOUT = Duration(seconds: 20);
const RECEIVE_TIMEOUT = Duration(seconds: 20);

class BuildConfig {
  const BuildConfig._({
    required this.baseUrl,
    required this.socketUrl,
    required this.connectTimeout,
    required this.receiveTimeout,
    required this.flavor,
  });

  const BuildConfig._development()
      : this._(
          baseUrl: BASE_URL,
          socketUrl: '',
          connectTimeout: CONNECT_TIMEOUT,
          receiveTimeout: RECEIVE_TIMEOUT,
          flavor: Flavor.development,
        );

  const BuildConfig._staging()
      : this._(
          baseUrl: BASE_URL,
          socketUrl: '',
          connectTimeout: CONNECT_TIMEOUT,
          receiveTimeout: RECEIVE_TIMEOUT,
          flavor: Flavor.staging,
        );

  const BuildConfig._release()
      : this._(
          baseUrl: BASE_URL,
          socketUrl: '',
          connectTimeout: CONNECT_TIMEOUT,
          receiveTimeout: RECEIVE_TIMEOUT,
          flavor: Flavor.release,
        );

  static late BuildConfig _instance;

  static void init({String? flavor}) {
    debugPrint(
        '╔══════════════════════════════════════════════════════════════╗');
    debugPrint(
        '                    Build Flavor: $flavor                       ');
    debugPrint(
        '╚══════════════════════════════════════════════════════════════╝');
    switch (flavor) {
      case 'development':
        _instance = const BuildConfig._development();
        break;
      case 'staging':
        _instance = const BuildConfig._staging();
        break;
      default:
        _instance = const BuildConfig._release();
        break;
    }
    _initLog();
  }

  static BuildConfig get() {
    return _instance;
  }

  static Future<void> _initLog() async {
    await Log.init();
    switch (_instance.flavor) {
      case Flavor.development:
      case Flavor.staging:
        Log.setLevel(Level.ALL);
        break;
      case Flavor.release:
        Log.setLevel(Level.OFF);
        break;
    }
  }

  final String baseUrl;
  final String socketUrl;
  final Duration connectTimeout;
  final Duration receiveTimeout;
  final Flavor flavor;

  static String get flavorName => _instance.flavor.name;

  static bool get isProduction => _instance.flavor == Flavor.release;

  static bool get isStaging => _instance.flavor == Flavor.staging;

  static bool get isDevelopment => _instance.flavor == Flavor.development;
}

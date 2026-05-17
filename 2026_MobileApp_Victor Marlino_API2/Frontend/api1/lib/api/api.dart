import 'package:endpoint_core/endpoint_core.dart';
import '../models/destinasi.dart';

class DestinasiApi extends Endpoint {
  DestinasiApi({
    required super.method,
    required super.url,
    super.validStatusCode,
    super.defaultAuthOptions,
    super.cacheOptions,
  });

  @override
  String get domainUrl => "http://10.10.161.245:8000/api";

  static const String baseUrl = "http://10.10.161.245:8000";

  static Map<String, ApiEndpoint> endpoints() => {
    "getDestinasi": DestinasiApi(
      method: "GET",
      url: "/destinasi/",
      validStatusCode: 200,
    ),
  };

  static Future<List<Destinasi>> getDestinasi() async {
    final api = endpoints();
    return await api["getDestinasi"]!.call<List<Destinasi>>(
          map: (data) =>
              (data as List).map((json) => Destinasi.fromJson(json)).toList(),
        ) ??
        [];
  }
}

import 'package:endpoint_core/endpoint_core.dart';
import '../models/student_model.dart';

class StudentApi extends Endpoint {
  StudentApi({
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
    "getMahasiswa": StudentApi(
      method: "GET",
      url: "/mahasiswa/",
      validStatusCode: 200,
    ),
  };

  static Future<List<Student>> getStudents() async {
    final api = endpoints();
    return await api["getMahasiswa"]!.call<List<Student>>(
          map: (data) =>
              (data as List).map((json) => Student.fromJson(json)).toList(),
        ) ??
        [];
  }
}

import 'package:flutter/material.dart';

import '../models/student_model.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({super.key, required this.student, required this.baseUrl});

  final Student student;
  final String baseUrl;

  String? get _imageUrl {
    if (student.image.isEmpty) {
      return null;
    }
    if (student.image.startsWith('http')) {
      return student.image;
    }
    return '$baseUrl${student.image.startsWith('/') ? '' : '/'}${student.image}';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),

      child: ListTile(
        leading: CircleAvatar(
          radius: 24,
          backgroundImage: _imageUrl != null ? NetworkImage(_imageUrl!) : null,
          child: _imageUrl == null ? const Icon(Icons.person) : null,
        ),
        title: Text(student.name.isEmpty ? 'No name' : student.name),
        subtitle: Text(student.prodi.isEmpty ? 'No prodi' : student.prodi),
      ),
    );
  }
}

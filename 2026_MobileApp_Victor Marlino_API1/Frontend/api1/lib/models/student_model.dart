class Student {
  final String name;
  final String prodi;
  final String image;

  Student({required this.name, required this.prodi, required this.image});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      name: (json['name'] ?? json['nama'] ?? '').toString(),
      prodi: (json['prodi'] ?? json['program_studi'] ?? '').toString(),
      image: (json['image'] ?? json['foto'] ?? json['photo'] ?? '').toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'prodi': prodi, 'image': image};
  }
}

class Destinasi {
  String nama;
  int bintang;
  String deskripsi;
  String gambar;

  Destinasi({
    required this.nama,
    required this.bintang,
    required this.deskripsi,
    required this.gambar,
  });

  factory Destinasi.fromJson(Map<String, dynamic> json) {
    return Destinasi(
      nama: json['nama_destinasi'],
      bintang: json['bintang_destinasi'],
      deskripsi: json['deskripsi_destinasi'],
      gambar: json['gambar_destinasi'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nama_destinasi': nama,
      'bintang_destinasi': bintang,
      'deskripsi_destinasi': deskripsi,
      'gambar_destinasi': gambar,
    };
  }
}

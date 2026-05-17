from django.db import models

class Destinasi(models.Model):
    nama_destinasi = models.CharField(max_length=100)
    bintang_destinasi = models.IntegerField()
    deskripsi_destinasi = models.TextField()
    gambar_destinasi = models.ImageField(upload_to='destinasi_images/')

    def __str__(self):
        return self.nama_destinasi
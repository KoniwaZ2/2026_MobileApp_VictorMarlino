from django.db import models

class Mahasiswa(models.Model):
    nama = models.CharField(max_length=100)
    prodi = models.CharField(max_length=100)
    image = models.ImageField(upload_to='mahasiswa_images/')

    def __str__(self):
        return self.nama
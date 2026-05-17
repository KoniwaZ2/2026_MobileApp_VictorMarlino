from django.shortcuts import render
from rest_framework import generics
from .models import Mahasiswa
from .serializers import MahasiswaSerializer

class MahasiswaList(generics.ListCreateAPIView):
    queryset = Mahasiswa.objects.all()
    serializer_class = MahasiswaSerializer

class MahasiswaDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Mahasiswa.objects.all()
    serializer_class = MahasiswaSerializer
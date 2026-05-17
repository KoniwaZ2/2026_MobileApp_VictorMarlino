from django.shortcuts import render
from rest_framework import generics
from destinasi.serializers import DestinasiSerializer
from .models import Destinasi

class DestinasiList(generics.ListCreateAPIView):
    queryset = Destinasi.objects.all()
    serializer_class = DestinasiSerializer
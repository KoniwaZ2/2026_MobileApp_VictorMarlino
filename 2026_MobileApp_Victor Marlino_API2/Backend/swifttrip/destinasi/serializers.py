from rest_framework import serializers
from .models import Destinasi

class DestinasiSerializer(serializers.ModelSerializer):
    gambar_destinasi = serializers.ImageField(use_url=True)
    
    class Meta:
        model = Destinasi
        fields = '__all__'
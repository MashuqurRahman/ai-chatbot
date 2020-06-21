from rest_framework import serializers
from predictor_app.models import Chat

class ChatSerializer(serializers.ModelSerializer):
    class Meta:
        model=Chat
        fields = ['office_id','officer_id','designation_id','question','answer']



        
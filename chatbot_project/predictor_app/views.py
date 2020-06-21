from django.shortcuts import render
from .apps import PredictorAppConfig
from .models import Chat,Intent
from django.http import JsonResponse, HttpResponse
import json
import numpy as np
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from predictor_app.serializers import ChatSerializer
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.renderers import JSONRenderer

# Create your views here.
@csrf_exempt
@api_view(['GET','POST'])
def BotView(request):
   if request.method=='POST':
      
            
            office_id = request.POST['office_id']
            officer_id=request.POST['officer_id']
            designation_id=request.POST['designation_id']
            question=request.POST['question']           
            data_vec = PredictorAppConfig.vectorizer.transform([question])
            prediction = PredictorAppConfig.model.predict(data_vec)
            intent = prediction
            answer=Intent.objects.filter(intent=intent[0]).values('answer')
            Chat.objects.create( officer_id =officer_id, office_id = office_id,designation_id=designation_id,question=question,answer=answer[0]['answer'])
            final_data={
               'question': question,
               'answer' : answer[0]['answer'],
               'office_id':office_id,
               'officer_id':officer_id,
               'designation':designation_id,

            }
            # final_data=JSONRenderer().render(final_data)
            final_data=json.dumps(final_data)
      
            return JsonResponse(final_data,safe=False)

@csrf_exempt
@api_view(['GET','POST'])
def FullresponseView(request):
   if request.method=='POST':
      
            
            office_id = request.POST['office_id']
            officer_id=request.POST['officer_id']
            designation_id=request.POST['designation_id']
            question=request.POST['question']           
            data_vec = PredictorAppConfig.vectorizer.transform([question])
            prediction = PredictorAppConfig.model.predict(data_vec)
            intent = prediction
            answer=Intent.objects.filter(intent=intent[0]).values('answer')
            Chat.objects.create( officer_id =officer_id, office_id = office_id,designation_id=designation_id,question=question,answer=answer[0]['answer'])
            final_data=Chat.objects.filter(officer_id=officer_id).filter(office_id=office_id)
            serializer=ChatSerializer(final_data,many=True)
            
            return JsonResponse(serializer.data, safe=False)
           
def HomeView(request):
  return render(request,'predictor_app/home.html') 












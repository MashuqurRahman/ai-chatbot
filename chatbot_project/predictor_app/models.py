from django.db import models


# Create your models here.
class Chat(models.Model):
  
    office_id=models.CharField(max_length=120)
    officer_id=models.CharField(max_length=120)
    designation_id=models.CharField(max_length=120)
    question=models.TextField()
    answer=models.TextField()
    created=models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.officer_id

    class Meta:
        ordering =('created',)

class Intent(models.Model):
  
    intent=models.CharField(max_length=120,unique=True)
    answer=models.TextField()
    
    def __str__(self):
        return self.intent

class Trainig_set(models.Model):
  
    question=models.CharField(max_length=120)
    intent=models.CharField(max_length=120)

    




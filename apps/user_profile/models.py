from django.db import models
from django.conf import settings
User = settings.AUTH_USER_MODEL

class UserProfile(models.Model):
  user = models.OneToOneField(User, on_delete=models.CASCADE)
  address = models.CharField(max_length=255, default='')
  city = models.CharField(max_length=255, default='')
  zipcode = models.CharField(max_length=255, default='')
  phone = models.CharField(max_length=255, default='')
  
  def __str__(self):
    return self.user.email



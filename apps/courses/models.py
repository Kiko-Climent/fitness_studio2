from django.db import models
from django.conf import settings

# Create your models here.

class Course(models.Model):
    class Meta:
        verbose_name = 'Course'
        verbose_name_plural = 'Courses'
    
    name = models.CharField(max_length=255, unique=True)
    slug = models.SlugField(max_length=255, unique=True)
    description = models.TextField(max_length=500)
    instructor = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.SET_NULL, null=True, blank=True)
    duration = models.DurationField()
    capacity = models.PositiveIntegerField()
    schedule = models.CharField(max_length=255)
    image_url = models.URLField(max_length=500, default='https://res.cloudinary.com/dzlveh6fi/image/upload/v1718114697/bodypump2_yjclsk.jpg')


    def __str__(self):
        return self.name

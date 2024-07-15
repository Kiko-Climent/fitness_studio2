from django.urls import path
from .views import CourseListView

urlpatterns = [
    path('api/courses/', CourseListView.as_view(), name='course_list'),
]


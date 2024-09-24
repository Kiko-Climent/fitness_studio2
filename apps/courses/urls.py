from django.urls import path
from .views import CourseListView

urlpatterns = [
    path('', CourseListView.as_view()),
]


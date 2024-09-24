from django.contrib import admin
from .models import Course

class CourseaAdmin(admin.ModelAdmin):
    list_display = ('name', 'instructor', 'duration', 'capacity', 'schedule')
    search_fields = ('name', 'instructor__name', 'instructor__email')
    prepopulated_fields = {'slug': ('name',)}
    list_filter = ('instructor', 'duration', 'capacity')
    ordering = ('name',)


admin.site.register(Course, CourseaAdmin)


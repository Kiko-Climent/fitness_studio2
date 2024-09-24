from django.contrib import admin
from . import models
from django.contrib.auth import get_user_model

User = get_user_model()

class UserAdmin(admin.ModelAdmin):
    list_display = ('first_name', 'last_name', 'email', 'is_staff', 'is_trainer', 'is_superuser')
    list_display_links = ('first_name', 'last_name', 'email', 'is_staff', 'is_trainer', 'is_superuser')
    search_fields = ('first_name', 'last_name', 'email', 'is_staff', 'is_trainer', 'is_superuser')
    list_per_page = 25

admin.site.register(User, UserAdmin)

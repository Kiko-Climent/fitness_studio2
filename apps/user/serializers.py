from djoser.serializers import UserCreateSerializer
from django.contrib.auth import get_user_model
User = get_user_model()


class UserSerializer(UserCreateSerializer):
    class Meta(UserCreateSerializer.Meta):
        model = User
        fields = [
            'id',
            'first_name',
            'last_name',
            'email',
            'get_full_name',
            'get_short_name',
            #'is_active',
            #'is_staff',
            #'is_trainer',
        ]

from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from .models import UserProfile
from .serializers import UserProfileSerializer
import traceback
from rest_framework.permissions import IsAuthenticated

class GetUserProfileView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request, format=None):
        try:
            user = self.request.user
            user_profile = UserProfile.objects.get(user=user)
            user_profile = UserProfileSerializer(user_profile)

            return Response(
                {'profile': user_profile.data},
                status=status.HTTP_200_OK
            )
        except UserProfile.DoesNotExist:
            return Response(
                {'error': 'User profile not found'},
                status=status.HTTP_404_NOT_FOUND
            )
        except Exception as e:
            print(f"Error: {str(e)}")
            return Response(
                {'error': 'Something went wrong'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR
            )


class UpdateUserProfileView(APIView):
  def put(self,request, format=None):
    try:
      user = self.request.user
      data = self.request.data

      address = data['address']
      city = data['city']
      zipcode = data['city']
      phone = data['phone']

      UserProfile.objects.filter(user=user).update(
        address= address,
        city=city,
        zipcode=zipcode,
        phone=phone
      )

      user_profile = UserProfile.objects.get(user=user)
      user_profile = UserProfileSerializer(user_profile)

      return Response(
        {'profile': user_profile.data},
        status=status.HTTP_200_OK
      )

    except:
      return Response(
        {'error': 'Something went wrong'},
        status=status.HTTP_500_INTERNAL_SERVER_ERROR
      )


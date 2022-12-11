from django.db import models
from django.contrib.auth.models import BaseUserManager, AbstractBaseUser, PermissionsMixin
from django.utils import timezone

# Create your models here.
class Manager(BaseUserManager):

    def create_user(self, username, password, **extra_fields):
        if not username:
            raise ValueError(_('Username must not be empty.'))
        user = self.model(username = username, **extra_fields)
        user.set_password(password)
        user.save()
        print("Create successfully!")
        return user

    """
        Not including the verification of valid user and password based on some constraints
        The verification process was done before setting user.

        : parameters: is_staff, is_superuser is True (by default) 
    """

    def create_superuser(self, username, password, **extra_fields):

        extra_fields.setdefault('is_superuser', True)
        # extra_fields.setdefault('is_admin', True)
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_active', True)
        return self.create_user(username, password, **extra_fields)


class SManager(AbstractBaseUser, PermissionsMixin):
    
    fullname = models.CharField(max_length=100, default='')
    date_of_birth = models.DateField(default=timezone.now)
    phone_number = models.CharField(max_length=20,  default='')
    email = models.EmailField(max_length=254, default='', unique=True)

    # Staff ID = Username
    username = models.CharField(max_length=100, unique=True, primary_key=True)
    date_joined = models.DateTimeField(default=timezone.now)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    is_superuser = models.BooleanField(default=False)
    
    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = []
    
    objects = Manager()

    def __str__(self):
        return self.username + "join at".format(self.date_joined)

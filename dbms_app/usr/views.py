from django.shortcuts import render, redirect
from django.contrib import messages
from .models import SManager, Manager
from django.contrib.auth import authenticate, login, logout
# Create your views here.

def loginUser(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        #   Verify information: exception: no field is empty
        if len(username) == 0 or len(password) == 0:
            messages.info(request, "Account and password must be not empty!")
            return redirect('/login')

        try:
            user = SManager.objects.get(username = username)
        except:
            messages.info(request, "The account does not exist!")
            return redirect('/login')

        user = authenticate(request, username = username, password=password)

        if user is not None:
            login(request, user)
            return redirect('/')
        else:
            messages.info(request, "Incorrect password! Try again.")
            return redirect('/login')

    return render(request, 'login.html')

def logoutUser(request):
    
    logout(request)
    
    return redirect('/')

def registerUser(request):
    if request.method == 'POST':
        user_name = request.POST['username']
        password = request.POST['password']
        password2 = request.POST['repassword']
        # email = request.POST['email']

    #   Verify no field is empty
        if len(user_name) == 0 or len(password) == 0 or len(password2) == 0 :
            messages.info(request, "Information account must be not empty!")
            return redirect('/register')

    #   Verify the password and re-password
        if password != password2:
            messages.info(request, "Confirmed password is incorrect!")
            return redirect('/register')
        else:
            #   Verify the user existed or not
            # if SManager.objects.filter(email = email).exists():
            #     messages.info(request, "Email had been already registered.")
            #     return redirect ("/register")

            if SManager.objects.filter(username = user_name).exists():
                messages.info(request, "Username had been already taken")
                return redirect('/register')
            
            else:
                #   Create new user to the system
                user = SManager.objects.create_superuser(username = user_name, password = password)
                user.save()
                print("Create a new account successfully!")
                login(request, user, backend='django.contrib.auth.backends.ModelBackend')
                return redirect('/')

    return render(request, 'register.html')
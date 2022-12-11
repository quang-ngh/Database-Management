from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from .models import Customer, Package, Roomtype, Bookticket, RoomRent, Bedinfo, SupplyInRoom, Branch, SupplyType
from django.contrib import messages
from django.db import connection

def home(request):
    return redirect('/branch/1')

@login_required(login_url='/login')
def dashboard(request, branch):

    #   DO STATISTICS
    cursor =  connection.cursor()
    default_total_guest = [0 for _ in range(12)]
    percentages = [0 for _ in range(12)]
    months = list(range(1,13))

    print(months)
    if request.method == 'GET':
        year = request.GET.get('year')

    if not year:
        year = 2022
    
    FUNCTION = "SELECT * FROM f_SumGuest({}, {})".format(branch, year)
    # answer = (str(branch), str(year))
    cursor.execute(FUNCTION)
    querySet = cursor.fetchall()
    if not len(querySet) == 0:
        for result in querySet:
            print(result[1])
            default_total_guest[result[0] -1] = result[1]

        for idx, item in enumerate(default_total_guest):
            percentages[idx] = int((item / sum(default_total_guest))*500)
    stats = dict()

    for idx, month in enumerate(months):
        stats[month] = [percentages[idx], default_total_guest[idx]]
    
    print(stats)
    #################################################################
    num_branch = 0
    total_customer = Customer.objects.count()
    total_package = Package.objects.count()
    branches_objs = Branch.objects.all()    

    for _ in branches_objs:
        num_branch += 1

    branches = range(1,num_branch)
    branches_link = ["/branch/{}".format(x) for x in branches]
    customers  = Customer.objects.all()
    
    if request.method == 'GET':
        search_key = request.GET.get("search_key")
        
        if search_key:
            customers = Customer.objects.all().filter(fullname__icontains=search_key)

    return render(request, 'dashboard.html', context={
        'customers': customers,
        'total_customers':  total_customer,
        'total_package': total_package,
        'branches': branches_link,
        'branch': branch,
        'stats': stats.values()
    })

@login_required(login_url='/login')
def room_type(request):
    
    room_types = Roomtype.objects.all()

    return render(request, 'roomtype.html', context = {
        'room_types': room_types,
    })

@login_required(login_url='/login')
def add_room(request):

    if request.method == "POST":

        room_type_area = request.POST['area']
        room_type_des = request.POST['description']
        room_type_cap = request.POST['capacity']
        room_type_name = request.POST['room_type_name']
        try:
            new_room_type = Roomtype.objects.create(
                typename = room_type_name,
                area_m2_field = float(room_type_area),
                numguest = room_type_cap,
                infor = room_type_des
            )
            new_room_type.save()
        except:
            messages.info(request, 'Some information of room type provided is incorrect! Please check again')
            return redirect('/addroom')

        ##  Add bed information
        try:
            bed_size = [float(_size) for _size in  request.POST.getlist('bed_size')]
            bed_quantity = [int(_quantity) for _quantity in request.POST.getlist('bed_quantity')]
        except:
            messages.info(request, 'Value error. Maybe you enter wrong format: Float: x.x not x,x')
            return redirect('/addroom')

        if len(bed_size) != len(set(bed_size)):
            messages.info(request, "Same bed size need to be defined in Bed quantity")
            return redirect('/addroom')

        try: 
            for idx, _size in enumerate(bed_size):
                Bedinfo.objects.create(
                    bed_tid = new_room_type,
                    size = _size,
                    capacity = bed_quantity[idx]
                )
        except:
            messages.info(request, "Some errors occure in adding bed information. Please try again")
            return redirect('/addroom')

        ##  Check supply information
        try:
            supply_id_list = [int(supply_id) for supply_id in  request.POST.getlist('supply_id')]
            supply_quantity = [int(_quantity) for _quantity in request.POST.getlist('supply_quantity')]
        except:
            messages.info(request, 'Value error. Maybe you enter wrong format: Supply ID: Int & Quantity: Int')
            return redirect('/addroom')

        if len(supply_id_list) != len(set(supply_id_list)):
            messages.info(request, "Same supply id need to be defined in Supply quantity")
            return redirect('/addroom')
        try:
            for idx, sid in enumerate(supply_id_list):
                SupplyInRoom.objects.create (
                    sir_supplyid = SupplyType.objects.get(id = sid),
                    sir_tid = new_room_type,
                    num_supply = supply_quantity[idx]
                )
        except:
            messages.info(request, "Some errors occur in adding supply. Please try again")
            return redirect('/addroom')

    return render(request, 'addroom.html')

@login_required(login_url='/login')
def customer(request):

    booktickets_filter = Bookticket.objects.all()

    if request.method == 'GET':
        search_key = request.GET.get('search_key')

        if search_key:
            customers = Customer.objects.all().filter(fullname__icontains = search_key)
            booktickets_filter = Bookticket.objects.all().filter(cid__in = customers)
            
            

    return render(request, 'customer-info.html', context={
        'booktickets': booktickets_filter
    })
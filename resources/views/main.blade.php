<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('title')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
  </head>
  <body>
    <nav class="navbar navbar-dark bg-success navbar-expand-lg">
        <div class="container-fluid">
            <a href="{{url('/')}}" class="navbar-brand">
                RP Man Apparel
            </a>
            <button type="button" class="navbar-toggler"
            data-bs-toggle="collapse"
            data-bs-target="#menusaya"
            >
            <i class="navbar-toggler-icon"></i>
            </button>
            <div class="collapse navbar-collapse" id="menusaya">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a href="{{url('/')}}" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                      <a href="{{url('/shopping-form')}}" class="nav-link">Shopping Form</a>
                    </li>
                    <li class="nav-item">
                      <a href="{{url('/catalog')}}" class="nav-link">Catalog</a>
                    </li>
                     

                    @if (Auth::user())
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Akun Saya
                        </a>
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="{{url('profile')}}">Profil</a></li>
                          <li><a class="dropdown-item" href="{{url('category')}}">Category</a></li>
                          <li><a class="dropdown-item" href="{{url('product')}}">Product</a></li>
                          <li><hr class="dropdown-divider"></li>
                          <li><a class="dropdown-item" href="{{url('logout')}}">Logout</a></li>
                        </ul>
                    </li>
                    @else
                    <li class="nav-item">
                        <a href="{{url('login')}}" class="nav-link">Login</a>
                    </li>
                    <li class="nav-item">
                        <a href="{{url('register')}}" class="nav-link">Register</a>
                    </li>
                    @endif
                </ul>
            </div>
        </div>
    </nav>
    @yield('content')
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>
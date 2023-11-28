@extends('main')
@section('title')
    Home
@endsection

@section('content')
  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" class="container-sm">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="{{url('images/3.png')}}" style="height: 420px" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="{{url('images/2.png')}}" style="height: 420px" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="{{url('images/1.png')}}" style="height: 420px" class="d-block w-100" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</div>

  <div class="container mt-4">
    <div class="fs-5 mb-3">
      <i class="bi bi-box"></i>
        <strong>Our Product</strong>
  </div>
    
  <div class="row">    
        @foreach($random as $item)
        <div class="col-md-3 mb-3" >
            <div class="card" {{$random}}>
                <img src="{{url('images')}}/{{$item->photo}}" alt="" class="img-fluid">
                <div class="p-2">
                    <h5>{{$item->name}}</h5>
                    <h6>Rp{{number_format($item->price)}}</h6>
                    <div>
                        <small class="text-secondary">
                            {{$item->seller->name}}
                        </small>
                    </div>
                    <a href="https://api.whatsapp.com/send?phone=62895620543225&text={{urlencode("Halo saya mau beli $item->name")}}" class="btn btn-success w-100">
                        <i class="bi bi-whatsapp"></i> BUY
                    </a>
                </div>
            </div>
        </div>
        @endforeach
</div>
@endsection

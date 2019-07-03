@extends('layouts.app')

@section('content')
<link rel="stylesheet" type="text/css" href="{{ url('/css/all.css') }}" />

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="{{ asset('css/app.css') }}" rel="stylesheet">
<link href="{{ asset('css/edit.css') }}" rel="stylesheet">
<!--<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script>
    $(document).ready(function() {
$('.moje').on('click',function() {
    var content = $(this).text();
    console.log(content);
    if (content == "Groups") {
        $('#interests').css('display','none');
        $('#groups').css('display','block');
    } else {
        $('#groups').css('display','none');
        $('#interests').css('display','block');

    }
});
})
</script>
        </div>       

<div class="container">
    @if (isset($success))
    <div class="alert alert-success" role="alert">
      Succesfuly edited profile !
    </div>
    @endif
    <div class="row justify-content-center" >

        <div class="col-xs-12 col-sm-6 col-md-6">
            <div class="well well-sm">
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <img src="http://placehold.it/380x500" alt="" class="img-rounded img-responsive" />
                    </div>

                    <div class="col-sm-6 col-md-8">
                        <a href="{{ route('view.user',['edit' => true]) }}"><button type="button" class="btn btn-warning" style="float:right;" >Edit</button></a>

                        <h4>
                            {{ $user->nick }}</h4>
                      
                    
                        <!-- Split button -->
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary">
                                Check</button>
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                <span class="sr-only">Check your settings</span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a class= "moje" href="#">Interests</a></li>
                                <li><a class= "moje"href="#">Groups</a></li>
                            </ul>
                        </div>
                         <div id="interests" style="display:none;"> <h4> Interests</h4>
                             @if ($interests != null)
                            @foreach ($interests as $interest)
                             <button type="button" name="group" value="{{ $interest->idInterests}}" class="btn btn-success mybut">{{ $interest->interest_name }}</button>
                            @endforeach
                            @else
                             <button type="button" name="group" value="" class="btn btn-success mybut">No Interest</button>
                             @endif
                        </div>
                        <div id="groups" style="display:none;"> <h4 > Groups </h4>
                              @if ($groups != null)
                            @foreach ($groups as $group)
                             <button type="button" name="group" value="{{ $group->idGroups }}" class="btn btn-success mybut">{{ $group->group_name }}</button>
                            @endforeach
                               @else
                             <button type="button" name="group" value="" class="btn btn-success mybut">No Groups</button>
                             @endif
                        </div>
                           

                    </div>

                </div>
            </div>

    </div>
    </div>
</div>

@endsection


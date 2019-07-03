@extends('layouts.app')

@section('content')
<link rel="stylesheet" type="text/css" href="{{ url('/css/all.css') }}" />
<link rel="stylesheet" type="text/css" href="{{ url('/css/chat.css') }}" />
<div class="container">
    <div class="row justify-content-center">
        <div id="groups" style="float:left;height:700px;display:block;">
            <div class="card-header">MY groups</div>
            <form action="{{ route('group') }}" method="POST">
                @csrf
                @foreach ($groups as $group)
                <button type="submit" name="group" value="{{ $group->idGroups }}"
                    class="btn btn-success mybut">{{ $group->group_name }}</button>
                @endforeach
            </form>

        </div>
        <div class="col-md-8">
            <div class="card">
                @if (!isset($group_name))
                <div class="card-header">All Messages</div>
                @else
                <div class="card-header">{{ $group_name->group_name }}</div>
                @endif
                <div class="card-body">
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif
                    Congratz!

                    @foreach ($all_messages as $message)
                    <div id="chat_data" style="margin-right:10px; margin-bottom:50px;">
                        <p>
                            @if(Auth::user()->nick==$message['author'])
                            <span style="color:grey; float:right;">
                                {{ $message['author'] }}</span><br>
                            <span class="message_text"
                                style="color:black; float:right; background-color:#03A9F4; padding: 5px; border-radius: 10px;">
                                {{ $message['message'] }}</span>
                            @else
                            <span style="color:grey; float:left;">
                                {{ $message['author'] }}</span><br>
                            <span
                                style="color:black; float:left; background-color:#dfe6e9; padding: 5px; border-radius: 10px;">
                                {{ $message['message'] }}</span>
                            @endif
                            <br><br>
                            <span style="color:lightgrey; float:right;">
                                {{ $message['date'] }}</span>
                        </p>
                    </div>
                    @endforeach

                    <form method="POST" action="{{ route('send') }}">
                        @csrf
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="form_message">Message *</label>
                                    <textarea id="form_message" name="message" class="form-control"
                                        placeholder="Message *" rows="4"
                                        data-error="Please, leave us a message."></textarea>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <input type="hidden" name="target"
                                value="{{  isset($group_name) ? $group_name->idGroups :0 }}" />
                            <div class="col-md-12">
                                <input type="submit" class="btn btn-success btn-send" value="Send message">
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
    @endsection
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!--<script src="{{ asset('js/app.js') }}" defer></script>-->

    <!--<link href="{{ asset('css/app.css') }}" rel="stylesheet">-->
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.0.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

<link href="{{ asset('/css/bootstrap-multiselect.css') }}" rel="stylesheet" id="bootstrap-css">
<script src="{{ asset('/js/bootstrap-multiselect.js') }}"></script>


        <div class="container">
    <div class="row justify-content-center" style="margin-top:10%;">
        <a  href="{{ route('login') }}"><button type="submit" class="btn btn-warning" style="float:left;">Back</button></a>
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h3>Register</h3></div>
                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                     
                            @csrf
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputNick">Nick</label>
                                <input type="text" name="nick" class="form-control" id="inputNick" value=" {{{ isset($user['nick']) ? $user['nick'] : ''  }}}">
                                  @error('nick')
                                  <div class="alert alert-danger" role="alert">
                                     {{ $message }}
                                  </div>
                                @enderror
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">Login</label>
                                <input type="text" name="login" class="form-control" id="inputlogin" value=" {{{ isset($user['login']) ? $user['login'] : ''  }}}">
                                      @error('login')
                                  <div class="alert alert-danger" role="alert">
                                     {{ $message }}
                                  </div>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPass1">Password</label>
                            <input type="password" name="password" class="form-control" id="inputPass1" placeholder="password">
                        </div>
                        <div class="form-group">
                            <label for="inputPass2">Confirm password</label>
                            <input type="password" name="password_confirmation" class="form-control" id="inputPass2" placeholder="confirm password">
                        </div>
                                  @error('password')
                                  <div class="alert alert-danger" role="alert">
                                     {{ $message }}
                                  </div>
                                @enderror
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputCity">Interests</label>
                                <select name="interests[]" id="example-multiple-selected" multiple="multiple">
                               @foreach ($all_interests as $interest)
                                        <option value="{{ $interest->idInterests }}" >{{ $interest->interest_name }}</option>
                                    @endforeach
                                        </select>

                  
                                        
                                <!--<label class="mdb-main-label">Label example</label>-->
                                <!--<button class="btn-save btn btn-primary btn-sm">Save</button>-->
                            </div>
                            <div class="form-group col-md-4"  id="grup">
                                <label for="inputGroups">Groups</label>
                                <select name="groups[]" id="multi-groups" multiple="multiple">
                                    @foreach ($all_groups as $group)
                                        <option value="{{ $group->idGroups }}" >{{ $group->group_name }}</option>
                                    @endforeach
                                </select>
                            </div>
                   
                        </div>
                        <br/><br/><br/><br/>
                        <button type="submit" class="btn btn-primary">Register !</button>
                    </form>
                </div>
            
            </div>
        </div>
    </div>
</div>
        <script type="text/javascript">
              $(document).ready(function() {
                 $('#example-multiple-selected').multiselect();
                 $('#multi-groups').multiselect();
                 var chosen = $('#multi-groups').val();
//                 $(chosen).each(function() {
//                     $(this) = parseInt($this);
//                 })
//                 var chosen = JSON.parse(chosen1);
                 $('#example-multiple-selected').on('change',function() {
                     var vals = $(this).val();
                     $.ajax({
                          headers: {
                                'X-CSRF-TOKEN': "{{ csrf_token() }}"
                         },
                        url: "{{ url('/getgroups') }}",
                        method: "post",
                        data: {
                            groups : vals
                        },
                        success: function(result){
                            console.log(result)
                           $('#multi-groups').parent().remove()
                           var div = '<select name="groups[]" id="multi-groups" multiple="multiple">';
                           if(result !== null) {
                                var wynik = JSON.parse(result)
                                $.each(wynik,function(k,v) {
                                    var option = '';
                                    var existing = $('#multi-groups').val();
                                    var name = v['group_name']
                                    var id = v['idGroups'].toString()
                                         if(!div.includes('value="'+id+'"')) {
                                             if(chosen.includes(id)) {
                                                  option = '<option value="'+id+'" selected >'+name+'</option>'
                                             } else {
                                                  option = '<option value="'+id+'">'+name+'</option>'
                                             }
                                     }
                                   div += option
                                })
                           }
                           div+= '</select>'
                          $('#grup').append(div);
                          $('#multi-groups').multiselect();
                          $('#grup').animate({opacity: '0.4',color: 'green'}, "slow");
                        $('#grup').animate({ opacity: '1.0',color: 'white'}, "slow");
                        }
                     })
                 });
              });
        </script>

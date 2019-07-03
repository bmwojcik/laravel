    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!--<script src="{{ asset('js/app.js') }}" defer></script>-->

    <!--<link href="{{ asset('css/app.css') }}" rel="stylesheet">-->
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.0.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

<link href="{{ asset('/css/bootstrap-multiselect.css') }}" rel="stylesheet" id="bootstrap-css">
<script src="{{ asset('/js/bootstrap-multiselect.js') }}"></script>

<link rel="stylesheet" type="text/css" href="{{ url('/css/all.css') }}" />
<link rel="stylesheet" type="text/css" href="{{ url('/css/chat.css') }}" />
<div class="container" style="margin-top:20px;">
    <div id="buttons" style="float:left;">
       <a  href="{{ route('messages') }}"><button type="submit" class="btn btn-warning" style="float:left;">Back</button></a>
<br /><br/>
<br /><br/>
<br /><br/>
            <button type="button" class="btn btn-info chose">Users</button>
            <button type="button" class="btn btn-info chose">Add</button>
            <button type="button" class="btn btn-info chose">Groups</button>
    </div>
    <div class="row justify-content-center" style="margin-top:10%;margin-left:50px;">
        <div id="user" style="display:none;margin-left:10%;">
            <div class="form-group">
                
                <label for="exampleFormControlSelect1">Choose user</label>
                <select class="form-control" name="warns" id="user">
                    @foreach ($users as $user)
                    <option value="{{ $user->id }}"> {{ $user->nick }} </option>
                    @endforeach
                </select>
                 <select class="form-control" id="amount" name="amount" style="margin-top:10px;">
                     <option value="1">1</option>
                     <option value="2">2</option>
                     <option value="3">3</option>
                     <option value="4">4</option>
                     <option value="5">5</option>
                </select> <br /> <br/> Reason <br /> <br />
                 <input type="text" class="form-control" id="reason" name="reason">
            </div>
            <button type="button" class="btn btn-warning action" style ="background-color:  #ff9900;">Give warn(s) !</button>
        </div>
        <div id="interests" style="display:none;margin-left:10%;">
            <div class="form-group">
                <label for="formGroupExampleInput">Interest name</label>
                <input type="text" class="form-control" id="interest" name="interests">
                 <button type="button" class="btn btn-success action">Add</button>

            </div>
            <div class="form-group">
                <label for="formGroupExampleInput">Group name</label>
                <input type="text" class="form-control" id="group" name="groups">
                        <button type="button" class="btn btn-success action">Add</button>

            </div>
        </div>
        <div id="groups" style="display:none;margin-left:10%;">
            <div class="form-group col-md-4"  id="grup">
                <label for="inputGroups">Group</label>
                <select class="form-control" name="group_interests" id="multi-groups" >
                    @foreach ($groups as $group)
                    <option value="{{ $group->idGroups }}" >{{ $group->group_name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group col-md-4"  id="interest-div">
                <label for="inputGroups">Set interests</label>
                <select name="interests" id="interests-select" multiple="multiple">
                    @foreach ($interests as $interest)
                    <option value="{{ $interest->idInterests }}" >{{ $interest->interest_name }}</option>
                    @endforeach
                </select>
            </div>
              <button type="button" class="btn btn-success action">Save</button>
    </div>
</div>
    <script>
             $(document).ready(function() {
                     $('#interests-select').multiselect();
                      $('#multi-groups').on('change',function() {
                          var vals = $(this).val();
                         $.ajax({
                              headers: {
                                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                             },
                            url: "{{ url('/fetchinterests') }}",
                            method: "post",
                            data: {
                                group : vals
                            },
                            success: function(result){
                               $('#interests-select').multiselect('deselectAll',false)
                               if(result !== null) {
                                    var wynik = JSON.parse(result)
                                    $.each(wynik,function(k,v) {
                                        var id = v['idInterests'].toString();
                                        $('#interests-select').multiselect('select',id);
                                    });
    //                           
                              $('#interests-select').multiselect('refresh');
                              $('#interests-select').animate({opacity: '0.4',color: 'green'}, "slow");
                              $('#interests-select').animate({ opacity: '1.0',color: 'white'}, "slow");
                              }
                            }
                         });
                     });
             });
             $('.chose').on('click',function() {
                 var type = $(this).text();
                 switch(type) {
                 
                    case 'Users':
                        var div = $('#user');
                        div.siblings().css('display','none');
                        div.css('display','inline-block');
                        break;
                    case 'Add':
                         var div = $('#interests');
                        div.siblings().css('display','none');
                        div.css('display','inline-block');
                        break;
                    case 'Groups':
                        var div = $('#groups');
                        div.siblings().css('display','none');
                        div.css('display','inline-block');
                        break;
                    default:
                        break;
                }
             })
             
             $('.action').on('click',function() {
                var parent = $(this).parent();
               var z = parent.find('[name]');
                var myObject = new Object();
               z.each(function() {
                   var name = $(this).attr('name')
                   var value = $(this).val()
                    myObject[name] = value

               });
              var data =  JSON.stringify(myObject)
                    $.ajax({
                              headers: {
                                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                             },
                            url: "{{ url('/ajax') }}",
                            method: "post",
                            data: {
                                data : data
                            },
                            success: function(result){
                                  console.log('success')
                            }
                         });
               
             });
             
    </script>
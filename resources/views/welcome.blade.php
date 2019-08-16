<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">

        <title>To Do List</title>

        <!-- Bootstrap 3.3.4 -->
        <link href="{{ asset('la-assets/css/bootstrap.css') }}" rel="stylesheet" type="text/css" />
        
        <link href="{{ asset('la-assets/css/font-awesome.min.css') }}" rel="stylesheet" type="text/css" />

        <link href="{{ asset('la-assets/css/AdminLTE.css') }}" rel="stylesheet" type="text/css" />

        <style type="text/css">
            .card {
              /* Add shadows to create the "card" effect */
              box-shadow: 0 4px 4px 0 rgba(0,0,0,0.2);
              transition: 0.3s;
              margin-bottom: 5px; 
            }

            /* On mouse-over, add a deeper shadow */
            .card:hover {
              box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }

            /* Add some padding inside the card container */
            .container {
              padding: 2px 16px;
            }
        </style>
        
    </head>
    <body>
        
        <div id="wrapper" class="clearfix">
            <h4>To Do List</h4>
            <div class="row">
                <div class="col-md-4">
                    <p>To Do List</p>
                    @foreach($works as $work)
                        @if($work->status=='1')
                        <div class="card">
                          <div class="container">
                            <p>{{ $work->description or null }}</p>
                            <label><i class="fa fa-user" aria-hidden="true"></i></label>
                          </div>
                        </div>
                        @endif
                    @endforeach
                </div>
                <div class="col-md-4">
                    <p>In Work</p>
                    @foreach($works as $work)
                        @if($work->status=='2')
                        <div class="card">
                          <div class="container">
                            <p>{{ $work->description or null }}</p>
                            <label><i class="fa fa-user" aria-hidden="true"></i></label>
                          </div>
                        </div>
                        @endif
                    @endforeach
                </div>
                <div class="col-md-4">
                    <p>Done</p>
                    @foreach($works as $work)
                        @if($work->status=='3')
                        <div class="card">
                          <div class="container">
                            <p>{{ $work->description or null }}</p>
                            <label><i class="fa fa-user" aria-hidden="true"></i></label>
                          </div>
                        </div>
                        @endif
                    @endforeach
                    <button class="btn btn-primary" data-toggle="modal" data-target="#AddModal">Add</button>
                </div>
            </div>
        </div>
        
        

        
        <div class="modal fade" id="AddModal" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Add Todo</h4>
                </div>
                <form method="post" action="{{ url('/to-do-store') }}">
                    {{ csrf_field() }}
                <div class="modal-body">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="item_id">Work Description <span class='la-required'>* </span>:</label>
                            <textarea class="form-control" 
                            name="description" required="1" data-placeholder="Enter Description"></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-success btn-save">Save</button>

                </div>
                </form>
            </div>
        </div>
        
    </div>

    </body>
    <!-- jQuery 2.1.4 -->
    <script src="{{ asset('la-assets/plugins/jQuery/jQuery-2.1.4.min.js') }}"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="{{ asset('la-assets/js/bootstrap.min.js') }}" type="text/javascript"></script>

</html>

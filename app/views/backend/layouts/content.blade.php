@extends('backend.layouts.base')

@section('head-script') 

        <link href="{{asset('assets/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('assets/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="{{asset('assets/css/ionicons.min.css')}}" rel="stylesheet" type="text/css" />
        <!-- Theme style -->

        <link href="{{asset('assets/css/AdminLTE.css')}}" rel="stylesheet" type="text/css"/>
        <!-- <link href="{{asset('assets/js/')}}/notif/css/jquerysctipttop.css" rel="stylesheet" type="text/css"> -->
        <link href="{{asset('assets/js/')}}/notif/css/notifier.css" rel="stylesheet" type="text/css">

        <script src="{{asset('assets/js/jquery.min.js')}}"></script>
        <script src="{{asset('assets/js')}}/jquery-ui.min.js"></script>
        <script src="{{asset('assets/js')}}/notif/js/notifier.js"></script>
        <script>

        function notif_error(msg){
            $.notifier({"type": "error",
                "positionY": "top",
                "positionX": "right",
                "title": "Error",
                "text": msg
                });
        }

        function notif_success(msg){
            $.notifier({"type": "success",
            "positionY": "top",
            "title": "Success",
            "text": msg,
             "animationIn" : 'bounce',
                "animationOut" : 'drop',
            "positionX": "right"
            });
        }

        function notif_warning(msg){
             $.notifier({"type": "warning",
            "positionY": "top",
            "title": "Warning",
            "text": msg,
            "positionX": "right",
                 "animationIn" : 'highlight',
                "animationOut" : 'blind'
            });
        }

        function notif_info(msg){
            $.notifier({"type": "info",
                "positionY": "top",
                     "animationIn" : 'slide',
                    "animationOut" : 'fade',
                "positionX": "right",
                "title": "Information",
                "text": msg
            });
        }
        </script>
@stop

@section('body')
			<aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Blank page
                        <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Blank page</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                	<div class="row">
                		<div class="col-md-12">
		                	@yield('body-content')
						</div>
                	</div>
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
@stop

@section('end-script')
        
        <script src="{{asset('assets/js/bootstrap.min.js')}}" type="text/javascript"></script>
        <!-- AdminLTE App -->
        <script src="{{asset('assets/js/AdminLTE/app.js')}}" type="text/javascript"></script>
        <!-- AdminLTE for demo purposes --> 
@stop
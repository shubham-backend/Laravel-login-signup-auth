<!doctype html>
<html class="no-js" lang="">
    <head>
        {{-- <link rel="icon" type="image/png" href="{{asset('./images/logo.png')}}"> --}}
        <link rel="icon" type="image/png" href="https://i.ya-webdesign.com/images/s-logo-png-1.png">
        <base href="{{url('/')}}">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Interview</title>
        <meta name="description" content="Interview">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf_token" content="{{ csrf_token() }}">   {{-- CSRF Token add Here --}}
        <link rel="apple-touch-icon" href="apple-icon.png">
        <link rel="shortcut icon" href="favicon.ico">

        {{-- Common CSS Include --}}
        <link rel="stylesheet" href="css/common.css">
        {{-- Add Toaster Code CSS Here --}}
        <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet"/>
        {{-- Project requirement library CSS--}}
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet"/>
    </head>

    <body>
        @yield('content')
    </body>
    {{-- Project requirement library JS --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
    <script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
    <script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>

    {{-- Add Toaster Code JS Here --}}
    <script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    @yield('scripts')
</html>
<script>
 <?php
    if (Session::has('message')) {
        if ('error' === session('type')) {
            ?>
                toastr.error("<?php echo session('message'); ?>", "", {
                    "closeButton": true
                });

            <?php
        } else if ('success' === session('type')) {
            ?>
                toastr.success('<?php echo trim(session('message')); ?>', {
                    "closeButton": true
                });
            <?php
        }
    }

    // if ('' != $errors->first('email')) {
    //     ?>
    //         toastr.error("<?php echo $errors->first('email'); ?>", "", {
    //             "closeButton": true
    //         });

    //     <?php
    // }
    //?>
</script>

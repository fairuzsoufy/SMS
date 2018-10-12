<!DOCTYPE html>
<html lang="en">
<head>

    <!-- Basic Page Needs
        ================================================== -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>MIU SMS</title>

    <!-- Mobile Specific Metas
        ================================================== -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/png" href="{{ asset('images/landing/Logos/SMS.png') }}"/>

    <!-- CSS
        ================================================== -->
        <!-- Bootstrap css file-->
        <link href="{{ asset('css/landing/bootstrap.min.css') }}" rel="stylesheet">
        <!-- Font awesome css file-->
        <link href="{{ asset('css/landing/font-awesome.min.css') }}" rel="stylesheet">
        <!-- Superslide css file-->
        <link rel="stylesheet" href="{{ asset('css/landing/superslides.css') }}">
        <!-- Slick slider css file -->
        <link href="{{ asset('css/landing/slick.css') }}" rel="stylesheet">
        <!-- smooth animate css file -->
        <link rel="stylesheet" href="{{ asset('css/landing/animate.css') }}">
        <!-- Elastic grid css file -->
        <link rel="stylesheet" href="{{ asset('css/landing/elastic_grid.css') }}">

        <!-- Default Theme css file -->
        <link id="orginal" href="{{ asset('css/landing/themes/red-theme.css') }}" rel="stylesheet">
        <!-- Main structure css file -->
        <link href="{{ asset('css/landing/style.css') }}" rel="stylesheet">

        <!-- Google fonts -->
        <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Varela' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
</head>

<body>

@yield('content')

     <!-- Javascript Files
       ================================================== -->

       <!-- initialize jQuery Library -->
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
       <!-- For smooth animatin  -->
       <script src="{{ asset('js/landing/wow.min.js') }}"></script>
       <!-- Bootstrap js -->
       <script src="{{ asset('js/landing/bootstrap.min.js') }}"></script>
       <!-- superslides slider -->
       <script src="{{ asset('js/landing/jquery.superslides.min.js') }}" type="text/javascript"></script>
       <!-- slick slider -->
       <script src="{{ asset('js/landing/slick.min.js') }}"></script>
       <!-- for circle counter -->
       <script src='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/js/jquery.circliful.min.js'></script>
       <!-- for portfolio filter gallery -->
       <script src="{{ asset('js/landing/modernizr.custom.js') }}"></script>
       <script src="{{ asset('js/landing/classie.js') }}"></script>
       <script src="{{ asset('js/landing/elastic_grid.min.js') }}"></script>
       <script src="{{ asset('js/landing/portfolio_slider.js') }}"></script>

       <!-- Custom js-->
       <script src="{{ asset('js/landing/custom.js') }}"></script>
   </body>
   </html>

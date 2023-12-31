<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{{ $title }}</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap">
<!-- Font Awesome -->
<link rel="stylesheet" href="{{ asset('/template/admin/plugins/fontawesome-free/css/all.min.css') }}">
<!-- icheck bootstrap -->
<link rel="stylesheet" href="{{ asset('/template/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
<!-- Theme style -->
<link rel="stylesheet" href="{{ asset('/template/admin/dist/css/adminlte.min.css') }}">


<meta name="csrf-token" content="{{ csrf_token() }}">

@yield('head')

<style>
    .hidden {
        display: none;
    }
</style>

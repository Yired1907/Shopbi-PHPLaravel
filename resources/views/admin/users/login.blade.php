<!DOCTYPE html>
<html lang="en">

<head>
    @include('admin.head')
    <link rel="stylesheet" href="{{ asset('template/css/login.css') }}">
</head>

<body>
    <form action="{{ URL::to('/admin/users/login/store') }}" method="POST">
        <section style="background-image: url({{ env('APP_URL') }}/public/template/images/icons/background6.jpg)">
            <div class="form-box">
                <div class="form-value">
                    <form action="/admin/users/login/store" method="post">
                        @csrf
                        <h2>Login</h2>
                        <div class="inputbox">
                            <ion-icon name="mail-outline"></ion-icon>
                            <input type="email" name="email" required>
                            <label for="">Email</label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="lock-closed-outline"></ion-icon>
                            <input type="password" name="password" required>
                            <label for="">Password</label>
                        </div>
                        <div class="forget">
                            <div class="icheck-primary">
                                <input type="checkbox" name="remember" id="remember">
                                <label for="remember">
                                    Remember Me
                                </label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Sign In</button>
                        {{-- <div class="register">
                        <p>Don't have a account <a href="#">Register</a></p>
                    </div> --}}
                        <div class="mt-2">
                            @include('admin.alert')
                        </div>
                    </form>
                </div>
            </div>

        </section>
    </form>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>

@extends('layout.common')
@section('content')
  {{-- https://colorlib.com/wp/template/creative-login-form/ --}}
    <div class="login-page">
        <div class="form">
        {!! Form::open(['route' => 'login-user','id'=>'user_login_form']) !!}
            @csrf
            Enter your details below to access
            your account.
            <div class="form-group">
                <input type="text" id="email" name="email" placeholder="Email"/>
                <span class="error">{{ $errors->first('email') }}</span>
            </div>
            <div class="form-group">
                <input type="password" id="password" name="password" autocomplete="new-password" placeholder="Password"/>
                <span toggle="#password" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                <span class="error">{{ $errors->first('password') }}</span>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-danger"> Login
                </button>
            </div>
            <p class="message">Don't have an account? <a href="{{ url('/signup') }}">Signup</a></p>
        {!! Form::close() !!}
        </div>
    </div>
@endsection

@section('scripts')
<script type="text/javascript">

  $(".toggle-password").click(function() {

    $(this).toggleClass("fa-eye fa-eye-slash");
    var input = $($(this).attr("toggle"));
    if (input.attr("type") == "password") {
        input.attr("type", "text");
    } else {
        input.attr("type", "password");
    }
    });

  $.validator.addMethod("pwcheck", function (value) {
    return /[\@\#\$\%\^\&\*\(\)\_\+\!]/.test(value) && /[a-z]/.test(value) && /[0-9]/.test(value) && /[A-Z]/.test(value)
  },"At least one lowercase character,one uppercase character,one number and one special character is required.");

  $( "#user_login_form" ).validate( {
        errorClass: "text-danger",
        rules: {
            email: {
                required: true,
                email: true,
            },
            password: {
                required: true,
                pwcheck: true,
            }
        },
        messages: {
            email: {
                required: "Please enter your registered email.",
            },
            password: {
                required: "Please enter password.",
            }
        },
        errorPlacement: function ( error, validator ) {
            error.insertAfter(validator);
        },
        //on success,remove error class from form fields
        // success: function ( form) {
        //     console.log("success");
        //     form.submit();
        //     return false;
        // },
        // submitHandler: function ( form ) {
        //     form.submit();
        // }
    } );
</script>
@endsection

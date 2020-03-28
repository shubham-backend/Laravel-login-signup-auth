@extends('layout.common')
@section('content')
<div class="login-page">
    <div class="form">
     {!! Form::open(['route' => 'signup-user','id'=>'user_signup_form']) !!}
        @csrf
        Signup
        <div class="form-group">
            <input type="text" autocomplete="off" class="AlphabetsOnly" name="firstname" value="{{ old('firstname') }}" placeholder="First Name"maxlength="50"/>
            <span class="error">{{ $errors->first('firstname') }}</span>
        </div>
        <div class="form-group">
            <input type="text" autocomplete="off" class="AlphabetsOnly" name="lastname" value="{{ old('lastname') }}" placeholder="Last Name" maxlength="50"/>
            <span class="error">{{ $errors->first('lastname') }}</span>
        </div>
        <div class="form-group">
            <input type="text" autocomplete="off" name="username" placeholder="Username" value="{{ old('username') }}" maxlength="100"/>
            <span class="error">{{ $errors->first('username') }}</span>
        </div>
        <div class="form-group">
        <input type="text" autocomplete="off" class="numberonly" oninput="Validate(this.value);" id="mobile" name="mobile" maxlength="10" value="{{ old('mobile') }}" placeholder="Mobile"/>
            <span class="error">{{ $errors->first('mobile') }}</span>
        </div>
        <div class="form-group">
            <input type="text" name="email" placeholder="Email" value="{{ old('email') }}" maxlength="100"/>
            <span class="error">{{ $errors->first('email') }}</span>
        </div>
        <div class="form-group">
            <input type="password" id="password" name="password" autocomplete="new-password" placeholder="Password"/>
            <span toggle="#password" class="fa fa-fw fa-eye field-icon toggle-password"></span>
            <span class="error">{{ $errors->first('password') }}</span>
        </div>
        <button>create</button>
        <p class="message">Already have an account? <a href="{{'/login'}}">Login</a></p>
      {!! Form::close() !!}
    </div>
</div>
@endsection

@section('scripts')
<script type="text/javascript">

    $(".numberonly").keypress(function (e) {
        //if the letter is not digit then display error and don't type anything
        if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
            //display error message
            //$("#errmsg").show().fadeOut("slow");
            return false;
       }
   });

    $('.AlphabetsOnly').keypress(function (e) {
        var regex = new RegExp(/^[a-zA-Z\s]+$/);
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        }
        else {
            e.preventDefault();
            return false;
        }
    });

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

    $( "#user_signup_form" ).validate( {
          errorClass: "text-danger",
          rules: {
              firstname: {
                  //Code Here
              },
              lastname: {
                //Code Here
              },
              username: {
                  required: true,
              },
              mobile: {
                  required: true,
              },
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
              username: {
                  required: "Please enter your username.",
              },
              mobile: {
                  required: "Please enter mobile number.",
              },
              email: {
                  required: "Please enter your registered email.",
              },
              password: {
                  required: "Please enter password.",
              },
          },
          errorPlacement: function ( error, validator ) {
              error.insertAfter(validator);
          },
      } );

      //Mobile Number validate start with 6 to 9
      function Validate(abc)
        {
            var x =abc;
            console.log(x.charAt(0));
           if(isNaN(x)||x.indexOf(" ")!=-1)
           {
              alert("Enter numeric value")
              return false;
           }
           if (x.charAt(0) == 6 || x.charAt(0) == 7 || x.charAt(0) == 8 || x.charAt(0) == 9)
           {
               return true;

           }else{
                $('#mobile').val('');
                alert("Mobile Number should start with 6 to 9 ");
                return false;
           }
        }
  </script>
@endsection

@extends('layouts.login')

@section('content')
<div id="main-wrapper">

        <div class="unix-login">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-lg-4">
                        <div class="login-content card">
                            <div class="login-form">
                                <h4>Register - DevFlow</h4>
                                <form class="form-horizontal" method="POST" action="{{ route('register') }}">
                                        {{ csrf_field() }}
                                    <div class="form-group">
                                            <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                                                    <label for="name" class="col-md-4 control-label">Name</label>
                        
                                                    <div>
                                                        <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required autofocus>
                        
                                                        @if ($errors->has('name'))
                                                            <span class="help-block">
                                                                <strong>{{ $errors->first('name') }}</strong>
                                                            </span>
                                                        @endif
                                                    </div>
                                            </div>
                                    </div>
                                    <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                                            <label for="email">E-Mail Address</label>
                
                                            <div>
                                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>
                
                                                @if ($errors->has('email'))
                                                    <span class="help-block">
                                                        <strong>{{ $errors->first('email') }}</strong>
                                                    </span>
                                                @endif
                                            </div>
                                        </div>
                                    <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                                            <label for="password">Password</label>
                
                                            <div>
                                                <input id="password" type="password" class="form-control" name="password" required>
                
                                                @if ($errors->has('password'))
                                                    <span class="help-block">
                                                        <strong>{{ $errors->first('password') }}</strong>
                                                    </span>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="form-group">
                                                <label for="password-confirm" class="">Confirm Password</label>
                    
                                                <div class="">
                                                    <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                                                </div>
                                            </div>
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Register</button>
                                  
                                    <div class="register-link m-t-15 text-center">
                                        <p>Already have account ? <a href="{{route('login')}}"> Sign in</a></p>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div id="main-wrapper" class="col-md-6">
    <a href="{{ url('/login/github') }}" class="btn btn-primary btn-flat m-b-30 m-t-30"
    style="background-color:black;">
   <i class="fa fa-google-plus-square"></i> GITHUB</a>
   <a href="{{ url('/login/facebook') }}" class="btn btn-info btn-flat m-b-30 m-t-30">
       <i class="fa fa-facebook-square"></i> Facebook</a>
   <a href="{{ url('/login/google') }}" class="btn btn-danger btn-flat m-b-30 m-t-30">
       <i class="fa fa-google-plus-square"></i> Google</a>
   </div>
@endsection

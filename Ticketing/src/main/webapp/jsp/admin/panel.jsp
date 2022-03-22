<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <style>
                    .divheader {
                        padding: 1em;
                        background-color: #17a2b8;
                        background-image: radial-gradient(180deg, #1c285c 0%, #637ce6 100%);
                    }
                    
                    .input1 {
                        font-family: 'Century Gothic';
                        border: none;
                        border-bottom: 1px solid lightgray;
                        width: 50%;
                        margin-right: 30p;
                        font-size: 14px;
                    }
                    
                    .btn2 {
                        background-color: #637CE6;
                        margin-top: 1em;
                        font-size: 14px;
                        font-family: 'Century Gothic';
                        color: white;
                    }
                    
                    .btn1 {
                        background-color: #CC1111;
                        margin-top: 1em;
                        font-size: 15px;
                        width: 18em;
                        font-family: 'Century Gothic';
                    }
                    
                    .font {
                        font-family: 'Century Gothic';
                    }
                    
                    h5 {
                        font-family: 'Century Gothic';
                        color: green;
                        margin-bottom: 50px;
                    }
                    
                    p {
                        font-size: 12px;
                        margin-left: 70px
                    }
                    body{
                        background-color: #CC1111;
                    }
                
                    
                    placeholder {
                        font-size: 10px;
                    }
                    #bookpassenger{
                        background-image: url(/images/logo.png);
                    }
                
  </style>
  <div>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand"><img src="/images/llogo.png"></a>
        <a class="navbar-brand" href="#">iWantTranseat</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarScroll">
            
          <ul class="navbar-nav mr-auto my-100 my-lg-10 navbar-nav-scroll" style="max-height: 100px;">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                Delete Account
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                <li><a class="dropdown-item" href="#" data-target="#delete_operator" data-toggle="modal">Delete Operator Account</a></li>
                <li><a class="dropdown-item" href="#" data-target="#delete_driver" data-toggle="modal">Delete Driver Account</a></li>
              </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                  Add Account
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                  <li><a class="dropdown-item" href="#" data-target="#create_operator" data-toggle="modal">Create Operator Account</a></li>
                  <li><a class="dropdown-item" href="#" data-target="#create_driver" data-toggle="modal">Create Driver Account</a></li>
                </ul>
              </li>
          </ul>
          <form class="d-flex">
            <input class="form-control mr-2" type="search" placeholder="Search by Email" aria-label="Search">
            <button class="btn btn-outline-primary" type="submit">Search</button>
          </form>
        </div>
      </nav>

  
 

      
      <div class="col-sm-20">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-bottom">
            <a href="#" class="navbar-brand">
                <img src="/Ticketing/src/main/webapp/assets/LOGO.png" alt="" class="logo">
            </a>
            <ul class="navbar-nav mr-auto my-100 my-lg-10 navbar-nav-scroll" style="max-height: 100px;">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#" data-bs-target="#myModals" data-bs-toggle="modal">
                    <button type="button" class="btn btn-outline-primary">Dashboard
                    <svg xmlns="http://www.w3.org/2000/svg" width="90" height="25" fill="currentColor" class="bi bi-speedometer" viewBox="0 0 16 16">
                        <path d="M8 2a.5.5 0 0 1 .5.5V4a.5.5 0 0 1-1 0V2.5A.5.5 0 0 1 8 2zM3.732 3.732a.5.5 0 0 1 .707 0l.915.914a.5.5 0 1 1-.708.708l-.914-.915a.5.5 0 0 1 0-.707zM2 8a.5.5 0 0 1 .5-.5h1.586a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 8zm9.5 0a.5.5 0 0 1 .5-.5h1.5a.5.5 0 0 1 0 1H12a.5.5 0 0 1-.5-.5zm.754-4.246a.389.389 0 0 0-.527-.02L7.547 7.31A.91.91 0 1 0 8.85 8.569l3.434-4.297a.389.389 0 0 0-.029-.518z"/>
                        <path fill-rule="evenodd" d="M6.664 15.889A8 8 0 1 1 9.336.11a8 8 0 0 1-2.672 15.78zm-4.665-4.283A11.945 11.945 0 0 1 8 10c2.186 0 4.236.585 6.001 1.606a7 7 0 1 0-12.002 0z"/>
                    </svg>
                    </button>
                  </a>
                  
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">
                        <button type="button" class="btn btn-outline-primary">Schedule   
                        <svg xmlns="http://www.w3.org/2000/svg" width="100" height="25" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
                            <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
                            <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/>
                          </svg>
                        </button>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#" data-bs-target="#Schedule" data-bs-toggle="modal">
                        <button type="button" class="btn btn-outline-primary"> Notes
                        <svg xmlns="http://www.w3.org/2000/svg" width="120" height="25" fill="currentColor" class="bi bi-card-checklist" viewBox="0 0 16 16">
                            <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/>
                            <path d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0zM7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0z"/>
                          </svg>
                          </button>
                    </a>
                  </li>
                <li class="nav-item">
                  <a class="nav-link active" href="#">
                    <button type="button" class="btn btn-outline-primary">Busses
                    <svg xmlns="http://www.w3.org/2000/svg" width="120" height="25" fill="currentColor" class="bi bi-truck" viewBox="0 0 16 16">
                        <path d="M0 3.5A1.5 1.5 0 0 1 1.5 2h9A1.5 1.5 0 0 1 12 3.5V5h1.02a1.5 1.5 0 0 1 1.17.563l1.481 1.85a1.5 1.5 0 0 1 .329.938V10.5a1.5 1.5 0 0 1-1.5 1.5H14a2 2 0 1 1-4 0H5a2 2 0 1 1-3.998-.085A1.5 1.5 0 0 1 0 10.5v-7zm1.294 7.456A1.999 1.999 0 0 1 4.732 11h5.536a2.01 2.01 0 0 1 .732-.732V3.5a.5.5 0 0 0-.5-.5h-9a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .294.456zM12 10a2 2 0 0 1 1.732 1h.768a.5.5 0 0 0 .5-.5V8.35a.5.5 0 0 0-.11-.312l-1.48-1.85A.5.5 0 0 0 13.02 6H12v4zm-9 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm9 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
                      </svg>
                    </button>
                    </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" href="#">
                    <button type="button" class="btn btn-outline-primary"> Profile
                    <svg xmlns="http://www.w3.org/2000/svg" width="120" height="25" fill="currentColor" class="bi bi-person-square" viewBox="0 0 16 16">
                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                        <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm12 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1v-1c0-1-1-4-6-4s-6 3-6 4v1a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12z"/>
                      </svg>
                      </button>
                   </a>
                </li>
               <li class="nav-item">
                  <a class="nav-link active" href="#" data-target="#passenger_registration" data-toggle="modal">
                    <button type="button" class="btn btn-outline-primary">Book Passenger
                    <svg xmlns="http://www.w3.org/2000/svg" width="55" height="25" fill="currentColor" class="bi bi-person-plus-fill" viewBox="0 0 16 16">
                        <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                        <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
                      </svg>
                      </button>
                  </a>
                </li>
            </ul>
        </nav>
    </div>



            <div class="container">
                <div class="main col-20">
                    <div class="row first-row">
                        <div class="md-col-12">
                            <div class="modal fade" id="passenger_registration">
                                <div class="modal-dialog modal-xl">
                                    <div class="modal-content" id="bookpassenger">
                                        <div class="container col-md-5 col-md-offset-3 mt-5" style="overflow: auto; margin-top: 50px;" id="passenger_registration">
                                                <div class="divheader shadow rounded text-center"><h6 style="color: white; font-family: 'Century Gothic'">Book Passenger</h6></div>
                                                    <div class="container shadow p-3 mb-5 bg-white rounded"  style="padding: 30px">
                                                        <form action="#" method="post">
                                                            <input type="date" id="currentDate" hidden>
                                                                <div class="input-group input-group " id="floatingInput"  style="margin-bottom: 2em">
                                                               
                                                                <input type="text" placeholder="Firstname" name="firstname"
                                                                    class="input1 form-control" style="margin-right: 30px;" required>
                                                                <input type="text" placeholder="Lastname" name="lastname"
                                                                    class="input1 form-control" required>
                                                            </div>
                                                            <div class="input-group input-group" style="margin-bottom: 2em">
                                                                <input type="date" id="birthday" name="birthday"
                                                                    onchange="ageCount()" class="input1 form-control"
                                                                    style="margin-right: 10px; width: 80px" required> <input
                                                                    type="text" id="age" name="age" placeholder="Age" class="input1 "
                                                                    style="margin-right: 10px; width: 70px;" disabled> <input
                                                                    type="number" placeholder="Contact Number" name="contact"
                                                                    class="input1 form-control" style="">
                                                            </div>
                                                            <div class="input-group input-group " id="floatingInput"
                                                                style="margin-bottom: 2em">
                                                                <input type="email" placeholder="Email" name="email"
                                                                    class="input1 form-control" style="margin-right: 30px;" required>
                                                                <input type="password" placeholder="Password" name="password"
                                                                    class="input1 form-control" required>
                                                            </div>
                                                
                                                            <div class="text-center">
                                                                <button class="btn btn-outline-primary btn-sm"
                                                                    style="margin-right: 20px;" onclick="sendVerify()">Get
                                                                    Verification</button>
                                                                <input type="text" placeholder="Enter 6 digit verification code"
                                                                    name="verify" class="input1">
                                                
                                                                <p style="font-family: 'Century Gothic'">
                                                                    Didn't Received the code ? <a href="#">Resend</a>
                                                                </p>
                                                            </div>
                                                
                                                
                                                            <div class="input-group input-group " id="floatingInput"
                                                                style="margin-top: 3em">
                                                                <button type="submit" class="btn btn-primary btn-l btn2  btn-block">SUBMIT</button>
                                                            <script type="text/javascript">
                                                                function ageCount() {
                                                            
                                                                    var dobget = document.getElementById("birthday").value;
                                                                    var dob = new Date(dobget);
                                                            
                                                                    var month_diff = Date.now() - dob.getTime();
                                                                    var age_dt = new Date(month_diff);
                                                                    var year = age_dt.getUTCFullYear();
                                                                    var age = Math.abs(year - 1970);
                                                            
                                                                    document.getElementById('age').value = age;
                                                                }
                                                            </script>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>





                <div class="container">
                    <div class="main col-20">
                        <div class="row first-row">
                            <div class="md-col-12">
                                <div class="modal fade" id="create_driver">
                                    <div class="modal-dialog modal-xl">
                                        <div class="modal-content">
                                                <div class="container col-md-5 col-md-offset-3 mt-5" style="overflow: auto; margin-top: 5m;" id="passenger_registration">
                                                    <div class="divheader shadow rounded text-center"><h6 style="color: white; font-family: 'Century Gothic'">Create Diver Account</h6></div>
                                                        <div class="container shadow p-3 mb-5 bg-white rounded"  style="padding: 30px">
                                                            <form action="#" method="post">
                                                                <input type="date" id="currentDate" hidden>
                                                                    <div class="input-group input-group " id="floatingInput"  style="margin-bottom: 2em">
                                                                   
                                                                    <input type="text" placeholder="Firstname" name="firstname"
                                                                        class="input1 form-control" style="margin-right: 30px;" required>
                                                                    <input type="text" placeholder="Lastname" name="lastname"
                                                                        class="input1 form-control" required>
                                                                </div>
                                                                <div class="input-group input-group" style="margin-bottom: 2em">
                                                                    <input type="date" id="birthday" name="birthday"
                                                                        onchange="ageCount()" class="input1 form-control"
                                                                        style="margin-right: 10px; width: 80px" required> <input
                                                                        type="text" id="age" name="age" placeholder="Age" class="input1 "
                                                                        style="margin-right: 10px; width: 70px;" disabled> <input
                                                                        type="number" placeholder="Contact Number" name="contact"
                                                                        class="input1 form-control" style="">
                                                                </div>
                                                                <div class="input-group input-group " id="floatingInput"
                                                                    style="margin-bottom: 2em">
                                                                    <input type="email" placeholder="Email" name="email"
                                                                        class="input1 form-control" style="margin-right: 30px;" required>
                                                                    <input type="password" placeholder="Password" name="password"
                                                                        class="input1 form-control" required>
                                                                </div>
                                                    
                                                                <div class="text-center">
                                                                    <button class="btn btn-outline-primary btn-sm"
                                                                        style="margin-right: 20px;" onclick="sendVerify()">Get
                                                                        Verification</button>
                                                                    <input type="text" placeholder="Enter 6 digit verification code"
                                                                        name="verify" class="input1">
                                                    
                                                                    <p style="font-family: 'Century Gothic'">
                                                                        Didn't Received the code ? <a href="#">Resend</a>
                                                                    </p>
                                                                </div>
                                                    
                                                    
                                                                <div class="input-group input-group " id="floatingInput"
                                                                    style="margin-top: 3em">
                                                                    <button type="submit" class="btn btn-primary btn-l btn2  btn-block">SUBMIT</button>
                                                                <script type="text/javascript">
                                                                    function ageCount() {
                                                                
                                                                        var dobget = document.getElementById("birthday").value;
                                                                        var dob = new Date(dobget);
                                                                
                                                                        var month_diff = Date.now() - dob.getTime();
                                                                        var age_dt = new Date(month_diff);
                                                                        var year = age_dt.getUTCFullYear();
                                                                        var age = Math.abs(year - 1970);
                                                                
                                                                        document.getElementById('age').value = age;
                                                                    }
                                                                </script>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    



                                    <div class="container">
                                        <div class="main col-20">
                                            <div class="row first-row">
                                                <div class="md-col-12">
                                                    <div class="modal fade" id="create_operator">
                                                        <div class="modal-dialog modal-xl">
                                                            <div class="modal-content">
                                                                <div class="container col-md-5 col-md-offset-3 mt-5"
                                                                style="overflow: auto; margin-top: 5m;">
                                                                        <div class="divheader shadow rounded text-center">
                                                                        <h6 style="color: white; font-family: 'Century Gothic'">Operator Registration</h6>
                                                                            </div>
                                                                            <div class="container shadow p-3 mb-5 bg-white rounded"
                                                                                style="padding: 30px">
                                                                        
                                                                                <form action="#" method="post">
                                                                        
                                                                                    <input type="date" id="currentDate" hidden>
                                                                        
                                                                                    <div class="input-group input-group " id="floatingInput"
                                                                                        style="margin-bottom: 2em">
                                                                                        <input type="text" placeholder="Firstname" name="firstname"
                                                                                            class="input1 form-control" style="margin-right: 30px;" required>
                                                                                        <input type="text" placeholder="Lastname" name="lastname"
                                                                                            class="input1 form-control" required>
                                                                                    </div>
                                                                                    <div class="input-group input-group" style="margin-bottom: 2em">
                                                                                        <input type="date" id="birthday" name="birthday"
                                                                                            onchange="ageCount()" class="input1 form-control"
                                                                                            style="margin-right: 10px; width: 80px" required> <input
                                                                                            type="text" id="age" name="age" placeholder="Age" class="input1 "
                                                                                            style="margin-right: 10px; width: 70px;" disabled> <input
                                                                                            type="number" placeholder="Contact Number" name="contact"
                                                                                            class="input1 form-control" style="">
                                                                                    </div>
                                                                                    <div class="input-group input-group " id="floatingInput"
                                                                                        style="margin-bottom: 2em">
                                                                                        <input type="email" placeholder="Email" name="email"
                                                                                            class="input1 form-control" style="margin-right: 30px;" required>
                                                                                        <input type="password" placeholder="Password" name="password"
                                                                                            class="input1 form-control" required>
                                                                                    </div>
                                                                        
                                                                                    <div class="text-center">
                                                                                        <button class="btn btn-outline-primary btn-sm"
                                                                                            style="margin-right: 20px;" onclick="sendVerify()">Get
                                                                                            Verification</button>
                                                                                        <input type="text" placeholder="Enter 6 digit verification code"
                                                                                            name="verify" class="input1">
                                                                        
                                                                                        <p style="font-family: 'Century Gothic'">
                                                                                            Didn't Received the code ? <a href="#">Resend</a>
                                                                                        </p>
                                                                                    </div>
                                                                        
                                                                        
                                                                                    <div class="input-group input-group " id="floatingInput"
                                                                                        style="margin-top: 3em">
                                                                                        <button type="submit" class="btn btn-primary btn-l btn2  btn-block">SUBMIT</button>
                                                                                    </div>
                                                                                </form>
                                                                            </div>
                                                                        
                                                                        </div>
                                                                        
                                                                        <script type="text/javascript">
                                                                            function ageCount() {
                                                                        
                                                                                var dobget = document.getElementById("birthday").value;
                                                                                var dob = new Date(dobget);
                                                                        
                                                                                var month_diff = Date.now() - dob.getTime();
                                                                                var age_dt = new Date(month_diff);
                                                                                var year = age_dt.getUTCFullYear();
                                                                                var age = Math.abs(year - 1970);
                                                                        
                                                                                document.getElementById('age').value = age;
                                                                            }
                                                                        </script>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
        




                                                <div class="container">
                                                    <div class="main col-20">
                                                        <div class="row first-row">
                                                            <div class="md-col-12">
                                                                <div class="modal fade" id="delete_operator">
                                                                    <div class="modal-dialog modal-xl">
                                                                        <div class="modal-content">
                                                                            <div class="container col-md-5 col-md-offset-3 mt-5"
                                                                            style="overflow: auto; margin-top: 5m;">
                                                                                    <div class="divheader shadow rounded text-center">
                                                                                    <h6 style="color: white; font-family: 'Century Gothic'">Delete Operator Account</h6>
                                                                                        </div>
                                                                                        <div class="container shadow p-3 mb-5 bg-white rounded"
                                                                                            style="padding: 30px">
                                                                                            <form class="d-flex">
              
                                                                                                <input class="form-control mr-2" type="search" placeholder="Search by Email" aria-label="Search">
                                                                                                <button class="btn btn-outline-primary" type="submit" style="margin-bottom: 2em">Search</button>
                                                                                              </form>
                                                                                    
                                                                                            <form action="#" id="operator_account" method="post">
                                                                                    
                                                                                                <input type="date" id="currentDate" hidden>
                                                                                    
                                                                                                <div class="input-group input-group " id="floatingInput"
                                                                                                    style="margin-bottom: 1em">
                                                                                                    <input type="text" placeholder="Firstname" name="firstname"
                                                                                                        class="input1 form-control" style="margin-right: 30px;" required>
                                                                                                    <input type="text" placeholder="Lastname" name="lastname"
                                                                                                        class="input1 form-control" required>
                                                                                                </div>
                                                                                                <div class="input-group input-group" style="margin-bottom: 2em">
                                                                                                     <input
                                                                                                        type="number" placeholder="Contact Number" name="contact"
                                                                                                        class="input1 form-control" style="">
                                                                                                </div>
                                                                                                <div class="input-group input-group " id="floatingInput"
                                                                                                    style="margin-bottom: 2em">
                                                                                                    <input type="email" placeholder="Email" name="email"
                                                                                                        class="input1 form-control" style="margin-right: 30px;" required>
                                                                                                    <input type="password" placeholder="Password" name="password"
                                                                                                        class="input1 form-control" required>
                                                                                                </div>
                                                                                                <div class="input-group input-group " id="floatingInput"
                                                                                                    style="margin-top: 3em">
                                                                                                    <button type="submit" class="btn btn-primary btn-l btn2  btn-block">DELETE</button>
                                                                                                </div>
                                                                                            </form>
                                                                                        </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            
                                                        
                                                            <div class="container" id="deletedriver">
                                                                <div class="main col-20">
                                                                    <div class="row first-row">
                                                                        <div class="md-col-12">
                                                                            <div class="modal fade" id="delete_driver">
                                                                                <div class="modal-dialog modal-xl">
                                                                                    <div class="modal-content">
                                                                                        <div class="container col-md-5 col-md-offset-3 mt-5"
                                                                                        style="overflow: auto; margin-top: 5m;">
                                                                                                <div class="divheader shadow rounded text-center">
                                                                                                <h6 style="color: white; font-family: 'Century Gothic'">Delete Driver Account</h6>
                                                                                                    </div>
                                                                                                    <div class="container shadow p-3 mb-5 bg-white rounded"
                                                                                                        style="padding: 30px">
                                                                                                        <form class="d-flex">
                                                                                                            
                                                                                                            <input class="form-control mr-2" type="search" placeholder="Search by Email" aria-label="Search">
                                                                                                            <button class="btn btn-outline-primary" type="submit" style="margin-bottom: 2em">Search</button>
                                                                                                          </form>
                                                                                                
                                                                                                        <form action="#" method="post">
                                                                                                
                                                                                                            <input type="date" id="currentDate" hidden>
                                                                                                
                                                                                                            <div class="input-group input-group " id="floatingInput"
                                                                                                                style="margin-bottom: 1em">
                                                                                                                <input type="text" placeholder="Firstname" name="firstname"
                                                                                                                    class="input1 form-control" style="margin-right: 30px;" required>
                                                                                                                <input type="text" placeholder="Lastname" name="lastname"
                                                                                                                    class="input1 form-control" required>
                                                                                                            </div>
                                                                                                            <div class="input-group input-group" style="margin-bottom: 2em">
                                                                                                                 <input
                                                                                                                    type="number" placeholder="Contact Number" name="contact"
                                                                                                                    class="input1 form-control" style="">
                                                                                                            </div>
                                                                                                            <div class="input-group input-group " id="floatingInput"
                                                                                                                style="margin-bottom: 2em">
                                                                                                                <input type="email" placeholder="Email" name="email"
                                                                                                                    class="input1 form-control" style="margin-right: 30px;" required>
                                                                                                                <input type="password" placeholder="Password" name="password"
                                                                                                                    class="input1 form-control" required>
                                                                                                            </div>
                                                                                                            <div class="input-group input-group " id="floatingInput"
                                                                                                                style="margin-top: 3em">
                                                                                                                <button type="submit" class="btn btn-primary btn-l btn2  btn-block">DELETE</button>
                                                                                                            </div>
                                                                                                        </form>
                                                                                                    </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                    
                                                            
                                                                       
                                                                                 

                                               


    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
  </body>
</html>
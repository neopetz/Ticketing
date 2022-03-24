<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <title>Operator</title>
  </head>

   <style>
    .jumbotron{
          margin-top: 55px;
          background-color: whitesmoke;
      }
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
        background-color: white;
        background-image: url(/images/BEACH1.jpg);
        background-size:cover;
        opacity: 80%;
    }

    
    placeholder {
        font-size: 10px;
    }
    #bookpassenger{
        background-image: url(/images/logo.png);
        background-size: cover;
    }
    #table_panel{
        margin-top: 70px;
        opacity: 50%;
    }
    #drivertable{
        font-size: 25px;
        font-family: Times New Roman;
    }
    .row{
        margin-top: 20px;
        margin-left: 10px;
        margin-right: 10px;
    }
    .nav{
      opacity: 50%;
    }

</style>
  <body>




    <nav class="navbar navbar-expand-md bg-light navbar-light fixed-top">
        <!-- Brand -->
        <a class="navbar-brand"><img src="#"></a>
        <a class="navbar-brand" href="#">iWantTranseat</a>
            
        <!-- Toggler/collapsibe Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <!-- Navbar links -->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
          <ul class="navbar-nav">
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
        </div>
        <form class="form-inline" action="/action_page.php">
            <input class="form-control mr-sm-2" type="text" placeholder="Search by Email">
            
            <button class="btn btn-primary" type="submit"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
              </svg></button>
          </form>
      </nav>




    <div class="jumbotron text-center">
        <table class="table table-striped table-primary">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">First</th>
                <th scope="col">Last</th>
                <th scope="col">status</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row"></th>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <th scope="row"></th>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <th scope="row"></th>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </tbody>
          </table>
      </div>
        
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <table class="table table-striped table-light">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row"></th>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th scope="row"></th>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th scope="row"></th>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                </tbody>
              </table>
          </div>
          <div class="col-sm-4">
            <table class="table table-striped table-light">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row"></th>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th scope="row"></th>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th scope="row"></th>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                </tbody>
              </table>
          </div>
          <div class="col-sm-4">
            <table class="table table-striped table-light">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row"></th>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th scope="row"></th>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <th scope="row"></th>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                </tbody>
              </table>
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
                                <div class="container col-md-5 col-md-offset-3 mt-5" style="overflow: auto; margin-top: 50px;" id="passenger_registration">
                                        <div class="divheader shadow rounded text-center"><h6 style="color: white; font-family: 'Century Gothic'">Create Operator Account</h6></div>
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



    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>


  </body>
</html>
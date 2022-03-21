<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    
  <!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <html lang="en">
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>iWantTranSeat</title>
    
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
 
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
 
    <link href="css/sb-admin.css" rel="stylesheet">
    </head>
    <body class="fixed-nav sticky-footer bg-dark" id="page-top">
    
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.php">iWantTranSeat</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
    <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
    <a class="nav-link" href="index.php">
    <i class="fa fa-fw fa-dashboard"></i>
    <span class="nav-link-text">Dashboard</span>
    </a>
    </li>
    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
    <a class="nav-link" href="product.php">
    <i class="fa fa-check-square"></i>
    <span class="nav-link-text">On Going Trail</span>
    </a>
    </li>
    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
    <a class="nav-link" href="register.php">
    <i class="fa fas fa-user"></i>
    <span class="nav-link-text">Registered Admin</span>
    </a>
    </li>
    </ul>
    <ul class="navbar-nav sidenav-toggler">
    <li class="nav-item">
    <a class="nav-link text-center" id="sidenavToggler">
    <i class="fa fa-fw fa-angle-left"></i>
    </a>
   
    <li class="nav-item">
    <form class="form-inline my-2 my-lg-0 mr-lg-2">
    <div class="input-group">
    <input class="form-control" type="text" placeholder="Search for...">
    <span class="input-group-append">
    <button class="btn btn-primary" type="button">
    <i class="fa fa-search"></i>
    </button>
    </span>
    </div>
    </form>
    </li>
    <li class="nav-item">
    <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
    <i class="fa fa-fw fa-sign-out"></i>Logout</a>
    </li>
    </ul>
    </div>
    </nav>
    <div class="content-wrapper">
    <div class="container-fluid">
   
    <ol class="breadcrumb">
    <li class="breadcrumb-item">
    <a href="#">Dashboard</a>
    </li>
    <li class="breadcrumb-item active">My Dashboard</li>
    </ol>


    <div class="row">
    <div class="col-xl-3 col-sm-6 mb-3">
    <div class="card text-white bg-primary o-hidden h-100">
    <div class="card-body">
    <div class="card-body-icon">
    <i class="fa fa-fw fa-comments"></i>
    </div>
    <div class="mr-5">Dashboard 1</div>
    </div>
    <a class="card-footer text-white clearfix small z-1" href="#">
    <span class="float-left">View Details</span>
    <span class="float-right">
    <i class="fa fa-angle-right"></i>
    </span>
    </a>
    </div>
    </div>
    <div class="col-xl-3 col-sm-6 mb-3">
    <div class="card text-white bg-warning o-hidden h-100">
    <div class="card-body">
    <div class="card-body-icon">
    <i class="fa fa-fw fa-list"></i>
    </div>
    <div class="mr-5">Dashboard 2</div>
    </div>
    <a class="card-footer text-white clearfix small z-1" href="#">
    <span class="float-left">View Details</span>
    <span class="float-right">
    <i class="fa fa-angle-right"></i>
    </span>
    </a>
    </div>
    </div>
    <div class="col-xl-3 col-sm-6 mb-3">
    <div class="card text-white bg-success o-hidden h-100">
    <div class="card-body">
    <div class="card-body-icon">
    <i class="fa fa-fw fa-shopping-cart"></i>
    </div>
    <div class="mr-5">Dashboard 3</div>
    </div>
    <a class="card-footer text-white clearfix small z-1" href="#">
    <span class="float-left">View Details</span>
    <span class="float-right">
    <i class="fa fa-angle-right"></i>
    </span>
    </a>
    </div>
    </div>
    <div class="col-xl-3 col-sm-6 mb-3">
    <div class="card text-white bg-dark o-hidden h-100">
    <div class="card-body">
    <div class="card-body-icon">
    <i class="fa fa-fw fa-support"></i>
    </div>
    <div class="mr-5">Total Boarding</div>
    </div>
    <a class="card-footer text-white clearfix small z-1" href="#">
    <span class="float-left">View Details</span>
    <span class="float-right">
    <i class="fa fa-angle-right"></i>
    </span>
    </a>
    </div>
    </div>
    </div>
    <script type="text/javascript">
    </script>

    <div class="card mb-3">
    <div class="card-header">
    <i class="fa fa-area-chart"></i> </div>
    <div class="card-body">
    <canvas id="myAreaChart" width="100%" height="30"></canvas>
    </div>
    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
    </div>

    <div class="card mb-3">
    <div class="card-header">
    <i class="fa fa-table"></i>Passengers Data Table </div>
    <div class="card-body">
    <div class="table-responsive">
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
    <thead>
    </thead>
    <tfoot>
    <tr>
    <th>ID</th>
    <th>Name of Passenger</th>
    <th>Price of Ticket</th>
    <th>Bus Line Number</th>
    <th>Details</th>
    </tr>
    </tfoot>
    </table>
    </div>
    </div>
    </div>
    </div>

    <footer class="sticky-footer">
    <div class="container">
    <div class="text-center">
    <small>Copyright © iWanTranSeat</small>
    </div>
    </div>
    </footer>

    <a class="scroll-to-top rounded" href="#page-top">
    <i class="fa fa-angle-up"></i>
    </a>
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
    <div class="modal-content">
    <div class="modal-header">
    <div class="modal-footer">
    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
    <a class="btn btn-primary" href="login.html">Logout</a>
    </div>
    </div>
    </div>
    </div>
 
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
   
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

    <script src="js/sb-admin.min.js"></script>

    <script src="js/sb-admin-datatables.min.js"></script>
    <script src="js/sb-admin-charts.min.js"></script>
    </div>
    </body>
-->

<html>
    
    <head>
        <title> Admin Panel UI</title>
                    <!--CSS Only-->
                    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
                        <link rel="stylesheet" href="styles.css" />
                    <!--Javascript and dependencies-->
                    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </head>
    <style>
        body{
        height: 100vh;
    }
    #topbar{
        background-color: aliceblue;
    }
    .search-form{
        width: 30%;
    }
    
    #sidebar{
        position:fixed;
        top:0;
        bottom: 0;
        left: 0;
        z-index: 9999;
        box-shadow: -1px 0 0 rgba(0,0,0,.1);
        max-width: 20vw;
        background-color: aliceblue;
        
    }
    #sidebar .nav-item{
        text-align: left;
        padding: 8px 0;
    
    }
    #sidebar .nav-item a{
        color: rgba(0,0,0,.2);
    }
    #sidebar .nav-item a.active{
        color: #331b3a;
    }
    .vertical-nav{
        margin-top: 5vh;
    }
    a.navbar-brand{
        text-align: center;
        width: 50%;
        display: block;
    }
    section{
        margin: 10px;
    }
    .main{
        padding: 5rem;
        padding-top: calc(4rem,74px);
    }
    .main .firs-row, .main .second-row{
        padding-bottom: 3rem;
    }
    .main .row .card{
        border: 0;
        box-shadow: 2px 0 10px rgba(0,0,0,.1);
        max-height: 100%;
    
    }
    .card-header{
        background: white;
        font-weight: 700;
        padding: 20px;
    }
    label.col-md-6{
        font-size: 30px;
        font-family: Edwardian script;
    }
    img.logo{
        font-size: 10px;
    }
    div.col-md-6{
        margin-left: 10px;
    }
    div.col-10{
        margin-left: 10px;
    }
    div.col-md-2{
        margin-left: 10px;
    }
    div.col-sm-10{
        margin-left: 10px;
    }
    label.logo-trans{
        font-size: xx-large;
        font-family: Edwardian Script ITC;
    }
    </style>
    
    <body>
      <img src="" class="img-thumbnail" alt="">
        <!--Top Navbar-->
        <section></section>
        <nav class="navbar navbar-expand-lg py-3 px-3 auto-hiding-navbar fixed-top" id="topbar">
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button> 
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <form class="search-form d-flex ml-auto mt-1 mb-1">
                    <input class="form-control me-2" type="search" placeholder="Enter Text" aria-label="Search">
                    <button class="btn btn-outline-primary" type="submit" text-white >Search</button>
                  </form>
                <ul class="navbar-nav ml-auto">
                  <!--<li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                  </li>-->
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Hello Admin
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="#">Settings</a></li>
                      <li><a class="dropdown-item" href="#" data-bs-target="#create-operator" data-bs-toggle="modal">Create Operator Account</a></li>
                   
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Logout</a>
                  </li>
                </ul>
              </div>
          </nav>
        <!--End Top Navbar-->

        <div class="row">
            <!--Sidebar Nav-->
                <div class="col-1">
                    <nav id="sidebar" class="col sidebar">
                       
                        <a href="#" class="navbar-brand">
                            <img src="/Ticketing/src/main/webapp/assets/LOGO.png" alt="" class="logo">
                        </a>
                        <label class="logo-trans">iWantTranseat</label>
                        <ul class="nav flex-column vertical-nav">
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
                              <a class="nav-link active" href="#" data-bs-target="#MyModals" data-bs-toggle="modal">
                                <button type="button" class="btn btn-outline-primary">Book Passenger
                                <svg xmlns="http://www.w3.org/2000/svg" width="55" height="25" fill="currentColor" class="bi bi-person-plus-fill" viewBox="0 0 16 16">
                                    <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                    <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
                                  </svg>
                                  </button>
                              </a>
                            </li>
                             <!--<li class="nav-item">
                                <a class="nav-link active" href="#">
                                    <button type="button" class="btn btn-outline-primary">Setting
                                    <svg xmlns="http://www.w3.org/2000/svg" width="120" height="25" fill="currentColor" class="bi bi-wrench-adjustable" viewBox="0 0 16 16">
                                        <path d="M16 4.5a4.492 4.492 0 0 1-1.703 3.526L13 5l2.959-1.11c.027.2.041.403.041.61Z"/>
                                        <path d="M11.5 9c.653 0 1.273-.139 1.833-.39L12 5.5 11 3l3.826-1.53A4.5 4.5 0 0 0 7.29 6.092l-6.116 5.096a2.583 2.583 0 1 0 3.638 3.638L9.908 8.71A4.49 4.49 0 0 0 11.5 9Zm-1.292-4.361-.596.893.809-.27a.25.25 0 0 1 .287.377l-.596.893.809-.27.158.475-1.5.5a.25.25 0 0 1-.287-.376l.596-.893-.809.27a.25.25 0 0 1-.287-.377l.596-.893-.809.27-.158-.475 1.5-.5a.25.25 0 0 1 .287.376ZM3 14a1 1 0 1 1 0-2 1 1 0 0 1 0 2Z"/>
                                      </svg>
                                    </button>
                                </a>
                              </li>-->
                                <!--<li class="nav-item">
                                <a class="nav-link active" href="#">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-credit-card" viewBox="0 0 16 16">
                                        <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v1h14V4a1 1 0 0 0-1-1H2zm13 4H1v5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V7z"/>
                                        <path d="M2 10a1 1 0 0 1 1-1h1a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-1z"/>
                                      </svg>
  
                                </a>
                              </li>-->
                        </ul>
                    </nav>
                </div>
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
                    /*
                    body{
                     background-image: url('logo.png');
                      background-repeat: no-repeat;
                      background-attachment: fixed;
                      background-size: cover;
                      opcaity:50%;
                    }
                    */
                    placeholder {
                        font-size: 10px;
                    }
                    </style>
                    <div class="container">
                     <div class="main col-20">
                        <div class="row first-row">
                            <div class="md-col-12">
                                <div class="modal fade" id="MyModals">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                    <div class="container col-md-5 col-md-offset-3 mt-5"
                        style="overflow: auto; margin-top: 5m;">
                        <div class="divheader shadow rounded text-center">
                            <h6 style="color: white; font-family: 'Century Gothic'">Passenger
                                Registration</h6>
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












              <!-- <div class="container">
                    <div class="main col-20">
                        <div class="row first-row">
                            <div class="col-12">
                                <div class="modal fade" id="Schedule">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">-->
                <div class="main col-11">
                    <div class="row first-row">
                        <form style="width: 500; margin-left: 30%;">
                            <div class="form-group row">
                              <label for="inputEmail3" class="col-sm-6 col-form-label">Start Point</label>
                              <div class="col-sm-10">
                                <input type="email" class="form-control" id="inputEmail3">
                              </div>
                            </div>
                            <div class="form-group row">
                              <label for="inputPassword3" class="col-sm-6 col-form-label">End Point</label>
                              <div class="col-sm-10">
                                <input type="password" class="form-control" id="inputPassword3">
                              </div>
                            </div>
                            <fieldset class="form-group row">
                              <legend class="col-form-label col-sm-2 float-sm-left pt-0">Radios</legend>
                              <div class="col-sm-10">
                                <div class="form-check">
                                  <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                                  <label class="form-check-label" for="gridRadios1">
                                    First radio
                                  </label>
                                </div>
                                <div class="form-check">
                                  <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                                  <label class="form-check-label" for="gridRadios2">
                                    Second radio
                                  </label>
                                </div>
                                <div class="form-check disabled">
                                  <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3" disabled>
                                  <label class="form-check-label" for="gridRadios3">
                                    Third disabled radio
                                  </label>
                                </div>
                              </div>
                            </fieldset>
                            <div class="form-group row">
                              <div class="col-sm-10 offset-sm-2">
                                <div class="form-check">
                                  <input class="form-check-input" type="checkbox" id="gridCheck1">
                                  <label class="form-check-label" for="gridCheck1">
                                    Example checkbox
                                  </label>
                                </div>
                              </div>
                            </div>
                            <div class="form-group row">
                              <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Booked</button>
                              </div>
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
                        






                        <div class="container">
                            <div class="main col-20">
                               <div class="row first-row">
                                   <div class="md-col-12">
                                       <div class="modal fade" id="create-operator">
                                           <div class="modal-dialog modal-lg">
                                               <div class="modal-content">
                                        <label id="createaccount" class="col-md-6">Create Operator Account</label>
                                        <form >
                                            <div class="col-md-6" >
                                            <label for="inputEmail4" class="form-label">Full Name</label>
                                            <input type="email" class="form-control" id="inputEmail4">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="inputEmail4" class="form-label">Email</label>
                                                <input type="email" class="form-control" id="inputEmail4">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="inputEmail4" class="form-label">User Name</label>
                                                <input type="email" class="form-control" id="inputEmail4">
                                            </div>
                                            <div class="col-md-6">
                                            <label for="inputPassword4" class="form-label">Password</label>
                                            <input type="password" class="form-control" id="inputPassword4">
                                            </div>
                                            <div class="col-10">
                                            <label for="inputAddress" class="form-label">Current Address</label>
                                            <input type="text" class="form-control" id="inputAddress" placeholder="Complete Address">
                                            </div>
                                            <div class="col-10">
                                            <label for="inputAddress2" class="form-label">Permanent Address</label>
                                            <input type="text" class="form-control" id="inputAddress2" placeholder="Complete Address">
                                            </div>
                                           <!-- <div class="col-md-6">
                                            <label for="inputCity" class="form-label">City</label>
                                            <input type="text" class="form-control" id="inputCity">
                                            </div>
                                            <div class="col-md-4">
                                            <label for="inputState" class="form-label">State</label>
                                            <select id="inputState" class="form-select">
                                                <option selected>Choose...</option>
                                                <option>Agusan Del Norte</option>
                                                <option>Albay</option>
                                                <option>Batangas</option>
                                                <option>Benguet</option>
                                                <option>Cagayan</option>
                                                <option>Camarines Sur</option>
                                                <option>Capiz</option>
                                                <option>Cebu</option>
                                                <option>Davao Del Norte</option>
                                                <option>Davao Del sur</option>
                                                <option>Dinagat Islands</option>
                                                <option>Ilocos Norte</option>
                                                <option>Ilocos Sur</option>
                                                <option>Iloilo</option>
                                                <option>Laguna</option>
                                                <option>Lanao Del Norte</option>
                                                <option>Leyte</option>
                                                <option>Metropolitan Manila</option>
                                                <option>Misamis Occidental</option>
                                                <option>Misamis Oriental</option>
                                                <option>Negros Occidental</option>
                                                <option>Nueva Ecija</option>
                                                <option>Palawan</option>
                                                <option>Pampanga</option>
                                                <option>Pangasinan</option>
                                                <option>Samar</option>
                                                <option>Shariff Kabunsuan</option>
                                                <option>South Cotabato</option>
                                                <option>Tarlac</option>
                                                <option>Zambales</option>
                                                <option>Zamboanga Del Sur</option>
                                            </select>
                                            </div>
                                            <div class="col-md-2">
                                            <label for="inputZip" class="form-label">Zip</label>
                                            <input type="text" class="form-control" id="inputZip">
                                            </div>
                                            <div class="col-12">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="gridCheck">
                                                <label class="form-check-label" for="gridCheck">
                                                Check me out
                                                </label>
                                            </div>
                                            </div>-->
                                            <div class="col-sm-10">
                                            <button type="submit" class="btn btn-primary">Sign in</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End Sidebar Nav-->
            <!--<div class="main col-11">
                <div class="row first-row">
                    <div class="col-4">
                        <section id="recently-posted">
                            <div class="card">
                                <div class="card-header">
                                    Recently Published Posts
                                </div>
                                <ul class="list-group list-group-flush">
                                  <li class="list-group-item">
                                    <div class="row g-0">
                                        <div class="col-md-3">
                                            <img src="#" alt="Post One Photo" class="img-fluid rounded-lg">
                                        </div>
                                        <div class="col-md-9">
                                            <div class="card-body">
                                                <h6 class="card-title">I realized quickly when I knew I should
                                                  That the world was made up of this brotherhood of man
                                                  For whatever that means</h6>
                                                  <p class="card-text">And so I cry sometimes when I'm lying in bed
                                                      Just to get it all out what's in my head
                                                      And I, I am feeling a little peculiar</p>
                                                      <p class="card-text"><small class="text-muted">Added 3 days ago</small></p>

                                            </div>

                                        </div>
                                        
                                      </div>
                                  </li>
                                  <li class="list-group-item">
                                    <div class="row g-0">
                                        <div class="col-md-3">
                                            <img src="#" alt="Post One Photo" class="img-fluid rounded-lg">
                                        </div>
                                        <div class="col-md-9">
                                            <div class="card-body">
                                                <h6 class="card-title">I realized quickly when I knew I should
                                                  That the world was made up of this brotherhood of man
                                                  For whatever that means</h6>
                                                  <p class="card-text">And so I cry sometimes when I'm lying in bed
                                                      Just to get it all out what's in my head
                                                      And I, I am feeling a little peculiar</p>
                                                      <p class="card-text"><small class="text-muted">Added 3 days ago</small></p>

                                            </div>

                                        </div>
                                        
                                      </div>
                                  </li>
                                  <li class="list-group-item">
                                    <div class="row g-0">
                                        <div class="col-md-3">
                                            <img src="#" alt="Post One Photo" class="img-fluid rounded-lg">
                                        </div>
                                        <div class="col-md-9">
                                            <div class="card-body">
                                                <h6 class="card-title">I realized quickly when I knew I should
                                                  That the world was made up of this brotherhood of man
                                                  For whatever that means</h6>
                                                  <p class="card-text">And so I cry sometimes when I'm lying in bed
                                                      Just to get it all out what's in my head
                                                      And I, I am feeling a little peculiar</p>
                                                      <p class="card-text"><small class="text-muted">Added 3 days ago</small></p>

                                            </div>

                                        </div>
                                        
                                      </div>
                                  </li>
                                </ul>
                              </div>
                        </section>
                    </div>
                       
                        <div class="col-8">
                            <section id="statistics">
                                <div class="card">
                                    <div class="card-header">
                                            Statistics
                                    </div>
                                        <div class="stats py-3 px-4">
                                            <div class="py-4">
                                                <div class="progress">
                                                        <div class="progress-bar progress-bar-striped" role="progressbar" 
                                                            style="width: 60%" aria-valuenow="57" aria-valuemin="0" 
                                                            aria-valuemax="100">
                                                        </div>
                                                      
                                                  </div>
                                                  <p class="card-text">Registered</p>
                                            </div>
                                            <div class="py-4">
                                                <div class="progress">
                                                        <div class="progress-bar progress-bar-striped bg-success" role="progressbar" 
                                                            style="width: 36%" aria-valuenow="36" aria-valuemin="0" 
                                                            aria-valuemax="100">
                                                        </div>
                                                        
                                                  </div>
                                                  <p class="card-text">Cancel</p>
                                            </div>
                                            <div class="py-4">
                                                <div class="progress">
                                                        <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" 
                                                            style="width: 22%" aria-valuenow="22" aria-valuemin="0" 
                                                            aria-valuemax="100">
                                                        </div>
                                                     
                                                  </div>
                                                  <p class="card-text">Rebook</p>
                                            </div>
                                            <div class="py-4">
                                                <div class="progress">
                                                        <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" 
                                                            style="width: 10%" aria-valuenow="10" aria-valuemin="0" 
                                                            aria-valuemax="100">
                                                        </div>
                                                       
                                                  </div>
                                                  <p class="card-text">NON AGGRESION</p>
                                            </div>
                                        </div>
                                  </div>
                            </section>
                           


                        </div>

                        <div class="row second-row">
                            <div class="col-4">
                                <section id="recently-commented">
                                    <div class="card">
                                        <div class="card-header">
                                            Latest Comment
                                        </div>
                                        <ul class="list-group list-group-flush">
                                            <div class="row g-0">
                                                <div class="col">
                                                    <img src="#" alt="Post One Photo" class="img-fluid rounded-lg">
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="card-body">
                                                        <h6 class="card-title">username</h6>
                                                          <p class="card-text">And so I cry sometimes when I'm lying in bed
                                                              Just to get it all out what's in my head
                                                              And I, I am feeling a little peculiar</p>
                                                              <p class="card-text"><small class="text-muted">Added 3 days ago</small></p>
                                                    </div>
                                                </div>
                                              </div>
                                        </ul>
                                      </div>

                                </section>

                            </div>
                        
                        <div class="col-5">
                            <section id="notes-form">
                                <div class="card">
                                    <div class="card-header">
                                        Write a note
                                    </div>
                                   <div class="card-body px-4">
                                        <form>
                                            <div class="mb-3">
                                                <label class="form-label">Your Note</label>
                                                <textarea class="form-control" rows="10"></textarea>
                                            </div>
                                            <button type="submit" class="btn btn-primary">Save</button>
                                        </form>
                                   </div>
                                  </div>
                            </section>
                        </div>
                        <div class="col">
                            <section id="active-user">
                                <div class="card">
                                    <div class="card-header">
                                        Most Active User
                                    </div>
                                    <div class="card-body text-center">
                                        <div class="img-container mb-4">
                                            <img src="./assets/IMG.jpg" alt="User" class="card-img-top"/>
                                        </div>
                                      <h5 class="card-title">Edward Quares</h5>
                                      <p class="card-text">Commented <span class="badge badge-light">187</span>Times</p>
                                      <p class="card-text">Posted <span class="badge badge-light">18</span>Articles</p>
                                    </div>
                                  </div>
                            </section>
                        </div>
                    </div>
                </div> -->
            </div> 
        </div>
        
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<!-- Bootstrap 4 JS -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
	crossorigin="anonymous"></script>
                   
    </body>
    </html>
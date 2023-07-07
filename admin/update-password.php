<?php
session_start();
include 'connection.php';

if (isset($_GET['submit'])) {
    $a = $_GET['password'];
    $b = $_GET['cpassword'];
    $a = md5($a);
    $b = md5($b);
    if ($a == $b) {
        $query = "update admins set password='$b' ";
        $run = mysqli_query($conn, $query);
        if ($run) {
            header("location:index.php");
            exit(); // It's a good practice to add an exit() after the header() function to stop the script execution.
        }
    } else {
        echo "<script>window.alert('Password not being match!')</script>";
    }
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Admin Panel Dashboard</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="../css/style4.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

</head>

<body>

    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Admin Panel</h3>
                <strong>AP</strong>
            </div>

            <ul class="list-unstyled components">
                <li class="active">
                    <a href="#postSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">

                        Post
                    </a>
                    <ul class="collapse list-unstyled" id="postSubmenu">
                        <li>
                            <a href="post-add.php">Add Post</a>
                        </li>
                        <li>
                            <a href="post-view.php">View Post</a>
                        </li>

                    </ul>
                </li>
                <li>
                    <a href="upload-video.php">

                        Add-Video
                    </a>
                    <a href="upload-photo.php">

                        Add Photo
                    </a>
                    <a href="#createSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">

                        Create
                    </a>
                    <ul class="collapse list-unstyled" id="createSubmenu">
                        <li>
                            <a href="add-user.php">New User</a>
                        </li>
                        <li>
                            <a href="add-admin.php">New Admin</a>
                        </li>

                    </ul>
                    <a href="#viewSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">

                        View
                    </a>
                    <ul class="collapse list-unstyled" id="viewSubmenu">
                        <li>
                            <a href="view-user.php">User</a>
                        </li>
                        <li>
                            <a href="admin-view.php"> Admin</a>
                        </li>

                    </ul>
                </li>
                <li>
                    <a href="comment-view.php">

                        View Comment
                    </a>
                </li>
                <li>
                    <a href="view-booking.php">

                        View Booking
                    </a>
                </li>

            </ul>

            <ul class="list-unstyled CTAs bg-lightyellow">

                <li>
                    <a href="../index.php" class="article">Back to User's Home Page</a>
                </li>
            </ul>
        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-lightpurple">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>

                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    
                </div>
            </nav>

            <!-- login form start-->
            <div class="container" style="padding:40px">
                <div class="row">
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-10">
                        <h2 class="display-4">Update Password</h2>
                        <form action="" method="get">
                            <div class="form-group">
                                <label for="password">New Password:</label>
                                <input type="password" name="password" id="password" class="form-control" placeholder="New Password" aria-describedby="helpId" required autofocus>
                            </div>
                            <div class="form-group">
                                <label for="cpassword">Confirm Password:</label>
                                <input type="password" name="cpassword" id="password" class="form-control" placeholder="Confirm Password" aria-describedby="helpId" required autofocus>
                            </div>

                            <button type="submit" class="btn btn-success btn-lg bg-dark" name="submit">Update Password</button>
                            <button type="reset" class="btn btn-danger btn-lg">Cancel</button>
                            <a href="signup.php" class="btn btn-primary btn-lg btn-block bg-dark" style="margin:10px 0px">Create New Account</a>


                        </form>


                    </div>
                </div>
                <div class="col-md-1">
                </div>
            </div>
        </div>
        <!-- login form end -->

    </div>
    </div>

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#sidebarCollapse').on('click', function() {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
</body>

</html>
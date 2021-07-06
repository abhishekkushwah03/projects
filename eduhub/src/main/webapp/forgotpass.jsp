
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Optimal Web : Contact Form With JS</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    </head>

    <body>
        <!-- contact1 -->
        <section class="w3l-simple-contact-form1">
            <div class="contact-form section-gap">
                <div class="wrapper">
                    <div class="text-center">
                        <h1 style="font-size: 40px; ">Reset Password</h1>
                    </div>
                    <div class="contact-form" style="max-width: 450px; margin: 0 auto;">
                        <div class="form-mid">
                            <form id="form_action"  action="javascript:sendmail()" method="post">
                                <!-- <div class="field">
                                  <input type="text" class="form-control" name="Name" id="Name" placeholder="Name" required="">
                                </div> -->
                                <div class="field">
                                    <input type="email" class="form-control" name="Sender" id="Sender" placeholder="Email" required="">
                                </div>
                                <div class="field">
                                    <input style="display:none;" type="text" class="form-control" name="Subject" id="Subject"
                                           placeholder="Enter OTP here">
                                </div>
                                <div class="field">
                                    <input type="password" class="form-control" name="Password" id="password"
                                           placeholder="Enter new Password" style="display: none;">
                                    <!-- <i class="far fa-eye" id="togglePassword" ></i> -->
                                </div>
                                <button onclick="sendmail()" id="otpbutton" class="btn btn-contact"
                                        style="background-color: darkslategrey;display: flex;">Send OTP</button>
                                <!-- <input type="button" class="btn btn-contact" onclick="sendmail();"  value="Send Message"> -->
                                <button type="submit" id="button" class="btn btn-contact"
                                        style="background-color: darkslategrey;display: none;">submit</button>
                            </form>


                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /contact1 -->

        <!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> -->
        <script src="https://code.jquery.com/jquery-2.2.4.min.js"
        integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>      
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

        <script src="https://smtpjs.com/v3/smtp.js"></script>

        <script>
                                    // This funtion will show the otp block
                                    function sendOtp() {
                                        let x = false;
                                        document.querySelector('#Subject').style.display = "flex";
                                        document.querySelector('#otpbutton').style.display = "none";
                                        document.querySelector('#button').style.display = "flex";
                                        document.querySelector('#password').style.display = "flex";
                                        //document.querySelector('#password1').style.display = "flex";
                                        //document.querySelector('#togglePassword').style.visibility = "visible";

                                        x = true;
                                        return x;
                                    }
                                    ;

                                    function generateOTP() {

                                        // Declare a digits variable 
                                        // which stores all digits
                                        var digits = '0123456789';
                                        let OTP = '';
                                        for (let i = 0; i < 6; i++) {
                                            OTP += digits[Math.floor(Math.random() * 10)];
                                        }
                                        return OTP;
                                    }



                                    function sendmail() {

                                        // var name = $('#Name').val();
                                        var email = $('#Sender').val();
                                        //var subject = $('#Subject').val();
                                        // var message = $('#Message').val();

                                        // var body = $('#body').val();

                                        //var Body='Name: '+name+'<br>Email: '+email+'<br>Subject: '+subject+'<br>Message: '+message;
                                        //console.log(name, phone, email, message);
                                        let action = "ResetPasswdServelet";
                                        let checkOtp = generateOTP();
                                        Email.send({
                                            SecureToken: "fbf31702-bb7f-4a4e-9c1c-4ccf17ee777f",
                                            To: email,
                                            From: "eduhub030101@gmail.com",
                                            Subject: "Your Email OTP to reset password  on edu-hub is",
                                            Body: "Your One Time Password (OTP) to sign up on edu-hub " + checkOtp
                                        }).then(
                                                message => {
                                                    //console.log (message);
                                                    if (message == 'OK') {
                                                        //alert('Your mail has been send. Thank you for connecting.');
                                                        sendOtp();
                                                        document.getElementById("form_action").action = action;
                                                        $('#form_action').on('submit', function (event) {
                                                            let form = new FormData(this);
//                                                            event.preventDefault();

                                                            let inOtp = $('#Subject').val();
                                                            if (checkOtp === inOtp.trim()) {
                                                                
                                                                $.ajax({
                                                                    url: "ResetPasswdServelet",
                                                                    type: 'POST',
                                                                    data: form,
                                                                    success: function (data, textStatus, jqXHR) {
                                                                        console.log(data);
                                                                        if (data.trim() == "true") {
                                                                            //swal("Congratulations", "now you are the part of edu-hub family", "success");
                                                                            // window.location = "index.html";
                                                                            swal("Congratulations", "Password Reset Sucessfully", "success")
                                                                                    .then((value) => {
                                                                                        window.location = "login.jsp";
                                                                                    });
                                                                        } else {
                                                                            swal("something went wrong");
                                                                        }

                                                                    },
                                                                    error: function (jqXHR, textStatus, errorThrown) {
                                                                        swal("Cannot Update Password error occured!");
                                                                    },

                                                                    processData: false,
                                                                    contentType: false
                                                                });
                                                            }
//                                                            else{
//                                                                alert("some error is occured");
//                                                            }
                                                        });


                                                    } else {
                                                        console.error(message);
                                                        alert('There is error at sending message. ')

                                                    }

                                                }
                                        );



                                    }


        </script>
    </script>

</body>

</html>

$(document).ready(function () {
    console.log("loaded..");
    $('#reg').on('submit', function (event) {
        event.preventDefault();
        $("#submit-btn").hide();
        $("#loader").show();

        // grabing all the data of form variable into variable
        let form = new FormData(this);
        //sending all the data from form to servlet
        $.ajax({
            url: "Registerservelet",
            type: 'POST',
            data: form,
            success: function (data, textStatus, jqXHR) {
                console.log(data);
                $("#submit-btn").show();
                $("#loader").hide();

                if (data.trim() === "true") {
                    //swal("Congratulations", "now you are the part of edu-hub family", "success");
                    // window.location = "index.html";
                    swal("Congratulations", "now you are the part of edu-hub family", "success")
                            .then((value) => {
                                window.location = "profile.jsp";
                            });
                } else {
                    swal(data);
                }

            },
            error: function (jqXHR, textStatus, errorThrown) {
                $("#submit-btn").show();
                $("#loader").hide();
                swal("somethng went wrong!");
            },

            processData: false,
            contentType: false
        });
    });
});


// signup javascript ends here

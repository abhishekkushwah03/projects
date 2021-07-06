$(document).ready(function (e) {
    $("#add-post-form").on("submit", function (event) {
// thiS code is going to called when the form is getting submitted..
        event.preventDefault();
        console.log("submitted");
        let form = new FormData(this);
        // requesting server 
        $.ajax({
            url: "AddPostServlet",
            type: 'POST',
            data: form,
            success: function (data, textStatus, jqXHR) {
                //if form submitted write code here
                if(data.trim() == 'done'){
               swal("done", "Post saved sucessfully", "success")
                            .then((value) => {
                                window.location = "profile.jsp";
                            });
           }
           else{
               swal("Error!", "something went wrong try again..!", "error");
           }
            },
            error: function (jqXHR, textstatus, errorThrown) {
                //if any error comes code here 
                 swal("Error!", "something went wrong try again..!", "error");

            },
            processData: false,
            contentType: false
        });
    });
});




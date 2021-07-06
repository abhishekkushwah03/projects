$(document).ready(function (e) {
    $("#discussion-form").on("submit", function (event) {
// thiS code is going to called when the form is getting submitted..
        event.preventDefault();
        console.log("submitted");
        let form = new FormData(this);
        // requesting server 
        $.ajax({
            url: "DiscussionServlet",
            type: 'POST',
            data: form,
            success: function (data, textStatus, jqXHR) {
                //if form submitted write code here
                if (data.trim() == 'done') {
                    swal("done", "question added succesfully", "success")
                            .then((value) => {
                                window.location = "discussion.jsp";
                            });
                } else {
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


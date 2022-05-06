<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>WELCOME TO ART AND CHAFT ADMIN PAGE</title>
    <link rel="stylesheet" href="css/style.css">

</head>

<body>
    <table id="main" border="0" cellspacing="0">
        <tr>
            <td id="header">
                <h1>WELCOME TO ART AND CHAFT ADMIN PAGE</h1>
            </td>
        </tr>
        <tr>
            <td id="table-form">
                <ul class="container">
                    <li class="item"><a href="view_customer.php" class="link">View Customer List</a></li>
                    <li><a href="view_admin.php" class="link">View Admin List</a></li>
                    <li><a href="order_list.php" class="link">View Order List</a></li>
                    <li><a href="artwork_upload.php" class="link">Add Art</a></li>
                    <li><a href="view_contact_us.php" class="link">View Contact Us Message</a></li>
                    <li><a href="admin-registration.php" class="link">Create Account For Admin</a></li>
                    <li><a href="logout.php" class="link">Logout</a></li>
                </ul>
            </td>
        </tr>
        <tr>
            <td id="table-data">
            </td>
        </tr>
    </table>
    <div id="error-message"></div>
    <div id="success-message"></div>
    <div id="modal">
        <div id="modal-form">
            <h2>Edit Form</h2>
            <table cellpadding="10px" width="100%">
            </table>
            <div id="close-btn">X</div>
        </div>
    </div>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            // Load Table Records
            function loadTable() {
                $.ajax({
                    url: "ajax-contactload.php",
                    type: "POST",
                    success: function(data) {
                        $("#table-data").html(data);
                    }
                });
            }
            loadTable(); // Load Table Records on Page Load

            $(document).on("click", ".delete-btn", function() {
                if (confirm("Do you really want to delete this record ?")) {
                    var contactId = $(this).data("id");
                    var element = this;
                    $.ajax({
                        url: "ajax-delete.php",
                        type: "POST",
                        data: {
                            id: contactId
                        },
                        success: function(data) {
                            if (data == 1) {
                                $(element).closest("tr").fadeOut();
                            } else {
                                $("#error-message").html("Can't Delete Record.").slideDown();
                                $("#success-message").slideUp();
                            }
                        }
                    });
                }
            });

        });
    </script>
</body>

</html>
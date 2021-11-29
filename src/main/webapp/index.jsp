<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>The Guestbook</title>
    <script src="webjars/bootstrap/5.0.0-beta1/js/bootstrap.min.js"></script>
    <link rel='stylesheet' href='webjars/bootstrap/5.0.0-beta1/css/bootstrap.min.css'>
</head>
<body>

<div class="container">

<h1>The Guestbook</h1>
    <div class="card" style="background-color: #b3b3b3;">
        <div class="card-body">

            <h5 class="card-title"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16" style="margin-right: 10px;">
                <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"></path>
            </svg>Please leave a comment!</h5>

        </div>
    </div>

    <form method="post" action="./book" style="margin-top: 20px;">
        <div class="mb-3">
            <label for="title" class="form-label">Your Title:</label>
            <input id="title" name="title" class="form-control" required="required">
        </div>
        <div class="mb-3">
            <label for="name" class="form-label">Your Name:</label>
            <input id="name" name="name" class="form-control" required="required">
        </div>
        <div class="mb-3">
            <label for="comment" class="form-label">Your Comment:</label>
            <textarea id="comment" name="comment" class="form-control" cols="50" rows="8" required="required"></textarea>
        </div>
        <button class="btn btn-primary" type="submit">Save</button>
    </form>
</div>

</body>
</html>
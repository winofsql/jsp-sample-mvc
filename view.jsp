<!DOCTYPE html>
<html>
<head>
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css">

<style>
#main {
    padding: 30px;
    font-size: 24px;
}

#content {
    width: 800px;
    border: 1px solid #000000;
    padding: 20px;
}

.btn {
    vertical-align: top;
    width: 100px;
}
</style>
</head>
<body>
<h3 class="alert alert-primary"><%= request.getMethod() %></h3>
<div id="main">

<form method="get" class="mb-4">
    <input type="text" name="field1" value="<%= getData( request, "field1") %>">
    <input type="submit" name="send" value="GET" class="btn btn-primary">
</form>

<form method="post">
    <input type="text" name="field2" value="<%= getData( request, "field2") %>">
    <input type="submit" name="send" value="POST" class="btn btn-primary">
</form>

<div id="content" class="mt-5">
<%= sb.toString() %>
</div>

</div>
</body>
</html>

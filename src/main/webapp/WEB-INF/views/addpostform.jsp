<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Write Post</title>
</head>
<body>
<h1 class="text-center">Write Post</h1>
<form class="w-50 m-auto" action="addok" method="post" enctype="multipart/form-data">
    <div class="mb-3 row">
        <label for="imagefile" class="col-sm-2 col-form-label">Image</label>
        <div class="col-sm-10">
            <input class="form-control" type="file" id="imagefile" name="imagefile">
        </div>
    </div>

    <div class="mb-3 row">
        <label for="nickname" class="col-sm-2 col-form-label">Nickname</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="nickname" name="nickname">
        </div>
    </div>
    <div class="mb-3 row">
        <label for="pw" class="col-sm-2 col-form-label">Password</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="pw" name="pw">
        </div>
    </div>

    <div class="mb-3 row">
        <label for="description" class="col-sm-2 col-form-label">상품 설명</label>
        <div class="col-sm-10">
            <textarea class="form-control" id="description" name="description" rows="3"></textarea>
        </div>
    </div>
    <input type="hidden" name="regDate" value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>">
    <div class="text-center">
        <input type="button" value="Back" onclick="history.back()" class="btn btn-secondary">
        <button type="submit" class="btn btn-primary">Add</button>
    </div>
</form>
</body>
</html>
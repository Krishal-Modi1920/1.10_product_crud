<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Form</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
        }
        .form-header {
            text-align: center;
            margin-bottom: 30px;
        }
        .btn-submit, .btn-back {
            font-size: 16px;
            padding: 10px 20px;
            width: 48%;
        }
        .btn-submit {
            background-color: #007bff;
            border-color: #007bff;
            color: white;
        }
        .btn-submit:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .btn-back {
            background-color: #6c757d;
            border-color: #6c757d;
            color: white;
        }
        .btn-back:hover {
            background-color: #5a6268;
            border-color: #5a6268;
        }
        .button-container {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2 class="form-header">Change Product Detail</h2>
        
        <form action="${pageContext.request.contextPath }/handle-product" method="POST">
            
            <input type="hidden" value="${product.id }" name="id"/>
            
            <div class="form-group">
                <label for="name">Product Name</label>
                <input type="text" class="form-control" id="name" name="name" value="${product.name }" placeholder="Enter product name" required>
            </div>
            
            <div class="form-group">
                <label for="description">Product Description</label>
                <textarea class="form-control" id="description" name="description" rows="4" placeholder="Enter product description" required>${product.description }</textarea>
            </div>
            
            <div class="form-group">
                <label for="price">Product Price</label>
                <input type="number" class="form-control" id="price" name="price" value="${product.price }" placeholder="Enter product price" required>
            </div>
            
            <div class="button-container">
                <a href="${pageContext.request.contextPath }" class="btn btn-back">Back</a>
                <button type="submit" class="btn btn-submit">Submit</button>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

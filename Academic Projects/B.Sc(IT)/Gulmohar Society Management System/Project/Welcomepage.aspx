<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcomepage.aspx.cs" Inherits="Welcomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome Page</title>
  <!-- Bootstrap Core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="stylish-portfolio.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

     <style type="text/css">
         .auto-style1 {
             height: 66px;
             font-size: 42pt;
             color:#FF0000;
             
         }
         .auto-style2 {
             display: table-cell;
             text-align: center;
             vertical-align: middle;
             height: 867px;
         }
         .auto-style3 {
             display: table;
             position: relative;
             width: 100%;
             height: 255px;
             background: url(/images/IMG_20160108_133745.jpg) no-repeat center center scroll;
             -webkit-background-size: cover;
             -moz-background-size: cover;
             background-size: cover;
             -o-background-size: cover;
             left: 0px;
             top: 0px;
         }
         .auto-style4 {
             color: #FFFF00;
         }
     </style>

</head>
<body >
     <header  class="auto-style3">
        <div class="auto-style2">
            <h1 class="auto-style1"><strong>Welcome To GulMohar Co-Op Housing Society</strong></h1>
            <h3 class="auto-style4"><strong>Sugandh Jivnacha</strong></h3>
            <br>
            <a href="Home.aspx" class="btn btn-dark btn-lg">ACCESS THE Website</a>
        </div>
    </header>

</body>
</html>


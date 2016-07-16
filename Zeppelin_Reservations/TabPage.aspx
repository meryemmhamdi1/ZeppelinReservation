﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TabPage.aspx.cs" Inherits="TabPage" %>

<style>
 #content
{
   background-color: #f2f2f2;
   padding: 20px 10px;
   overflow: auto;
}
#tab-container
{
   float: left;
   margin: 50px 0 0 0;
   width: 126px;
}
#tab-container ul
{
   list-style: none;
   text-align: center;
}
#tab-container ul li
{
   border-top: 1px solid #666;
   border-right: 1px solid #666;
   border-bottom: 1px solid #666;
   border-left: 8px solid #666;
   background-color: #ddd;
   margin: 8px 0;
}
#tab-container ul li a,
#tab-container ul li a:visited
{
   text-decoration: none;
   color: #666;
   display: block;
   padding: 15px 5px;
}
#tab-container ul li:hover
{
   border-left: 8px solid #333;
}
#tab-container ul li a:hover
{
   color: #000;
}
#tab-container ul li.selected
{
   border-right: none;
   background-color: #ff6a00;
   border-left: 8px solid #ff6a00;
}
#main-container
{
   min-height: 400px;
   margin: 0 0 0 125px;
   padding: 20px;
   background-color: #fff;
   border: 1px solid #888;
}
 </style>
  <div id="content">
   <div id="tab-container">
      <ul>
         <li class="selected"><a href="">Introduction</a></li>
         <li><a href="">Html</a></li>
         <li><a href="">CSS</a></li>
         <li><a href="">JavaScript</a></li>
      </ul>
   </div>
   <div id="main-container">
      <h1>Put your content here...</h1>
   </div>
</div>

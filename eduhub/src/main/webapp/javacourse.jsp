
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> WHY EDU-HUB/java1 </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link rel="stylesheet" href="index_style.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Cabin&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@600&display=swap" rel="stylesheet">
        <link href="css/cour_temp.css" rel="stylesheet" type="text/css"/>
        <link href="css/course_content.css" rel="stylesheet" type="text/css"/>
        <link href="css/index_style.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>

        <nav style="font-size:small">
            <a href="#">
                <div class="logo">
                    <h1 style="font-size: 1.4em;margin-top:inherit;font-weight:bolder"> EDU-HUB </h1>
                    <img src="https://cdn4.vectorstock.com/i/1000x1000/36/03/open-book-vector-18443603.jpg" alt="bookimage"
                         style="width: 31%;
                         height: 94%;
                         margin-left: 7%;">
                </div>
            </a>
            <ul id="navitems" style="display:flex;justify-content:center;align-items:center" id="flex">
                <marquee behavior="smooth" direction="left">
                    <h3 style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;"> <sup>
                            <strong style="color:coral;"> New </strong> </sup> Courses coming soon </h3>
                </marquee>
            </ul>
        </nav>

        <div class="tabs">
            <a href="index.html" style="margin: 1%;">
                <div class="tablinks"> <img
                        src="https://i.pinimg.com/originals/da/e0/92/dae092a545e4c09714ee9842ab15dc10.jpg" alt="iconhome"
                        width="30px" height="30px"> </div>
            </a>
            <a href="#" style="margin: 1%;">
                <div class="tablinks"> HTML </div>
            </a>
            <a href="#" style="margin: 1%;">
                <div class="tablinks"> CSS </div>
            </a>
            <a href="#" style="margin: 1%;">
                <div class="tablinks"> JAVASCRIPT </div>
            </a>
            <a href="#" style="margin: 1%;">
                <div class="tablinks"> JQUERY </div>
            </a>
            <a href="#" style="margin: 1%;">
                <div class="tablinks"> PYTHON </div>
            </a>
            <a href="quiz.html" style="margin: 1%;">
                <div class="tablinks"> Take Quiz </div>
            </a>
            <a href="#" style="margin:1%">
                <div class="tablinks">
                    <select class="form-select" aria-label="Disabled select example" >
                        <option selected> REFERENCE </option>
                        <option value="1"> Code With Harry </option>
                        <option value="2"> W3 School </option>
                        <option value="3"> Coursera </option>
                    </select> 
                </div>
            </a>
            <a href="courses.html" style="margin: 1%;">
                <div class="tablinks"> COURSES </div>
            </a>
        </div>

        <div class="course_contain">

            <div class="sidebar">
                <div class="in_sidebar" id="head" style="text-align:center;font-variant: petite-caps">
                    <h3> Web Development </h3>
                </div>

                <div class="alllinks" style="overflow-y:scroll;height:100vh">
                    <a href="#">
                        <div class="links" id="page1" style="margin-top:7%;height:29px"> What is Roadmap </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page2"> Java Intro </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page3"> Java Syntax </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page4">  Java Comments  </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page5">Java Variables</div>
                    </a>
                    <a href="#">
                        <div class="links" id="page6"> Java Datatypes </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page7">Java Typecasting  </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page8"> Java Operators</div>
                    </a>
                    <a href="#">
                        <div class="links" id="page9"> Java if...Else  </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page10">Java Switch </div>
                    </a>
                    <!---
                    <a href="#">
                        <div class="links" id="page12">  </div>
                    </a>
                    -->
                    <a href="#">
                        <div class="links" id="page11"> Java While Loop </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page12"> Java For Loop </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page13">Java Break/Continue </div>
                    </a>

                    <a href="#">
                        <div class="links" id="page14">Java Arrays </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page15"> Java Methods </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page16"> Java Break/Continue </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page17"> Java Method Parameter  </div>
                    </a>
                    <h1>Java Methods</h1>
                    <a href="#">
                        <div class="links" id="page18">Java Method Overloading</div>
                    </a>
                    <a href="#">
                        <div class="links" id="page19"> Java scope </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page20">Java recursion</div>
                    </a>
                    <a href="#">
                        <div class="links" id="page21"> Java OOP</div>
                    </a>
                    <a href="#">
                        <div class="links" id="page22"> Java classes/objects </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page23"> Java class Atributes </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24"> Java class Method</div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Contructor </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Modifiers </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Encapsulation </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java packages/API </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Inheritance </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java polymorphism </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Inner class </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Abstraction </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Interface </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Enums </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java User Input </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Date </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Modifiers </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java ArrayList </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Linkedlist </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Hashmap </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Hashset </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Iterator </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java wrapperclass </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Exceptions </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Thread </div>
                    </a>
                    <a href="#">
                        <div class="links" id="page24">Java Lambda </div>
                    </a>
                </div>

            </div>
            <div class="pages" style="color: white">
                <div class="course" id="page11" style="background-color:white; color:black;">
                    <h1>page 11</h1>
                    <!--write your code below--->
                    <div class="step">
                        <center><h1>Java Switch Statements</h1></center>
                        <div class="stepboxes2">

                        </div>
                    </div>
                    <!--code end--->
                </div>
                <div class="course" id="page10" style="background-color:white; color:black;">
                    <!---write your code here-->

                    <!--pagecode end-->
                </div>
                <div class="course" id="page9" style="background-color:white; color: darkgreen;">
                    <!---write your code here-->
                    <div class="step">
                        <center><h1>Java If...Else</h1></center>
                        <div class="stepboxes2" id="box30" style="width:1090px; height: 150px;">
                            <p>Java has the following conditional statements:</p>
                            <ol>
                                <li>If</li>
                                <li>else</li>
                                <li>else If</li>
                                <li>switch</li>
                            </ol>
                        </div>
                    </div>
                    <hr>
                    <div class="step">
                        <center>
                            <h1>The If Statement</h1></center>
                        <div class="stepboxes2" id="box31" style="width:1090px; height: 180px;">
                            <h1>Syntax</h1>
                            <p>if (condition) {</p>
                            <p>//block of code to be executed if condition is true</p>
                            <p>}</p>
                        </div>
                        <div class="stepboxes2" id="box32" style="width:1090px; height: 250px;">
                            <h1>Example</h1>
                            <p>int x=10;</p>
                            <p>int y=8;</p>
                            <p>if (x>y) {</p>
                            <p>System.out.println(x); //10 </p>
                            <p>}</p>
                        </div>
                    </div>
                    <div class="step">
                        <center>
                            <h1>The Else Statement</h1></center>
                        <div class="stepboxes2" id="box31" style="width:1090px; height: 250px;">
                            <h1>Syntax</h1>
                            <p>if (condition) {</p>
                            <p>//block of code to be executed if condition is true</p>
                            <p>} else {</p>
                            <p>// block of code to be executed else condition is true</p>
                            <p>}</p>
                        </div>
                        <div class="stepboxes2" id="box32" style="width:1090px; height: 300px;">
                            <h1>Example</h1>
                            <p>int x=10;</p>
                            <p>int y=8;</p>
                            <p>if (x>y) {</p>
                            <p>System.out.println(x); } //10 </p>
                            <p>else {</p>
                            <p>System.out.println(y); } //8</p>
                        </div>
                    </div>
                    <hr>
                    <div class="step">
                        <center>
                            <h1>Else if</h1></center>
                        <div class="stepboxes2" id="box32" style="width:1090px; height: 330px;">
                            <h1>Syntax</h1>
                            <p>if (condition) {</p>
                            <p>//block of code to be executed if condition is true</p>
                            <p>} else if(condition 2){</p>
                            <p>// block of code to be executed else condition is true</p>
                            <p>} else {</p>
                            <p>// block of code to be executed else condition is true</p>
                            <p>}</p>
                        </div>
                        <div class="stepboxes2" id="box32" style="width:1090px; height: 270px;">
                            <h1>Example</h1>
                            <p>int x=10;</p>
                            <p>if (x%2==0) {</p>
                            <p>System.out.println(+x"is a even number"); } </p>
                            <p>else if(x%3==0){</p>
                            <p>System.out.println(+y "is a multiple of 3"); } </p>
                        </div>
                    </div>
                    <hr>
                    <div class="title" style="height:10em;border-bottom:2px solid grey">

                        <a href="#"> <button type="button" class="btn btn-success" style="float: left;margin-left:2%">
                                PREVIOUS </button> </a>
                        <a href="#"> <button type="button" class="btn btn-success" style="float: right;margin-right:2%">
                                NEXT </button> </a>
                    </div>



                    <!--pagecode end-->
                </div>
                <div class="course" id="page8" style="background-color:white; color: orange;">
                    <!---write your code here-->
                    <div class="step">
                        <center><h1>Java Operator</h1></center>
                        <div class="stepboxes2" id="box26" style="width: 1050px;">

                            <p>Operators are used to perform operations on variables and values.</p>
                            <ul>Java divides the operator into following:
                                <li>Arithmetic operator</li>
                                <li>Assingment operator</li>
                                <li>Comparison operator</li>
                                <li>Logical operator</li>
                                <li>Bitwise operator</li>
                            </ul>
                        </div>
                    </div>
                    <hr>
                    <div class="step" >
                        <center><h1>Arithmetic operator</h1></center>
                        <div class="stepboxes2" id="box27" style="width: 1050px;">
                            <p>Arithmetic operators are used to perform common mathematical operations.</p>
                            <table>
                                <tr>
                                    <th>Operator</th>
                                    <th>Name</th>
                                    <th>Example</th>
                                </tr>
                                <tr>
                                    <td>+</td>
                                    <td>Addition</td>
                                    <td>x+y</td>
                                </tr>
                                <tr>
                                    <td>-</td>
                                    <td>Substraction</td>
                                    <td>x-y</td>
                                </tr>
                                <tr>
                                    <td>*</td>
                                    <td>Multiplication</td>
                                    <td>x*y</td>
                                </tr>
                                <tr>
                                    <td>/</td>
                                    <td>Division</td>
                                    <td>x/y</td>
                                </tr>
                                <tr>
                                    <td>%</td>
                                    <td>Modulus</td>
                                    <td>x%y</td>
                                </tr>
                                <tr>
                                    <td>++</td>
                                    <td>Increment</td>
                                    <td>++x</td>
                                </tr>
                                <tr>
                                    <td>--</td>
                                    <td>Decrement</td>
                                    <td>--x</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <hr>
                    <div class="step" style="">
                        <center><h1>Assingment operator</h1></center>
                        <div class="stepboxes2 " id="box28" style="width:1090px; height: 350px;">
                            <p>assignment operators are used to assign values to variables.</p>
                            <h1>A list of assigment operator</h1>
                            <table>
                                <tr>
                                    <th>Operator</th>
                                    <th>Example</th>
                                    <th>Same as</th>
                                </tr>
                                <tr>
                                    <td>=</td>
                                    <td>x=5</td>
                                    <td>x=5</td>
                                </tr>
                                <tr>
                                    <td>+=</td>
                                    <td>x=+3</td>
                                    <td>x=x+3</td>
                                </tr>
                                <tr>
                                    <td>-=</td>
                                    <td>x=-5</td>
                                    <td>x=x-5</td>
                                </tr>
                                <tr>
                                    <td>*=</td>
                                    <td>x=*5</td>
                                    <td>x=x*5</td>
                                </tr>
                                <tr>
                                    <td>/=</td>
                                    <td>x=/5</td>
                                    <td>x=x/5</td>
                                </tr>
                                <tr>
                                    <td>=</td>
                                    <td>x=5</td>
                                    <td>x=5</td>
                                </tr>
                                <tr>
                                    <td>&=</td>
                                    <td>x&=5</td>
                                    <td>x=x&5</td>
                                </tr>

                            </table>
                        </div>
                    </div>
                    <hr>
                    <div class="step">
                        <center>
                            <h1>Java Relational Operator</h1>
                        </center>
                        <div class="stepboxes2" id="box29" style="width:1090px; height: 250px;">
                            <p>Relational operators are used to compare two values:</p>
                            <table>
                                <tr>
                                    <th>Operator</th>
                                    <th>Name</th>
                                    <th>Example</th>
                                </tr>
                                <tr>
                                    <td>==</td>
                                    <td>Equal to</td>
                                    <td>Example</td>
                                </tr>
                                <tr>
                                    <td>!=</td>
                                    <td>Not equal</td>
                                    <td>x!=y</td>
                                </tr>
                                <tr>
                                    <td>></td>
                                    <td>Greater than</td>
                                    <td>x>y</td>
                                </tr>
                                <tr>
                                    <td><</td>
                                    <td>Less than</td>
                                    <td>"x<y"</td>
                                    </tr>
                                    <tr>
                                        <td>>=</td>
                                        <td>Greater than or equal to</td>
                                        <td>x>=y</td>
                                    </tr>
                                    <tr>
                                        <td><=</td>
                                        <td>Less than or equal to</td>
                                        <td>x<=y</td>
                                    </tr>

                            </table>
                        </div>
                    </div>
                    <div class="title" style="height:10em;border-bottom:2px solid grey">

                        <a href="#"> <button type="button" class="btn btn-success" style="float: left;margin-left:2%">
                                PREVIOUS </button> </a>
                        <a href="#"> <button type="button" class="btn btn-success" style="float: right;margin-right:2%">
                                NEXT </button> </a>
                    </div>
                    <!--code ends-->

                </div>
                <div class="course" id="page7" style="background-color:white; color: orange;">
                    <!---write your code here--->
                    <div class="step" style="height: 600px; width: 1150px;">
                        <center><h1>Java TypeCasting</h1></center>
                        <div class="stepboxes2" id="box20" style="width:1090px; height: 150px;">
                            <p>TypeCasting is when you assign a value from one datatype to another</p>
                            <p>TypeCasting are of two types:</p>
                            <ol>
                                <li>Implicit TypeCasting</li>
                                <li>Explicit TypeCasting</li>
                            </ol>
                        </div>
                        <div class="stepboxes2" id="box21" style="height: 300px;width: 500px;">
                            <h1>Implicit TypeCasting</h1>
                            <p> converting a smaller type to a larger type size</p>
                            <p>byte -> short -> char -> int -> long -> float -> double</p>
                            <p>Widening casting is done automatically when passing a smaller size type to a larger size type</p>
                        </div>
                        <div class="stepboxes2" id="box22" style="height: 300px;width: 500px;">
                            <h1>Explicit TypeCasting</h1>
                            <p> converting a larger type to a smaller type size</p>
                            <p>double -> float -> long -> int -> char -> short -> byte</p>
                            <p>Narrowing casting must be done manually by placing the type in parentheses in front of the value:</p>
                        </div>
                        <hr>
                        <div class="step" style="width: 1150px;margin-left: -10px;">
                            <center><h1>Example</h1></center>                       
                            <div class="stepboxes2" id="box23" style="width: 550px;">
                                <h1>Implicit typecasting</h1>
                                <p>class implicit</p>
                                <p>{</p>
                                <p>public static void main(String args[])</p>
                                <p>{</p>
                                <p>byte x=23;</p>
                                <p>int x;</p>
                                <p>System.out.println(x)</p>
                                <p>}</p>
                                <p>}</p>
                            </div>
                            <div class="stepboxes2" id="box24" style="width: 550px;">
                                <h1>Explicit typecasting</h1>
                                <p>class explicit</p>
                                <p> {</p>
                                <p>  public static void main(String args[])</p>
                                <p>   {</p>
                                <p>     int x=23;</p>
                                <p>     x=(byte)23; </p>
                                <p>     System.out.println(x)</p>
                                <p>    }</p>
                                <p> }</p>
                            </div>
                        </div>
                        <div class="title" style="height:10em;border-bottom:2px solid grey">

                            <a href="#"> <button type="button" class="btn btn-success" style="float: left;margin-left:2%">
                                    PREVIOUS </button> </a>
                            <a href="#"> <button type="button" class="btn btn-success" style="float: right;margin-right:2%">
                                    NEXT </button> </a>
                        </div>
                    </div>
                    <!--code ends-->

                </div>

                <div class="course" id="page6" style="background-color:white; color: black;">
                    <!-- Write your code below  -->
                    <div class="step">
                        <center>
                            <h1>Java Datatype</h1>
                        </center>
                        <div class="stepboxes2" id="box17" style="height:220px; width:1000px; margin-left: 20px;">
                            <p>Java Datatype are classified into:</p>
                            <ul>
                                <li>Primitive Datatype</li>
                                <pre>Examples : int ,float, char, byte,short,long,Double</pre>
                                <li>NonPrimitive Datatype </li>
                                <pre>Examples : arrays,stack,queue,lined-list</pre>
                            </ul>
                        </div>
                    </div>
                    <hr>
                    <div class="step" style="height: 720px;">
                        <center>
                            <h1>Primitive Datatype</h1>
                        </center>
                        <div class="stepboxes2" id="box18" style="height:400px; width:1000px; margin-left: 20px;">
                            <p>There are 8 types of primitive dataypes:</p>
                            <table>
                                <tr>
                                    <th>Datatype</th>
                                    <th>Size</th>
                                    <th>Description</th>
                                </tr>
                                <tr>
                                    <td>byte</td>
                                    <td>1 byte</td>
                                    <td>Stores value from -128 to 127</td>
                                </tr>
                                <tr>
                                    <td>short</td>
                                    <td>2bytes</td>
                                    <td>stores value from -32,768 to 32,767</td>
                                </tr>
                                <tr>
                                    <td>int</td>
                                    <td>4bytes</td>
                                    <td>stores value from  -2,147,483,648 to 2,147,483,647</td>
                                </tr>
                                <tr>
                                    <td>long</td>
                                    <td>8bytes</td>
                                    <td>stores value from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807</td>
                                </tr>
                                <tr>
                                    <td>float</td>
                                    <td>4bytes</td>
                                    <td>stores fractional value Sufficient for storing 6 to 7 decimal digits</td>
                                </tr>
                                <tr>
                                    <td>char</td>
                                    <td>2bytes</td>
                                    <td>Stores a single character/letter or ASCII values</td>
                                </tr>
                                <tr>
                                    <td>double</td>
                                    <td>8bytes</td>
                                    <td>Stores fractional numbers. Sufficient for storing 15 decimal digits</td>
                                </tr>
                                <tr>
                                    <td>boolean</td>
                                    <td>1bytes</td>
                                    <td>stores only true or false</td>
                                </tr>
                            </table>
                            <div class="stepboxes2" id="box19" style="height:150px; width:1000px; margin-left: 10px;margin-top: 80px;">
                                <h1>Some Example are</h1>
                                <p><pre>int myNum = 100000;                             //int datatype</pre></p>
                                <pre>System.out.println(myNum);</pre>
                            </div>
                        </div>
                        <hr>
                        <div class="title" style="height:10em;border-bottom:2px solid grey">

                            <a href="#"> <button type="button" class="btn btn-success" style="float: left;margin-left:2%">
                                    PREVIOUS </button> </a>
                            <a href="#"> <button type="button" class="btn btn-success" style="float: right;margin-right:2%">
                                    NEXT </button> </a>
                        </div>

                    </div>
                    <!---->
                </div>

                <div class="course" id="page5" style="background-color:white;color:black;">
                    <!-- Write your code below  -->
                    <div class="step">
                        <center>
                            <h1>Java Variable</h1>
                        </center>
                        <div class="stepboxes2" id="box13" style="height:220px; width:1050px; margin-left: 20px;">
                            <p>Variable are container for data values</p>
                            <p>In Java, there are different types of variables, for example:</p>
                            <ul>
                                <li>String - stores text, such as "Hello". String values are surrounded by double quotes</li>
                                <li>int - stores integers (whole numbers), without decimals, such as 123 or -123</li>
                                <li>float - stores floating point numbers, with decimals, such as 19.99 or -19.99</li>
                                <li>char - stores single characters, such as 'a' or 'B'. Char values are surrounded by single quotes</li>
                                <li>boolean - stores values with two states: true or false</li>
                            </ul><br>
                        </div>
                    </div>
                    <hr>
                    <div class="step">
                        <center>
                            <h1>Declaring Variable</h1></center>
                        <div class="stepboxes2" id="box14" style="height:150px; width:1050px; margin-left: 20px;">
                            <p>Syntax</p>
                            <p>type variable = value;</p>
                            <p>where type denote datatype</p>
                            <p>variable denote variable_name</p>
                        </div>
                    </div>
                    <hr>
                    <div class="step">
                        <center>       
                            <h1>Example</h1>
                        </center>

                        <div class="stepboxes2" id="box15" style="height:120px; width:1050px; margin-left: 20px;">
                            <p>Create a variable with name Prajjwal5 of datatype String</p>
                            <p>String name="Arun15";</p>
                            <p>System.out.println("name");</p>
                        </div>
                        <center>       
                            <h1>Example2</h1>
                        </center>
                        <div class="stepboxes2" id="box16" style="height:120px; width:1050px; margin-left: 20px;">
                            <p>Create a variable with name x of datatype int and print value of x;</p>
                            <p>int x=17;</p>
                            <p>System.out.println(x);</p>
                        </div>
                    </div>
                    <div class="title" style="height:10em;border-bottom:2px solid grey">

                        <a href="#"> <button type="button" class="btn btn-success" style="float: left;margin-left:2%">
                                PREVIOUS </button> </a>
                        <a href="#"> <button type="button" class="btn btn-success" style="float: right;margin-right:2%">
                                NEXT </button> </a>
                    </div>
                    <!---code ends-->

                </div>

                <div class="course" id="page4" style="background-color:white;color:black;">
                    <!--write your code here-->
                    <div class="step">
                        <center>
                            <h1>Java comments</h1></center>
                        <div class="stepboxes2" style="height:120px; width:1050px; margin-left: 20px;">
                            <p>Comments can be used to explain Java code, and to make it more readable. It can also be used to prevent execution when testing alternative code.</p>
                            <p>Single line comments starts with two forward slashes(//)</p>
                            <p>Any text between // and the end of the line is ignored by Java (will not be executed).</p>
                        </div>

                        <center><h1>Example</h1></center>
                        <div class="stepboxes2" id="box11" style="height:70px; width:1050px; margin-left: 20px;">
                            <p>//This is a example</p>
                            <p>System.out.println("Hello world")</p>
                        </div>
                    </div>
                    <hr>
                    <div class="step">
                        <center>
                            <h1>Java Multi-line Comments</h1>
                        </center>
                        <div class="stepboxes2" style="height:70px; width:1050px; margin-left: 20px;">
                            <p>Multi-line comments start with /* and ends with */.</p>
                            <p>Any text between /* and */ will be ignored by Java.</p>

                        </div>
                        <center>
                            <h1>Example</h1>
                        </center>
                        <div class="stepboxes2" id="box12" style="height:120px; width:1050px; margin-left: 20px;">
                            <p>/* The code below will print the words Hello World</p>
                            <p>to the screen, and it is amazing */</p>
                            <p>System.out.println("Hello World");</p>
                        </div>
                    </div>
                    <div class="title" style="margin-top:5%;">
                        <a href="#"> <button type="button" class="btn btn-success" style="float: left;margin-left:2%">
                                PREVIOUS </button> </a>
                        <a href=""> <button type="button" class="btn btn-success" style="float: right;margin-right:2%">
                                NEXT </button> </a>

                    </div>
                    <!-- your code ends -->



                </div>  

                <div class="course" id="page3" style="background-color:white;color:black;">
                    <!-- Write your code below -->
                    <div class="step">
                        <center><h1>Java Syntax</h1></center>
                        <div class="stepboxes2" id="box7" style="height:270px; width:1070px; margin-left: 20px;">
                            <h1>Myclass.java</h1>
                            <p>public class Main {</p>
                            <p> public static void main(String[] args) {</p>
                            <p>System.out.println("Hello World");</p>
                            <p>  }</p>
                            <p>}</p>
                        </div>
                    </div>
                    <hr>
                    <div class="step" style="height: 400px;">
                        <div class="stepboxes2" style="height:270px; width:1070px; margin-left: 20px;">
                            <h1>Example Explained</h1>
                            <p>Every line of code that runs in Java must be inside a class. In our example, we named the class Main. A class should always start with an uppercase first letter.</p>
                            <p><b>Note:</b>Java is case-sensitive: "MyClass" and "myclass" has different meaning.</p><br>
                            <p>The name of the java file must match the class name. When saving the file, save it using the class name and add ".java" to the end of the filename. To run the example above on your computer, make sure that Java is properly installed</p>
                        </div>
                        <div class="stepboxes2" id="box8" style="height:50px; width:1050px; margin-left: 20px;background-color: black;color: white;">
                            <h1>Hello World</h1>
                        </div>
                    </div>
                    <hr>
                    <div class="step">
                        <center>
                            <h1>The main Method </h1>
                        </center><br>
                        <div class="stepboxes2" style="height:30px; width:1070px; margin-left: 20px;">
                            <p>The main() method is required and you will see it in every Java program:</p></div>
                        <div class="stepboxes2" id="box9" style="height:70px; width:1070px; margin-left: 20px;background-color: black;color: white;"><br>
                            <p>public static void main(String args[])</p>
                        </div>
                    </div>
                    <hr>
                    <div class="step">
                        <center>   

                            <h1>System.out.println</h1>
                        </center>
                        <div class="stepboxes2"style="height:30px; width:1070px; margin-left: 20px;">

                            <p>Inside the  main() method, we can use the println() method to print a line of text to the screen:</p>
                        </div>
                        <div class="stepboxes2" id=box10" style="height:70px; width:1070px; margin-left: 20px;background-color: black;color: white;">
                            <p>public static void main(String args[]) {</p>
                            <p>System.out.println("Hello World")</p>
                            <p> } </p>
                        </div>
                    </div>
                    <div class="title" style="margin-top:5%;">
                        <a href="#"> <button type="button" class="btn btn-success" style="float: left;margin-left:2%">
                                PREVIOUS </button> </a>
                        <a href=""> <button type="button" class="btn btn-success" style="float: right;margin-right:2%">
                                NEXT </button> </a>

                    </div>
                    <!----code end-->

                </div>
                <div class="course" id="page2" style="background-color:white;color: black;">
                    <div class="step">
                        <center>
                            <h1 id="heading">java Introduction</h1>
                        </center>
                        <div class="stepboxes3" id="box6" style="background-color:#3e665f;"></div>
                        <br>
                        <center>
                            <h1>What is java?</h1>
                        </center> <br>
                        <div class="stepboxes2" style="width: 1090px;">
                            <p>Java is a popular programming language, created in 1995.</p>
                            <p>It is owned by Oracle, and more than 3 billion devices run Java.</p>
                            <p>It is used for:</p>
                            <div class="list">
                                <ol>
                                    <li>Mobile applications (specially Android apps)</li>
                                    <li>Desktop applications</li>
                                    <li>Web applications</li>
                                    <li>Web servers and application servers</li>
                                    <li>Games</li>
                                    <li>Database connection</li>
                                    <li>And much, much more!</li>
                                </ol>
                            </div>



                        </div>
                    </div>
                    <div class="title" style="margin-top:5%;">
                        <a href="#"> <button type="button" class="btn btn-success" style="float: left;margin-left:2%">
                                PREVIOUS </button> </a>
                        <a href=""> <button type="button" class="btn btn-success" style="float: right;margin-right:2%">
                                NEXT </button> </a>

                    </div>
                </div>
                <!-- Write your code below -->

                <div class="course" id="page1" style=" background-color:white;color:black">

                    <div class="title" style="height:10em;border-bottom:2px solid grey">
                        <center>
                            <h1> java course Roadmap </h1>
                        </center> <br>
                        <a href="#"> <button type="button" class="btn btn-success" style="float: left;margin-left:2%">
                                PREVIOUS </button> </a>
                        <a href="#"> <button type="button" class="btn btn-success" style="float: right;margin-right:2%">
                                NEXT </button> </a>
                    </div>

                    <div class="content">

                        <center>
                            <h1> Course Roadmap </h1>
                        </center> <br>

                        <div class="step" id="step1" style="background-color:#3e665f;">
                            <br>
                            <center>
                                <h1> Step 1 </h1>
                            </center>
                            <center>
                                <h1> Learn the basics </h1>
                            </center> <br>
                            <div class="stepboxes" id="box1">

                                <p>  Every Developer must have basic understanding of java-language. </p>

                                <p> Java is popular programming language . </p>



                            </div><br>

                            <div class="start-java">
                                <a href="#page2">
                                    <button type="button" id="startbutton" style="background: green" >Start learn java now ></button>
                                </a>
                            </div> 

                            <script>

                                document.querySelector('#startbutton').addEventListener('click', () => {
                                    window.location = '';
                                });
                            </script>

                        </div>
                        <div class="step" >


                            <div class="intropage"><br><br><br>
                                <center>
                                    <h1 id="example">Examples in Each Chapters</h1>
                                    <h1>Examples</h1>
                                </center>
                                <div class="stepboxes2" id="box2" style="width: 1090px;">

                                    <p id="line1">public class Main {</p>
                                    <p id="line2" >public static void main(String[] args) {</p>
                                    <p id="line3">System.out.println("Hello World");</p>
                                    <p id="line3">}</p>
                                    <p id="line4">}</p>
                                </div>             
                            </div>  
                        </div>
                        <hr>
                        <div class="step">

                            <center><h1 id="example1">Learn by Example</h1>
                            </center>
                            <div class="stepboxes2" id="box3" style="width: 1090px;"> 
                                <h1 id="singleline">Single line comment before a line of code</h1>
                                <p id="line5">public class Main {</p>
                                <p id="line6">public static void main(String args[]) {</p>
                                <p id="line7">// This is a comment</p>
                                <p id="line8">System.out.println("Hello world")</p>
                            </div>
                        </div>


                        <hr>
                        <div class="step">
                            <div class="stepboxes2" id="box4" style="width: 1090px;"> 
                                <h1 id="Mutipleline">Mutiple line comment </h1>
                                <p id="line5">public class Main {</p>
                                <p id="line6">public static void main(String args[]) {</p>
                                <p id="line7">/* This code will print Hello world</p>
                                <p id="line8">to the screen and it is amazing*/</p>
                                <p id="line9">System.out.println("Hello world")</p>
                            </div>
                        </div>
                        <hr>


                        <div class="step"> 
                            <div class="stepboxes2" id="box5" style="width: 1090px;"> 
                                <h1 id="Mutipleline">Create a java variable </h1>
                                <p id="line5">public class Main {</p>
                                <p id="line6">public static void main(String args[]) {</p>
                                <p id="line7">String name="John"</p>
                                <p id="line8">System.out.println(name);</p>
                                <p id="line9">}</p>
                                <p id="line10">}</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div style="
                     height: 74em;
                     width:96%;
                     margin: 2%;
                     background: url('https://www.w3schools.com/whatis/img_frontend.jpg') no-repeat 100%;
                     ">

                </div>


                <div style="
                     height: 74em;
                     width:96%;
                     margin-right:10%;
                     background: url('https://www.w3schools.com/whatis/img_backend.jpg') no-repeat 100%;
                     ">        
                </div>


                <div class="title" style="margin-top:5%;">
                    <a href="#"> <button type="button" class="btn btn-success" style="float: left;margin-left:2%">
                            PREVIOUS </button> </a>
                    <a href="#"> <button type="button" class="btn btn-success" style="float: right;margin-right:2%">
                            NEXT </button> </a>
                </div>
            </div>

        </div>

    </div>

</div>

<script>

    const getbut = document.querySelectorAll('.links');
    const getpage = document.querySelectorAll('.course');
    let s = "";

    function myfun(e) {
        //console.log(this.id);

        getpage.forEach(z => z.style.zIndex = "0");

        getpage.forEach(a => {
            s = a.id;
            if (this.id == s) {
                console.log(a.textContent);
                a.style.zIndex = "1";
            }
        });

    }

    getbut.forEach(e => e.addEventListener("click", myfun));

</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
crossorigin="anonymous"></script>


<script src="JSfiles/index.js"></script>
<script type="text/javascript">
    const getbut = document.querySelectorAll('.links');
    const getpage = document.querySelectorAll('.course');
    let s = "";

    function myfun(e) {
        //console.log(this.id);

        getpage.forEach(z => z.style.zIndex = "0");

        getpage.forEach(a => {
            s = a.id;
            if (this.id == s) {
                console.log(a.textContent);
                a.style.zIndex = "1";
            }
        });

    }

    getbut.forEach(e => e.addEventListener("click", myfun));
</script>

</body>

</html>

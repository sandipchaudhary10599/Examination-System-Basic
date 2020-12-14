<%-- 
    Document   : Examination
    Created on : 28 Oct, 2020, 1:18:36 PM
    Author     : Chaudhary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form method="post">
        <%
            Integer at=0,ut=0,right=0,wrong=0,cut=0,get=0,obtain=0;
                    
            if(request.getParameter("btnSubmit")!=null)
            {
                
                //Que : 1
                
                if(request.getParameter("rdo1").equals("4"))
                {
                    at++;
                    right++;
                }
                else if(request.getParameter("rdo1").equals("skip"))
                {
                    ut++;
                }
                else
                {
                    at++;
                    wrong++;
                }
                
                //Que : 2
                
                if(request.getParameter("rdo2").equals("9"))
                {
                    at++;
                    right++;
                }
                else if(request.getParameter("rdo2").equals("skip"))
                {
                    ut++;
                }
                else
                {
                    at++;
                    wrong++;
                }
                
                //Que : 3
                
                if(request.getParameter("rdo3").equals("16"))
                {
                    at++;
                    right++;
                }
               else if(request.getParameter("rdo3").equals("skip"))
                {
                    ut++;
                }
 
                else
                {
                    at++;
                    wrong++;
                }
                
                //Que : 4
                
                if(request.getParameter("rdo4").equals("25"))
                {
                    at++;
                    right++;
                }
                else if(request.getParameter("rdo4").equals("skip"))
                {
                    ut++;
                }
 
                else
                {
                    at++;
                    wrong++;
                }
                
                
                //Que : 5
                
                if(request.getParameter("rdo5").equals("12"))
                {
                    at++;
                    right++;
                }
                else if(request.getParameter("rdo5").equals("skip"))
                {
                    ut++;
                }
 
                else
                {
                    at++;
                    wrong++;
                }
                
                get=right*5;
                cut=wrong*2;
                obtain=get-cut;
                
            }
        %>
       
       
        <h3>Examination System</h3>
        
        
        
        Q : 1 = 2 x 2 = ?<br><br>
        <input type="radio" name="rdo1" value="6">6
        <input type="radio" name="rdo1" value="4">4
        <input type="radio" name="rdo1" value="8">8
        <input type="radio" name="rdo1" value="skip">skip
        
        <br><br>
        Q : 2 = 3 x 3 = ?<br><br>
        <input type="radio" name="rdo2" value="6">6
        <input type="radio" name="rdo2" value="9">9
        <input type="radio" name="rdo2" value="8">8
        <input type="radio" name="rdo2" value="skip">skip
        
        <br><br>
        Q : 3 = 4 x 4 = ?<br><br>
        <input type="radio" name="rdo3" value="16">16
        <input type="radio" name="rdo3" value="4">4
        <input type="radio" name="rdo3" value="8">8
        <input type="radio" name="rdo3" value="skip">skip
        
        <br><br>
        Q : 4 = 5 x 5 = ?<br><br>
        <input type="radio" name="rdo4" value="6">6
        <input type="radio" name="rdo4" value="4">4
        <input type="radio" name="rdo4" value="25">25
        <input type="radio" name="rdo4" value="skip">skip
        
        <br><br>
        Q : 5 = 2 x 6 = ?<br><br>
        <input type="radio" name="rdo5" value="2">2
        <input type="radio" name="rdo5" value="12">12
        <input type="radio" name="rdo5" value="8">8
        <input type="radio" name="rdo5" value="skip">skip
        
        <br><br>
        <input  type="submit"  value="Submit" name="btnSubmit">
        
        <br>
        <br>
        <table>
            <tr>
                <td>
                    Attend Quetions
                </td>
                <td><%=at%></td>
            </tr>
            <tr>
                <td>
                    Unattend Quetions
                </td>
                <td><%=ut%></td>
            </tr>
            <tr>
                <td>
                    Right Answer
                </td>
                <td><%=right%></td>
            </tr>
            <tr>
                <td>
                    Wrong Answer
                </td>
                <td><%=wrong%></td>
            </tr>
            <tr>
                <td>
                    Get Marks
                </td>
                <td><%=get%></td>
            </tr>
            <tr>
                <td>
                    Cut Of Marks
                </td>
                <td><%=cut%></td>
            </tr>
            <tr>
                <td>
                    Obtain Marks
                </td>
                <td><%=obtain%></td>
            </tr>
        </table>
            
        </form>
    </body>
</html>

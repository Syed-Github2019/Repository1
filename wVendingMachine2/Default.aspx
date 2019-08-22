<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 127px;
        }
        .auto-style3 {
            width: 5px;
        }
        .auto-style4 {
            width: 165px;
        }
        .auto-style5 {
            width: 25%;
        }
    </style>
    <script>        
        function fnCCNumber1(num) {            
            var str = document.getElementById("txtCCNumber").value;
            if (str.length <= 15) {
                document.getElementById("txtCCNumber").value = str + num;  
                document.getElementById("gblCCNumber").value = document.getElementById("txtCCNumber").value;  
            }
                          
        }

        function fnCCNumber2() {            
            var str = document.getElementById("txtCCNumber").value;
            if (str.length > 0) {
                document.getElementById("txtCCNumber").value = str.slice(0, str.length-1);         
                document.getElementById("gblCCNumber").value = document.getElementById("txtCCNumber").value;  
            }
            
        }        
    </script>
</head>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<body style="background-color:aqua">
    <form runat="server" id="frmVM">
       <asp:HiddenField runat="server" ID="gblInProcess" />
       <asp:HiddenField runat="server" ID="gblCCNumber" />       
       
    <table style="width:60%;border-width:medium;border-color:black;border-style:solid;background-color:cadetblue">
        <tr><td style="text-align:center;font-size:xx-large;font-weight:bold">
           ACME VENDING MACHINE
            </td></tr>
    </table>
   
    <br />
        
   <table style="width:100%">
       <tr>
           
           <td style="width:20%">           

    <table style="width:95%;border-width:thin;border-color:black;border-style:solid;background-color:aquamarine">
        <tr>
            <td  style="font-weight: bold; font-size: large">Item</td>
            <td  style="font-weight: bold; font-size: large">Price</td>
            <td  style="font-size: large; font-weight: bold">Stock</td>
        </tr>    
         <tr>
            <td colspan="3">
                <hr />
                
            </td>
        </tr>
        <tr>
            <td >
                <asp:Button ID="btnCoke" runat="server" Text="Coke" OnClick="btnCoke_Click" /></td>
            <td >$1</td>
            <td ><asp:Label ID="gblStockCoke"  runat="server"></asp:Label>
                </td>
        </tr>
         <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr>
            <td >
                <asp:Button ID="btnPepsi" runat="server" Text="Pepsi" OnClick="btnPepsi_Click" />
            </td>
            <td >$1</td>
            <td ><asp:Label ID="gblStockPepsi"  runat="server"></asp:Label></td>
        </tr>
         <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr>
            <td >
                <asp:Button ID="btn7up" runat="server" Text="7up" OnClick="btn7up_Click" />
            </td>
            <td >$1</td>
            <td ><asp:Label ID="gblStock7up"  runat="server"></asp:Label></td>
        </tr>
         <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr>
            <td >
                <asp:Button ID="btnFanta" runat="server" Text="Fanta" OnClick="btnFanta_Click" />
            </td>
            <td >$1</td>
            <td ><asp:Label ID="gblStockFanta"  runat="server"></asp:Label></td>
        </tr>
         <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr>
            <td >
                <asp:Button ID="btnRedBull" runat="server" Text="Red Bull" OnClick="btnRedBull_Click" />
            </td>
            <td >$2</td>
            <td ><asp:Label ID="gblStockRedBull"  runat="server"></asp:Label></td>
        </tr>
         <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr>
            <td > <asp:Button ID="btnLays" runat="server" Text="Lays" OnClick="btnLays_Click" /></td>
            <td >$1.5</td>
            <td ><asp:Label ID="gblStockLays"  runat="server"></asp:Label></td>
        </tr>
         <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr>
            <td > <asp:Button ID="btnCheetos" runat="server" Text="Cheetos" OnClick="btnCheetos_Click" /></td>
            <td >$1.5</td>
            <td ><asp:Label ID="gblStockCheetos"  runat="server"></asp:Label></td>
        </tr>
         <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr>
            <td > <asp:Button ID="btnKinley" runat="server" Text="Kinley" OnClick="btnKinley_Click" /></td>
            <td >$1</td>
            <td ><asp:Label ID="gblStockKinley"  runat="server"></asp:Label></td>
        </tr>
         <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr>
            <td > <asp:Button ID="btnAquafina" runat="server" Text="Aquafina" OnClick="btnAquafina_Click" /></td>
            <td >$1</td>
            <td ><asp:Label ID="gblStockAquafina"  runat="server"></asp:Label></td>
        </tr>
         <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr>
            <td > <asp:Button ID="btnDietPepsi" runat="server" Text="Diet Pepsi" OnClick="btnDietPepsi_Click" /></td>
            <td >$1</td>
            <td ><asp:Label ID="gblStockDietPepsi"  runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
    </table>
    
               </td>

           <td style="width:80%">
               
    <table style="width:50%;border-width:thin;border-color:black;border-style:solid;background-color:aquamarine">
        <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr>
           
            <td colspan="3">       
                &nbsp;
                <asp:TextBox ID="gblMessage" runat="server" style="width:95%;font-size:medium;font-weight:bold;color:red" ReadOnly="true"></asp:TextBox>              
                
            </td>            
        </tr>   
        <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>        

    </table>
<br />

               <table style="width:50%;border-width:thin;border-color:black;border-style:solid;background-color:aquamarine">
        
                   <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
         <tr>
            <td>
                &nbsp;&nbsp;Item Selected:
            </td>
             <td>
                 <asp:Label ID="lblItemSelected" runat="server" style="color:red;font-weight:bold;font-size:medium"></asp:Label>
                 &nbsp;&nbsp;Price:&nbsp;<span style="color:red">$</span>
                 <asp:Label ID="lblItemPrice" runat="server" style="color:red;font-weight:bold;font-size:medium"></asp:Label>

             </td>
             <td>                 
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
             </td>
        </tr>
        

        <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
         <tr>
            <td>
                &nbsp;&nbsp;Amount Inserted:
            </td>
             <td colspan="2">
                 <asp:TextBox ID="txtAmtInsert" runat="server" style="color:red;font-weight:bold;font-size:medium" ReadOnly="true"></asp:TextBox>
             </td>
        </tr>
        
        <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;Balance Amount:
            </td>
             <td colspan="2">
                 <asp:TextBox ID="txtBalAmount" runat="server" style="color:red;font-weight:bold;font-size:medium" ReadOnly="true"></asp:TextBox>
             </td>
        </tr>
         <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>

    </table>

               <br />
               <table style="width:50%;border-width:thin;border-color:black;border-style:solid;background-color:aquamarine">
           <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
         <tr>
            <td>
                &nbsp;&nbsp;Insert Cash:
            </td>
            <td colspan="2">
                <asp:Button ID="btnd5" runat="server" Text="$5" OnClick="btnd5_Click" />&nbsp;
                <asp:Button ID="btnd1" runat="server" Text="$1" OnClick="btnd1_Click" />&nbsp;
                <asp:Button ID="btnc25" runat="server" Text="$0.25" OnClick="btnc25_Click" />&nbsp;
                <asp:Button ID="btnc10" runat="server" Text="$0.1" OnClick="btnc10_Click" />&nbsp;
                <asp:Button ID="btnc5" runat="server" Text="$0.05" OnClick="btnc5_Click" />
             </td>
        </tr>
        
        <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
       
        

    </table>
               <br />

               <table style="width:50%;border-width:thin;border-color:black;border-style:solid;background-color:aquamarine">
           <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
         <tr>
            <td>
                &nbsp;&nbsp;Credit Card #:
            </td>
             <td>
                 <asp:TextBox ID="txtCCNumber" runat="server" style="width:200px;color:red;font-weight:bold;font-size:medium" ReadOnly="true"></asp:TextBox>
             </td>
              <td>
                <asp:Button ID="btnCCSubmit" runat="server" Text="Submit" OnClick="btnCCSubmit_Click" />
             </td>
        </tr>
        
        <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
              
               <input type="button" value="1" onclick="fnCCNumber1(1);" />
                <input type="button" value="2" onclick="fnCCNumber1(2);" />
                <input type="button" value="3" onclick="fnCCNumber1(3);" />
                <br />
                <input type="button" value="4" onclick="fnCCNumber1(4);" />
                <input type="button" value="5" onclick="fnCCNumber1(5);" />
                <input type="button" value="6" onclick="fnCCNumber1(6);" />
                <br />
                <input type="button" value="7" onclick="fnCCNumber1(7);" />
                <input type="button" value="8" onclick="fnCCNumber1(8);" />
                <input type="button" value="9" onclick="fnCCNumber1(9);" />
                <br />
                <input type="button" value="0" onclick="fnCCNumber1(0);" />
                <input type="button" value="<<==" onclick="fnCCNumber2();" />                
            </td>
            <td>&nbsp;</td>
        </tr>
                   <tr>
            <td colspan="3">
                <br />
            </td>
        </tr>
        

    </table>


           </td>




       </tr>
   </table>

        </form>
</body>



</html>

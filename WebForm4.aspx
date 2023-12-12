<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="網二_期中作業.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackImageUrl="BG.jpg" Height="625px">
                <br />
                <asp:Label ID="Label2" runat="server" BackColor="#CCFFFF" Font-Size="XX-Large" ForeColor="#000099" Text="健康檢查預約系統"></asp:Label>
                <br />
                <br />
                <br />
                姓名:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="必須輸入姓名!" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                身分證:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="必須輸入身分證!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="身分證格式錯誤!" ForeColor="Red" ValidationExpression="^[A-Za-z][1-2]\d{8}$"></asp:RegularExpressionValidator>
                <br />
                性別:<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Value="1">男</asp:ListItem>
                    <asp:ListItem Value="2">女</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                生日:<asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                <br />
                血型:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                電話:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="必須輸入電話!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="電話格式錯誤!" ForeColor="Red" ValidationExpression="(09\d{8})|(0\d{8})"></asp:RegularExpressionValidator>
                <br />
                Email:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Email格式錯誤!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" CausesValidation="False" OnClick="Button1_Click" Text="清除" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="存取資料" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="確定" />
            </asp:Panel>
            <br />
        </div>
    </form>
</body>
</html>

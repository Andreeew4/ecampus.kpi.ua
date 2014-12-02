﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SpecialityTree.aspx.cs" Inherits="WebApplication1.SpecialityTree" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <link rel="Stylesheet" href="CSS/style.css" type="text/css"/>
    
    <link rel="stylesheet" href="CSS/Menu.css" type="text/css"/>

    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        
        <div class="header">
            <div class="caption">
                <img class="emblem" src="Images/-КПИ.png" alt="Герб НТУУ КПІ"/>
                <h1 align="center">Конструкторське Бюро Інформаційних Систем НТУУ "КПІ"</h1>
                <h2 align="center">Адміністрування системи КБ ІС</h2>
            </div>    
        </div>
        
        <article >
            
        
         <div class="content">
             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
       <asp:DropDownList ID="DropDownList1" runat="server" onselectedindexchanged="DropDownList_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Value="All">Всі</asp:ListItem>
            <asp:ListItem Value="Act">Актуальність</asp:ListItem>
            <asp:ListItem Value="nonAct">Неактуальність</asp:ListItem>
        </asp:DropDownList>

        <asp:DropDownList ID="dropsort2" runat="server" onselectedindexchanged="dropsort1_SelectedIndexChanged" AutoPostBack="True" >
            <asp:ListItem Value="name">Сортувати за назвою</asp:ListItem>
            <asp:ListItem Value="shifr">Сортувати за шифром</asp:ListItem>
        </asp:DropDownList>

        <br/>Підрозділ:
        <asp:DropDownList ID="dropsort3" runat="server" Width="100%" CausesValidation="True" OnLoad="dropsort3_OnLoad" AutoPostBack="True" OnSelectedIndexChanged="dropsort3_SelectedIndexChanged" OnTextChanged="dropsort3_TextChanged">
            <asp:ListItem Value="all">Всі кафедри</asp:ListItem>
        </asp:DropDownList>
        
        <asp:TreeView ID="TreeView" runat="server" ExpandDepth="0" Width="100%" OnSelectedNodeChanged="TreeView_SelectedNodeChanged" OnLoad="TreeView_Load" AutoGenerateDataBindings="False" ImageSet="Arrows">
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <NodeStyle ForeColor="Black" Font-Names="Tahoma" Font-Size="10pt" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <RootNodeStyle ForeColor="Black" />
            <SelectedNodeStyle ForeColor="#5555DD" Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
        </div>
        </article>
        <asp:ListBox ID="ListBox1" runat="server" Visible="False"></asp:ListBox>
    </form>
</body>
</html>
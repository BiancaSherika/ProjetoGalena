<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.Master" AutoEventWireup="true" CodeBehind="Alunos.aspx.cs" Inherits="ProjetoGalena.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Nome:
    <br />
&nbsp;<asp:TextBox ID="txtnome" runat="server" Width="686px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <br />
    Email:
    <br />
    &nbsp;<asp:TextBox ID="txtemail" runat="server" Width="686px"></asp:TextBox>
    <br />
    Grupo:
    <br />
&nbsp;<asp:TextBox ID="txtgrupo" runat="server" Width="686px"></asp:TextBox>
&nbsp;&nbsp;
    <br />
    Nome do Grupo:<br />
&nbsp;<asp:TextBox ID="txtnomegrupo" runat="server" Width="686px"></asp:TextBox>
    <br />
    CPF:&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;<asp:TextBox ID="txtcpf" runat="server" Width="686px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <br />
    Telefone:<br />
&nbsp;<asp:TextBox ID="txttelefone" runat="server" Width="686px"></asp:TextBox>
    <br />
    Data de Nascimento:<br />
&nbsp;<asp:TextBox ID="txtnascimento" runat="server" Width="686px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    Endereço:<br />
&nbsp;<asp:TextBox ID="txtendereco" runat="server" Width="686px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" align="center" OnClick="Button1_Click" Text="Inserir" />
    <br />
    <asp:Label ID="Label1" align="center" runat="server" Font-Bold="True" Font-Size="Large" Text="Lista de Alunos" ValidateRequestMode="Enabled"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Nome" DataSourceID="SqlDataSource2" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" Height="474px" Width="1167px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Nome" HeaderText="Nome" ReadOnly="True" SortExpression="Nome" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Grupo" HeaderText="Grupo" SortExpression="Grupo" />
        <asp:BoundField DataField="NomeGrupo" HeaderText="NomeGrupo" SortExpression="NomeGrupo" />
        <asp:BoundField DataField="CPF" HeaderText="CPF" SortExpression="CPF" />
        <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
        <asp:BoundField DataField="DataNascimento" HeaderText="DataNascimento" SortExpression="DataNascimento" />
        <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
    </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BancodeDados %>" DeleteCommand="DELETE FROM [Aluno] WHERE [Nome] = @Nome" InsertCommand="INSERT INTO [Aluno] ([Nome], [Email], [Grupo], [NomeGrupo], [CPF], [Telefone], [DataNascimento], [Endereco]) VALUES (@Nome, @Email, @Grupo, @NomeGrupo, @CPF, @Telefone, @DataNascimento, @Endereco)" SelectCommand="SELECT * FROM [Aluno]" UpdateCommand="UPDATE [Aluno] SET [Email] = @Email, [Grupo] = @Grupo, [NomeGrupo] = @NomeGrupo, [CPF] = @CPF, [Telefone] = @Telefone, [DataNascimento] = @DataNascimento, [Endereco] = @Endereco WHERE [Nome] = @Nome">
    <DeleteParameters>
        <asp:Parameter Name="Nome" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Nome" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Grupo" Type="String" />
        <asp:Parameter Name="NomeGrupo" Type="String" />
        <asp:Parameter Name="CPF" Type="String" />
        <asp:Parameter Name="Telefone" Type="String" />
        <asp:Parameter Name="DataNascimento" Type="String" />
        <asp:Parameter Name="Endereco" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Grupo" Type="String" />
        <asp:Parameter Name="NomeGrupo" Type="String" />
        <asp:Parameter Name="CPF" Type="String" />
        <asp:Parameter Name="Telefone" Type="String" />
        <asp:Parameter Name="DataNascimento" Type="String" />
        <asp:Parameter Name="Endereco" Type="String" />
        <asp:Parameter Name="Nome" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BancodeDados %>" DeleteCommand="DELETE FROM [Alunos] WHERE [Nome] = @original_Nome" InsertCommand="INSERT INTO [Alunos] ([Nome], [Email], [Grupo], [Nome do Grupo], [CPF], [Telefone], [Data de Nascimento], [Endereco]) VALUES (@Nome, @Email, @Grupo, @Nome_do_Grupo, @CPF, @Telefone, @Data_de_Nascimento, @Endereco)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Alunos]" UpdateCommand="UPDATE [Alunos] SET [Email] = @Email, [Grupo] = @Grupo, [Nome do Grupo] = @Nome_do_Grupo, [CPF] = @CPF, [Telefone] = @Telefone, [Data de Nascimento] = @Data_de_Nascimento, [Endereco] = @Endereco WHERE [Nome] = @original_Nome">
    <DeleteParameters>
        <asp:Parameter Name="original_Nome" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Nome" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Grupo" Type="String" />
        <asp:Parameter Name="Nome_do_Grupo" Type="String" />
        <asp:Parameter Name="CPF" Type="String" />
        <asp:Parameter Name="Telefone" Type="String" />
        <asp:Parameter Name="Data_de_Nascimento" Type="String" />
        <asp:Parameter Name="Endereco" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Grupo" Type="String" />
        <asp:Parameter Name="Nome_do_Grupo" Type="String" />
        <asp:Parameter Name="CPF" Type="String" />
        <asp:Parameter Name="Telefone" Type="String" />
        <asp:Parameter Name="Data_de_Nascimento" Type="String" />
        <asp:Parameter Name="Endereco" Type="String" />
        <asp:Parameter Name="original_Nome" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <asp:Label ID="LMsg" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
</asp:Content>

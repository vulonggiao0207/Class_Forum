<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DangNhap1.ascx.cs" Inherits="User_Control_DangNhap1" %>
<table style="width: 852px">
    <tr>
        <td style="width: 54px; height: 45px">
            <span style="color: #ffffff">
                <asp:Label ID="TaiKhoanLB" runat="server" Text="Tài khoản" Width="66px"></asp:Label></span></td>
        <td style="width: 64px; color: #000000; height: 45px">
            <asp:TextBox ID="TaiKhoanTextBox" runat="server" Width="170px"></asp:TextBox><asp:LinkButton ID="ThayDoiThongTinLink"
                runat="server" Visible="False" OnClick="ThayDoiThongTinLink_Click" Width="160px">Thay đổi thông tin</asp:LinkButton></td>
        <td style="width: 67px; color: #000000; height: 45px">
            <span style="color: #ffffff">
                <asp:Label ID="MatKhauLB" runat="server" Text="Mật khẩu:"></asp:Label>
                <asp:LinkButton
                ID="DangXuatLink" runat="server" Visible="False" OnClick="DangXuatLink_Click" Width="79px">Đăng xuất</asp:LinkButton></span></td>
        <td style="width: 59px; color: #000000; height: 45px">
            <asp:TextBox ID="MatKhauTextBox" runat="server" TextMode="Password" Width="155px"></asp:TextBox></td>
        <td style="width: 65px; color: #000000; height: 45px">
            <asp:Button ID="DangNhapButton" runat="server" Text="Đăng nhập" OnClick="DangNhapButton_Click" /></td>
        <td style="width: 63px; color: #000000; height: 45px">
            <asp:Label ID="ErrorLb" runat="server" ForeColor="White" Text="Mời đăng nhập" Visible="False" Width="218px"></asp:Label></td>
    </tr>
</table>

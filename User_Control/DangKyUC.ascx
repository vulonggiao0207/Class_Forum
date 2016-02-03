<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DangKyUC.ascx.cs" Inherits="User_Control_DangKyUC" %>
<table border="1" bordercolor=aqua style="width: 670px">
    <tr>
        <td style="height: 379px; width: 675px;">
<table style="width: 670px; height: 257px; text-align: left;">
    <tr>
        <td colspan="3" style="height: 27px; text-align: center" bgcolor="#cc99ff">
            <span style="color: #ffffff"><strong>ĐĂNG KÝ</strong></span></td>
    </tr>
    <tr>
        <td style="width: 70px; height: 22px;">
            Tài khoản:</td>
        <td style="width: 167px; height: 22px;">
            <asp:TextBox ID="TaiKhoanTxt" runat="server" Width="200px"></asp:TextBox></td>
        <td style="width: 142px; height: 22px;">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="(*)" ControlToValidate="TaiKhoanTxt" Display="Dynamic">Không được bỏ trống</asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td style="width: 70px">
            Mật khẩu:</td>
        <td style="width: 166px">
            <asp:TextBox ID="MatKhauTxt" runat="server" Width="200px" TextMode="Password"></asp:TextBox></td>
        <td style="width: 142px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="(*)" ControlToValidate="MatKhauTxt" Display="Dynamic">Không được bỏ trống</asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td style="width: 70px">
            Xác nhận:</td>
        <td style="width: 166px">
            <asp:TextBox ID="XacNhanTxt" runat="server" Width="200px" TextMode="Password"></asp:TextBox></td>
        <td style="width: 142px">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="(*)" ControlToCompare="MatKhauTxt" ControlToValidate="XacNhanTxt" Display="Dynamic">Xác nhận mất khẩu không đúng</asp:CompareValidator></td>
    </tr>
    <tr>
        <td style="width: 70px; height: 26px;">
            Họ tên:</td>
        <td style="width: 166px; height: 26px;">
            <asp:TextBox ID="HoTenTxt" runat="server" Width="200px"></asp:TextBox></td>
        <td style="width: 142px; height: 26px;">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="(*)" ControlToValidate="HoTenTxt" Display="Dynamic">Không được bỏ trống</asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td style="width: 70px; height: 24px;">
            Ngày sinh</td>
        <td style="width: 166px; height: 24px;">
            <table style="width: 318px">
                <tr>
                    <td style="width: 37%; height: 21px">
                        ngày:<asp:DropDownList ID="NgayDropList" runat="server" Width="52px">
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                            <asp:ListItem>05</asp:ListItem>
                            <asp:ListItem>06</asp:ListItem>
                            <asp:ListItem>07</asp:ListItem>
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 32%; height: 21px">
                        tháng:<asp:DropDownList ID="ThangDropList" runat="server" Width="48px">
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                            <asp:ListItem>05</asp:ListItem>
                            <asp:ListItem>06</asp:ListItem>
                            <asp:ListItem>07</asp:ListItem>
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 40%; height: 21px">
                        năm:<asp:DropDownList ID="NamDropList" runat="server" Width="60%">
                            <asp:ListItem>1980</asp:ListItem>
                            <asp:ListItem>1981</asp:ListItem>
                            <asp:ListItem>1982</asp:ListItem>
                            <asp:ListItem>1983</asp:ListItem>
                            <asp:ListItem>1984</asp:ListItem>
                            <asp:ListItem>1985</asp:ListItem>
                            <asp:ListItem>1986</asp:ListItem>
                            <asp:ListItem>1987</asp:ListItem>
                            <asp:ListItem>1988</asp:ListItem>
                            <asp:ListItem>1989</asp:ListItem>
                            <asp:ListItem>1990</asp:ListItem>
                            <asp:ListItem>1991</asp:ListItem>
                            <asp:ListItem>1992</asp:ListItem>
                            <asp:ListItem>1993</asp:ListItem>
                            <asp:ListItem>1995</asp:ListItem>
                            <asp:ListItem>1996</asp:ListItem>
                            <asp:ListItem>1997</asp:ListItem>
                            <asp:ListItem>1998</asp:ListItem>
                            <asp:ListItem>1999</asp:ListItem>
                            <asp:ListItem>2000</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
            </table>
        </td>
        <td style="width: 142px; height: 24px;">
            <asp:Label ID="NgayThangValidator" runat="server" ForeColor="Red"></asp:Label></td>
    </tr>
    <tr>
        <td style="width: 70px">
            Hình ảnh:</td>
        <td style="width: 166px">
            <asp:FileUpload ID="HinhAnhUpLoad" runat="server" Width="316px" /></td>
        <td style="width: 142px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="HinhAnhUpLoad"
                ErrorMessage="Không được bỏ trống" Display="Dynamic"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td style="width: 70px; height: 63px;">
            Slogun:</td>
        <td style="width: 166px; height: 63px;">
            <asp:TextBox ID="SlogunTxt" runat="server" Height="65px" TextMode="MultiLine" Width="236px"></asp:TextBox></td>
        <td style="width: 142px; height: 63px;">
        </td>
    </tr>
    <tr>
        <td style="width: 70px">
        </td>
        <td style="width: 166px">
            <asp:Button ID="DangKyButton" runat="server" Text="Đăng ký" OnClick="DangKyButton_Click" /></td>
        <td style="width: 142px">
        </td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Bạn hãy điền đầy đủ thông tin đăng ký" Font-Bold="True" Font-Size="15pt"></asp:Label></td>
    </tr>
</table>
        </td>
    </tr>
</table>

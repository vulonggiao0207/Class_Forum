using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class User_Control_DangNhap1 : System.Web.UI.UserControl
{
    TaiKhoanBUS taikhoanBUS = new TaiKhoanBUS();
    public void Thanhcong()
    {
        TaiKhoanLB.Visible = false;
        TaiKhoanTextBox.Visible = false;
        MatKhauTextBox.Visible = false;
        MatKhauLB.Visible = false;
        DangNhapButton.Visible = false;
        DangXuatLink.Visible = true;
        ThayDoiThongTinLink.Visible = true;
    }
    public void ThatBai()
    {
        TaiKhoanLB.Visible = true;
        TaiKhoanTextBox.Visible = true;
        MatKhauTextBox.Visible = true;
        MatKhauLB.Visible = true;
        DangNhapButton.Visible = true;
        DangXuatLink.Visible = false;
        ThayDoiThongTinLink.Visible = false;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["IDAcc"]) == "")
        {
            ThatBai();           
        }
        else
        {
            Thanhcong();
        }
    }
    protected void DangNhapButton_Click(object sender, EventArgs e)
    {
        string ID=taikhoanBUS.DangNhap(TaiKhoanTextBox.Text, MatKhauTextBox.Text);
        if (ID != "")
        {
            Session["IDAcc"] = ID;
            Response.Write("<script language='JavaScript'>Alert('Đăng nhập thành công. Bạn có thể dùng các chức năng của trang web')</Script>");
            ErrorLb.Visible = false;
            Thanhcong();
            Response.Redirect("Default.aspx");
        }
        else
        {
            ErrorLb.Text = "Sai mật khẩu! Mời thử lại";
            ErrorLb.Visible = true;
        }
    }
    protected void ThayDoiThongTinLink_Click(object sender, EventArgs e)
    {

    }
    protected void DangXuatLink_Click(object sender, EventArgs e)
    {
        Session.Abandon();
      //  ThatBai();
        Response.Redirect("Default.aspx");
    }
}

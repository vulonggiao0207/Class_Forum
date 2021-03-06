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

public partial class User_Control_DangKyUC : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
     /*   if (Convert.ToString(Session["IDAcc"]) != "")
        {
            DangKyButton.Enabled = false;
        }
        else
        {
            DangKyButton.Enabled = true;
        }*/
    }
    TaiKhoanBUS tkBUS = new TaiKhoanBUS();
    static bool kiem_tra(int dd, int mm, int yyyy)
    {
        bool flag=true;
        if (dd <= 0 || mm <= 0 || mm > 12)
           flag= false;
        else
        {
            if (mm == 1 || mm == 3 || mm == 5 || mm == 8 || mm == 10 || mm == 12)
            {
                if (dd <= 31)
                    flag = true;
                else
                    flag = false;
            }
            else
            {
                if (mm == 4 || mm == 6 || mm == 7 || mm == 9 || mm == 11)
                {
                    if (dd <= 30)
                        flag = true;
                    else
                        flag = false;
                }
                else
                {
                    if (mm == 2 && yyyy % 4 == 0 && yyyy % 100 != 0)
                    {
                        if (dd <= 29)
                            flag = true;
                        else
                            flag = false;
                    }
                    else if (mm == 2)
                    {
                        if (dd <= 28)
                            flag = true;
                        else
                            flag = false;
                    }
                }
            }
        }
        return flag;
    }

    protected void DangKyButton_Click(object sender, EventArgs e)
    {
        string _Acc = TaiKhoanTxt.Text;
        string _Pass = MatKhauTxt.Text;
        string _Name = HoTenTxt.Text;
        //Ngay sinh
        DateTime _Birth=new DateTime();
        if (kiem_tra(int.Parse(NgayDropList.Text), int.Parse(ThangDropList.Text), int.Parse(NamDropList.Text)))
        {
            _Birth = Convert.ToDateTime(ThangDropList.Text + "/" + NgayDropList.Text + "/" + NamDropList.Text);
            NgayThangValidator.Visible = false;
        }
        else
        {
            NgayThangValidator.Text = "Sai ngày tháng";
            NgayThangValidator.Visible = true;
            return;
        }
        //Hình ảnh
        FileUpload img = (FileUpload)HinhAnhUpLoad;
        Byte[] imgByte = null;
        if (img.HasFile && img.PostedFile != null)
        {
            //To create a PostedFile
            HttpPostedFile File = HinhAnhUpLoad.PostedFile;
            //Create byte Array with file len
            imgByte = new Byte[File.ContentLength];
            //force the control to load data in array
            File.InputStream.Read(imgByte, 0, File.ContentLength);
        }
        Byte[] _Picture = imgByte;
        //Slogun
        string _Slogun = SlogunTxt.Text;
        bool kq=tkBUS.Them(_Acc, _Pass, _Name, _Birth, _Picture, _Slogun);
     //   Response.Write("<Script language='Javascript'>alert('Đăng ký thành công. Quay lại trang chủ...')</script>");
        if (kq == true)
        {
            Response.Redirect("DangKyThanhCong.aspx");
        }
        else
            Label1.Text = "Tài khoản đã có người sử dụng";

    }
}

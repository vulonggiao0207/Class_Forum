using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for TaiKhoanBUS
/// </summary>
public class TaiKhoanBUS
{
    TaiKhoanDAO tkDAO = new TaiKhoanDAO();
    public bool Them(string Acc,string Pass,string Name,DateTime Birth,Byte[] picture, string Slogun)
    {
        try
        {
            TaiKhoanBO tkBO = new TaiKhoanBO();
            tkBO.Account = Acc;
            tkBO.Password = Pass;
            tkBO.Name = Name;
            tkBO.Birth = Birth;
            tkBO.Picutre = picture;
            tkBO.Slogun = Slogun;
            tkDAO.Them(tkBO);
            return true;
        }
        catch
        {
            return false;
        }
    }
    public string DangNhap(string Acc,string Pass)
    {
        string kq = "";
        try
        {
            TaiKhoanBO tkBO = new TaiKhoanBO();
            tkBO.Account = Acc;
            tkBO.Password = Pass;
            kq = tkDAO.KTDangNhap(tkBO);
            return kq;
        }
        catch
        {
            return kq;
        }

    }
    
}

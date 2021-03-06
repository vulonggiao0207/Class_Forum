using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for TaiKhoanDAO
/// </summary>
public class TaiKhoanDAO
{
    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);
    public void Them(TaiKhoanBO taikhoanBO)
    {    
        SqlCommand cmd = new SqlCommand("insert into Account values(@Account,@Password,@Name,@Birth,@Picutre,@Slogun)", cnn);
        cmd.Parameters.AddWithValue("@Account", taikhoanBO.Account);
        cmd.Parameters.AddWithValue("@PassWord", taikhoanBO.Password);
        cmd.Parameters.AddWithValue("@Name", taikhoanBO.Name);
        cmd.Parameters.AddWithValue("@Birth", taikhoanBO.Birth);
        cmd.Parameters.AddWithValue("@Picutre", taikhoanBO.Picutre);
        cmd.Parameters.AddWithValue("@Slogun", taikhoanBO.Slogun);
        cnn.Open();
        cmd.ExecuteNonQuery();
        cnn.Close();
    }
    public string KTDangNhap(TaiKhoanBO taikhoanBO)
    {             
        cnn.Open();
        string sql = "select IDAcc from Account where Account = @user and Password = @pass";
        SqlCommand commandForCheckUser = new SqlCommand(sql, cnn);
        commandForCheckUser.Parameters.AddWithValue("@user", taikhoanBO.Account);
        commandForCheckUser.Parameters.AddWithValue("@pass", taikhoanBO.Password);
        commandForCheckUser.CommandType = CommandType.Text;
        string userID = Convert.ToString(commandForCheckUser.ExecuteScalar());
        cnn.Close();
        return userID;
    }
}

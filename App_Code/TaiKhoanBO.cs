using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections;

/// <summary>
/// Summary description for TaiKhoanBO
/// </summary>
public class TaiKhoanBO
{
    private int _IDAcc;
    private string _Account;
    private string _Password;
    private string _Name;
    private DateTime _Birth;
    private Byte[] _Picture;
    private string _Slogun;
    public TaiKhoanBO() 
    {
        IDAcc = 0;
        _Account = "";
        _Password = "";
        _Name = "";
        _Birth = DateTime.Today;
        _Picture = null;
        _Slogun = "";
    }
    public int IDAcc
    {
        get { return _IDAcc;}
        set { _IDAcc=value;}
    }
    public string Account
    {
        get{return _Account;}
        set{_Account=value;}
    }
    public string Password
    {
        get{return _Password;}
        set{_Password=value;}
    }
    public string Name
    {
        get{return _Name;}
        set{_Name=value;}
    }
    public DateTime Birth
    {
        get{return _Birth;}
        set{_Birth=value;}
    }
    public Byte[] Picutre
    { 
        get{return _Picture;}
        set{_Picture=value;}
    }
    public string Slogun
    {
        get{return _Slogun;}
        set{_Slogun=value;}
    }
}
public class TaiKhoanCollection : CollectionBase
{
    public void Add(TaiKhoanBO _taikhoanBO)
    {
        List.Add(_taikhoanBO);
    }
    public void Remove(int _index)
    {
        List.RemoveAt(_index);
    }
    public TaiKhoanBO Index(int _index)
    {
        return (TaiKhoanBO)List[_index];
    }
}



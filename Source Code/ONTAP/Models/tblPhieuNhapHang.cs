//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ONTAP.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblPhieuNhapHang
    {
        public int MaPhieuNH { get; set; }
        public int MaTB { get; set; }
        public int MaNVNhanHang { get; set; }
        public int MaNCC { get; set; }
        public string SoLuong { get; set; }
        public string NgayNhap { get; set; }
    
        public virtual tblNhaCungCap tblNhaCungCap { get; set; }
        public virtual tblNhanVien tblNhanVien { get; set; }
        public virtual tblThietBi tblThietBi { get; set; }
    }
}

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
    
    public partial class tblHoaDon
    {
        public tblHoaDon()
        {
            this.tblChiTietHD = new HashSet<tblChiTietHD>();
            this.tblGiaoHang = new HashSet<tblGiaoHang>();
            this.tblThanhToan = new HashSet<tblThanhToan>();
        }
    
        public int MaHD { get; set; }
        public string TenHD { get; set; }
        public System.DateTime NgayHD { get; set; }
        public int MaNV { get; set; }
        public decimal TongTien { get; set; }
    
        public virtual ICollection<tblChiTietHD> tblChiTietHD { get; set; }
        public virtual ICollection<tblGiaoHang> tblGiaoHang { get; set; }
        public virtual tblNhanVien tblNhanVien { get; set; }
        public virtual ICollection<tblThanhToan> tblThanhToan { get; set; }
    }
}

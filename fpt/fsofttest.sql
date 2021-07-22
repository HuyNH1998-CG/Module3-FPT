create database DKCC;
use DKCC;
create table NhaCungCap(
MaNhaCC nvarchar(45) primary key,
TenNhaCC nvarchar(45),
DiaChi nvarchar(45),
SoDT nvarchar(45),
MaSoThue nvarchar(45)
);
create table LoaiDichVu(
MaLoaiDV nvarchar(45) primary key,
TenLoaiDV nvarchar(45)
);
create table MucPhi(
MaMP int primary key,
DonGia double,
MoTa nvarchar(45)
);
create table DongXe(
DongXe nvarchar(45) primary key,
HangXe nvarchar(45),
SoChoNgoi int
);
create table DangKyCungCap(
MaDKCC nvarchar(45) primary key,
MaNhaCC nvarchar(45),
MaLoaiDV nvarchar(45),
DongXe nvarchar(45),
MaMP int,
NgayBatDauCungCap date,
NgayKetThucCungCap date,
SoLuongXeDangKy int,
foreign key (MaNhaCC) references NhaCungCap(MaNhaCC),
foreign key (MaLoaiDV) references LoaiDichVu(MaLoaiDV),
foreign key (DongXe) references DongXe(DongXe),
foreign key (MaMP) references MucPhi(MaMP)
);

select * from dongxe where sochongoi >5;

select nhacungcap.* from dangkycungcap
join nhacungcap on dangkycungcap.manhacc = nhacungcap.manhacc
join dongxe on dangkycungcap.dongxe = dongxe.dongxe
where hangxe = "Toyota" or hangxe = "Kia"
group by dangkycungcap.manhacc;

select * from nhacungcap
order by tennhacc asc, masothue desc;

select MaNhaCC,count(MaNhaCC) as SoLanDK from DangKyCungCap
where NgayBatDauCungCap = "2015-11-20"
group by MaNhaCC;

select distinct hangxe from dongxe;

select MaDKCC, DangKyCungCap.MaNhaCC, TenNhaCC, DiaChi, MaSoThue, TenLoaiDV, DonGia,
HangXe, NgayBatDauCungCap, NgayKetThucCungCap
from DangKyCungCap
join dongxe on DangKyCungCap.dongxe = dongxe.dongxe
join LoaiDichVu on DangKyCungCap.MaLoaiDV = LoaiDichVu.MaLoaiDV
join mucphi on DangKyCungCap.MaMP = mucphi.MaMP
right join NhaCungCap on NhaCungCap.MaNhaCC = DangKyCungCap.MaNhaCC;

select distinct nhacungcap.* from dangkycungcap
join nhacungcap on dangkycungcap.manhacc = nhacungcap.manhacc
where dongxe = "Hiace" or dongxe = "Cerato"
group by dangkycungcap.manhacc;

select distinct nhacungcap.MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue from dangkycungcap
join nhacungcap
where nhacungcap.manhacc not in (select manhacc from dangkycungcap);

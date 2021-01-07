--�ϥ�team6�ϥΪ̡A�إ߸�Ʈw"UYY_DB"

--�H�U��ƪ�إ߰Ϥ��j�p�g--

Use UYY_DB
Go

create table city(
cityPkId int primary key identity(1,1),
cityName nvarchar(10) not null unique
);
insert into city(cityName) values('�򶩥�');
insert into city(cityName) values('�x�_��');
insert into city(cityName) values('�s�_��');
insert into city(cityName) values('��饫');
insert into city(cityName) values('�s�˥�');
insert into city(cityName) values('�s�˿�');
insert into city(cityName) values('�]�߿�');
insert into city(cityName) values('�x����');
insert into city(cityName) values('���ƿ�');
insert into city(cityName) values('�n�뿤');
insert into city(cityName) values('���L��');
insert into city(cityName) values('�Ÿq��');
insert into city(cityName) values('�Ÿq��');
insert into city(cityName) values('�x�n��');
insert into city(cityName) values('������');
insert into city(cityName) values('�̪F��');
insert into city(cityName) values('�y����');
insert into city(cityName) values('�Ὤ��');
insert into city(cityName) values('�x�F��');


create table dist(
distPkId int primary key identity(1,1),
cityPkId int references city(cityPkId),
distName nvarchar(10) not null
);
insert into dist(cityPkId,distName) values(1,'������');
insert into dist(cityPkId,distName) values(1,'�C����');
insert into dist(cityPkId,distName) values(1,'�x�x��');
insert into dist(cityPkId,distName) values(1,'���R��');
insert into dist(cityPkId,distName) values(1,'���s��');
insert into dist(cityPkId,distName) values(1,'�w�ְ�');
insert into dist(cityPkId,distName) values(1,'�H�q��');
insert into dist(cityPkId,distName) values(2,'������');
insert into dist(cityPkId,distName) values(2,'�j�P��');
insert into dist(cityPkId,distName) values(2,'���s��');
insert into dist(cityPkId,distName) values(2,'�Q�s��');
insert into dist(cityPkId,distName) values(2,'�j�w��');
insert into dist(cityPkId,distName) values(2,'�U�ذ�');
insert into dist(cityPkId,distName) values(2,'�H�q��');
insert into dist(cityPkId,distName) values(2,'�h�L��');
insert into dist(cityPkId,distName) values(2,'�_���');
insert into dist(cityPkId,distName) values(2,'�����');
insert into dist(cityPkId,distName) values(2,'�n���');
insert into dist(cityPkId,distName) values(2,'��s��');
insert into dist(cityPkId,distName) values(3,'�O����');
insert into dist(cityPkId,distName) values(3,'���M��');
insert into dist(cityPkId,distName) values(3,'�éM��');
insert into dist(cityPkId,distName) values(3,'�g����');
insert into dist(cityPkId,distName) values(3,'�T�l��');
insert into dist(cityPkId,distName) values(3,'�a�q��');
insert into dist(cityPkId,distName) values(3,'�s����');
insert into dist(cityPkId,distName) values(3,'�T����');
insert into dist(cityPkId,distName) values(3,'Ī�w��');
insert into dist(cityPkId,distName) values(3,'���Ѱ�');
insert into dist(cityPkId,distName) values(3,'���s��');
insert into dist(cityPkId,distName) values(3,'�L�f��');
insert into dist(cityPkId,distName) values(3,'�K����');
insert into dist(cityPkId,distName) values(3,'�H����');
insert into dist(cityPkId,distName) values(3,'�T�۰�');
insert into dist(cityPkId,distName) values(3,'�۪���');
insert into dist(cityPkId,distName) values(3,'���s��');
insert into dist(cityPkId,distName) values(3,'�U����');
insert into dist(cityPkId,distName) values(3,'�����');
insert into dist(cityPkId,distName) values(3,'��ڰ�');
insert into dist(cityPkId,distName) values(3,'�^�d��');
insert into dist(cityPkId,distName) values(3,'���˰�');
insert into dist(cityPkId,distName) values(3,'���˰�');
insert into dist(cityPkId,distName) values(3,'�s����');
insert into dist(cityPkId,distName) values(3,'�`�|��');
insert into dist(cityPkId,distName) values(3,'�����');
insert into dist(cityPkId,distName) values(3,'�W�L��');
insert into dist(cityPkId,distName) values(3,'�Q�Ӱ�');
insert into dist(cityPkId,distName) values(4,'����');
insert into dist(cityPkId,distName) values(4,'�K�w��');
insert into dist(cityPkId,distName) values(4,'�t�s��');
insert into dist(cityPkId,distName) values(4,'Ī�˰�');
insert into dist(cityPkId,distName) values(4,'�j���');
insert into dist(cityPkId,distName) values(4,'�j�˰�');
insert into dist(cityPkId,distName) values(4,'���c��');
insert into dist(cityPkId,distName) values(4,'�����');
insert into dist(cityPkId,distName) values(4,'������');
insert into dist(cityPkId,distName) values(4,'�s���');
insert into dist(cityPkId,distName) values(4,'�s�ΰ�');
insert into dist(cityPkId,distName) values(4,'�[����');
insert into dist(cityPkId,distName) values(4,'�_����');
insert into dist(cityPkId,distName) values(5,'�F��');
insert into dist(cityPkId,distName) values(5,'�_��');
insert into dist(cityPkId,distName) values(5,'���s��');
insert into dist(cityPkId,distName) values(6,'�˥_��');
insert into dist(cityPkId,distName) values(6,'������');
insert into dist(cityPkId,distName) values(6,'�s�H��');
insert into dist(cityPkId,distName) values(6,'�˪F��');
insert into dist(cityPkId,distName) values(6,'��f�m');
insert into dist(cityPkId,distName) values(6,'��s�m');
insert into dist(cityPkId,distName) values(6,'�s�׶m');
insert into dist(cityPkId,distName) values(6,'�|�L�m');
insert into dist(cityPkId,distName) values(6,'�_�s�m');
insert into dist(cityPkId,distName) values(6,'�_�H�m');
insert into dist(cityPkId,distName) values(6,'�o�ܶm');
insert into dist(cityPkId,distName) values(6,'�y�۶m');
insert into dist(cityPkId,distName) values(6,'���p�m');
insert into dist(cityPkId,distName) values(7,'�]�ߥ�');
insert into dist(cityPkId,distName) values(7,'�Y����');
insert into dist(cityPkId,distName) values(7,'�b����');
insert into dist(cityPkId,distName) values(7,'�q�]��');
insert into dist(cityPkId,distName) values(7,'�˫n��');
insert into dist(cityPkId,distName) values(7,'���s��');
insert into dist(cityPkId,distName) values(7,'������');
insert into dist(cityPkId,distName) values(7,'�j��m');
insert into dist(cityPkId,distName) values(7,'���]�m');
insert into dist(cityPkId,distName) values(7,'���r�m');
insert into dist(cityPkId,distName) values(7,'�n���m');
insert into dist(cityPkId,distName) values(7,'�Y�ζm');
insert into dist(cityPkId,distName) values(7,'�T�q�m');
insert into dist(cityPkId,distName) values(7,'���m');
insert into dist(cityPkId,distName) values(7,'�y���m');
insert into dist(cityPkId,distName) values(7,'�T�W�m');
insert into dist(cityPkId,distName) values(7,'���m');
insert into dist(cityPkId,distName) values(7,'���w�m');
insert into dist(cityPkId,distName) values(8,'����');
insert into dist(cityPkId,distName) values(8,'�F��');
insert into dist(cityPkId,distName) values(8,'�n��');
insert into dist(cityPkId,distName) values(8,'���');
insert into dist(cityPkId,distName) values(8,'�_��');
insert into dist(cityPkId,distName) values(8,'�_�ٰ�');
insert into dist(cityPkId,distName) values(8,'��ٰ�');
insert into dist(cityPkId,distName) values(8,'�n�ٰ�');
insert into dist(cityPkId,distName) values(8,'�ӥ���');
insert into dist(cityPkId,distName) values(8,'�j����');
insert into dist(cityPkId,distName) values(8,'���p��');
insert into dist(cityPkId,distName) values(8,'�Q���');
insert into dist(cityPkId,distName) values(8,'�׭��');
insert into dist(cityPkId,distName) values(8,'�Z����');
insert into dist(cityPkId,distName) values(8,'�۩���');
insert into dist(cityPkId,distName) values(8,'�F�հ�');
insert into dist(cityPkId,distName) values(8,'�M����');
insert into dist(cityPkId,distName) values(8,'�s����');
insert into dist(cityPkId,distName) values(8,'��l��');
insert into dist(cityPkId,distName) values(8,'�j����');
insert into dist(cityPkId,distName) values(8,'������');
insert into dist(cityPkId,distName) values(8,'�j�{��');
insert into dist(cityPkId,distName) values(8,'�F����');
insert into dist(cityPkId,distName) values(8,'�s����');
insert into dist(cityPkId,distName) values(8,'��ϰ�');
insert into dist(cityPkId,distName) values(8,'�M����');
insert into dist(cityPkId,distName) values(8,'�j�Ұ�');
insert into dist(cityPkId,distName) values(8,'�~�H��');
insert into dist(cityPkId,distName) values(8,'�j�w��');
insert into dist(cityPkId,distName) values(9,'���ƥ�');
insert into dist(cityPkId,distName) values(9,'���L��');
insert into dist(cityPkId,distName) values(9,'������');
insert into dist(cityPkId,distName) values(9,'�M����');
insert into dist(cityPkId,distName) values(9,'�_����');
insert into dist(cityPkId,distName) values(9,'�˴���');
insert into dist(cityPkId,distName) values(9,'�Ф���');
insert into dist(cityPkId,distName) values(9,'�G�L��');
insert into dist(cityPkId,distName) values(9,'�u��m');
insert into dist(cityPkId,distName) values(9,'����m');
insert into dist(cityPkId,distName) values(9,'�ֿ��m');
insert into dist(cityPkId,distName) values(9,'�q���m');
insert into dist(cityPkId,distName) values(9,'��¶m');
insert into dist(cityPkId,distName) values(9,'���m');
insert into dist(cityPkId,distName) values(9,'�j���m');
insert into dist(cityPkId,distName) values(9,'�H�Q�m');
insert into dist(cityPkId,distName) values(9,'�H�߶m');
insert into dist(cityPkId,distName) values(9,'�ùt�m');
insert into dist(cityPkId,distName) values(9,'���Y�m');
insert into dist(cityPkId,distName) values(9,'�G���m');
insert into dist(cityPkId,distName) values(9,'�Ч��m');
insert into dist(cityPkId,distName) values(9,'���Y�m');
insert into dist(cityPkId,distName) values(9,'�ڭb�m');
insert into dist(cityPkId,distName) values(9,'�j���m');
insert into dist(cityPkId,distName) values(9,'�˶�m');
insert into dist(cityPkId,distName) values(9,'�˦{�m');
insert into dist(cityPkId,distName) values(10,'�n�륫');
insert into dist(cityPkId,distName) values(10,'�����');
insert into dist(cityPkId,distName) values(10,'�H����');
insert into dist(cityPkId,distName) values(10,'�ˤs��');
insert into dist(cityPkId,distName) values(10,'������');
insert into dist(cityPkId,distName) values(10,'�W���m');
insert into dist(cityPkId,distName) values(10,'�����m');
insert into dist(cityPkId,distName) values(10,'���d�m');
insert into dist(cityPkId,distName) values(10,'�����m');
insert into dist(cityPkId,distName) values(10,'��m�m');
insert into dist(cityPkId,distName) values(10,'�����m');
insert into dist(cityPkId,distName) values(10,'�H�q�m');
insert into dist(cityPkId,distName) values(10,'���R�m');
insert into dist(cityPkId,distName) values(11,'�椻��');
insert into dist(cityPkId,distName) values(11,'��n��');
insert into dist(cityPkId,distName) values(11,'�����');
insert into dist(cityPkId,distName) values(11,'������');
insert into dist(cityPkId,distName) values(11,'�g�w��');
insert into dist(cityPkId,distName) values(11,'�_����');
insert into dist(cityPkId,distName) values(11,'�j�|�m');
insert into dist(cityPkId,distName) values(11,'�j��m');
insert into dist(cityPkId,distName) values(11,'�l��m');
insert into dist(cityPkId,distName) values(11,'�L���m');
insert into dist(cityPkId,distName) values(11,'�G�[�m');
insert into dist(cityPkId,distName) values(11,'�[�I�m');
insert into dist(cityPkId,distName) values(11,'���d�m');
insert into dist(cityPkId,distName) values(11,'�F�նm');
insert into dist(cityPkId,distName) values(11,'�ǩ��m');
insert into dist(cityPkId,distName) values(11,'�O��m');
insert into dist(cityPkId,distName) values(11,'�����m');
insert into dist(cityPkId,distName) values(11,'�|��m');
insert into dist(cityPkId,distName) values(11,'�f��m');
insert into dist(cityPkId,distName) values(11,'���L�m');
insert into dist(cityPkId,distName) values(12,'�F��');
insert into dist(cityPkId,distName) values(12,'���');
insert into dist(cityPkId,distName) values(13,'�ӫO��');
insert into dist(cityPkId,distName) values(13,'���l��');
insert into dist(cityPkId,distName) values(13,'���U��');
insert into dist(cityPkId,distName) values(13,'�j�L��');
insert into dist(cityPkId,distName) values(13,'�����m');
insert into dist(cityPkId,distName) values(13,'�ˤf�m');
insert into dist(cityPkId,distName) values(13,'�s��m');
insert into dist(cityPkId,distName) values(13,'���}�m');
insert into dist(cityPkId,distName) values(13,'�F�۶m');
insert into dist(cityPkId,distName) values(13,'�q�˶m');
insert into dist(cityPkId,distName) values(13,'����m');
insert into dist(cityPkId,distName) values(13,'���W�m');
insert into dist(cityPkId,distName) values(13,'���H�m');
insert into dist(cityPkId,distName) values(13,'�˱T�m');
insert into dist(cityPkId,distName) values(13,'���s�m');
insert into dist(cityPkId,distName) values(13,'�f���m');
insert into dist(cityPkId,distName) values(13,'�j�H�m');
insert into dist(cityPkId,distName) values(13,'�����s�m');
insert into dist(cityPkId,distName) values(14,'�����');
insert into dist(cityPkId,distName) values(14,'�F��');
insert into dist(cityPkId,distName) values(14,'�n��');
insert into dist(cityPkId,distName) values(14,'�_��');
insert into dist(cityPkId,distName) values(14,'�w����');
insert into dist(cityPkId,distName) values(14,'�s���');
insert into dist(cityPkId,distName) values(14,'�ñd��');
insert into dist(cityPkId,distName) values(14,'�w�n��');
insert into dist(cityPkId,distName) values(14,'���w��');
insert into dist(cityPkId,distName) values(14,'�k����');
insert into dist(cityPkId,distName) values(14,'�w�w��');
insert into dist(cityPkId,distName) values(14,'�s�ư�');
insert into dist(cityPkId,distName) values(14,'���ư�');
insert into dist(cityPkId,distName) values(14,'�U���');
insert into dist(cityPkId,distName) values(14,'�s����');
insert into dist(cityPkId,distName) values(14,'�Ψ���');
insert into dist(cityPkId,distName) values(14,'����');
insert into dist(cityPkId,distName) values(14,'�¨���');
insert into dist(cityPkId,distName) values(14,'���q��');
insert into dist(cityPkId,distName) values(14,'�Q����');
insert into dist(cityPkId,distName) values(14,'�ժe��');
insert into dist(cityPkId,distName) values(14,'�h���');
insert into dist(cityPkId,distName) values(14,'�����');
insert into dist(cityPkId,distName) values(14,'�F�s��');
insert into dist(cityPkId,distName) values(14,'���Ұ�');
insert into dist(cityPkId,distName) values(14,'�x�а�');
insert into dist(cityPkId,distName) values(14,'�j����');
insert into dist(cityPkId,distName) values(14,'�ǥҰ�');
insert into dist(cityPkId,distName) values(14,'�C�Ѱ�');
insert into dist(cityPkId,distName) values(14,'�N�x��');
insert into dist(cityPkId,distName) values(14,'�_����');
insert into dist(cityPkId,distName) values(14,'�s�W��');
insert into dist(cityPkId,distName) values(14,'�ɤ���');
insert into dist(cityPkId,distName) values(14,'�����');
insert into dist(cityPkId,distName) values(14,'�n�ư�');
insert into dist(cityPkId,distName) values(14,'�����');
insert into dist(cityPkId,distName) values(14,'�s�T��');
insert into dist(cityPkId,distName) values(15,'�Q�L��');
insert into dist(cityPkId,distName) values(15,'���s��');
insert into dist(cityPkId,distName) values(15,'�����');
insert into dist(cityPkId,distName) values(15,'�����');
insert into dist(cityPkId,distName) values(15,'�T����');
insert into dist(cityPkId,distName) values(15,'�s����');
insert into dist(cityPkId,distName) values(15,'�e����');
insert into dist(cityPkId,distName) values(15,'�d����');
insert into dist(cityPkId,distName) values(15,'�e���');
insert into dist(cityPkId,distName) values(15,'�X�z��');
insert into dist(cityPkId,distName) values(15,'�p���');
insert into dist(cityPkId,distName) values(15,'��s��');
insert into dist(cityPkId,distName) values(15,'�L���');
insert into dist(cityPkId,distName) values(15,'�j�d��');
insert into dist(cityPkId,distName) values(15,'�j���');
insert into dist(cityPkId,distName) values(15,'�j����');
insert into dist(cityPkId,distName) values(15,'���Z��');
insert into dist(cityPkId,distName) values(15,'���Q��');
insert into dist(cityPkId,distName) values(15,'���s��');
insert into dist(cityPkId,distName) values(15,'���Y��');
insert into dist(cityPkId,distName) values(15,'�P�_��');
insert into dist(cityPkId,distName) values(15,'�мd��');
insert into dist(cityPkId,distName) values(15,'������');
insert into dist(cityPkId,distName) values(15,'���˰�');
insert into dist(cityPkId,distName) values(15,'�򤺰�');
insert into dist(cityPkId,distName) values(15,'�X�_��');
insert into dist(cityPkId,distName) values(15,'�æw��');
insert into dist(cityPkId,distName) values(15,'������');
insert into dist(cityPkId,distName) values(15,'��x��');
insert into dist(cityPkId,distName) values(15,'�X�s��');
insert into dist(cityPkId,distName) values(15,'���@��');
insert into dist(cityPkId,distName) values(15,'���t��');
insert into dist(cityPkId,distName) values(15,'�ҥP��');
insert into dist(cityPkId,distName) values(15,'���L��');
insert into dist(cityPkId,distName) values(15,'������');
insert into dist(cityPkId,distName) values(15,'�Z�L��');
insert into dist(cityPkId,distName) values(15,'�緽��');
insert into dist(cityPkId,distName) values(15,'�����L��');
insert into dist(cityPkId,distName) values(16,'�̪F��');
insert into dist(cityPkId,distName) values(16,'��{��');
insert into dist(cityPkId,distName) values(16,'�F����');
insert into dist(cityPkId,distName) values(16,'��K��');
insert into dist(cityPkId,distName) values(16,'�U���m');
insert into dist(cityPkId,distName) values(16,'���v�m');
insert into dist(cityPkId,distName) values(16,'�ﬥ�m');
insert into dist(cityPkId,distName) values(16,'�E�p�m');
insert into dist(cityPkId,distName) values(16,'����m');
insert into dist(cityPkId,distName) values(16,'�Q�H�m');
insert into dist(cityPkId,distName) values(16,'����m');
insert into dist(cityPkId,distName) values(16,'�U�r�m');
insert into dist(cityPkId,distName) values(16,'���H�m');
insert into dist(cityPkId,distName) values(16,'�˥жm');
insert into dist(cityPkId,distName) values(16,'�s��m');
insert into dist(cityPkId,distName) values(16,'�D�d�m');
insert into dist(cityPkId,distName) values(16,'�s��m');
insert into dist(cityPkId,distName) values(16,'�r���m');
insert into dist(cityPkId,distName) values(16,'�L��m');
insert into dist(cityPkId,distName) values(16,'�n�{�m');
insert into dist(cityPkId,distName) values(16,'�ΥV�m');
insert into dist(cityPkId,distName) values(16,'�[�y�m');
insert into dist(cityPkId,distName) values(16,'�����m');
insert into dist(cityPkId,distName) values(16,'���{�m');
insert into dist(cityPkId,distName) values(16,'�D�s�m');
insert into dist(cityPkId,distName) values(16,'�T�a���m');
insert into dist(cityPkId,distName) values(16,'���O�m');
insert into dist(cityPkId,distName) values(16,'���a�m');
insert into dist(cityPkId,distName) values(16,'���Z�m');
insert into dist(cityPkId,distName) values(16,'�Ӹq�m');
insert into dist(cityPkId,distName) values(16,'�K��m');
insert into dist(cityPkId,distName) values(16,'��l�m');
insert into dist(cityPkId,distName) values(16,'�d���m');
insert into dist(cityPkId,distName) values(17,'�y����');
insert into dist(cityPkId,distName) values(17,'ù�F��');
insert into dist(cityPkId,distName) values(17,'Ĭ�D��');
insert into dist(cityPkId,distName) values(17,'�Y����');
insert into dist(cityPkId,distName) values(17,'�G�˶m');
insert into dist(cityPkId,distName) values(17,'����m');
insert into dist(cityPkId,distName) values(17,'���s�m');
insert into dist(cityPkId,distName) values(17,'�V�s�m');
insert into dist(cityPkId,distName) values(17,'�����m');
insert into dist(cityPkId,distName) values(17,'�T�P�m');
insert into dist(cityPkId,distName) values(17,'�j�P�m');
insert into dist(cityPkId,distName) values(17,'�n�D�m');
insert into dist(cityPkId,distName) values(18,'�Ὤ��');
insert into dist(cityPkId,distName) values(18,'��L��');
insert into dist(cityPkId,distName) values(18,'�ɨ���');
insert into dist(cityPkId,distName) values(18,'�s���m');
insert into dist(cityPkId,distName) values(18,'�N�w�m');
insert into dist(cityPkId,distName) values(18,'���׶m');
insert into dist(cityPkId,distName) values(18,'���_�m');
insert into dist(cityPkId,distName) values(18,'���ضm');
insert into dist(cityPkId,distName) values(18,'���J�m');
insert into dist(cityPkId,distName) values(18,'�I���m');
insert into dist(cityPkId,distName) values(18,'�q�L�m');
insert into dist(cityPkId,distName) values(18,'�U�a�m');
insert into dist(cityPkId,distName) values(18,'���˶m');
insert into dist(cityPkId,distName) values(19,'�O�F��');
insert into dist(cityPkId,distName) values(19,'���\��');
insert into dist(cityPkId,distName) values(19,'���s��');
insert into dist(cityPkId,distName) values(19,'���n�m');
insert into dist(cityPkId,distName) values(19,'�j�Z�m');
insert into dist(cityPkId,distName) values(19,'�ӳ¨��m');
insert into dist(cityPkId,distName) values(19,'�F�e�m');
insert into dist(cityPkId,distName) values(19,'���ضm');
insert into dist(cityPkId,distName) values(19,'�����m');
insert into dist(cityPkId,distName) values(19,'���W�m');
insert into dist(cityPkId,distName) values(19,'��q�m');
insert into dist(cityPkId,distName) values(19,'�����m');
insert into dist(cityPkId,distName) values(19,'���ݶm');
insert into dist(cityPkId,distName) values(19,'�F���m');
insert into dist(cityPkId,distName) values(19,'���p�m');
insert into dist(cityPkId,distName) values(19,'�����m');


create table member(
memberPkId int primary key identity(1,1),
memberEmail nvarchar(30) not null,
memberPwd nvarchar(30) not null,
memberName nvarchar(30) not null,
memberIdNumber nvarchar(10) not null,
memberAddress nvarchar(50) not null,
memberPhone nvarchar(20) not null,
memberStatus nvarchar(10) not null
);
insert into member(memberEmail,memberPwd,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Tanjirou@gmail.com.tw','P@ssw0rd123','���v��','F111111001','�x�_���H�q�ϫH�q���@�q1��','0911111111','true');
insert into member(memberEmail,memberPwd,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Nezuko@gmail.com.tw','P@ssw0rd123','�����l','F222222002','�s�_���O���ϪO�����@�q2��','0922222222','true');
insert into member(memberEmail,memberPwd,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Zenitsu@gmail.com.tw','P@ssw0rd123','���h','F111111003','��饫���Ϯ����@�q3��','0933333333','true');
insert into member(memberEmail,memberPwd,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Inosuke@gmail.com.tw','P@ssw0rd123','�줧�U','F111111004','�s�˥����s�ϭ��s���@�q4��','0944444444','false');
insert into member(memberEmail,memberPwd,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Kyoujurou@gmail.com.tw','P@ssw0rd123','���ح�','F111111005','�]�߿����s����s���@�q5��','0955555555','true');
insert into member(memberEmail,memberPwd,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Shinobu@gmail.com.tw','P@ssw0rd123','������','F222222006','�x������ٰϦ�ٸ��@�q6��','0966666666','false');


create table memberDetails(
memeberPkId int references member(memberPkId),
emergercyContact nvarchar(30) not null,
emergercyNumber nvarchar(20) not null,
emergercyRelationship nvarchar(10) not null,
smoke nvarchar(10) not null,
betelNut nvarchar(10) not null,
diseases nvarchar(20),
allergy nvarchar(20),
surgery nvarchar(20)
);
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(1,'�v����','0911001001','��','true','false','�t���f','','�h�B�����N');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(2,'���l��','0922002002','��','false','false','','','�r�X�B��');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(3,'���h�d','0933003003','�t��','false','true','','','����');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(4,'���U��','0944004004','�d��','true','true','���g�f','','');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(5,'�ح���','0955005005','�̧�','true','false','','�K��L��','');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(6,'���`�G','0966006006','�{��','false','false','','�w���L��','');


create table clinic(
clinicPkId int primary key identity(1,1),
clinicAccount nvarchar(30) not null unique,
clinicPwd nvarchar(30) not null,
clinicName nvarchar(30) not null,
clinicPhone nvarchar(20) not null,
clinicCity int references city(cityPkId),
clinicDist int references dist(distPkId),
clinicAddress nvarchar(50) not null,
--clinicLocation nvarchar(30),
clinicStartTime date not null,
clinicEndTime date not null,
clinicStatus nvarchar(10) not null
);
insert into clinic(clinicAccount,clinicPwd,clinicName,clinicPhone,clinicCity,clinicDist,clinicAddress,clinicStartTime,clinicEndTime,clinicStatus) values('Shinra@hotmail.com.tw','P@ssw0rd456','��ù����E��','00-000-001',1,1,'���o�n�R1','2021/01/01','2021/12/31','false');
insert into clinic(clinicAccount,clinicPwd,clinicName,clinicPhone,clinicCity,clinicDist,clinicAddress,clinicStartTime,clinicEndTime,clinicStatus) values('Yorozuya@hotmail.com.tw','P@ssw0rd456','�U�ƫΤ���E��','00-000-002',2,7,'���o�n�R2','2021/01/01','2021/12/31','true');
insert into clinic(clinicAccount,clinicPwd,clinicName,clinicPhone,clinicCity,clinicDist,clinicAddress,clinicStartTime,clinicEndTime,clinicStatus) values('Konoha@hotmail.com.tw','P@ssw0rd456','�츭����E��','00-000-003',3,20,'���o�n�R3','2021/01/01','2021/12/31','true');


create table timeTable(
timeTablePkId int primary Key identity(1,1),
times nvarchar(10),
weekdays nvarchar(10),
);

create table dentist(
clinicPkId int references clinic(clinicPkId),
dentistPkId int primary key identity(1,1),
dentistName nvarchar(30),
dentistImage nvarchar(max),
dentistGender nvarchar(10),
);


create table items(
itemPkId int primary key identity(1,1),
itemName nvarchar(20)
);
insert into items(itemName) values('�ž�');
insert into items(itemName) values('�~��');
insert into items(itemName) values('���P�f');
insert into items(itemName) values('�H�uŬ�_');
insert into items(itemName) values('�ںުv��');
insert into items(itemName) values('��L�ں�');
insert into items(itemName) values('�N������');
insert into items(itemName) values('���f�B��');
insert into items(itemName) values('�ൣ����');
insert into items(itemName) values('�ӷP�ʤ���');


--create table clinicPayment(
--clinicPkId int references clinic(clinicPkId)
--);


create table dentistItem(
dentistPkId int references dentist(dentistPkId),
itemPkId int references items(itemPkId)
);

create table dentistTime(
dentistPkId int references dentist(dentistPkId),
timeTablePkId int references timeTable(timeTablePkId)
);

create table appointment(
memeberPkId int references member(memberPkId),
clinicPkId int references clinic(clinicPkId),
dentistPkId int references dentist(dentistPkId),
appointDate Date,
timeTablePkId int references timeTable(timeTablePkId),
itemPkId int references items(itemPkId),
arrive nvarchar(10)
);

create table products(
productPkId int primary key identity(1,1),
productName nvarchar(50),
productUpdateDate date,
productPrice int,
productQuantity int,
productStatus nvarchar(10),
productImage nvarchar ,
productProfile nvarchar(100),
productSpec nvarchar(100)
);

create table coupon(
couponPkId int primary key identity(1,1),
couponContext nvarchar(10),
couponCode nvarchar(10),
couponStartTime date,
couponEndTime date
);

create table orders(
orderPkId int primary key identity(1,1),
memeberPkId int references member(memberPkId),
couponPkId int references coupon(couponPkId),
totalPayment int,
orderStatus nvarchar(10),
shipAddress nvarchar(50)
);

create table orderDetails(
orderPkId int references orders(orderPkId),
productPkId int references products(productPkId),
orderQuantity int
);
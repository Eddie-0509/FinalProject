--�ϥ�team6�ϥΪ̡A�إ߸�Ʈw"UYY_DB"
use UYY_DB
go

--�H�U��ƪ�إ߰Ϥ��j�p�g--

--�x�W������--
create table city(
cityPkId int primary key identity(1,1) not null,
cityName nvarchar(10) not null									--�����W��--
)

INSERT INTO city(cityName) values('�O�_��');
INSERT INTO city(cityName) values('�s�_��');
INSERT INTO city(cityName) values('��饫');
INSERT INTO city(cityName) values('�O����');
INSERT INTO city(cityName) values('�O�n��');
INSERT INTO city(cityName) values('������');
INSERT INTO city(cityName) values('�y����');
INSERT INTO city(cityName) values('�s�˿�');
INSERT INTO city(cityName) values('�]�߿�');
INSERT INTO city(cityName) values('���ƿ�');
INSERT INTO city(cityName) values('�n�뿤');
INSERT INTO city(cityName) values('���L��');
INSERT INTO city(cityName) values('�Ÿq��');
INSERT INTO city(cityName) values('�Ÿq��');
INSERT INTO city(cityName) values('�̪F��');
INSERT INTO city(cityName) values('�O�F��');
INSERT INTO city(cityName) values('�Ὤ��');
INSERT INTO city(cityName) values('���');
INSERT INTO city(cityName) values('�򶩥�');
INSERT INTO city(cityName) values('�s�˥�');
INSERT INTO city(cityName) values('������');
INSERT INTO city(cityName) values('�s����');


--�x�W��F�ϰ��--
create table dist(
distPkId int primary key identity(1,1) not null,
cityPkId int references city(cityPkId) not null,
distName nvarchar(20) not null								--��F�ϦW��--
)
INSERT INTO dist(cityPkId,distName)values(	1	,'������');
INSERT INTO dist(cityPkId,distName)values(	1	,'�j�P��');
INSERT INTO dist(cityPkId,distName)values(	1	,'���s��');
INSERT INTO dist(cityPkId,distName)values(	1	,'�Q�s��');
INSERT INTO dist(cityPkId,distName)values(	1	,'�j�w��');
INSERT INTO dist(cityPkId,distName)values(	1	,'�U�ذ�');
INSERT INTO dist(cityPkId,distName)values(	1	,'�H�q��');
INSERT INTO dist(cityPkId,distName)values(	1	,'�h�L��');
INSERT INTO dist(cityPkId,distName)values(	1	,'�_���');
INSERT INTO dist(cityPkId,distName)values(	1	,'�����');
INSERT INTO dist(cityPkId,distName)values(	1	,'�n���');
INSERT INTO dist(cityPkId,distName)values(	1	,'��s��');
INSERT INTO dist(cityPkId,distName)values(	2	,'�O����');
INSERT INTO dist(cityPkId,distName)values(	2	,'�s����');
INSERT INTO dist(cityPkId,distName)values(	2	,'���M��');
INSERT INTO dist(cityPkId,distName)values(	2	,'�éM��');
INSERT INTO dist(cityPkId,distName)values(	2	,'�g����');
INSERT INTO dist(cityPkId,distName)values(	2	,'��L��');
INSERT INTO dist(cityPkId,distName)values(	2	,'�T�l��');
INSERT INTO dist(cityPkId,distName)values(	2	,'�a�q��');
INSERT INTO dist(cityPkId,distName)values(	2	,'�T����');
INSERT INTO dist(cityPkId,distName)values(	2	,'Ī�w��');
INSERT INTO dist(cityPkId,distName)values(	2	,'���Ѱ�');
INSERT INTO dist(cityPkId,distName)values(	2	,'���s��');
INSERT INTO dist(cityPkId,distName)values(	2	,'�L�f��');
INSERT INTO dist(cityPkId,distName)values(	2	,'�K����');
INSERT INTO dist(cityPkId,distName)values(	2	,'�H����');
INSERT INTO dist(cityPkId,distName)values(	2	,'�T�۰�');
INSERT INTO dist(cityPkId,distName)values(	2	,'�۪���');
INSERT INTO dist(cityPkId,distName)values(	2	,'���s��');
INSERT INTO dist(cityPkId,distName)values(	2	,'�U����');
INSERT INTO dist(cityPkId,distName)values(	2	,'�����');
INSERT INTO dist(cityPkId,distName)values(	2	,'��ڰ�');
INSERT INTO dist(cityPkId,distName)values(	2	,'�^�d��');
INSERT INTO dist(cityPkId,distName)values(	2	,'���˰�');
INSERT INTO dist(cityPkId,distName)values(	2	,'���˰�');
INSERT INTO dist(cityPkId,distName)values(	2	,'�s����');
INSERT INTO dist(cityPkId,distName)values(	2	,'�`�|��');
INSERT INTO dist(cityPkId,distName)values(	2	,'�����');
INSERT INTO dist(cityPkId,distName)values(	2	,'�W�L��');
INSERT INTO dist(cityPkId,distName)values(	2	,'�Q�Ӱ�');
INSERT INTO dist(cityPkId,distName)values(	3	,'����');
INSERT INTO dist(cityPkId,distName)values(	3	,'���c��');
INSERT INTO dist(cityPkId,distName)values(	3	,'�����');
INSERT INTO dist(cityPkId,distName)values(	3	,'�K�w��');
INSERT INTO dist(cityPkId,distName)values(	3	,'������');
INSERT INTO dist(cityPkId,distName)values(	3	,'Ī�˰�');
INSERT INTO dist(cityPkId,distName)values(	3	,'�j�˰�');
INSERT INTO dist(cityPkId,distName)values(	3	,'�s���');
INSERT INTO dist(cityPkId,distName)values(	3	,'�t�s��');
INSERT INTO dist(cityPkId,distName)values(	3	,'�j���');
INSERT INTO dist(cityPkId,distName)values(	3	,'�[����');
INSERT INTO dist(cityPkId,distName)values(	3	,'�s�ΰ�');
INSERT INTO dist(cityPkId,distName)values(	3	,'�_����');
INSERT INTO dist(cityPkId,distName)values(	4	,'����');
INSERT INTO dist(cityPkId,distName)values(	4	,'�F��');
INSERT INTO dist(cityPkId,distName)values(	4	,'�n��');
INSERT INTO dist(cityPkId,distName)values(	4	,'���');
INSERT INTO dist(cityPkId,distName)values(	4	,'�_��');
INSERT INTO dist(cityPkId,distName)values(	4	,'�_�ٰ�');
INSERT INTO dist(cityPkId,distName)values(	4	,'��ٰ�');
INSERT INTO dist(cityPkId,distName)values(	4	,'�n�ٰ�');
INSERT INTO dist(cityPkId,distName)values(	4	,'�ӥ���');
INSERT INTO dist(cityPkId,distName)values(	4	,'�j����');
INSERT INTO dist(cityPkId,distName)values(	4	,'���p��');
INSERT INTO dist(cityPkId,distName)values(	4	,'�Q���');
INSERT INTO dist(cityPkId,distName)values(	4	,'�׭��');
INSERT INTO dist(cityPkId,distName)values(	4	,'�Z����');
INSERT INTO dist(cityPkId,distName)values(	4	,'�۩���');
INSERT INTO dist(cityPkId,distName)values(	4	,'�F�հ�');
INSERT INTO dist(cityPkId,distName)values(	4	,'�s����');
INSERT INTO dist(cityPkId,distName)values(	4	,'��l��');
INSERT INTO dist(cityPkId,distName)values(	4	,'�j����');
INSERT INTO dist(cityPkId,distName)values(	4	,'������');
INSERT INTO dist(cityPkId,distName)values(	4	,'�j�{��');
INSERT INTO dist(cityPkId,distName)values(	4	,'�F����');
INSERT INTO dist(cityPkId,distName)values(	4	,'�s����');
INSERT INTO dist(cityPkId,distName)values(	4	,'��ϰ�');
INSERT INTO dist(cityPkId,distName)values(	4	,'�M����');
INSERT INTO dist(cityPkId,distName)values(	4	,'�j�Ұ�');
INSERT INTO dist(cityPkId,distName)values(	4	,'�~�H��');
INSERT INTO dist(cityPkId,distName)values(	4	,'�j�w��');
INSERT INTO dist(cityPkId,distName)values(	4	,'�M����');
INSERT INTO dist(cityPkId,distName)values(	5	,'�����');
INSERT INTO dist(cityPkId,distName)values(	5	,'�F��');
INSERT INTO dist(cityPkId,distName)values(	5	,'�n��');
INSERT INTO dist(cityPkId,distName)values(	5	,'�_��');
INSERT INTO dist(cityPkId,distName)values(	5	,'�w����');
INSERT INTO dist(cityPkId,distName)values(	5	,'�w�n��');
INSERT INTO dist(cityPkId,distName)values(	5	,'�ñd��');
INSERT INTO dist(cityPkId,distName)values(	5	,'�k����');
INSERT INTO dist(cityPkId,distName)values(	5	,'�s�ư�');
INSERT INTO dist(cityPkId,distName)values(	5	,'�����');
INSERT INTO dist(cityPkId,distName)values(	5	,'�ɤ���');
INSERT INTO dist(cityPkId,distName)values(	5	,'�����');
INSERT INTO dist(cityPkId,distName)values(	5	,'�n�ư�');
INSERT INTO dist(cityPkId,distName)values(	5	,'���w��');
INSERT INTO dist(cityPkId,distName)values(	5	,'���q��');
INSERT INTO dist(cityPkId,distName)values(	5	,'�s�T��');
INSERT INTO dist(cityPkId,distName)values(	5	,'�x�а�');
INSERT INTO dist(cityPkId,distName)values(	5	,'�¨���');
INSERT INTO dist(cityPkId,distName)values(	5	,'�Ψ���');
INSERT INTO dist(cityPkId,distName)values(	5	,'����');
INSERT INTO dist(cityPkId,distName)values(	5	,'�C�Ѱ�');
INSERT INTO dist(cityPkId,distName)values(	5	,'�N�x��');
INSERT INTO dist(cityPkId,distName)values(	5	,'�ǥҰ�');
INSERT INTO dist(cityPkId,distName)values(	5	,'�_����');
INSERT INTO dist(cityPkId,distName)values(	5	,'�s���');
INSERT INTO dist(cityPkId,distName)values(	5	,'�����');
INSERT INTO dist(cityPkId,distName)values(	5	,'�ժe��');
INSERT INTO dist(cityPkId,distName)values(	5	,'�F�s��');
INSERT INTO dist(cityPkId,distName)values(	5	,'���Ұ�');
INSERT INTO dist(cityPkId,distName)values(	5	,'�U���');
INSERT INTO dist(cityPkId,distName)values(	5	,'�h���');
INSERT INTO dist(cityPkId,distName)values(	5	,'�Q����');
INSERT INTO dist(cityPkId,distName)values(	5	,'���ư�');
INSERT INTO dist(cityPkId,distName)values(	5	,'�j����');
INSERT INTO dist(cityPkId,distName)values(	5	,'�s�W��');
INSERT INTO dist(cityPkId,distName)values(	5	,'�s����');
INSERT INTO dist(cityPkId,distName)values(	5	,'�w�w��');
INSERT INTO dist(cityPkId,distName)values(	6	,'�����');
INSERT INTO dist(cityPkId,distName)values(	6	,'�����');
INSERT INTO dist(cityPkId,distName)values(	6	,'���s��');
INSERT INTO dist(cityPkId,distName)values(	6	,'�T����');
INSERT INTO dist(cityPkId,distName)values(	6	,'�Q�L��');
INSERT INTO dist(cityPkId,distName)values(	6	,'�e����');
INSERT INTO dist(cityPkId,distName)values(	6	,'�s����');
INSERT INTO dist(cityPkId,distName)values(	6	,'�d����');
INSERT INTO dist(cityPkId,distName)values(	6	,'�e���');
INSERT INTO dist(cityPkId,distName)values(	6	,'�X�z��');
INSERT INTO dist(cityPkId,distName)values(	6	,'�p���');
INSERT INTO dist(cityPkId,distName)values(	6	,'��s��');
INSERT INTO dist(cityPkId,distName)values(	6	,'�j�d��');
INSERT INTO dist(cityPkId,distName)values(	6	,'���Q��');
INSERT INTO dist(cityPkId,distName)values(	6	,'�L���');
INSERT INTO dist(cityPkId,distName)values(	6	,'���Z��');
INSERT INTO dist(cityPkId,distName)values(	6	,'�j���');
INSERT INTO dist(cityPkId,distName)values(	6	,'�j����');
INSERT INTO dist(cityPkId,distName)values(	6	,'���s��');
INSERT INTO dist(cityPkId,distName)values(	6	,'���˰�');
INSERT INTO dist(cityPkId,distName)values(	6	,'���Y��');
INSERT INTO dist(cityPkId,distName)values(	6	,'��x��');
INSERT INTO dist(cityPkId,distName)values(	6	,'������');
INSERT INTO dist(cityPkId,distName)values(	6	,'�æw��');
INSERT INTO dist(cityPkId,distName)values(	6	,'�P�_��');
INSERT INTO dist(cityPkId,distName)values(	6	,'�мd��');
INSERT INTO dist(cityPkId,distName)values(	6	,'������');
INSERT INTO dist(cityPkId,distName)values(	6	,'�X�_��');
INSERT INTO dist(cityPkId,distName)values(	6	,'�򤺰�');
INSERT INTO dist(cityPkId,distName)values(	6	,'�X�s��');
INSERT INTO dist(cityPkId,distName)values(	6	,'���@��');
INSERT INTO dist(cityPkId,distName)values(	6	,'������');
INSERT INTO dist(cityPkId,distName)values(	6	,'���L��');
INSERT INTO dist(cityPkId,distName)values(	6	,'�ҥP��');
INSERT INTO dist(cityPkId,distName)values(	6	,'���t��');
INSERT INTO dist(cityPkId,distName)values(	6	,'�Z�L��');
INSERT INTO dist(cityPkId,distName)values(	6	,'�緽��');
INSERT INTO dist(cityPkId,distName)values(	6	,'�����L');
INSERT INTO dist(cityPkId,distName)values(	7	,'�y����');
INSERT INTO dist(cityPkId,distName)values(	7	,'�Y����');
INSERT INTO dist(cityPkId,distName)values(	7	,'�G�˶m');
INSERT INTO dist(cityPkId,distName)values(	7	,'����m');
INSERT INTO dist(cityPkId,distName)values(	7	,'���s�m');
INSERT INTO dist(cityPkId,distName)values(	7	,'ù�F��');
INSERT INTO dist(cityPkId,distName)values(	7	,'Ĭ�D��');
INSERT INTO dist(cityPkId,distName)values(	7	,'�����m');
INSERT INTO dist(cityPkId,distName)values(	7	,'�T�P�m');
INSERT INTO dist(cityPkId,distName)values(	7	,'�V�s�m');
INSERT INTO dist(cityPkId,distName)values(	7	,'�j�P�m');
INSERT INTO dist(cityPkId,distName)values(	7	,'�n�D�m');
INSERT INTO dist(cityPkId,distName)values(	8	,'�˥_��');
INSERT INTO dist(cityPkId,distName)values(	8	,'�˪F��');
INSERT INTO dist(cityPkId,distName)values(	8	,'�s�H��');
INSERT INTO dist(cityPkId,distName)values(	8	,'������');
INSERT INTO dist(cityPkId,distName)values(	8	,'��f�m');
INSERT INTO dist(cityPkId,distName)values(	8	,'�s�׶m');
INSERT INTO dist(cityPkId,distName)values(	8	,'�o�ܶm');
INSERT INTO dist(cityPkId,distName)values(	8	,'�_�s�m');
INSERT INTO dist(cityPkId,distName)values(	8	,'�_�H�m');
INSERT INTO dist(cityPkId,distName)values(	8	,'�|�L�m');
INSERT INTO dist(cityPkId,distName)values(	8	,'��s�m');
INSERT INTO dist(cityPkId,distName)values(	8	,'�y�۶m');
INSERT INTO dist(cityPkId,distName)values(	8	,'���p�m');
INSERT INTO dist(cityPkId,distName)values(	9	,'�]�ߥ�');
INSERT INTO dist(cityPkId,distName)values(	9	,'�Y����');
INSERT INTO dist(cityPkId,distName)values(	9	,'�˫n��');
INSERT INTO dist(cityPkId,distName)values(	9	,'���s��');
INSERT INTO dist(cityPkId,distName)values(	9	,'�q�]��');
INSERT INTO dist(cityPkId,distName)values(	9	,'�b����');
INSERT INTO dist(cityPkId,distName)values(	9	,'������');
INSERT INTO dist(cityPkId,distName)values(	9	,'�y���m');
INSERT INTO dist(cityPkId,distName)values(	9	,'���m');
INSERT INTO dist(cityPkId,distName)values(	9	,'�Y�ζm');
INSERT INTO dist(cityPkId,distName)values(	9	,'���]�m');
INSERT INTO dist(cityPkId,distName)values(	9	,'���r�m');
INSERT INTO dist(cityPkId,distName)values(	9	,'�T�q�m');
INSERT INTO dist(cityPkId,distName)values(	9	,'�j��m');
INSERT INTO dist(cityPkId,distName)values(	9	,'���m');
INSERT INTO dist(cityPkId,distName)values(	9	,'�T�W�m');
INSERT INTO dist(cityPkId,distName)values(	9	,'�n�ܶm');
INSERT INTO dist(cityPkId,distName)values(	9	,'���w�m');
INSERT INTO dist(cityPkId,distName)values(	10,'���ƥ�');
INSERT INTO dist(cityPkId,distName)values(	10	,'���L��');
INSERT INTO dist(cityPkId,distName)values(	10	,'�M����');
INSERT INTO dist(cityPkId,distName)values(	10	,'������');
INSERT INTO dist(cityPkId,distName)values(	10	,'�˴���');
INSERT INTO dist(cityPkId,distName)values(	10	,'�G�L��');
INSERT INTO dist(cityPkId,distName)values(	10	,'�Ф���');
INSERT INTO dist(cityPkId,distName)values(	10	,'�_����');
INSERT INTO dist(cityPkId,distName)values(	10	,'��¶m');
INSERT INTO dist(cityPkId,distName)values(	10	,'���m');
INSERT INTO dist(cityPkId,distName)values(	10	,'�j���m');
INSERT INTO dist(cityPkId,distName)values(	10	,'�ùt�m');
INSERT INTO dist(cityPkId,distName)values(	10	,'����m');
INSERT INTO dist(cityPkId,distName)values(	10	,'�u��m');
INSERT INTO dist(cityPkId,distName)values(	10	,'�ֿ��m');
INSERT INTO dist(cityPkId,distName)values(	10	,'�q���m');
INSERT INTO dist(cityPkId,distName)values(	10	,'�H�߶m');
INSERT INTO dist(cityPkId,distName)values(	10	,'�H�Q�m');
INSERT INTO dist(cityPkId,distName)values(	10	,'�j���m');
INSERT INTO dist(cityPkId,distName)values(	10	,'�ڭb�m');
INSERT INTO dist(cityPkId,distName)values(	10	,'�˶�m');
INSERT INTO dist(cityPkId,distName)values(	10	,'���Y�m');
INSERT INTO dist(cityPkId,distName)values(	10	,'�G���m');
INSERT INTO dist(cityPkId,distName)values(	10	,'�Ч��m');
INSERT INTO dist(cityPkId,distName)values(	10	,'���Y�m');
INSERT INTO dist(cityPkId,distName)values(	10	,'�˦{�m');
INSERT INTO dist(cityPkId,distName)values(	11	,'�n�륫');
INSERT INTO dist(cityPkId,distName)values(	11	,'�H����');
INSERT INTO dist(cityPkId,distName)values(	11	,'�����');
INSERT INTO dist(cityPkId,distName)values(	11	,'�ˤs��');
INSERT INTO dist(cityPkId,distName)values(	11	,'������');
INSERT INTO dist(cityPkId,distName)values(	11	,'�W���m');
INSERT INTO dist(cityPkId,distName)values(	11	,'�����m');
INSERT INTO dist(cityPkId,distName)values(	11	,'���d�m');
INSERT INTO dist(cityPkId,distName)values(	11	,'�����m');
INSERT INTO dist(cityPkId,distName)values(	11	,'��m�m');
INSERT INTO dist(cityPkId,distName)values(	11	,'�����m');
INSERT INTO dist(cityPkId,distName)values(	11	,'�H�q�m');
INSERT INTO dist(cityPkId,distName)values(	11	,'���R�m');
INSERT INTO dist(cityPkId,distName)values(	12	,'�椻��');
INSERT INTO dist(cityPkId,distName)values(	12	,'��n��');
INSERT INTO dist(cityPkId,distName)values(	12	,'�L���m');
INSERT INTO dist(cityPkId,distName)values(	12	,'�j�|�m');
INSERT INTO dist(cityPkId,distName)values(	12	,'�j��m');
INSERT INTO dist(cityPkId,distName)values(	12	,'�l��m');
INSERT INTO dist(cityPkId,distName)values(	12	,'�����');
INSERT INTO dist(cityPkId,distName)values(	12	,'������');
INSERT INTO dist(cityPkId,distName)values(	12	,'�g�w��');
INSERT INTO dist(cityPkId,distName)values(	12	,'�ǩ��m');
INSERT INTO dist(cityPkId,distName)values(	12	,'�G�[�m');
INSERT INTO dist(cityPkId,distName)values(	12	,'�[�I�m');
INSERT INTO dist(cityPkId,distName)values(	12	,'���d�m');
INSERT INTO dist(cityPkId,distName)values(	12	,'�O��m');
INSERT INTO dist(cityPkId,distName)values(	12	,'�F�նm');
INSERT INTO dist(cityPkId,distName)values(	12	,'�_����');
INSERT INTO dist(cityPkId,distName)values(	12	,'�����m');
INSERT INTO dist(cityPkId,distName)values(	12	,'�|��m');
INSERT INTO dist(cityPkId,distName)values(	12	,'�f��m');
INSERT INTO dist(cityPkId,distName)values(	12	,'���L�m');
INSERT INTO dist(cityPkId,distName)values(	13	,'�F��');
INSERT INTO dist(cityPkId,distName)values(	13	,'���');
INSERT INTO dist(cityPkId,distName)values(	14	,'�ӫO��');
INSERT INTO dist(cityPkId,distName)values(	14	,'���l��');
INSERT INTO dist(cityPkId,distName)values(	14	,'���U��');
INSERT INTO dist(cityPkId,distName)values(	14	,'�j�L��');
INSERT INTO dist(cityPkId,distName)values(	14	,'�����m');
INSERT INTO dist(cityPkId,distName)values(	14	,'�ˤf�m');
INSERT INTO dist(cityPkId,distName)values(	14	,'�s��m');
INSERT INTO dist(cityPkId,distName)values(	14	,'���}�m');
INSERT INTO dist(cityPkId,distName)values(	14	,'�F�۶m');
INSERT INTO dist(cityPkId,distName)values(	14	,'�q�˶m');
INSERT INTO dist(cityPkId,distName)values(	14	,'����m');
INSERT INTO dist(cityPkId,distName)values(	14	,'���W�m');
INSERT INTO dist(cityPkId,distName)values(	14	,'���H�m');
INSERT INTO dist(cityPkId,distName)values(	14	,'�˱T�m');
INSERT INTO dist(cityPkId,distName)values(	14	,'���s�m');
INSERT INTO dist(cityPkId,distName)values(	14	,'�f���m');
INSERT INTO dist(cityPkId,distName)values(	14	,'�j�H�m');
INSERT INTO dist(cityPkId,distName)values(	14	,'�����s�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�̪F��');
INSERT INTO dist(cityPkId,distName)values(	15	,'��{��');
INSERT INTO dist(cityPkId,distName)values(	15	,'�F����');
INSERT INTO dist(cityPkId,distName)values(	15	,'��K��');
INSERT INTO dist(cityPkId,distName)values(	15	,'�U���m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�r���m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�s��m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�L��m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�n�{�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�[�y�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�D�d�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�D�s�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�����m');
INSERT INTO dist(cityPkId,distName)values(	15	,'���{�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'����m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�E�p�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�Q�H�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'����m');
INSERT INTO dist(cityPkId,distName)values(	15	,'���H�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�˥жm');
INSERT INTO dist(cityPkId,distName)values(	15	,'���v�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�ﬥ�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�U�r�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�s��m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�ΥV�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'���O�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'���Z�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'���a�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�Ӹq�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�K��m');
INSERT INTO dist(cityPkId,distName)values(	15	,'��l�m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�d���m');
INSERT INTO dist(cityPkId,distName)values(	15	,'�T�a���m');
INSERT INTO dist(cityPkId,distName)values(	16	,'�O�F��');
INSERT INTO dist(cityPkId,distName)values(	16	,'���\��');
INSERT INTO dist(cityPkId,distName)values(	16	,'���s��');
INSERT INTO dist(cityPkId,distName)values(	16	,'���ضm');
INSERT INTO dist(cityPkId,distName)values(	16	,'���W�m');
INSERT INTO dist(cityPkId,distName)values(	16	,'�F�e�m');
INSERT INTO dist(cityPkId,distName)values(	16	,'�����m');
INSERT INTO dist(cityPkId,distName)values(	16	,'���n�m');
INSERT INTO dist(cityPkId,distName)values(	16	,'�j�Z�m');
INSERT INTO dist(cityPkId,distName)values(	16	,'��q�m');
INSERT INTO dist(cityPkId,distName)values(	16	,'�ӳ¨��m');
INSERT INTO dist(cityPkId,distName)values(	16	,'���ݶm');
INSERT INTO dist(cityPkId,distName)values(	16	,'�����m');
INSERT INTO dist(cityPkId,distName)values(	16	,'���p�m');
INSERT INTO dist(cityPkId,distName)values(	16	,'�F���m');
INSERT INTO dist(cityPkId,distName)values(	16	,'�����m');
INSERT INTO dist(cityPkId,distName)values(	17	,'�Ὤ��');
INSERT INTO dist(cityPkId,distName)values(	17	,'�N�w�m');
INSERT INTO dist(cityPkId,distName)values(	17	,'���׶m');
INSERT INTO dist(cityPkId,distName)values(	17	,'�s���m');
INSERT INTO dist(cityPkId,distName)values(	17	,'��L��');
INSERT INTO dist(cityPkId,distName)values(	17	,'���_�m');
INSERT INTO dist(cityPkId,distName)values(	17	,'�ɨ���');
INSERT INTO dist(cityPkId,distName)values(	17	,'���ضm');
INSERT INTO dist(cityPkId,distName)values(	17	,'���J�m');
INSERT INTO dist(cityPkId,distName)values(	17	,'�I���m');
INSERT INTO dist(cityPkId,distName)values(	17	,'�q�L�m');
INSERT INTO dist(cityPkId,distName)values(	17	,'�U�a�m');
INSERT INTO dist(cityPkId,distName)values(	17	,'���˶m');
INSERT INTO dist(cityPkId,distName)values(	18	,'������');
INSERT INTO dist(cityPkId,distName)values(	18	,'���m');
INSERT INTO dist(cityPkId,distName)values(	18	,'�ըF�m');
INSERT INTO dist(cityPkId,distName)values(	18	,'�����m');
INSERT INTO dist(cityPkId,distName)values(	18	,'��w�m');
INSERT INTO dist(cityPkId,distName)values(	18	,'�C���m');
INSERT INTO dist(cityPkId,distName)values(	19	,'���R��');
INSERT INTO dist(cityPkId,distName)values(	19	,'������');
INSERT INTO dist(cityPkId,distName)values(	19	,'�H�q��');
INSERT INTO dist(cityPkId,distName)values(	19	,'���s��');
INSERT INTO dist(cityPkId,distName)values(	19	,'�w�ְ�');
INSERT INTO dist(cityPkId,distName)values(	19	,'�x�x��');
INSERT INTO dist(cityPkId,distName)values(	19	,'�C����');
INSERT INTO dist(cityPkId,distName)values(	20	,'�F��');
INSERT INTO dist(cityPkId,distName)values(	20	,'�_��');
INSERT INTO dist(cityPkId,distName)values(	20	,'���s��');
INSERT INTO dist(cityPkId,distName)values(	21	,'������');
INSERT INTO dist(cityPkId,distName)values(	21	,'������');
INSERT INTO dist(cityPkId,distName)values(	21	,'���F��');
INSERT INTO dist(cityPkId,distName)values(	21	,'����m');
INSERT INTO dist(cityPkId,distName)values(	21	,'�P���m');
INSERT INTO dist(cityPkId,distName)values(	21	,'�Q���m');
INSERT INTO dist(cityPkId,distName)values(	22	,'�n��m');
INSERT INTO dist(cityPkId,distName)values(	22	,'�_��m');
INSERT INTO dist(cityPkId,distName)values(	22	,'�����m');
INSERT INTO dist(cityPkId,distName)values(	22	,'�F�޶m');
--�|���򥻸��--
create table member(
memberPkId int primary key identity(1,1) not null,
memberAccount nvarchar(50)  not null,			--�|���H�c��b��--
memberPwd nvarchar(30) not null,             --�|���K�X--
memberIdNumber nvarchar(15) not null,  --�|�������Ҹ�--
memberName nvarchar(30) not null,			--�|���m�W--
memberAddress nvarchar(200)  not null,	--�|���q�T�a�}--
memberPhone nvarchar(15)  not null,			--�|���q��--
memberStatus nvarchar(20)  not null			--�|�����A(�O�_�Q���v��)--
);


insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Tanjirou@gmail.com.tw','P@ssw0rd123','F123456789','���v��','F111111001','�x�_���H�q�ϫH�q���@�q1��','0911111111','true');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Nezuko@gmail.com.tw','P@ssw0rd123','A123456789','�����l','F222222002','�s�_���O���ϪO�����@�q2��','0922222222','true');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Zenitsu@gmail.com.tw','P@ssw0rd123','B123456789','���h','F111111003','��饫���Ϯ����@�q3��','0933333333','true');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Inosuke@gmail.com.tw','P@ssw0rd123','C123456789','�줧�U','F111111004','�s�˥����s�ϭ��s���@�q4��','0944444444','false');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Kyoujurou@gmail.com.tw','P@ssw0rd123','D123456789','���ح�','F111111005','�]�߿����s����s���@�q5��','0955555555','true');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Shinobu@gmail.com.tw','P@ssw0rd123','E123456789','������','F222222006','�x������ٰϦ�ٸ��@�q6��','0966666666','false');


--�|����E�������--
create table memberDetails(
memeberPkId int references member(memberPkId) not null,		--�@��@���p��|���򥻸��ID--
emergercyContact nvarchar(30) not null,							--����p���H--
emergercyNumber nvarchar(15) not null,							--	���s���q��--
emergercyRelationship nvarchar(10) not null,					--���Y��--
smoke nvarchar(5) not null,													--��ҥv--
betelNut nvarchar(5) not null,												--�b�}�v--
diseases nvarchar(100) not null,												--���j�e�f--
allergy nvarchar(30) not null,													--�L�ӭ�--
surgery nvarchar(50) not null,												--��N�v--
);

insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(1,'�v����','0911001001','��','true','false','�t���f','','�h�B�����N');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(2,'���l��','0922002002','��','false','false','','','�r�X�B��');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(3,'���h�d','0933003003','�t��','false','true','','','����');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(4,'���U��','0944004004','�d��','true','true','���g�f','','');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(5,'�ح���','0955005005','�̧�','true','false','','�K��L��','');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(6,'���`�G','0966006006','�{��','false','false','','�w���L��','');

--�E�Ұ򥻸��--
create table clinic(
clinicPkId int primary key identity(1,1) not null,
clinicAccount nvarchar(30) not null,						--�E�ұb��--
clinicPwd nvarchar(30) not null,							--�E�ұK�X--
clinicName nvarchar(50) not null,							--�E�ҦW��--
clinicPhone nvarchar(15) not null,						--�E�ҹq��--
clinicCity int references city(cityPkId),					--�h��@���p�쿤����--
clinicDist int references dist(distPkId),					--�h��@���p���F�Ϫ�--
clinicAddress nvarchar(max) not null,					--�E�Ҧa�}--
clinicLocation nvarchar(100) ,									--�E��GPS��}--
clinicStartTime date not null,									--�v���}�l�ɶ�
clinicEndTime date not null,									--�v�������ɶ�
clinicStatus nvarchar(20) not null							--�E���v��(���I��/�I��/�I�ڦ����}��d��)--
);
insert into clinic(clinicAccount,clinicPwd,clinicName,clinicPhone,clinicCity,clinicDist,clinicAddress,clinicStartTime,clinicEndTime,clinicStatus) values('Shinra@hotmail.com.tw','P@ssw0rd456','��ù����E��','00-000-001',1,1,'���o�n�R1','2021/01/01','2021/12/31','false');
insert into clinic(clinicAccount,clinicPwd,clinicName,clinicPhone,clinicCity,clinicDist,clinicAddress,clinicStartTime,clinicEndTime,clinicStatus) values('Yorozuya@hotmail.com.tw','P@ssw0rd456','�U�ƫΤ���E��','00-000-002',2,7,'���o�n�R2','2021/01/01','2021/12/31','true');
insert into clinic(clinicAccount,clinicPwd,clinicName,clinicPhone,clinicCity,clinicDist,clinicAddress,clinicStartTime,clinicEndTime,clinicStatus) values('Konoha@hotmail.com.tw','P@ssw0rd456','�츭����E��','00-000-003',3,20,'���o�n�R3','2021/01/01','2021/12/31','true');


--�ɶ���--
create table timeTable(
timeTablePkId int primary key identity(1,1) not null,
weekdays nvarchar(10),													--�P�@�ܩP��--
times nvarchar(20),															--�}��ɶ�--
);

--��v��ƪ�--
create table dentist(
clinicPkId int references clinic(clinicPkId) not null,					--�h��@���s��E�Ҫ�--
dentistPkId int primary key identity(1,1) not null,
dentistName nvarchar(30) not null,								--��v�m�W--
dentistImage nvarchar(max) not null,									--��v�Ӥ��A�L�Ӥ���ݦ۰ʦs�J�w�]�Ӥ�--!!!!!
dentistGender nvarchar(10) not null,							--��v�ʧO--
);

--��͸g����--

--�E�����ت�--
create table items(
itemPkId int primary key identity(1,1) not null,
itemName nvarchar(50) not null									--�E�����ئW��--
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


--�E�ҥI�O����--�u���@��????
--create table clinicPayment(
--clinicPkId int references clinic(clinicPkId)					--�h��@���s��E��--
--);

--��v�M�����ت�--
create table dentistItem(
dentistPkId int references dentist(dentistPkId) not null,			--�h��@���s����v--
itemPkId int references items(itemPkId) not null						--�h��@���s��E������--
);

--��v�}����E�ɶ�--
create table dentistTime(
dentistPkId int references dentist(dentistPkId) not null,						--�h��@���s����v--
timeTablePkId int references timeTable(timeTablePkId) not null		--�h��@���s��}��w���ɶ�--
);

--�w����ƪ�--
create table appointment(
memeberPkId int references member(memberPkId),								--�h��@���s��|��--
clinicPkId int references clinic(clinicPkId) not null,									--�h��@���s��E��--
dentistPkId int references dentist(dentistPkId) not null,							--�h��@���s����v--
patientName nvarchar(20) ,																			--�E�ҥD�ʹw���D�|���m�W--
patientIdNumber nvarchar(10),																		--�E�ҥD�ʹw���D�|��������--
patientPhone nvarchar(15),																			--�E�ҥD�ʹw���D�|���q��--
appointDate Date not null,																				--�w�����--
timeTablePkId int references timeTable(timeTablePkId) not null,			--�h��@���s��}����E�ɶ�--
itemPkId int references items(itemPkId) not null,										----�h��@���s��ݶE����--
arrive nvarchar(10),																							--�T�{�O�_��E---
memberReply nvarchar(15)																			--�O�_���^�з|��E--
)


--�ӫ��ӫ~--
create table products(
productPkId int primary key identity(1,1) not null,
productName nvarchar(50) not null,									--�ӫ~�W��--
productUpdateDate date not null,										--�ӫ~�s�W�ɶ�--
productPrice int not null,														--�ӫ~����--
productQuantity int not null,													--�ӫ~�Ѿl�ƶq--
productStatus nvarchar(10) not null,									--�ӫ~�W�[��_--
productImage nvarchar(max) not null,									--�Ϥ����|/API
productProfile nvarchar not null,											--�ӫ~����--
productSpec nvarchar(100) not null										--�ӫ~�W��--
);

insert into products(productName,productUpdateDate,productPrice,productQuantity,productStatus,productImage,productProfile,productSpec) values('�i�w����FOral-B�jiO9�L�_��޹q�ʤ���',GETDATE(),12990,30,'�W�[��','???','�i�w����FOral-B�jiO9�L�_��޹q�ʤ���-�¦�(�L�Ϲq�ʤ���)','�~�P�G�ڼ�B|�~�W�GORAL-B iO9 �L�_��޹q�ʤ���|�C��:��|����ؤo(cm)�G18*10*26cm|�ӫ~���q(g)�G900g|���a�G����-�w��');
insert into products(productName,productUpdateDate,productPrice,productQuantity,productStatus,productImage,productProfile,productSpec) values('�i��ڵP�j���i�q�ʤ���',GETDATE(),7290,30,'�W�[��','???','�i��ڵP�j�~�׷s�~���i�q�ʤ���(EW-DP54-S/A)+�Ѥ�`�B�����\�㤭���','����ؤo�G��23.5 x �e2.9 x �`3.5cm|���q�G110g|�q���G100-240V|�R�q/�ϥήɶ��G�R�q1�p�ɡA���i�s��ϥ�90���� (�����_�ʤU)/45����(W���i�_�ʤU)|����G��a��*1�B���Y��m�[*1|���a: �饻(�R�q�y���a�G����)');
insert into products(productName,productUpdateDate,productPrice,productQuantity,productStatus,productImage,productProfile,productSpec) values('�iPhilips���Q���j���ĪŮ�ʯ���u��/�R����',GETDATE(),3880,30,'�W�[��','???','�iPhilips ���Q���j���ĪŮ�ʯ���u��/�R����(HX8401/03)','�����GHX8401/03|�ؤo�G24D x14W x9H (cm)|���q�G430g|���a�G����');
insert into products(productName,productUpdateDate,productPrice,productQuantity,productStatus,productImage,productProfile,productSpec) values('�iOra2�R�־��j�LĲ�P����',GETDATE(),299,30,'�W�[��','???','�iOra2�R�־��jme�LĲ�P����6��/��(�W�n��A�C���H���X�f)','����:���:���s�C��`:�E�A�m�콦�C�@���ū�:60��C|�]�ˤJ��:6��/��|���a:�饻');
insert into products(productName,productUpdateDate,productPrice,productQuantity,productStatus,productImage,productProfile,productSpec) values('�i�λĩw�j�h���@�z+�`�h��b���I',GETDATE(),499,30,'�W�[��','???','�i�λĩw�j�z��8�J�դ��I-�h���@�z120g*6+�`�h��b100g*2','�~�W:�λĩw���ħܱ�-�h���@�z|�W��:120g x6�J|�γ~:���U�O�@���i���d|�O�s����:�T�~|�첣�a:����');

--�������v����--
create table coupon(
couponPkId int primary key identity(1,1) not null,
couponName nvarchar(20) not null,										--�馩�W��--
couponContext nvarchar(50) not null,									--�馩�w��--
couponCode nvarchar(20) not null,										--�馩�X--
couponStartTime date not null,												--�馩�_�l�ɶ�--
couponEndTime date not null,												--�馩�����ɶ�--
couponStatus nvarchar(15) not null,									--�}���v��--
);

--�q���--
create table orders(
orderPkId int primary key identity(1,1) not null,
memeberPkId int references member(memberPkId),		--�h��@���p��|��
couponPkId int references coupon(couponPkId),				--�h��@���s������A�@�i�q��u�\�Τ@�ا馩--
totalPayment int,																		--�`���B--	
orderStatus nvarchar(30) not null,										--�q�檬�A--
shipAddress nvarchar(max) not null										--����a�}--

)

--�q��ԲӸ��--
create table orderDetails(
orderPkId int references orders(orderPkId),						--�h��@���p��q��--
productPkId int references products(productPkId),			--�h��@���p�첣�~--
orderQuantity int,																	--�q�ʼƶq--

);




--��������--

--��F�ϸ��--

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

insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberAddress,memberPhone,memberStatus) values('admin','admin123','admin','admin','�x�_���H�q�ϫH�q���T�q390��','0266316666','admin');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberAddress,memberPhone,memberStatus) values('Tanjirou@gmail.com.tw','P@ssw0rd123','F123456789','���v��','�x�_���H�q�ϫH�q���@�q1��','0911111111','true');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberAddress,memberPhone,memberStatus) values('Nezuko@gmail.com.tw','P@ssw0rd123','A123456789','�����l','�s�_���O���ϪO�����@�q2��','0922222222','true');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberAddress,memberPhone,memberStatus) values('Zenitsu@gmail.com.tw','P@ssw0rd123','B123456789','���h','��饫���Ϯ����@�q3��','0933333333','true');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberAddress,memberPhone,memberStatus) values('Inosuke@gmail.com.tw','P@ssw0rd123','C123456789','�줧�U','�s�˥����s�ϭ��s���@�q4��','0944444444','false');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberAddress,memberPhone,memberStatus) values('Kyoujurou@gmail.com.tw','P@ssw0rd123','D123456789','���ح�','�]�߿����s����s���@�q5��','0955555555','true');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberAddress,memberPhone,memberStatus) values('Shinobu@gmail.com.tw','P@ssw0rd123','E123456789','������','�x������ٰϦ�ٸ��@�q6��','0966666666','false');


--�|����E�������--
create table memberDetails(
memberPkId int references member(memberPkId) not null ,		--�@��@���p��|���򥻸��ID--
emergencyContact nvarchar(30) not null,							--����p���H--
emergencyNumber nvarchar(15) not null,							--	���s���q��--
emergencyRelationship nvarchar(10) not null,					--���Y��--
smoke nvarchar(5) not null,													--��ҥv--
betelNut nvarchar(5) not null,												--�b�}�v--
diseases nvarchar(100) not null,												--���j�e�f--
allergy nvarchar(30) not null,													--�L�ӭ�--
surgery nvarchar(50) not null,												--��N�v--
);

insert into memberDetails(memberPkId,emergencyContact,emergencyNumber,emergencyRelationship,smoke,betelNut,diseases,allergy,surgery) values(2,'�v����','0911001001','��','true','false','�t���f','','�h�B�����N');
insert into memberDetails(memberPkId,emergencyContact,emergencyNumber,emergencyRelationship,smoke,betelNut,diseases,allergy,surgery) values(3,'���l��','0922002002','��','false','false','','','�r�X�B��');
insert into memberDetails(memberPkId,emergencyContact,emergencyNumber,emergencyRelationship,smoke,betelNut,diseases,allergy,surgery) values(4,'���h�d','0933003003','�t��','false','true','','','����');
insert into memberDetails(memberPkId,emergencyContact,emergencyNumber,emergencyRelationship,smoke,betelNut,diseases,allergy,surgery) values(5,'���U��','0944004004','�d��','true','true','���g�f','','');
insert into memberDetails(memberPkId,emergencyContact,emergencyNumber,emergencyRelationship,smoke,betelNut,diseases,allergy,surgery) values(6,'�ح���','0955005005','�̧�','true','false','','�K��L��','');
insert into memberDetails(memberPkId,emergencyContact,emergencyNumber,emergencyRelationship,smoke,betelNut,diseases,allergy,surgery) values(7,'���`�G','0966006006','�{��','false','false','','�w���L��','');

--�E�Ұ򥻸��--
create table clinic(
clinicPkId int primary key identity(1,1) not null,
clinicAccount nvarchar(30) not null,						--�E�ұb��--
clinicPwd nvarchar(30) not null,							--�E�ұK�X--
clinicName nvarchar(50) not null,							--�E�ҦW��--
clinicPhone nvarchar(15) not null,						--�E�ҹq��--
clinicCity int references city(cityPkId),					--�h��@���p�쿤����--
clinicDist int references dist(distPkId),					--�h��@���p���F�Ϫ�--
clinicAddress nvarchar(200) not null,					--�E�Ҧa�}--
clinicLocation nvarchar(500) ,							--�E��GPS��}--
clinicImage nvarchar(200) not null,
clinicStartTime date ,									--�v���}�l�ɶ�
clinicEndTime date ,									--�v�������ɶ�
clinicStatus nvarchar(20) 							--�E���v��(���I��/�I��/�I�ڦ����}��d��)--
);
insert into clinic(clinicAccount,clinicPwd,clinicName,clinicPhone,clinicCity,clinicDist,clinicAddress,clinicImage,clinicStartTime,clinicEndTime,clinicStatus) values('Shinra@hotmail.com.tw','P@ssw0rd456','��ù����E��','00-000-001',1,1,'���o�n�R1','???','2021/01/01','2021/12/31','false');
insert into clinic(clinicAccount,clinicPwd,clinicName,clinicPhone,clinicCity,clinicDist,clinicAddress,clinicImage,clinicStartTime,clinicEndTime,clinicStatus) values('Yorozuya@hotmail.com.tw','P@ssw0rd456','�U�ƫΤ���E��','00-000-002',2,7,'���o�n�R2','???','2021/01/01','2021/12/31','true');
insert into clinic(clinicAccount,clinicPwd,clinicName,clinicPhone,clinicCity,clinicDist,clinicAddress,clinicImage,clinicStartTime,clinicEndTime,clinicStatus) values('Konoha@hotmail.com.tw','P@ssw0rd456','�츭����E��','00-000-003',3,20,'���o�n�R3','???','2021/01/01','2021/12/31','true');


--�ɶ���--
create table timeTable(
timeTablePkId int primary key identity(1,1) not null,
weekdays nvarchar(10),													--�P�@�ܩP��--
times nvarchar(20),															--�}��ɶ�--
timeInterval nvarchar(10),                                              --�W��:timeTablePkId(1-8,12�I�}�l���U��),�U��:timeTablePkId(9-18,���I�}�l���߶�),�߶�:timeTablePkId(19-28)
);
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','08:00-08:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','08:30-09:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','09:00-09:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','09:30-10:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','10:00-10:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','10:30-11:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','11:00-11:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','11:30-12:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','12:00-12:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','12:30-13:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','13:00-13:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','13:30-14:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','14:00-14:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','14:30-15:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','15:00-15:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','15:30-16:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','16:00-16:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','16:30-17:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','17:00-17:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','17:30-18:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','18:00-18:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','18:30-19:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','19:00-19:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','19:30-20:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','20:00-20:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','20:30-21:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','21:00-21:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Sunday','21:30-22:00','�߶�')
	
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','08:00-08:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','08:30-09:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','09:00-09:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','09:30-10:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','10:00-10:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','10:30-11:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','11:00-11:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','11:30-12:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','12:00-12:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','12:30-13:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','13:00-13:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','13:30-14:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','14:00-14:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','14:30-15:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','15:00-15:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','15:30-16:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','16:00-16:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','16:30-17:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','17:00-17:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','17:30-18:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','18:00-18:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','18:30-19:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','19:00-19:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','19:30-20:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','20:00-20:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','20:30-21:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','21:00-21:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Monday','21:30-22:00','�߶�')
	
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','08:00-08:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','08:30-09:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','09:00-09:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','09:30-10:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','10:00-10:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','10:30-11:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','11:00-11:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','11:30-12:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','12:00-12:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','12:30-13:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','13:00-13:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','13:30-14:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','14:00-14:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','14:30-15:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','15:00-15:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','15:30-16:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','16:00-16:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','16:30-17:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','17:00-17:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','17:30-18:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','18:00-18:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','18:30-19:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','19:00-19:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','19:30-20:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','20:00-20:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','20:30-21:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','21:00-21:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Tuesday','21:30-22:00','�߶�')
	
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','08:00-08:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','08:30-09:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','09:00-09:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','09:30-10:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','10:00-10:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','10:30-11:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','11:00-11:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','11:30-12:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','12:00-12:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','12:30-13:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','13:00-13:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','13:30-14:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','14:00-14:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','14:30-15:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','15:00-15:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','15:30-16:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','16:00-16:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','16:30-17:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','17:00-17:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','17:30-18:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','18:00-18:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','18:30-19:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','19:00-19:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','19:30-20:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','20:00-20:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','20:30-21:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','21:00-21:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Wednesday','21:30-22:00','�߶�')
	
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','08:00-08:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','08:30-09:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','09:00-09:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','10:00-10:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','10:30-11:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','11:00-11:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','11:30-12:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','12:00-12:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','12:30-13:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','13:00-13:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','13:30-14:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','14:00-14:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','14:30-15:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','15:00-15:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','15:30-16:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','16:00-16:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','16:30-17:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','17:00-17:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','17:30-18:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','18:00-18:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','18:30-19:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','19:00-19:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','19:30-20:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','20:00-20:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','20:30-21:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','21:00-21:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Thursday','21:30-22:00','�߶�')
	
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','08:00-08:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','08:30-09:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','09:00-09:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','09:30-10:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','10:00-10:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','10:30-11:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','11:00-11:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','11:30-12:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','12:00-12:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','12:30-13:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','13:00-13:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','13:30-14:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','14:00-14:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','14:30-15:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','15:00-15:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','15:30-16:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','16:00-16:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','16:30-17:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','17:00-17:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','17:30-18:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','18:00-18:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','18:30-19:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','19:00-19:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','19:30-20:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','20:00-20:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','20:30-21:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','21:00-21:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Friday','21:30-22:00','�߶�')
	
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','08:00-08:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','08:30-09:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','09:00-09:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','09:30-10:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','10:00-10:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','10:30-11:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','11:00-11:30','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','11:30-12:00','�W��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','12:00-12:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','12:30-13:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','13:00-13:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','13:30-14:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','14:00-14:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','14:30-15:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','15:00-15:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','15:30-16:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','16:00-16:30','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','16:30-17:00','�U��')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','17:00-17:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','17:30-18:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','18:00-18:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','18:30-19:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','19:00-19:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','19:30-20:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','20:00-20:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','20:30-21:00','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','21:00-21:30','�߶�')
insert into timeTable(weekdays,times,timeInterval)	 values('Saturday','21:30-22:00','�߶�')

--��v��ƪ�--
create table dentist(
clinicPkId int references clinic(clinicPkId) not null,					--�h��@���s��E�Ҫ�--
dentistPkId int primary key identity(1,1) not null,
dentistName nvarchar(30) not null,								--��v�m�W--
dentistImage nvarchar(max) not null,									--��v�Ӥ��A�L�Ӥ���ݦ۰ʦs�J�w�]�Ӥ�--!!!!!
dentistGender nvarchar(10) not null,							--��v�ʧO--
);
insert into dentist(clinicPkId ,dentistName,dentistImage,dentistGender) values(1,'���Ѧ�','???','Male')
insert into dentist(clinicPkId ,dentistName,dentistImage,dentistGender) values(1,'���M��','???','Male')
insert into dentist(clinicPkId ,dentistName,dentistImage,dentistGender) values(1,'������','???','Female')
insert into dentist(clinicPkId ,dentistName,dentistImage,dentistGender) values(2,'�۫��[','???','Male')
insert into dentist(clinicPkId ,dentistName,dentistImage,dentistGender) values(2,'�i����','???','Female')
insert into dentist(clinicPkId ,dentistName,dentistImage,dentistGender) values(2,'������','???','Male')
insert into dentist(clinicPkId ,dentistName,dentistImage,dentistGender) values(2,'�ժY�y','???','Female')


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
insert into dentistItem(dentistPkId,itemPkId ) values(1,1)
insert into dentistItem(dentistPkId,itemPkId ) values(1,3)
insert into dentistItem(dentistPkId,itemPkId ) values(1,8)
insert into dentistItem(dentistPkId,itemPkId ) values(2,5)
insert into dentistItem(dentistPkId,itemPkId ) values(2,7)
insert into dentistItem(dentistPkId,itemPkId ) values(3,8)
insert into dentistItem(dentistPkId,itemPkId ) values(4,1)
insert into dentistItem(dentistPkId,itemPkId ) values(4,2)
insert into dentistItem(dentistPkId,itemPkId ) values(4,5)
insert into dentistItem(dentistPkId,itemPkId ) values(4,6)
insert into dentistItem(dentistPkId,itemPkId ) values(4,9)
insert into dentistItem(dentistPkId,itemPkId ) values(5,3)
insert into dentistItem(dentistPkId,itemPkId ) values(5,4)
insert into dentistItem(dentistPkId,itemPkId ) values(5,7)
insert into dentistItem(dentistPkId,itemPkId ) values(6,1)
insert into dentistItem(dentistPkId,itemPkId ) values(6,8)
insert into dentistItem(dentistPkId,itemPkId ) values(6,9)
insert into dentistItem(dentistPkId,itemPkId ) values(7,2)
insert into dentistItem(dentistPkId,itemPkId ) values(7,3)
insert into dentistItem(dentistPkId,itemPkId ) values(7,4)
insert into dentistItem(dentistPkId,itemPkId ) values(7,10)


--��v�}����E�ɶ�--
create table dentistTime(
dentistPkId int references dentist(dentistPkId) not null,						--�h��@���s����v--
timeTablePkId int references timeTable(timeTablePkId) not null		--�h��@���s��}��w���ɶ�--
);
insert into dentistTime(dentistPkId,timeTablePkId) values	(1,1)
insert into dentistTime(dentistPkId,timeTablePkId) values	(1,2)
insert into dentistTime (dentistPkId,timeTablePkId) values	(1,3)
insert into dentistTime (dentistPkId,timeTablePkId) values	(1,4)
insert into dentistTime (dentistPkId,timeTablePkId) values	(1,5)
insert into dentistTime (dentistPkId,timeTablePkId) values	(1,6)
insert into dentistTime(dentistPkId,timeTablePkId) values	(1,7)
insert into dentistTime(dentistPkId,timeTablePkId) values	(1,8)
insert into dentistTime(dentistPkId,timeTablePkId) values	(1,28)
insert into dentistTime(dentistPkId,timeTablePkId) values	(1,29)
insert into dentistTime(dentistPkId,timeTablePkId) values	(1,30)
insert into dentistTime(dentistPkId,timeTablePkId) values	(1,31)
insert into dentistTime(dentistPkId,timeTablePkId) values	(1,32)
insert into dentistTime(dentistPkId,timeTablePkId) values	(1,33)
insert into dentistTime(dentistPkId,timeTablePkId) values	(1,34)
insert into dentistTime(dentistPkId,timeTablePkId) values	(1,35)
insert into dentistTime(dentistPkId,timeTablePkId) values	(2,36)
insert into dentistTime(dentistPkId,timeTablePkId) values	(2,37)
insert into dentistTime(dentistPkId,timeTablePkId) values	(2,38)
insert into dentistTime(dentistPkId,timeTablePkId) values	(2,39)
insert into dentistTime(dentistPkId,timeTablePkId) values	(2,40)
insert into dentistTime(dentistPkId,timeTablePkId) values	(2,41)
insert into dentistTime(dentistPkId,timeTablePkId) values	(3,80)
insert into dentistTime(dentistPkId,timeTablePkId) values	(3,81)
insert into dentistTime(dentistPkId,timeTablePkId) values	(3,82)
insert into dentistTime(dentistPkId,timeTablePkId) values	(3,83)
insert into dentistTime(dentistPkId,timeTablePkId) values	(3,84)
insert into dentistTime(dentistPkId,timeTablePkId) values	(3,85)
insert into dentistTime(dentistPkId,timeTablePkId) values	(3,86)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,10)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,11)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,12)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,13)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,14)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,15)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,16)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,17)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,18)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,27)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,28)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,29)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,30)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,31)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,32)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,70)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,71)
insert into dentistTime(dentistPkId,timeTablePkId) values	(4,72)
insert into dentistTime(dentistPkId,timeTablePkId) values	(5,10)
insert into dentistTime(dentistPkId,timeTablePkId) values	(5,11)
insert into dentistTime(dentistPkId,timeTablePkId) values	(5,12)
insert into dentistTime(dentistPkId,timeTablePkId) values	(5,13)
insert into dentistTime(dentistPkId,timeTablePkId) values	(5,14)
insert into dentistTime(dentistPkId,timeTablePkId) values	(5,15)
insert into dentistTime(dentistPkId,timeTablePkId) values	(6,58)
insert into dentistTime(dentistPkId,timeTablePkId) values	(6,59)
insert into dentistTime(dentistPkId,timeTablePkId) values	(6,60)
insert into dentistTime(dentistPkId,timeTablePkId) values	(6,61)
insert into dentistTime(dentistPkId,timeTablePkId) values	(6,72)
insert into dentistTime(dentistPkId,timeTablePkId) values	(6,73)
insert into dentistTime(dentistPkId,timeTablePkId) values	(6,74)
insert into dentistTime(dentistPkId,timeTablePkId) values	(6,75)
insert into dentistTime(dentistPkId,timeTablePkId) values	(6,76)
insert into dentistTime(dentistPkId,timeTablePkId) values	(6,77)
insert into dentistTime(dentistPkId,timeTablePkId) values	(6,90)
insert into dentistTime(dentistPkId,timeTablePkId) values	(7,36)
insert into dentistTime(dentistPkId,timeTablePkId) values	(7,37)
insert into dentistTime(dentistPkId,timeTablePkId) values	(7,38)
insert into dentistTime(dentistPkId,timeTablePkId) values	(7,39)
insert into dentistTime(dentistPkId,timeTablePkId) values	(7,40)
insert into dentistTime(dentistPkId,timeTablePkId) values	(7,41)
insert into dentistTime(dentistPkId,timeTablePkId) values	(7,42)
insert into dentistTime(dentistPkId,timeTablePkId) values	(7,43)
insert into dentistTime(dentistPkId,timeTablePkId) values	(7,100)
insert into dentistTime(dentistPkId,timeTablePkId) values	(7,101)
insert into dentistTime(dentistPkId,timeTablePkId) values	(7,102)
insert into dentistTime(dentistPkId,timeTablePkId) values	(7,103)
insert into dentistTime(dentistPkId,timeTablePkId) values	(7,104)
insert into dentistTime(dentistPkId,timeTablePkId) values	(7,105)
insert into dentistTime(dentistPkId,timeTablePkId) values	(7,106)



--�w����ƪ�--
create table appointment(
appointmentPkId int primary key identity(1,1) not null,
memberPkId int references member(memberPkId),								--�h��@���s��|��--
clinicPkId int references clinic(clinicPkId) not null,									--�h��@���s��E��--
dentistPkId int references dentist(dentistPkId) not null,							--�h��@���s����v--
patientName nvarchar(20) ,																			--�E�ҥD�ʹw���D�|���m�W--
patientIdNumber nvarchar(10),																		--�E�ҥD�ʹw���D�|��������--
patientPhone nvarchar(15),																			--�E�ҥD�ʹw���D�|���q��--
appointDate Date not null,																				--�w�����--
timeTablePkId int references timeTable(timeTablePkId) not null,			--�h��@���s��}����E�ɶ�--
itemPkId int references items(itemPkId) not null,										----�h��@���s��ݶE����--
memberReply nvarchar(15),																		--�O�_���^�з|��E--
arrive nvarchar(10) default 'true'																							--�T�{�O�_��E---
)
insert into appointment(memberPkId,clinicPkId,dentistPkId,appointDate,timeTablePkId,itemPkId,memberReply)
values (3,1,2,'2021-01-04',37,5,'�T�w�e��')
insert into appointment(memberPkId,clinicPkId,dentistPkId,appointDate,timeTablePkId,itemPkId,memberReply)
values (2,2,4,'2021-01-10',11,5,'���^��')
insert into appointment(memberPkId,clinicPkId,dentistPkId,appointDate,timeTablePkId,itemPkId,memberReply)
values (3,2,4,'2021-01-11',30,6,'�T�w�e��')
insert into appointment(memberPkId,clinicPkId,dentistPkId,appointDate,timeTablePkId,itemPkId,memberReply)
values (4,2,4,'2021-01-13',104,9,'���^��')
insert into appointment(memberPkId,clinicPkId,dentistPkId,appointDate,timeTablePkId,itemPkId,memberReply)
values (5,2,5,'2021-01-10',13,3,'���^��')
insert into appointment(memberPkId,clinicPkId,dentistPkId,appointDate,timeTablePkId,itemPkId,memberReply)
values (6,2,5,'2021-01-10',15,7,'�T�w�e��')
insert into appointment(memberPkId,clinicPkId,dentistPkId,appointDate,timeTablePkId,itemPkId,memberReply)
values (6,2,6,'2021-01-12',77,1,'�T�w�e��')
insert into appointment(memberPkId,clinicPkId,dentistPkId,appointDate,timeTablePkId,itemPkId,memberReply)
values (7,2,7,'2021-01-11',42,4,'���^��')
insert into appointment(memberPkId,clinicPkId,dentistPkId,appointDate,timeTablePkId,itemPkId,memberReply)
values (7,2,7,'2021-01-13',106,10,'�T�w�e��')
insert into appointment(memberPkId,clinicPkId,dentistPkId,appointDate,timeTablePkId,itemPkId,memberReply)
values (7,2,7,'2021-01-20',101,10,'�T�w�e��')


--�ݶE���׸�ƪ�--
create table comments(
commentPkId int primary key identity(1,1) not null,
appointmentPkId int not null references appointment(appointmentPkId),
rate smallint not null,
commentContext nvarchar(500),
);

--�ӫ��ӫ~--
create table products(
productPkId int primary key identity(1,1) not null,
productName nvarchar(50) not null,									--�ӫ~�W��--
productUpdateDate date not null,										--�ӫ~�s�W�ɶ�--
productPrice int not null,														--�ӫ~����--
productQuantity int not null,													--�ӫ~�Ѿl�ƶq--
productStatus nvarchar(10) not null,									--�ӫ~�W�[��_--
productImage nvarchar(max) not null,									--�Ϥ����|/API
productCategory nvarchar(20) not null,									--�ӫ~����--
productProfile nvarchar(max) not null,											--�ӫ~����--
productSpec nvarchar(max) not null										--�ӫ~�W��--
);

insert into products(productName,productUpdateDate,productPrice,productQuantity,productStatus,productImage,productCategory,productProfile,productSpec) values('�i�w����FOral-B�jiO9�L�_��޹q�ʤ���',GETDATE(),12990,30,'�W�[��','???','�q�ʤ���','�i�w����FOral-B�jiO9�L�_��޹q�ʤ���-�¦�(�L�Ϲq�ʤ���)','�~�P�G�ڼ�B|�~�W�GORAL-B iO9 �L�_��޹q�ʤ���|�C��:��|����ؤo(cm)�G18*10*26cm|�ӫ~���q(g)�G900g|���a�G����-�w��');
insert into products(productName,productUpdateDate,productPrice,productQuantity,productStatus,productImage,productCategory,productProfile,productSpec) values('�i��ڵP�j���i�q�ʤ���',GETDATE(),7290,30,'�W�[��','???','�q�ʤ���','�i��ڵP�j�~�׷s�~���i�q�ʤ���(EW-DP54-S/A)+�Ѥ�`�B�����\�㤭���','����ؤo�G��23.5 x �e2.9 x �`3.5cm|���q�G110g|�q���G100-240V|�R�q/�ϥήɶ��G�R�q1�p�ɡA���i�s��ϥ�90���� (�����_�ʤU)/45����(W���i�_�ʤU)|����G��a��*1�B���Y��m�[*1|���a: �饻(�R�q�y���a�G����)');
insert into products(productName,productUpdateDate,productPrice,productQuantity,productStatus,productImage,productCategory,productProfile,productSpec) values('�iPhilips���Q���j���ĪŮ�ʯ���u��/�R����',GETDATE(),3880,30,'�W�[��','???','�R����','�iPhilips ���Q���j���ĪŮ�ʯ���u��/�R����(HX8401/03)','�����GHX8401/03|�ؤo�G24D x14W x9H (cm)|���q�G430g|���a�G����');
insert into products(productName,productUpdateDate,productPrice,productQuantity,productStatus,productImage,productCategory,productProfile,productSpec) values('�iOra2�R�־��j�LĲ�P����',GETDATE(),299,30,'�W�[��','???','����','�iOra2�R�־��jme�LĲ�P����6��/��(�W�n��A�C���H���X�f)','����:���:���s�C��`:�E�A�m�콦�C�@���ū�:60��C|�]�ˤJ��:6��/��|���a:�饻');
insert into products(productName,productUpdateDate,productPrice,productQuantity,productStatus,productImage,productCategory,productProfile,productSpec) values('�i�λĩw�j�h���@�z+�`�h��b���I',GETDATE(),499,30,'�W�[��','???','���I','�i�λĩw�j�z��8�J�դ��I-�h���@�z120g*6+�`�h��b100g*2','�~�W:�λĩw���ħܱ�-�h���@�z|�W��:120g x6�J|�γ~:���U�O�@���i���d|�O�s����:�T�~|�첣�a:����');

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
orderDetailPkId int primary key identity(1,1) not null,
orderPkId int references orders(orderPkId),						--�h��@���p��q��--
productPkId int references products(productPkId),			--�h��@���p�첣�~--
orderQuantity int,																	--�q�ʼƶq--

);




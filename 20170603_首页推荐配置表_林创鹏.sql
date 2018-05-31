--��Ʒ��ע��
CREATE TABLE ccs_msale_rcmd_setting(
RCMD_ID	           NUMBER(22) NOT NULL,
CAT_ID	           NUMBER(22) NOT NULL,
SETS_OF_BOOKS_ID   NUMBER(22) NOT NULL,
RCMD_TYPE          NUMBER(2) NOT NULL,
RCMD_ITEM_ID       VARCHAR2(48) NOT NULL,
IS_SHOW_HP         NUMBER(2) NOT NULL,
USABLE_STARTTIME   DATE NOT NULL,
USABLE_ENDTIME     DATE NOT NULL,
CREATED_BY         VARCHAR2(64),
CREATION_DATE      DATE,
last_update_date   DATE,
last_updated_by    VARCHAR2(64),
ATTRIBUTE1	       VARCHAR2(256),
ATTRIBUTE2         VARCHAR2(256),
ATTRIBUTE3	       VARCHAR2(256),
ATTRIBUTE4	       NUMBER,
ATTRIBUTE5	       NUMBER
)
tablespace GCCSDB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
  
  
COMMENT ON TABLE ccs_msale_rcmd_setting IS '��ҳ�Ƽ����ñ�';
comment on column ccs_msale_rcmd_setting.RCMD_ID is 'ID';
comment on column ccs_msale_rcmd_setting.CAT_ID is '���������ҵ��';
comment on column ccs_msale_rcmd_setting.SETS_OF_BOOKS_ID IS '����ID';
comment on column ccs_msale_rcmd_setting.RCMD_TYPE IS '�Ƽ����ͣ�1-��Ʒ�Ƽ���2-��������';
comment on column ccs_msale_rcmd_setting.RCMD_ITEM_ID IS '������Ʒ����';
comment on column ccs_msale_rcmd_setting.IS_SHOW_HP IS '�Ƿ���ҳ��ʾ��1-����ҳͼ����2-��ҳ�Ƽ�';
comment on column ccs_msale_rcmd_setting.USABLE_STARTTIME IS '��Ч����';
comment on column ccs_msale_rcmd_setting.USABLE_ENDTIME IS 'ʧЧ����';
comment on column ccs_msale_rcmd_setting.CREATED_BY IS '������';
comment on column ccs_msale_rcmd_setting.CREATION_DATE IS '����ʱ��';
comment on column ccs_msale_rcmd_setting.LAST_UPDATE_DATE IS '����޸�ʱ��';
comment on column ccs_msale_rcmd_setting.LAST_UPDATED_BY IS '����޸���';
comment on column ccs_msale_rcmd_setting.ATTRIBUTE1 IS '�����ֶ�1';
comment on column ccs_msale_rcmd_setting.ATTRIBUTE2 IS '�����ֶ�2';
comment on column ccs_msale_rcmd_setting.ATTRIBUTE3 IS '�����ֶ�3';
comment on column ccs_msale_rcmd_setting.ATTRIBUTE4 IS '�����ֶ�4';
comment on column ccs_msale_rcmd_setting.ATTRIBUTE5 IS '�����ֶ�5';




-- Create/Recreate indexes 
create index INX_ccs_msale_rcmd_setting_N1 on ccs_msale_rcmd_setting (RCMD_ID,sets_of_books_id)
  tablespace GCCSDBINDEX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table ccs_msale_rcmd_setting
  add constraint PK_ccs_msale_rcmd_setting_ID primary key (RCMD_ID)
  using index 
  tablespace GCCSDBINDEX
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
  

create SEQUENCE SQ_ccs_msale_rcmd_setting
increment by 1
start with 1
maxvalue 999999999999;
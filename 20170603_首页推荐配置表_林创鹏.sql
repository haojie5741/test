--商品关注表
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
  
  
COMMENT ON TABLE ccs_msale_rcmd_setting IS '首页推荐配置表';
comment on column ccs_msale_rcmd_setting.RCMD_ID is 'ID';
comment on column ccs_msale_rcmd_setting.CAT_ID is '广告所属事业部';
comment on column ccs_msale_rcmd_setting.SETS_OF_BOOKS_ID IS '帐套ID';
comment on column ccs_msale_rcmd_setting.RCMD_TYPE IS '推荐类型：1-新品推荐，2-爆款热卖';
comment on column ccs_msale_rcmd_setting.RCMD_ITEM_ID IS '关联商品编码';
comment on column ccs_msale_rcmd_setting.IS_SHOW_HP IS '是否首页显示，1-非首页图鉴，2-首页推荐';
comment on column ccs_msale_rcmd_setting.USABLE_STARTTIME IS '生效日期';
comment on column ccs_msale_rcmd_setting.USABLE_ENDTIME IS '失效日期';
comment on column ccs_msale_rcmd_setting.CREATED_BY IS '创建人';
comment on column ccs_msale_rcmd_setting.CREATION_DATE IS '创建时间';
comment on column ccs_msale_rcmd_setting.LAST_UPDATE_DATE IS '最后修改时间';
comment on column ccs_msale_rcmd_setting.LAST_UPDATED_BY IS '最后修改人';
comment on column ccs_msale_rcmd_setting.ATTRIBUTE1 IS '备用字段1';
comment on column ccs_msale_rcmd_setting.ATTRIBUTE2 IS '备用字段2';
comment on column ccs_msale_rcmd_setting.ATTRIBUTE3 IS '备用字段3';
comment on column ccs_msale_rcmd_setting.ATTRIBUTE4 IS '备用字段4';
comment on column ccs_msale_rcmd_setting.ATTRIBUTE5 IS '备用字段5';




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
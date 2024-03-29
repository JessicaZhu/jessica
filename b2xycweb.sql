USE [B2C]
GO
/****** Object:  Table [dbo].[b_Server]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_Server](
	[S_ID] [int] IDENTITY(1,1) NOT NULL,
	[S_Name] [varchar](50) NOT NULL,
	[S_Path] [varchar](500) NOT NULL,
	[S_URL] [varchar](500) NOT NULL,
	[S_IsCurrent] [bit] NOT NULL,
	[S_Flag] [bit] NOT NULL,
 CONSTRAINT [PK_b_Server] PRIMARY KEY CLUSTERED 
(
	[S_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[u_News]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[u_News](
	[N_ID] [int] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[N_title] [varchar](100) NOT NULL,
	[N_content] [varchar](8000) NOT NULL,
	[N_addtime] [datetime] NOT NULL,
	[AuditingState] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_PayMathod]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_PayMathod](
	[PM_ID] [int] IDENTITY(1,1) NOT NULL,
	[PM_Name] [nvarchar](50) NOT NULL,
	[PM_Remark] [varchar](8000) NOT NULL,
 CONSTRAINT [PK_b_PayMathod] PRIMARY KEY CLUSTERED 
(
	[PM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[u_FictitiouCount]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[u_FictitiouCount](
	[C_ID] [int] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[C_SumMoney] [money] NOT NULL,
	[C_LeftMoney] [money] NOT NULL,
	[addtime] [datetime] NOT NULL,
 CONSTRAINT [PK_u_FictitiouCount] PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[i_Supply]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[i_Supply](
	[SD_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[PT_ID] [bigint] NOT NULL,
	[SD_Title] [varchar](100) NOT NULL,
	[SD_Description] [text] NOT NULL,
	[SD_PublishDate] [datetime] NULL,
	[SD_IsSupply] [bit] NULL,
	[SD_HTMLPage] [varchar](500) NULL,
	[SD_ClickNum] [bigint] NULL,
	[SD_Vouch] [bit] NULL,
	[SD_MessageNum] [int] NULL,
	[SD_NoMessgeNum] [int] NULL,
	[SD_Flag] [int] NOT NULL,
	[SD_Date] [int] NOT NULL,
	[P_ID] [bigint] NOT NULL,
	[SD_EndDate] [datetime] NOT NULL,
	[SD_Unit] [varchar](100) NULL,
	[SD_Price] [decimal](18, 2) NULL,
	[SD_SmallNum] [int] NULL,
	[SD_CountNum] [int] NULL,
	[SD_IsPayMent] [bit] NULL,
	[isshop] [bit] NOT NULL,
	[companyproducttypeid] [int] NOT NULL,
	[AuditingState] [int] NULL,
	[IsHasImage] [int] NOT NULL,
 CONSTRAINT [PK_i_sdid] PRIMARY KEY CLUSTERED 
(
	[SD_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_UserData]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_UserData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[companyids] [varchar](500) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[i_Demand]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[i_Demand](
	[SD_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[MT_ID] [varchar](500) NOT NULL,
	[SD_Title] [varchar](100) NOT NULL,
	[SD_Description] [text] NOT NULL,
	[SD_PublishDate] [datetime] NOT NULL,
	[SD_IsSupply] [bit] NULL,
	[SD_HTMLPage] [varchar](500) NULL,
	[SD_ClickNum] [bigint] NULL,
	[SD_Vouch] [bit] NULL,
	[SD_MessageNum] [int] NULL,
	[SD_NoMessgeNum] [int] NULL,
	[SD_Date] [int] NOT NULL,
	[SD_Flag] [int] NULL,
	[P_ID] [bigint] NOT NULL,
	[SD_EndDate] [datetime] NOT NULL,
	[SD_Unit] [varchar](100) NULL,
	[SD_Price] [decimal](18, 2) NULL,
	[SD_SmallNum] [int] NULL,
	[SD_CountNum] [int] NULL,
	[SD_IsPayMent] [bit] NULL,
	[AuditingState] [int] NULL,
	[IsHasImage] [int] NOT NULL,
 CONSTRAINT [PK_i_Demand] PRIMARY KEY CLUSTERED 
(
	[SD_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[u_Remit]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[u_Remit](
	[R_ID] [int] IDENTITY(1,1) NOT NULL,
	[R_Name] [varchar](200) NOT NULL,
	[R_Email] [varchar](100) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[R_Tephone] [varchar](200) NOT NULL,
	[R_IsPay] [bit] NULL,
	[R_Time] [datetime] NOT NULL,
	[R_Bank] [varchar](100) NOT NULL,
	[R_Account] [varchar](100) NOT NULL,
	[R_CAccount] [varchar](100) NOT NULL,
	[R_RName] [varchar](100) NOT NULL,
	[R_Money] [money] NOT NULL,
	[AuditingState] [int] NULL,
 CONSTRAINT [PK_u_Remit] PRIMARY KEY CLUSTERED 
(
	[R_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_InfoRefreshLog]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_InfoRefreshLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[InfoId] [bigint] NOT NULL,
	[ModuleName] [varchar](50) NOT NULL,
	[IntradayNumbers] [int] NOT NULL,
	[LastRefreshTime] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_XY_InfoRefreshLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XYP_CheckAdmin]    Script Date: 10/03/2011 19:32:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[XYP_CheckAdmin]
@UserName varchar(50),
@Password varchar(32)
as
select count(UM_Name) from b_Admin 
where UM_Name =@UserName and UM_Pwd = @Password
GO
/****** Object:  Table [dbo].[XY_CompanyProductType]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_CompanyProductType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ptname] [varchar](100) NOT NULL,
	[infocount] [int] NOT NULL,
	[userid] [bigint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateAdmin]    Script Date: 10/03/2011 19:33:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[XYP_UpdateAdmin]

	(
		@UM_ID bigint,
		@UM_Pwd char(32),
		@UR_ID smallint
	)


AS
   begin
   begin tran tr
   begin
  declare @count int 
   update b_Admin set UR_ID=@UR_ID ,UM_Pwd=@UM_Pwd  where UM_ID=@UM_ID 
   end
   if @@error<>0
   begin
   rollback tran tr
   return -2
   end
   end
   commit
GO
/****** Object:  Table [dbo].[b_AdPlaceType]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_AdPlaceType](
	[AT_ID] [int] IDENTITY(1,1) NOT NULL,
	[AT_Name] [varchar](200) NOT NULL,
	[AT_PID] [int] NOT NULL,
	[AT_Alt] [varchar](5000) NULL,
 CONSTRAINT [PK_b_AdPlaceType] PRIMARY KEY CLUSTERED 
(
	[AT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_Topic]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_Topic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CName] [varchar](200) NOT NULL,
	[EName] [varchar](50) NOT NULL,
	[TCID] [smallint] NOT NULL,
	[TemplatePath] [varchar](500) NOT NULL,
	[URL] [varchar](500) NULL,
	[ShowNum] [int] NOT NULL,
	[State] [bit] NOT NULL,
	[Commend] [bit] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[HTMLPage] [varchar](200) NOT NULL,
	[TopicType] [varchar](500) NULL,
	[IsHasImage] [int] NOT NULL,
	[IsDomain] [bit] NOT NULL,
 CONSTRAINT [PK_XY_Topic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[n_NewsTitleInfo]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[n_NewsTitleInfo](
	[NT_ID] [int] IDENTITY(1,1) NOT NULL,
	[NT_Name] [varchar](200) NOT NULL,
	[NT_NessName] [varchar](50) NOT NULL,
	[NT_PID] [int] NOT NULL,
	[NT_EnName] [varchar](200) NOT NULL,
	[NT_TempletFolderAddress] [varchar](500) NULL,
	[NT_TempletViewAddress] [varchar](500) NULL,
	[NT_HTMLPage] [varchar](100) NULL,
	[NT_IsShow] [bit] NULL,
	[NT_IsAllowContribut] [bit] NULL,
	[DomainName] [varchar](100) NULL,
	[OrderID] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[i_InviteBusinessType]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[i_InviteBusinessType](
	[IT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IT_Name] [varchar](100) NOT NULL,
	[IT_ParentID] [bigint] NOT NULL,
	[ModuleName] [varchar](50) NOT NULL,
	[FullId] [varchar](500) NOT NULL,
	[InfoCount] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
 CONSTRAINT [PK__i_InviteBusiness__46735417] PRIMARY KEY CLUSTERED 
(
	[IT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_ExpressMessage]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_ExpressMessage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ModuleName] [varchar](50) NOT NULL,
	[Body] [varchar](300) NOT NULL,
 CONSTRAINT [PK_XY_ExpressMessage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_Field]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_Field](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeID] [bigint] NOT NULL,
	[ModuleName] [varchar](50) NOT NULL,
	[EName] [varchar](50) NOT NULL,
	[CName] [varchar](50) NOT NULL,
	[Type] [varchar](20) NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[SelectValue] [varchar](1000) NOT NULL,
	[FieldSize] [int] NULL,
 CONSTRAINT [PK_b_Field] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_UserGradePopedom]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_UserGradePopedom](
	[UGP_ID] [int] IDENTITY(1,1) NOT NULL,
	[UG_ID] [int] NOT NULL,
	[UGP_IsPayMent] [bit] NOT NULL,
	[UGP_IsShop] [bit] NOT NULL,
	[UGP_IsMessage] [bit] NOT NULL,
	[UGP_RefurbishTime] [int] NOT NULL,
	[UGP_RefubishNum] [int] NOT NULL,
	[UGP_RefubishTimes] [int] NOT NULL,
	[UGP_Faith] [int] NOT NULL,
	[UGP_IsLeachKeyWord] [bit] NOT NULL,
	[UGP_IsSupplyLinkMathod] [bit] NOT NULL,
	[UGP_IsBuyLinkMathod] [bit] NOT NULL,
	[UGP_IsSupplyMachiningLinkMathod] [bit] NOT NULL,
	[UGP_IsBuyMachiningLinkMathod] [bit] NOT NULL,
	[UGP_IsBuinessLinkMathod] [bit] NOT NULL,
	[UGP_IsSurrogateLinkMathod] [bit] NOT NULL,
	[UGP_IsSupplyServerLinkMathod] [bit] NOT NULL,
	[UGP_IsBuyServerLinkMathod] [bit] NOT NULL,
	[UGP_IsExhibtionLinkMathod] [bit] NOT NULL,
	[UGP_IsBrandLinkMathod] [bit] NOT NULL,
	[UGP_IsJobLinkMathod] [bit] NOT NULL,
	[UGP_IsCompanyLinkMathod] [bit] NOT NULL,
	[SeeBySellOffer] [bit] NOT NULL,
	[SeeByBuyOffer] [bit] NOT NULL,
	[SeeBySellMachining] [bit] NULL,
	[SeeByBuyMachining] [bit] NOT NULL,
	[SeeBySellBusiness] [bit] NOT NULL,
	[SeeByBuyBusiness] [bit] NOT NULL,
	[SeeBySellService] [bit] NOT NULL,
	[SeeByBuyService] [bit] NOT NULL,
	[SeeByExhibtion] [bit] NOT NULL,
	[SeeByBrand] [bit] NOT NULL,
	[SeeByJob] [bit] NOT NULL,
	[SeeByCompany] [bit] NOT NULL,
	[AdviseDays] [int] NOT NULL,
	[DebaseUserGrade] [int] NOT NULL,
	[IsQQOnLineTalk] [bit] NOT NULL,
	[IsShowChargeNews] [bit] NOT NULL,
	[UploadPicNum] [int] NOT NULL,
	[SeeContactsNum] [int] NOT NULL,
	[MessageNum] [varchar](500) NULL,
	[LimitDate] [int] NOT NULL,
	[iscompanyprotype] [bit] NOT NULL,
	[IsSubdomain] [bit] NOT NULL,
	[IsBindingTopdomain] [bit] NOT NULL,
 CONSTRAINT [PK_aaaaa] PRIMARY KEY CLUSTERED 
(
	[UGP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[n_ChargeNewsSet]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[n_ChargeNewsSet](
	[CN_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CN_VisitPopedom] [smallint] NOT NULL,
	[CN_ConsumeWebMoney] [int] NOT NULL,
	[CN_ConsumeMoney] [int] NOT NULL,
	[NS_ID] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CN_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pl_Attachment]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pl_Attachment](
	[At_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DescTabID] [bigint] NOT NULL,
	[DescTabName] [varchar](50) NOT NULL,
	[ThumbnailImg] [varchar](2000) NULL,
	[At_Path] [varchar](500) NOT NULL,
	[At_FileFormat] [varchar](10) NULL,
	[At_FileType] [varchar](50) NOT NULL,
	[At_Index] [int] NOT NULL,
	[At_PulishDate] [datetime] NOT NULL,
	[At_Remark] [varchar](500) NULL,
	[S_ID] [int] NOT NULL,
 CONSTRAINT [PK_pl_Attachment] PRIMARY KEY CLUSTERED 
(
	[At_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_PollOption]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XY_PollOption](
	[OptionId] [int] IDENTITY(1,1) NOT NULL,
	[PollId] [int] NOT NULL,
	[Option] [nvarchar](500) NOT NULL,
	[Total] [int] NOT NULL,
 CONSTRAINT [PK_XY_PollOption] PRIMARY KEY CLUSTERED 
(
	[OptionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[b_HTMLPageSet]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[b_HTMLPageSet](
	[HPS_ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[HPS_Index] [bit] NOT NULL,
	[HPS_Indextime] [int] NOT NULL,
	[HPS_Supply] [bit] NOT NULL,
	[HPS_Supplytime] [int] NOT NULL,
	[HPS_Demand] [bit] NOT NULL,
	[HPS_Demandtime] [int] NOT NULL,
	[HPS_Business] [bit] NOT NULL,
	[HPS_Businesstime] [int] NOT NULL,
	[HPS_Engage] [bit] NOT NULL,
	[HPS_Engagetime] [int] NOT NULL,
	[HPS_Corporation] [bit] NOT NULL,
	[HPS_Corporationtime] [int] NOT NULL,
	[HPS_Address] [bit] NOT NULL,
	[HPS_Addresstime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XY_Area]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XY_Area](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[FullID] [nvarchar](100) NULL,
	[OrderID] [int] NULL,
 CONSTRAINT [PK_XY_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XY_UserAppraise]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XY_UserAppraise](
	[InfoId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[GoodTimes] [int] NOT NULL,
	[FairTimes] [int] NOT NULL,
	[PoorTimes] [int] NOT NULL,
	[TotalScore] [int] NOT NULL,
 CONSTRAINT [PK_XY_UserAppraiseStat] PRIMARY KEY CLUSTERED 
(
	[InfoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[u_Certificate]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[u_Certificate](
	[CE_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[CE_Name] [varchar](100) NOT NULL,
	[CE_Organ] [varchar](100) NOT NULL,
	[CE_Begin] [datetime] NOT NULL,
	[CE_Upto] [datetime] NOT NULL,
	[CE_Addtime] [datetime] NOT NULL,
	[CE_Type] [int] NOT NULL,
	[CE_Isopen] [bit] NOT NULL,
	[AuditingState] [int] NULL,
 CONSTRAINT [PK_u_Certificate] PRIMARY KEY CLUSTERED 
(
	[CE_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[i_InfoCount]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[i_InfoCount](
	[PT_ID] [bigint] NOT NULL,
	[IC_SupplyCount] [bigint] NULL,
	[IC_DemandCount] [bigint] NULL,
	[IC_BusinessCount] [bigint] NULL,
	[IC_SupplyAuditedCount] [bigint] NULL,
	[IC_DemandAuditedCount] [bigint] NULL,
	[IC_BusinessAuditedCount] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XY_UserLoginLog]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_UserLoginLog](
	[UL_ID] [int] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[FirstLoginDate] [datetime] NOT NULL,
	[RegIP] [varchar](30) NOT NULL,
	[LastLoginDate] [datetime] NULL,
	[LastLoginIP] [varchar](30) NULL,
	[LoginNum] [int] NOT NULL,
 CONSTRAINT [PK_u_UserLogin] PRIMARY KEY CLUSTERED 
(
	[UL_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[i_ServiceType]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[i_ServiceType](
	[ST_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ST_Name] [varchar](100) NOT NULL,
	[ST_ParentID] [bigint] NOT NULL,
	[ModuleName] [varchar](50) NOT NULL,
	[FullID] [varchar](500) NOT NULL,
	[InfoCount] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
 CONSTRAINT [PK__i_ServiceType__579DE019] PRIMARY KEY CLUSTERED 
(
	[ST_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_UserGrade]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_UserGrade](
	[UG_ID] [smallint] IDENTITY(1,1) NOT NULL,
	[UG_Name] [varchar](50) NOT NULL,
	[UG_Month] [money] NOT NULL,
	[UG_Year] [money] NOT NULL,
	[UG_SmallIconName] [nvarchar](50) NULL,
	[UG_BigIconName] [nvarchar](50) NULL,
	[UG_Order] [int] NOT NULL,
 CONSTRAINT [PK_b_UserGread] PRIMARY KEY CLUSTERED 
(
	[UG_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_FinanceType]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_FinanceType](
	[FT_ID] [int] IDENTITY(1,1) NOT NULL,
	[FT_Type] [varchar](500) NOT NULL,
 CONSTRAINT [PK_b_FinanceType] PRIMARY KEY CLUSTERED 
(
	[FT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_FaithSet]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_FaithSet](
	[F_ID] [int] IDENTITY(1,1) NOT NULL,
	[GF_Fath] [int] NULL,
	[GF_Money] [int] NULL,
	[GF_ErrFath] [int] NULL,
	[GF_ErrMoney] [int] NULL,
	[GF_Remark] [varchar](1000) NULL,
	[HF_Fath] [int] NULL,
	[HF_Money] [int] NULL,
	[HF_ErrFath] [int] NULL,
	[HF_ErrMoney] [int] NULL,
	[HF_Remark] [varchar](1000) NULL,
	[UF_Fath] [int] NULL,
	[UF_Money] [int] NULL,
	[UF_ErrFath] [int] NULL,
	[UF_ErrMoney] [int] NULL,
	[UF_Remark] [varchar](1000) NULL,
	[BF_Fath] [int] NULL,
	[BF_Money] [int] NULL,
	[BF_ErrFath] [int] NULL,
	[BF_ErrMoney] [int] NULL,
	[BF_Remark] [varchar](1000) NULL,
	[FS_Base] [int] NULL,
	[FS_Hot] [int] NULL,
	[FS_Licence] [int] NULL,
	[FS_Certificate] [int] NULL,
 CONSTRAINT [PK_b_FaithSet] PRIMARY KEY CLUSTERED 
(
	[F_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_Mode]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_Mode](
	[M_ID] [int] IDENTITY(1,1) NOT NULL,
	[M_Type] [varchar](100) NOT NULL,
 CONSTRAINT [PK_B_Mode] PRIMARY KEY CLUSTERED 
(
	[M_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pl_Auditing]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pl_Auditing](
	[A_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DescTabID] [bigint] NOT NULL,
	[DescTabName] [varchar](50) NOT NULL,
	[A_Reason] [varchar](1000) NULL,
	[A_Advice] [varchar](1000) NULL,
 CONSTRAINT [PK_pl_Auditing] PRIMARY KEY CLUSTERED 
(
	[A_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_PopedomSet]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_PopedomSet](
	[P_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[P_TableName] [varchar](100) NOT NULL,
	[P_IsPopedom] [bit] NOT NULL,
	[UR_ID] [int] NOT NULL,
 CONSTRAINT [PK_b_PopedomSet] PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[u_Resume]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[u_Resume](
	[U_ID] [bigint] NOT NULL,
	[RE_JobYear] [varchar](50) NULL,
	[RE_School] [varchar](50) NULL,
	[RE_Speciality] [varchar](50) NULL,
	[RE_Gyear] [datetime] NULL,
	[RE_Schoolage] [varchar](20) NULL,
	[RE_Resume] [text] NULL,
	[RE_Intentjob] [varchar](20) NULL,
	[RE_Intentadd] [varchar](20) NULL,
	[RE_Intentpay] [varchar](20) NULL,
	[RE_Experience] [varchar](500) NULL,
	[RE_Adddate] [datetime] NULL,
	[RE_HtmlPage] [varchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_FriendLinkSort]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_FriendLinkSort](
	[FS_ID] [int] IDENTITY(1,1) NOT NULL,
	[FS_Name] [varchar](200) NOT NULL,
	[FS_PID] [int] NOT NULL,
	[FS_Alt] [varchar](500) NULL,
 CONSTRAINT [PK_b_FriendLinkSort_1] PRIMARY KEY CLUSTERED 
(
	[FS_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_Poll]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_Poll](
	[PollId] [int] IDENTITY(1,1) NOT NULL,
	[LabelName] [varchar](50) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[Mode] [varchar](20) NOT NULL,
 CONSTRAINT [PK_XY_Poll] PRIMARY KEY CLUSTERED 
(
	[PollId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_LabelType]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_LabelType](
	[LT_ID] [int] IDENTITY(1,1) NOT NULL,
	[LT_Name] [varchar](50) NOT NULL,
	[LT_ParentID] [int] NOT NULL,
	[LT_Remark] [varchar](500) NULL,
 CONSTRAINT [PK_b_LabelType] PRIMARY KEY CLUSTERED 
(
	[LT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[u_SendEmail]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[u_SendEmail](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[U_IDS] [varchar](500) NOT NULL,
	[E_Title] [nvarchar](500) NOT NULL,
	[E_Content] [varchar](8000) NOT NULL,
	[AddTime] [datetime] NOT NULL,
 CONSTRAINT [PK_u_SendEmail] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_RankingLog]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XY_RankingLog](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[KeyId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[BeginTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[RealEndTime] [datetime] NOT NULL,
	[Amount] [decimal](18, 0) NOT NULL,
	[Rank] [smallint] NOT NULL,
 CONSTRAINT [PK_XY_RankingLog] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XY_AreaSite]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_AreaSite](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AreaId] [int] NOT NULL,
	[FlagName] [varchar](50) NOT NULL,
	[IsCustomTemplate] [bit] NOT NULL,
 CONSTRAINT [PK_XY_SiteArea] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_FriendLink]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_FriendLink](
	[FL_ID] [smallint] IDENTITY(1,1) NOT NULL,
	[FL_Type] [bit] NOT NULL,
	[FL_Font] [varchar](200) NOT NULL,
	[FL_URL] [varchar](500) NOT NULL,
	[FL_Alt] [varchar](500) NOT NULL,
	[FL_Flag] [bit] NULL,
	[FL_AddDate] [datetime] NOT NULL,
	[FL_IsCommend] [bit] NOT NULL,
	[FS_ID] [int] NOT NULL,
 CONSTRAINT [PK_b_FriendLink] PRIMARY KEY CLUSTERED 
(
	[FL_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[u_AccountConsumptionInfo]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[u_AccountConsumptionInfo](
	[AC_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[AC_Count] [money] NOT NULL,
	[AC_Time] [datetime] NOT NULL,
	[AC_Explain] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[AC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_FieldContentservice]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_FieldContentservice](
	[C_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[zhuanliqingkuang] [varchar](100) NULL,
	[jishumingcheng] [varchar](300) NULL,
	[jishujieduan] [varchar](300) NULL,
	[shifadi] [varchar](300) NULL,
	[mudidi] [varchar](300) NULL,
	[zuichizhuangyunri] [varchar](300) NULL,
	[qidingliang] [varchar](300) NULL,
	[danjia] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_Feedback]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_Feedback](
	[FeedbackID] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[telephone] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[centent] [varchar](1000) NOT NULL,
	[addtime] [datetime] NOT NULL,
 CONSTRAINT [PK_XY_Feedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_FieldInherit]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_FieldInherit](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[InheritID] [bigint] NOT NULL,
	[TypeID] [bigint] NOT NULL,
	[ModuleName] [varchar](50) NOT NULL,
	[FieldIDS] [varchar](1000) NULL,
	[IsInherit] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[n_ChargeNewsInfo]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[n_ChargeNewsInfo](
	[CI_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[NS_ID] [bigint] NOT NULL,
	[CI_AddTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CI_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XY_FieldContentinvestment]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XY_FieldContentinvestment](
	[C_ID] [bigint] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[u_User]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[u_User](
	[U_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[U_Name] [varchar](50) NOT NULL,
	[U_PassWord] [varchar](50) NOT NULL,
	[U_Email] [varchar](100) NOT NULL,
	[U_Question] [varchar](50) NOT NULL,
	[U_Answer] [varchar](50) NOT NULL,
	[U_RegDate] [datetime] NOT NULL,
	[U_HtmlPage] [varchar](500) NULL,
	[U_ClickNum] [bigint] NULL,
	[U_MessageNum] [int] NULL,
	[U_NoMessgeNum] [int] NULL,
	[U_Mark] [bigint] NULL,
	[U_Vouch] [bit] NULL,
	[U_Puach] [bit] NULL,
	[U_Cred] [int] NULL,
	[UG_ID] [int] NULL,
	[U_Flag] [bit] NULL,
	[U_TempName] [varchar](50) NOT NULL,
	[U_CommonErr] [int] NULL,
	[U_MaliceErr] [int] NULL,
	[U_InFormation] [int] NULL,
	[U_Activation] [bit] NULL,
	[U_ActivationCode] [varchar](500) NULL,
	[UserAuditingState] [int] NULL,
	[UserIsHasImage] [int] NOT NULL,
 CONSTRAINT [PK_u_U_id] PRIMARY KEY CLUSTERED 
(
	[U_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_ClassLabel]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_ClassLabel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CNName] [nvarchar](100) NULL,
	[Body] [text] NOT NULL,
	[TableName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_XY_ClassLabel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[o_OrderForm]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[o_OrderForm](
	[OF_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[OF_Achieye] [bit] NOT NULL,
	[OF_Type] [tinyint] NOT NULL,
	[Customer_ID] [bigint] NOT NULL,
	[SD_ID] [bigint] NOT NULL,
	[OF_UID] [bigint] NOT NULL,
	[OF_Price] [decimal](10, 2) NOT NULL,
	[OF_Favorable] [decimal](10, 2) NOT NULL,
	[OF_CBear] [bit] NULL,
	[OF_CBegin] [bit] NULL,
	[OF_Carriage] [decimal](10, 2) NULL,
	[OF_Number] [int] NOT NULL,
	[OF_Money] [decimal](10, 2) NOT NULL,
	[OF_BmoneyTime] [datetime] NULL,
	[OF_AmoneyTime] [datetime] NULL,
	[OF_BgoodsTime] [datetime] NULL,
	[OF_AgoodsTime] [datetime] NULL,
	[OF_BeginTime] [datetime] NOT NULL,
	[LinkMan] [varchar](50) NOT NULL,
	[LinkMoblie] [varchar](20) NULL,
	[LinkTel] [varchar](100) NOT NULL,
	[LinkAddress] [varchar](200) NOT NULL,
	[OF_AdateTime] [datetime] NOT NULL,
	[OF_remark] [text] NULL,
	[OF_Code] [varchar](12) NOT NULL,
 CONSTRAINT [PK_o_OrderForm] PRIMARY KEY CLUSTERED 
(
	[OF_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_BrandType]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XY_BrandType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[FullID] [nvarchar](100) NOT NULL,
	[InfoCount] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
 CONSTRAINT [PK_XY_BrandType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[b_Log]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_Log](
	[L_ID] [int] IDENTITY(1,1) NOT NULL,
	[L_Title] [varchar](500) NOT NULL,
	[L_Content] [varchar](5000) NOT NULL,
	[L_MF] [varchar](100) NOT NULL,
	[UM_ID] [int] NOT NULL,
	[L_addtime] [datetime] NOT NULL,
 CONSTRAINT [PK_b_log] PRIMARY KEY CLUSTERED 
(
	[L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_Admin]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_Admin](
	[UM_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Usernum] [nvarchar](15) NOT NULL,
	[UM_Pwd] [char](32) NOT NULL,
	[UR_ID] [smallint] NOT NULL,
	[UM_Name] [char](20) NOT NULL,
	[isSuper] [tinyint] NOT NULL,
	[OnlyLogin] [tinyint] NOT NULL,
	[isLock] [tinyint] NOT NULL,
	[Iplimited] [ntext] NULL,
	[verCode] [nvarchar](12) NULL,
 CONSTRAINT [PK_b_Admin] PRIMARY KEY CLUSTERED 
(
	[UM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[u_UserInfo]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[u_UserInfo](
	[U_ID] [bigint] NOT NULL,
	[UI_Name] [varchar](100) NULL,
	[Area_ID] [int] NULL,
	[UI_Area] [varchar](300) NULL,
	[UI_Sex] [bit] NULL,
	[UI_License] [varchar](50) NULL,
	[UI_Character] [varchar](50) NULL,
	[UI_LinkMan] [varchar](50) NULL,
	[UI_Number] [varchar](50) NULL,
	[UI_HomePage] [varchar](200) NULL,
	[UI_Synopsis] [nvarchar](4000) NULL,
	[UI_Postcode] [varchar](15) NULL,
	[UI_Mobil] [varchar](100) NULL,
	[UT_ID] [bigint] NULL,
	[U_Section] [varchar](100) NOT NULL,
	[U_Post] [varchar](100) NULL,
	[U_Way] [tinyint] NULL,
	[U_SupplyProduct] [varchar](500) NULL,
	[U_BuyProduct] [varchar](500) NULL,
	[U_Mode] [varchar](200) NULL,
	[U_Money] [decimal](18, 0) NULL,
	[U_Year] [int] NULL,
	[AC_ID] [int] NULL,
	[U_Address] [varchar](200) NULL,
	[U_PType] [varchar](5000) NULL,
	[U_MoneyType] [varchar](100) NULL,
	[IM] [varchar](200) NULL,
	[Telephone] [varchar](200) NULL,
	[Fax] [varchar](200) NULL,
	[TradeIds] [varchar](100) NOT NULL,
 CONSTRAINT [PK_u_UserInfoid] PRIMARY KEY CLUSTERED 
(
	[U_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_UserAppraiseLog]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_UserAppraiseLog](
	[logId] [int] IDENTITY(1,1) NOT NULL,
	[score] [smallint] NOT NULL,
	[message] [nvarchar](500) NOT NULL,
	[posttime] [datetime] NOT NULL,
	[userId] [bigint] NOT NULL,
	[msgUserId] [bigint] NOT NULL,
	[msgUserIP] [varchar](50) NOT NULL,
 CONSTRAINT [PK_XY_UserAppraise] PRIMARY KEY CLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_Role]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_Role](
	[UR_ID] [smallint] IDENTITY(1,1) NOT NULL,
	[adminGroupNumber] [nvarchar](8) NOT NULL,
	[UR_Name] [char](20) NOT NULL,
	[PopList] [ntext] NULL,
	[CreatTime] [datetime] NOT NULL,
 CONSTRAINT [PK_b_Role_urid] PRIMARY KEY NONCLUSTERED 
(
	[UR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_Trade]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_Trade](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TradeName] [varchar](50) NOT NULL,
	[FlagName] [varchar](50) NOT NULL,
	[ParentId] [int] NOT NULL,
	[IsCustomTemplate] [bit] NOT NULL,
	[OrderID] [int] NULL,
 CONSTRAINT [PK_XY_Trade] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fs_Collect_News]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fs_Collect_News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Links] [nvarchar](200) NOT NULL,
	[Author] [nvarchar](100) NULL,
	[Source] [nvarchar](100) NULL,
	[Content] [ntext] NOT NULL,
	[AddDate] [datetime] NULL,
	[ImagesCount] [int] NULL,
	[SiteID] [int] NOT NULL,
	[Catched_Form] [nvarchar](50) NULL,
	[History] [bit] NOT NULL,
	[RecTF] [bit] NOT NULL,
	[TodayNewsTF] [bit] NOT NULL,
	[MarqueeNews] [bit] NOT NULL,
	[SBSNews] [bit] NOT NULL,
	[ReviewTF] [bit] NOT NULL,
	[CollectTime] [datetime] NOT NULL,
	[ChannelID] [nvarchar](12) NULL,
	[ClassID] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_Collect_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[b_Label]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_Label](
	[L_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[L_Name] [varchar](100) NOT NULL,
	[L_CName] [varchar](100) NOT NULL,
	[LT_ID] [int] NOT NULL,
	[L_TableName] [varchar](500) NOT NULL,
	[L_Content] [varchar](5000) NOT NULL,
	[L_StyleHead] [varchar](5000) NOT NULL,
	[L_StyleContent] [varchar](8000) NOT NULL,
	[L_StyleFooter] [varchar](5000) NOT NULL,
 CONSTRAINT [PK_b_lid] PRIMARY KEY CLUSTERED 
(
	[L_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateFieldTable]    Script Date: 10/03/2011 19:34:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateFieldTable]
	@ModuleName varchar(50),
	@EName varchar(50),
	@Type varchar(20),
	@FieldSize	int,
	@OldEName varchar(50)
AS
BEGIN
	declare @tablename varchar(200),@sql varchar(500)
	set @tablename = 'XY_FieldContent' + @ModuleName

	if exists(select * from syscolumns where id=OBJECT_ID(@tablename) and name=@OldEName)
	begin		
		declare @tmpcolnmn varchar(200)
		set @tmpcolnmn = @tablename + '.' + @OldEName
		EXEC sp_rename @tmpcolnmn, @EName, 'COLUMN';

		if 'textarea' = @Type
		begin
			set @sql = 'Alter table [' + @tablename + '] ALTER COLUMN [' + @EName + '] text'
		end
		else
		begin
			set @sql = 'Alter table [' + @tablename + '] ALTER COLUMN [' + @EName + '] varchar(' + convert(varchar,@FieldSize) + ')'
		end
		exec(@sql)
	end
	return @@error
END
GO
/****** Object:  Table [dbo].[b_FiltrateKeyWord]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_FiltrateKeyWord](
	[FKW_ID] [int] IDENTITY(1,1) NOT NULL,
	[FKW_Name] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateDemandPause]    Script Date: 10/03/2011 19:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateDemandPause]
(
  @strwhere varchar(600)
)
AS
	
	begin	
    declare @SQL varchar(1000)
	set @SQL = 'UPDATE i_Demand SET SD_IsSupply=1'+' '+@strwhere
    end
    execute(@SQL)
GO
/****** Object:  Table [dbo].[i_InviteBusinessmanInfo]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[i_InviteBusinessmanInfo](
	[IBI_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[IBI_Title] [varchar](200) NOT NULL,
	[IBI_Content] [text] NULL,
	[IT_ID] [bigint] NOT NULL,
	[A_Area] [varchar](1000) NULL,
	[S_Name] [varchar](500) NULL,
	[IBI_Description] [text] NULL,
	[IBI_Support] [varchar](4000) NULL,
	[IBI_Demand] [varchar](4000) NULL,
	[IBI_HTMLPage] [varchar](100) NULL,
	[IBI_PublishDate] [datetime] NOT NULL,
	[IBI_ClickNum] [bigint] NOT NULL,
	[IBI_Vouch] [bit] NOT NULL,
	[IBI_Pause] [bit] NOT NULL,
	[IBI_MessageNum] [int] NOT NULL,
	[IBI_NoMessageNum] [int] NOT NULL,
	[IBI_EndTime] [datetime] NOT NULL,
	[IBI_EndDate] [int] NOT NULL,
	[IBI_URL] [varchar](100) NULL,
	[IBI_Sign] [tinyint] NOT NULL,
	[P_ID] [bigint] NULL,
	[AuditingState] [int] NULL,
	[IsHasImage] [int] NOT NULL,
 CONSTRAINT [PK_i_InviteBusinessmanInfo] PRIMARY KEY CLUSTERED 
(
	[IBI_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateSendEmail]    Script Date: 10/03/2011 19:34:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdateSendEmail]
@E_ID  int ,
@E_title nvarchar(500),
@E_content  varchar(8000)
as
begin 
begin tran tr
update b_SendEmail set E_title=@E_title ,E_content=@E_content where E_ID =@E_ID
if @@error <> 0
begin 
rollback tran tr 
return -2
end
commit 
end
GO
/****** Object:  Table [dbo].[XY_OnlineJoin]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_OnlineJoin](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[InvestmentID] [bigint] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Title] [varchar](200) NULL,
	[InfoContent] [varchar](1000) NULL,
	[QuondamProduct] [varchar](200) NULL,
	[AreaIDs] [varchar](200) NULL,
	[HasReply] [bit] NULL,
	[AddTime] [smalldatetime] NULL,
	[IP] [varchar](15) NULL,
 CONSTRAINT [PK_XY_OnlineJoin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateSupplyPause]    Script Date: 10/03/2011 19:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateSupplyPause]
(
  @strwhere varchar(600)
)
AS

	begin	
    declare @SQL varchar(1000)
	set @SQL = 'UPDATE i_Supply SET SD_IsSupply=0'+' '+@strwhere
    end
    execute(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[XYP_Statisticsnews]    Script Date: 10/03/2011 19:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_Statisticsnews]

		@nt_id varchar(50), --资讯栏目
		@um_id varchar(50), --发布人
		@state varchar(50), --审核状态
		@bgtime varchar(50), --开始时间
		@egtime varchar(50) --结束时间
		as 
		declare @strSQL nvarchar(1000)  --主SQL语句
		declare @strWhere nvarchar(1000)--除发布人意外的查询条件
		declare @strWhereName nvarchar(500) --发布人的查询条件
	
begin
		set @strWhere ='where um_id = b_admin.um_id'
		set @strWhereName = 'where 1=1'
		if @nt_id != ''
			set @strWhere = @strWhere+ ' and charindex('','+@nt_id+','',NT_ID) >0 '
		if @state != ''	
			set @strWhere = @strWhere+ ' and auditingstate='+@state+''
		if @bgtime != '' and @egtime != '' 
			set @strWhere = @strWhere+ ' and NS_AddTime between ''' + @bgtime + ''' and ''' + @egtime+''''
		if @um_id != ''
			set @strWhereName =@strWhereName+ ' and um_id='+@um_id+''	
		

		set @strSQL = 'select um_name,(select count(*) From n_news '+@strWhere+' ) as total From b_admin '+@strWherename+''
		
		EXECUTE(@strSQL)

end
GO
/****** Object:  Table [dbo].[i_ServiceInfo]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[i_ServiceInfo](
	[S_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[S_Title] [varchar](200) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[ST_ID] [bigint] NOT NULL,
	[S_Content] [text] NOT NULL,
	[S_AddTime] [datetime] NOT NULL,
	[S_EndDate] [int] NOT NULL,
	[S_EndTime] [datetime] NOT NULL,
	[S_Vouch] [bit] NOT NULL,
	[S_Pause] [bit] NOT NULL,
	[S_HTMLPage] [varchar](100) NULL,
	[S_ClickNum] [int] NOT NULL,
	[S_MessageNum] [int] NOT NULL,
	[S_NoMessageNum] [int] NOT NULL,
	[P_ID] [bigint] NOT NULL,
	[S_Flag] [int] NOT NULL,
	[AuditingState] [int] NULL,
	[IsHasImage] [int] NOT NULL,
 CONSTRAINT [PK_i_Surrogate] PRIMARY KEY CLUSTERED 
(
	[S_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_UserType]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_UserType](
	[UT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UT_Type] [nvarchar](50) NOT NULL,
	[UT_PID] [bigint] NOT NULL,
	[UT_FullID] [varchar](500) NOT NULL,
	[UT_InfoCount] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
 CONSTRAINT [PK_b_UserType] PRIMARY KEY CLUSTERED 
(
	[UT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertFieldTable]    Script Date: 10/03/2011 19:33:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertFieldTable]
	@ModuleName varchar(50),
	@EName varchar(50),
	@Type varchar(20),
	@FieldSize	int
AS
BEGIN

	declare @tablename varchar(200),@sql varchar(500)
	set @tablename = 'XY_FieldContent' + @ModuleName

	IF NOT EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(@tablename) AND type in ('U'))
	BEGIN
		set @sql = 'CREATE TABLE ' + @tablename + '(
		C_ID bigint IDENTITY (1, 1) PRIMARY KEY CLUSTERED
		)'
		exec(@sql)
	END

	--if not exists(select * from syscolumns where id=id(@tablename) and name=@EName)

		if 'textarea' = @Type
		begin
			set @sql = 'Alter table ' + @tablename + ' Add ' + @EName + ' text'
		end
		else
		begin
			set @sql = 'Alter table ' + @tablename + ' Add ' + @EName + ' varchar(' + convert(varchar,@FieldSize) + ')'
		end
		exec(@sql)


		return @@error

END
GO
/****** Object:  StoredProcedure [dbo].[XYP_StatSendInfo]    Script Date: 10/03/2011 19:33:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   procedure [dbo].[XYP_StatSendInfo]

		@nt_id varchar(50), --资讯栏目

		@state varchar(50), --审核状态
		@bgtime varchar(50), --开始时间
		@egtime varchar(50), --结束时间
		@areaids varchar(50), --所在地区	
		@tradeids varchar(50) --行业类型
		as 
		declare @strSQL nvarchar(1000)  --主SQL语句
		declare @strWhere nvarchar(500) --查询条件
	
begin
		set @strWhere ='where 1=1 and Contributor not in (0)'
		if @nt_id != ''
			set @strWhere = @strWhere+ ' and charindex('','+@nt_id+','',NT_ID) >0 '
		if @state != ''	
			set @strWhere = @strWhere+ ' and auditingstate='+@state+''
		if @bgtime != '' and @egtime != '' 
			set @strWhere = @strWhere+ ' and NS_AddTime between ''' + @bgtime + ''' and ''' + @egtime+''''
		if @areaids !=''
			set @strWhere = @strWhere+'and charindex('''+@areaids+''',areaids)>0 '
		if @tradeids !=''
			set @strWhere = @strWhere+'and charindex('''+@tradeids+''',areaids)>0 '

		set @strSQL = 'select count(*) as count from n_news '+@strWhere+''
		
		EXECUTE(@strSQL)

end
GO
/****** Object:  Table [dbo].[fs_Collect_Rule]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fs_Collect_Rule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RuleName] [nvarchar](50) NOT NULL,
	[OldContent] [nvarchar](100) NOT NULL,
	[ReContent] [nvarchar](100) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[IgnoreCase] [bit] NOT NULL,
	[ChannelID] [nvarchar](12) NULL,
 CONSTRAINT [PK_fs_Rule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[XYP_GetFieldByWhere]    Script Date: 10/03/2011 19:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_GetFieldByWhere]
(
   @strTable varchar(50),
   @strField varchar(500),
   @strWhere varchar(5000)
) 
as

  declare @sql varchar (6000)

    set @sql = 'select ' + @strField + ' from ' + @strTable + '' +@strWhere
    exec (@sql)
GO
/****** Object:  Table [dbo].[n_NewsDiscuss]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[n_NewsDiscuss](
	[ND_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NULL,
	[U_Name] [varchar](30) NULL,
	[NS_ID] [bigint] NOT NULL,
	[ND_Content] [varchar](5000) NOT NULL,
	[ND_AddTime] [datetime] NOT NULL,
	[ND_IsShow] [bit] NOT NULL,
	[IPAddress] [varchar](50) NULL,
	[IPIsShow] [bit] NOT NULL,
 CONSTRAINT [PK__n_NewsDiscuss__1995C0A8] PRIMARY KEY CLUSTERED 
(
	[ND_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_PageView]    Script Date: 10/03/2011 19:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_PageView]
@tbname     sysname,             --要分页显示的表名
@FieldKey   nvarchar(1000),      --用于定位记录的主键(惟一键)字段,可以是逗号分隔的多个字段
@PageCurrent int=1,              --要显示的页码
@PageSize   int=10,              --每页的大小(记录数)
@FieldShow  nvarchar(1000)='',   --以逗号分隔的要显示的字段列表,如果不指定,则显示所有字段
@FieldOrder  nvarchar(1000)='',  --以逗号分隔的排序字段列表,可以指定在字段后面指定DESC/ASC用于指定排序顺序
@Where     nvarchar(1000)='',    --查询条件
@PageCount  int OUTPUT           --总页数
AS
SET NOCOUNT ON
--检查对象是否有效
IF OBJECT_ID(@tbname) IS NULL
BEGIN
    RAISERROR(N'对象"%s"不存在',1,16,@tbname)
    RETURN
END
IF OBJECTPROPERTY(OBJECT_ID(@tbname),N'IsTable')=0
    AND OBJECTPROPERTY(OBJECT_ID(@tbname),N'IsView')=0
    AND OBJECTPROPERTY(OBJECT_ID(@tbname),N'IsTableFunction')=0
BEGIN
    RAISERROR(N'"%s"不是表、视图或者表值函数',1,16,@tbname)
    RETURN
END

--分页字段检查
IF ISNULL(@FieldKey,N'')=''
BEGIN
    RAISERROR(N'分页处理需要主键（或者惟一键）',1,16)
    RETURN
END

--其他参数检查及规范
IF ISNULL(@PageCurrent,0)<1 SET @PageCurrent=1
IF ISNULL(@PageSize,0)<1 SET @PageSize=10
IF ISNULL(@FieldShow,N'')=N'' SET @FieldShow=N'*'
IF ISNULL(@FieldOrder,N'')=N''
    SET @FieldOrder=N''
ELSE
    SET @FieldOrder=N'ORDER BY '+LTRIM(@FieldOrder)
IF ISNULL(@Where,N'')=N''
    SET @Where=N''
ELSE
    SET @Where=N'WHERE ('+@Where+N')'

--如果@PageCount为NULL值,则计算总页数(这样设计可以只在第一次计算总页数,以后调用时,把总页数传回给存储过程,避免再次计算总页数,对于不想计算总页数的处理而言,可以给@PageCount赋值)
IF @PageCount IS NULL
BEGIN
    DECLARE @sql nvarchar(4000)
    SET @sql=N'SELECT @PageCount=COUNT(*)'
        +N' FROM '+@tbname
        +N' '+@Where
    EXEC sp_executesql @sql,N'@PageCount int OUTPUT',@PageCount OUTPUT
    SET @PageCount=(@PageCount+@PageSize-1)/@PageSize
END

--计算分页显示的TOPN值
DECLARE @TopN varchar(20),@TopN1 varchar(20)
SELECT @TopN=@PageSize,
    @TopN1=@PageCurrent*@PageSize

--第一页直接显示
IF @PageCurrent=1
    EXEC(N'SELECT TOP '+@TopN
        +N' '+@FieldShow
        +N' FROM '+@tbname
        +N' '+@Where
        +N' '+@FieldOrder)
ELSE
BEGIN
    --生成主键(惟一键)处理条件
    DECLARE @Where1 nvarchar(4000),@s nvarchar(1000)
    SELECT @Where1=N'',@s=@FieldKey
    WHILE CHARINDEX(N',',@s)>0
        SELECT @s=STUFF(@s,1,CHARINDEX(N',',@s),N''),
            @Where1=@Where1
                +N' AND a.'+LEFT(@s,CHARINDEX(N',',@s)-1)
                +N'='+LEFT(@s,CHARINDEX(N',',@s)-1)
    SELECT @Where1=STUFF(@Where1+N' AND a.'+@s+N'='+@s,1,5,N''),
        @TopN=@TopN1-@PageSize

    --执行查询
    EXEC(N'SET ROWCOUNT '+@TopN1
        +N' SELECT '+@FieldKey
        +N' INTO # FROM '+@tbname
        +N' '+@Where
        +N' '+@FieldOrder
        +N' SET ROWCOUNT '+@TopN
        +N' DELETE FROM #'
        +N' SELECT '+@FieldShow
        +N' FROM '+@tbname
        +N' a WHERE EXISTS(SELECT * FROM # WHERE '+@Where1
        +N') '+@FieldOrder)
END
GO
/****** Object:  Table [dbo].[u_FictitiouConsumptionInfo]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[u_FictitiouConsumptionInfo](
	[FC_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[FC_Count] [money] NOT NULL,
	[FC_Time] [datetime] NOT NULL,
	[FC_Explain] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[FC_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_ShowInfo]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_ShowInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[infotitle] [varchar](100) NOT NULL,
	[typeid] [int] NOT NULL,
	[contents] [ntext] NOT NULL,
	[BeginTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[District] [varchar](500) NOT NULL,
	[Site] [varchar](500) NULL,
	[sponsor] [varchar](500) NOT NULL,
	[undertake] [varchar](500) NULL,
	[coorganizor] [varchar](2000) NULL,
	[sustain] [varchar](2000) NULL,
	[Sycle] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[URL] [varchar](100) NULL,
	[Area] [varchar](50) NULL,
	[unitPrice] [int] NULL,
	[leastRation] [int] NULL,
	[areaTotal] [int] NULL,
	[IsCommend] [bit] NOT NULL,
	[addInfoTime] [datetime] NOT NULL,
	[HtmlPage] [varchar](200) NULL,
	[IsHasImage] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateColumuByWhere]    Script Date: 10/03/2011 19:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   proc [dbo].[Usp_UpdateColumuByWhere]
	@TableName varchar(100),
	@ColumuName varchar(100),
	@ColumuValue varchar(500),
	@StrWhere varchar(500)
as
declare @Sql varchar(2000)
begin tran tr
	begin
		set @Sql='update '+@TableName+' set '+@ColumuName+' = '+ ' ' +convert(varchar(500),@ColumuValue) +' '+ @StrWhere
		Exec(@Sql)
	end
	if(@@error>0)
		begin
			rollback tran tr
			return -2
		end
commit
GO
/****** Object:  Table [dbo].[fs_Collect_Site]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fs_Collect_Site](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SiteName] [nvarchar](50) NOT NULL,
	[objURL] [nvarchar](250) NOT NULL,
	[Encode] [nvarchar](50) NOT NULL,
	[OtherPara] [nvarchar](50) NULL,
	[MaxNum] [int] NOT NULL,
	[ListSetting] [nvarchar](4000) NULL,
	[LinkSetting] [nvarchar](4000) NULL,
	[OtherType] [int] NULL,
	[OtherPageSetting] [nvarchar](4000) NULL,
	[StartPageNum] [int] NULL,
	[EndPageNum] [int] NULL,
	[PagebodySetting] [nvarchar](4000) NULL,
	[PageTitleSetting] [nvarchar](4000) NULL,
	[OtherNewsType] [int] NULL,
	[OtherNewsPageSetting] [nvarchar](4000) NULL,
	[AuthorSetting] [nvarchar](4000) NULL,
	[SourceSetting] [nvarchar](4000) NULL,
	[AddDateSetting] [nvarchar](4000) NULL,
	[IsAutoCollect] [bit] NOT NULL,
	[CollectDate] [int] NULL,
	[TextTF] [bit] NOT NULL,
	[SaveRemotePic] [bit] NOT NULL,
	[Audit] [int] NOT NULL,
	[IsStyle] [bit] NOT NULL,
	[IsDIV] [bit] NOT NULL,
	[IsA] [bit] NOT NULL,
	[IsClass] [bit] NOT NULL,
	[IsFont] [bit] NOT NULL,
	[IsSpan] [bit] NOT NULL,
	[IsObject] [bit] NOT NULL,
	[IsIFrame] [bit] NOT NULL,
	[IsScript] [bit] NOT NULL,
	[IsReverse] [bit] NOT NULL,
	[IsAutoPicNews] [bit] NOT NULL,
	[HandSetAuthor] [nvarchar](50) NULL,
	[HandSetSource] [nvarchar](50) NULL,
	[HandSetAddDate] [datetime] NULL,
	[Folder] [int] NULL,
	[ClassID] [nvarchar](12) NOT NULL,
	[ChannelID] [nvarchar](12) NULL,
 CONSTRAINT [PK_fs_Site] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteByWhere]    Script Date: 10/03/2011 19:32:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_DeleteByWhere]
	@strwhere varchar(500), 
	@strTableName varchar(500)
as
	begin tran trdelete
	declare @Sql varchar(400)
	declare @ID varchar(20)
	set @Sql = 'delete  from '+ @strTableName +' '+@strwhere
	execute(@Sql)
	commit tran
	if @@trancount > 0
	begin
		rollback tran
	end
GO
/****** Object:  Table [dbo].[u_Barnd]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[u_Barnd](
	[B_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[PT_ID] [bigint] NOT NULL,
	[B_Type] [varchar](200) NOT NULL,
	[B_Vouch] [bit] NULL,
	[B_IsAuditing] [bit] NULL,
	[B_HtmlPage] [varchar](500) NOT NULL,
	[B_Remark] [varchar](8000) NULL,
	[B_ClickNum] [int] NOT NULL,
	[addtime] [datetime] NOT NULL,
	[B_MessageNum] [int] NULL,
	[B_NoMessageNum] [int] NULL,
	[AuditingState] [int] NULL,
	[IsHasImage] [int] NOT NULL,
 CONSTRAINT [PK_u_Barnd] PRIMARY KEY CLUSTERED 
(
	[B_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateInAttachmentByDescTabID]    Script Date: 10/03/2011 19:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[XYP_UpdateInAttachmentByDescTabID]
	@At_ID varchar(100),
	@DescTabID bigint
as

	Declare @Sql  varchar(1000)

	Set @Sql = 'update pl_Attachment set DescTabID ='+Convert(varchar(10),@DescTabID)+' where At_ID in ('+@At_ID+')'
	
	Exec(@Sql)

	if(@@error>0)
			return -2
GO
/****** Object:  Table [dbo].[XY_UserDomain]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_UserDomain](
	[InfoId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Domain] [varchar](200) NOT NULL,
	[ICPInfo] [varchar](200) NOT NULL,
	[AuditingState] [smallint] NOT NULL,
	[AddDate] [datetime] NOT NULL,
 CONSTRAINT [PK_XY_UserDomain] PRIMARY KEY CLUSTERED 
(
	[InfoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_ProductType]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_ProductType](
	[PT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PT_Name] [varchar](100) NOT NULL,
	[PT_ParentID] [bigint] NOT NULL,
	[ModuleName] [varchar](50) NOT NULL,
	[FullId] [varchar](500) NOT NULL,
	[InfoCount] [int] NOT NULL,
	[TradeId] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[FlagName] [varchar](50) NULL,
	[IsCustomTemplate] [bit] NOT NULL,
	[Baikeid] [int] NULL,
 CONSTRAINT [PK_b_ptid] PRIMARY KEY CLUSTERED 
(
	[PT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateClickNum]    Script Date: 10/03/2011 19:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   proc [dbo].[XYP_UpdateClickNum]
	@TableName varchar(100),
	@ColumuName varchar(100),
	@StrWhere varchar(500)
as
declare @Sql varchar(2000)
begin tran tr
	begin
		set @Sql='update '+@TableName+' set '+@ColumuName+' = '+ ' ' +@ColumuName +' +1'+ @StrWhere
		Exec(@Sql)
	end
	if(@@error>0)
		begin
			rollback tran tr
			return -2
		end
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_CommonSelect]    Script Date: 10/03/2011 19:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_CommonSelect]
(
  @Top varchar(5),
  @Columns varchar(2000),
  @Table varchar(50),
  @Where varchar(1000),
  @Order varchar(100)
)
AS
begin
	declare @sql varchar(4000)

	set @sql = 'select '

	if ''<>@Top and @Top <> '0'
		set @sql = @sql + ' top ' + @Top + ' '

	if ''=@Columns
		set @sql = @sql + ' * '
	else
		set @sql = @sql + ' ' + @Columns + ' '

	set @sql = @sql + ' from ' + @Table + ' '

	If @Where <> ''
		set @sql = @sql + ' where ' + @Where + ' '

	If @Order <> ''
		set @sql = @sql + ' Order By  ' + @Order + ' '

	execute(@sql)
end
GO
/****** Object:  Table [dbo].[p_Product]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[p_Product](
	[P_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[P_FaLanStandard] [varchar](50) NOT NULL,
	[P_FaLanMaterial] [varchar](50) NULL,
	[P_StandardID] [varchar](50) NULL,
	[P_GeneralDia] [decimal](18, 0) NULL,
	[P_GeneralForce] [decimal](18, 0) NULL,
 CONSTRAINT [PK_p_Product] PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XYP_CommonDelete]    Script Date: 10/03/2011 19:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- 删除信息

-- 创建标识：刘甲20080422

-- 参数：
-- @TableName		要操作的表名称
-- @Where			条件语句

-- 返回值：
-- -1:条件不能为空
-- =============================================
CREATE PROCEDURE [dbo].[XYP_CommonDelete]
(
	@TableName	varchar(20),
	@Where		varchar(200)
)
AS	
	if '' = @Where
		begin
			return -1	
		end
	else
		begin

			declare @Sql varchar(400)
			set @Sql = 'delete  from '+ @TableName +' where '+@Where
			execute(@Sql)

		end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateServicePause]    Script Date: 10/03/2011 19:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateServicePause]
(
  @strwhere varchar(600)
)
AS

	begin	
    declare @SQL varchar(1000)
	set @SQL = 'UPDATE i_ServiceInfo  SET S_Pause=0'+' '+@strwhere
    end
    execute(@SQL)
GO
/****** Object:  StoredProcedure [dbo].[usp_PublicUpdate]    Script Date: 10/03/2011 19:32:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_PublicUpdate]
(
  @strwhere varchar(300),---修改条件
  @tablename varchar(50),---表名
  @content varchar(400)---修改内容
)
AS
	
	begin	
    declare @SQL varchar(1000)
	set @SQL = 'UPDATE '+@tablename+' SET '+@content+' '+@strwhere
    end
    execute(@SQL)
GO
/****** Object:  Table [dbo].[XY_AdTrafficLog]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_AdTrafficLog](
	[LogId] [bigint] IDENTITY(1,1) NOT NULL,
	[Adid] [bigint] NOT NULL,
	[IP] [varchar](100) NOT NULL,
	[Date] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XYP_SelectByWhere]    Script Date: 10/03/2011 19:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_SelectByWhere]
(
  @strTop	varchar(10) = '',
  @strTableName varchar(50), 
  @strWhere varchar(2000),
  @strOrder varchar(50)
)
AS
 declare @sql varchar(4000)
 begin
 set @sql= 'select '
 if @strTop<>''
 begin
	set @sql= @sql +	' top ' + @strTop + ' '
 end
 set @sql= @sql +	' * from '+ @strTableName+' ' + @strWhere+@strOrder
 execute(@sql)
 end
GO
/****** Object:  Table [dbo].[b_AdInfo]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_AdInfo](
	[AD_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AD_Name] [varchar](200) NOT NULL,
	[AP_ID] [int] NOT NULL,
	[AD_LinkURL] [varchar](500) NOT NULL,
	[AD_Type] [smallint] NOT NULL,
	[AD_OpenType] [bit] NOT NULL,
	[AD_NoteText] [varchar](5000) NULL,
	[AD_CodeContent] [varchar](8000) NULL,
	[AD_PicURL] [varchar](500) NULL,
	[AD_Alt] [varchar](5000) NULL,
	[AD_Width] [int] NOT NULL,
	[AD_High] [int] NULL,
	[AD_Letter] [varchar](200) NULL,
	[AD_Font] [varchar](50) NULL,
	[AD_Size] [int] NULL,
	[AD_Color] [varchar](50) NULL,
	[AD_JSname] [varchar](200) NULL,
	[AD_Isuse] [bit] NOT NULL,
	[Ad_StartDate] [datetime] NOT NULL,
	[Ad_EndDate] [datetime] NULL,
	[Ad_Traffic] [int] NOT NULL,
 CONSTRAINT [PK_b_AdInfo] PRIMARY KEY CLUSTERED 
(
	[AD_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XYP_GetRecordCount]    Script Date: 10/03/2011 19:32:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     procedure [dbo].[XYP_GetRecordCount]
@strTable varchar (50),
@strField varchar (50),
@strWhere varchar (7500),
@strCount bigint output
as
declare @sql varchar (8000) 

set @sql = ' select '+ @strField + ' from '+ @strTable + ' ' + @strWhere
exec (@sql)

set @strCount = @@rowcount
GO
/****** Object:  Table [dbo].[u_Invoice]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[u_Invoice](
	[I_ID] [int] IDENTITY(1,1) NOT NULL,
	[I_Name] [varchar](100) NOT NULL,
	[I_Address] [varchar](100) NOT NULL,
	[I_PostCode] [varchar](100) NOT NULL,
	[I_Money] [money] NOT NULL,
	[I_Title] [varchar](200) NOT NULL,
	[I_Content] [varchar](8000) NOT NULL,
	[I_Product] [varchar](100) NOT NULL,
	[I_IsFlag] [smallint] NULL,
	[I_Reason] [varchar](1000) NULL,
	[U_ID] [bigint] NULL,
	[I_Advice] [varchar](1000) NULL,
	[I_Addtime] [datetime] NOT NULL,
 CONSTRAINT [PK_u_Invoice] PRIMARY KEY CLUSTERED 
(
	[I_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_Ranking]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_Ranking](
	[RId] [int] IDENTITY(1,1) NOT NULL,
	[KeyId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[InfoIds] [varchar](100) NOT NULL,
	[BeginTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Amount] [decimal](18, 0) NOT NULL,
	[Rank] [smallint] NOT NULL,
 CONSTRAINT [PK_XY_RankingState] PRIMARY KEY CLUSTERED 
(
	[RId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XYP_SelectByPage]    Script Date: 10/03/2011 19:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_SelectByPage]
	@PageSize int,
	@PageIndex int,
	@strWhere varchar(7500), 
	@strOrder varchar(50), 
	@strTableName varchar(50),
	@strPrimaryKey varchar(50),
	@strColumuName varchar(4000)
as
	set nocount on
	begin
		create table #indexTable(id int identity(1,1),nid int)
		declare @PageLowerBound int 
		declare @PageUpperBound int 
			 
		set @PageLowerBound = (@PageIndex - 1) * @PageSize
		set @PageUpperBound = @PageLowerBound + @PageSize
		declare @Sql varchar(8000)
		set @Sql = 'insert into #indexTable (nid) select  '+ @strPrimaryKey +'  from ' + @strTableName + @strWhere + @strOrder
		execute(@Sql)
		set @Sql = 'select b.' + @strColumuName +' from '+ @strTableName + ' b, #indexTable it where b.'+ @strPrimaryKey + ' = it.nid and it.id > ' + str(@PageLowerBound) + ' and it.id <= ' + str(@PageUpperBound) + ' order by it.id '
		execute(@Sql)
	end
	set nocount off
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectGetFullid]    Script Date: 10/03/2011 19:32:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_SelectGetFullid]
(
	@Ename varchar(50),
	@id	   varchar(50)  
)
as

begin
	
	Declare @SQL varchar(500)
	
	if (@Ename = 'offer')
		Set @SQL = 'Select fullid from b_ProductType  where  PT_ID='+@id+''

	if (@Ename = 'machining')
		Set @SQL = 'Select fullid from i_MachiningType  where  MT_ID='+@id+''

	if (@Ename = 'investment')
		Set @SQL = 'Select fullid from i_InviteBusinessType  where  IT_ID='+@id+''

	if (@Ename = 'service')
		Set @SQL = 'Select fullid from  i_ServiceType  where  ST_ID='+@id+''

	if (@Ename = 'exhibition')
		Set @SQL = 'Select fullid from i_showType  where SHT_ID='+@id+''

	if (@Ename = 'brand')
		Set @SQL = 'Select fullid from XY_BrandType  where  ID='+@id+''

	if (@Ename = 'news')
		Set @SQL = 'Select fullid from n_NewsTitleInfo  where  NT_ID='+@id+''

	if (@Ename = 'job')
		Set @SQL = 'Select fullid from  b_post where  P_ID='+@id+''

	if (@Ename = 'company')
		Set @SQL = 'Select fullid from  b_userType where ut_ID ='+@id+''

	if (@Ename = 'area')
		Set @SQL = 'Select fullid from xy_area  where  ID='+@id+''

	if (@Ename = 'trade')
		Set @SQL = 'Select fullid from  xy_trade where  ID='+@id+''

	Exec(@Sql)
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateMessageNum]    Script Date: 10/03/2011 19:34:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   proc [dbo].[XYP_UpdateMessageNum]
	@TableName varchar(100),
	@ColumuNameinfo varchar(100),
	@ColumuName varchar(100),
	@StrWhere varchar(500)
as
declare @Sql varchar(2000)
begin tran tr
	begin
		set @Sql='update '+@TableName+' set '+@ColumuNameinfo+' = '+ ' ' +@ColumuNameinfo +' +1,'+ @ColumuName+' = '+ ' ' +@ColumuName +' +1'+  @StrWhere
		Exec(@Sql)
	end
	if(@@error>0)
		begin
			rollback tran tr
			return -2
		end
commit
GO
/****** Object:  Table [dbo].[n_NewsAuthor]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[n_NewsAuthor](
	[NA_ID] [int] IDENTITY(1,1) NOT NULL,
	[NA_Name] [varchar](200) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[n_News]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[n_News](
	[NS_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[NS_Type] [smallint] NOT NULL,
	[NS_NewsName] [varchar](200) NOT NULL,
	[NS_TwoName] [varchar](200) NULL,
	[NS_TitleStyle] [varchar](100) NOT NULL,
	[NS_Sort] [smallint] NULL,
	[NT_ID] [varchar](200) NOT NULL,
	[NS_KeyWord] [varchar](200) NOT NULL,
	[NS_LinkAddress] [varchar](200) NULL,
	[NS_PicUrl] [varchar](200) NULL,
	[NS_NewsAuthor] [varchar](50) NULL,
	[NS_NewsOrigin] [varchar](200) NULL,
	[NS_NewsLess] [varchar](4000) NULL,
	[NS_NewsNote] [text] NULL,
	[NS_AddTime] [datetime] NOT NULL,
	[NS_Count] [int] NOT NULL,
	[NS_IsCommand] [bit] NOT NULL,
	[NS_HTMLPage] [varchar](500) NULL,
	[NS_IsDiscuss] [bit] NULL,
	[NS_IsTop] [bit] NULL,
	[NS_IsHot] [bit] NULL,
	[NS_IsSlide] [bit] NULL,
	[TopicType] [varchar](500) NULL,
	[Contributor] [bigint] NULL,
	[AuditingState] [int] NULL,
	[IsHasImage] [int] NOT NULL,
	[AreaIds] [varchar](200) NULL,
	[TradeIds] [varchar](200) NOT NULL,
	[UM_ID] [int] NOT NULL,
	[FileUrl] [varchar](200) NOT NULL,
	[ProtypeIds] [varchar](200) NOT NULL,
 CONSTRAINT [PK_n_Nsid] PRIMARY KEY CLUSTERED 
(
	[NS_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XYP_GetTopByWhere]    Script Date: 10/03/2011 19:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_GetTopByWhere]
(
	@strWhere varchar(7000), 
	@strOrder varchar(500), 
	@strTableName varchar(100),
	@strColumuName varchar(7000),
	@strTopNum int
)
as

declare @sql varchar(8000)
begin		 	
	set @sql = 'select top '+str(@strTopNum)+' '+ @strColumuName+' from '+ @strTableName+' ' + @strWhere+' '+@strOrder
	execute(@sql)
end
GO
/****** Object:  Table [dbo].[n_NewsOrigin]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[n_NewsOrigin](
	[NO_ID] [int] IDENTITY(1,1) NOT NULL,
	[NO_Name] [varchar](200) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_UserFirendLink]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_UserFirendLink](
	[LinkId] [int] IDENTITY(1,1) NOT NULL,
	[Url] [varchar](200) NOT NULL,
	[LogoUrl] [varchar](200) NULL,
	[SiteName] [varchar](50) NOT NULL,
	[UserID] [bigint] NOT NULL,
 CONSTRAINT [PK_XY_UserFirendLink] PRIMARY KEY CLUSTERED 
(
	[LinkId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[XYP_Pagination]    Script Date: 10/03/2011 19:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_Pagination]
( 
@TableName  sysname,           
@PrimaryKey sysname,               
@CurPage	int=1,                 
@PageSize   int=10,                
@Fields		nvarchar(1000)='',      
@FieldOrder nvarchar(100)='',    
@Where     nvarchar(4000)='',     
@TotalRecord  int OUTPUT            
)

AS

DECLARE @sql nvarchar(4000)
SET NOCOUNT ON


--其他参数检查及规范
IF ISNULL(@CurPage,0)<1 SET @CurPage=1
IF ISNULL(@PageSize,0)<1 SET @PageSize=10
IF ISNULL(@Fields,N'')=N'' SET @Fields=N'*'

IF ISNULL(@FieldOrder,N'')=N''
    SET @FieldOrder=N''
ELSE
    SET @FieldOrder=N'ORDER BY '+LTRIM(@FieldOrder)

IF ISNULL(@Where,N'')=N''
    SET @Where=N''
ELSE
    SET @Where=N'WHERE ('+@Where+N')'


IF @TotalRecord IS NULL
BEGIN
    SET @sql=N' SELECT @TotalRecord=COUNT(1)'
        +N' FROM '+@TableName
        +N' '+@Where
    EXEC sp_executesql @sql,N'@TotalRecord int OUTPUT',@TotalRecord OUTPUT
END

DECLARE @TopN varchar(20),@TopN1 varchar(20)
SELECT @TopN=@PageSize,
    @TopN1=@CurPage*@PageSize    

IF @CurPage=1
    EXEC(N' SELECT TOP '+@TopN
        +N' '+@Fields
        +N' FROM '+@TableName
        +N' '+@Where
        +N' '+@FieldOrder)
ELSE
BEGIN
    SELECT @CurPage=@TopN1,
        @sql=N' SELECT @n=@n-1,@s=CASE WHEN @n<'+@TopN
            +N' THEN @s+N'',''+QUOTENAME(RTRIM(CAST('+@PrimaryKey
            +N' as varchar(8000))),N'''''''') ELSE N'''' END FROM '+@TableName
            +N' '+@Where
            +N' '+@FieldOrder

    SET ROWCOUNT @CurPage
    EXEC sp_executesql @sql,
        N'@n int,@s nvarchar(4000) OUTPUT',
        @CurPage,@sql OUTPUT
    SET ROWCOUNT 0

    IF @sql=N''
        EXEC(N' SELECT TOP 0'
            +N' '+@Fields
            +N' FROM '+@TableName)
    ELSE
    BEGIN
        SET @sql=STUFF(@sql,1,1,N'')        

        EXEC(N' SELECT TOP '+@TopN
            +N' '+@Fields
            +N' FROM '+@TableName
            +N' WHERE '+@PrimaryKey
            +N' IN('+@sql
            +N') '+@FieldOrder)
    END
END
GO
/****** Object:  Table [dbo].[pl_Favorite]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pl_Favorite](
	[Fa_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[DescTabID] [bigint] NOT NULL,
	[DescTabName] [varchar](50) NOT NULL,
	[At_PulishDate] [datetime] NOT NULL,
 CONSTRAINT [PK_pl_Favorite] PRIMARY KEY CLUSTERED 
(
	[Fa_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[u_JobResume]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[u_JobResume](
	[ER_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[EI_ID] [bigint] NOT NULL,
	[RE_AddDate] [datetime] NOT NULL,
	[RE_Estate] [int] NULL,
	[RE_Seedate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[u_InputMoneyInfo]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[u_InputMoneyInfo](
	[IM_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UM_ID] [bigint] NOT NULL,
	[FT_ID] [bigint] NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[IM_Count] [money] NOT NULL,
	[PM_ID] [int] NOT NULL,
	[IM_Time] [datetime] NOT NULL,
	[OrderID] [varchar](50) NULL,
	[PlatformFlag] [varchar](50) NULL,
 CONSTRAINT [PK_u_InputMoneyInfo] PRIMARY KEY CLUSTERED 
(
	[IM_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fs_Collect_SiteFolder]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fs_Collect_SiteFolder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SiteFolder] [nvarchar](50) NOT NULL,
	[SiteFolderDetail] [ntext] NULL,
	[ChannelID] [nvarchar](12) NULL,
 CONSTRAINT [PK_fs_SiteFolder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[XYP_AutomatchInfoByKeyword]    Script Date: 10/03/2011 19:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
CREATE PROCEDURE [dbo].[XYP_AutomatchInfoByKeyword]
@keyword varchar(100),
@UserId bigint,
@Module varchar(50),
@ParentModule varchar(50),
@SellFlag varchar(20)

AS
BEGIN
	
	Declare @SQL varchar(500)
	
	If(@ParentModule ='offer')
		Set @SQL = 'Select SD_ID as infoId,SD_Title as infoTitle,SD_Flag as infoFlag From xyv_Supply where moduleName='''+@Module+''' and AuditingState = 1 and SD_Flag in('+@SellFlag+') and U_id = '+Convert(varchar(50),@UserId)+' and SD_Title like ''%'+@keyword+'%'' order by len(SD_Title) asc'
	
	If(@ParentModule ='machining')
		Set @SQL = 'Select SD_ID as infoId,SD_Title as infoTitle,SD_Flag as infoFlag From xyv_demand where moduleName='''+@Module+''' and AuditingState = 1 and SD_Flag in('+@SellFlag+') and U_id = '+Convert(varchar(50),@UserId)+' and SD_Title like ''%'+@keyword+'%'' order by len(SD_Title) asc'

	If(@ParentModule ='investment')
		Set @SQL = 'Select IBI_ID as infoId,IBI_Title as infoTitle,IBI_Sign as infoFlag From XYV_InviteBusinessmanInfo where moduleName='''+@Module+''' and AuditingState = 1 and IBI_Sign in('+@SellFlag+') and U_id = '+Convert(varchar(50),@UserId)+' and IBI_Title like ''%'+@keyword+'%'' order by len(IBI_Title) asc'

	If(@ParentModule ='service')
		Set @SQL = 'Select S_ID as infoId,S_Title as infoTitle,S_Flag as infoFlag From XYV_serviceINfo where moduleName='''+@Module+''' and AuditingState = 1 and S_Flag in('+@SellFlag+')  and U_id = '+Convert(varchar(50),@UserId)+' and S_Title like ''%'+@keyword+'%'' order by len(S_Title) asc'

	Exec(@SQL)
END
GO
/****** Object:  Table [dbo].[u_Individual]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[u_Individual](
	[U_ID] [bigint] NOT NULL,
	[UI_Name] [varchar](30) NOT NULL,
	[UI_Sex] [bit] NOT NULL,
	[UI_Code] [char](18) NOT NULL,
	[Area_ID] [int] NOT NULL,
	[UI_Address] [varchar](500) NOT NULL,
	[Telephone] [varchar](200) NOT NULL,
	[UI_Postcode] [char](6) NOT NULL,
	[UI_Mobil] [varchar](100) NOT NULL,
	[UI_Flag] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pl_Message]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pl_Message](
	[M_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[M_Email] [varchar](50) NULL,
	[M_UserName] [varchar](50) NULL,
	[M_CompanyName] [varchar](100) NULL,
	[M_PHMa] [varchar](200) NULL,
	[M_Moblie] [varchar](11) NULL,
	[M_FHM] [varchar](200) NULL,
	[M_Adress] [varchar](200) NULL,
	[Area_ID] [int] NULL,
	[M_Title] [varchar](500) NULL,
	[M_Content] [varchar](5000) NULL,
	[U_ID] [bigint] NULL,
	[M_HasReply] [bit] NULL,
	[UR_ID] [bigint] NULL,
	[M_RecverType] [varchar](50) NULL,
	[M_SenderType] [varchar](50) NULL,
	[M_UserType] [bit] NULL,
	[M_AddTime] [datetime] NOT NULL,
	[M_Sex] [bit] NULL,
	[M_Restore] [bit] NULL,
	[InfoID] [bigint] NULL,
 CONSTRAINT [PK_pl_Message] PRIMARY KEY CLUSTERED 
(
	[M_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_TopicClass]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_TopicClass](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_XY_TopicClass] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_UserAnnounce]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_UserAnnounce](
	[AnnounceID] [int] IDENTITY(1,1) NOT NULL,
	[Centent] [varchar](1000) NULL,
	[UserID] [bigint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_Post]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_Post](
	[P_ID] [int] IDENTITY(1,1) NOT NULL,
	[P_Name] [varchar](50) NOT NULL,
	[P_ParentID] [int] NOT NULL,
	[FullId] [varchar](500) NOT NULL,
	[InfoCount] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
 CONSTRAINT [PK_b_Post] PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_Finance]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_Finance](
	[F_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[U_Name] [varchar](100) NOT NULL,
	[UM_ID] [int] NOT NULL,
	[M_Money] [money] NOT NULL,
	[FT_ID] [int] NOT NULL,
	[F_Remark] [varchar](2000) NULL,
	[addtime] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[proc_paged_2part_selectMax]    Script Date: 10/03/2011 19:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[proc_paged_2part_selectMax] 
@TableName varchar(50),         --表名
@Fields varchar(5000) = '*',     --字段名(全部字段为*)
@OrderField varchar(5000),         --排序字段(必须!支持多字段)
@sqlWhere varchar(5000) = Null,--条件语句(不用加where)
@pageSize int,                     --每页多少条记录
@pageIndex int = 1 ,             --指定当前为第几页
@TotalPage int OUTPUT,             --返回总页数 
@Counts    int = 1 output                ----查询到的记录数 
AS
begin
     Begin Tran --开始事务

     Declare @sql nvarchar(4000);
     Declare @totalRecord int;    

     --计算总记录数
         
     if (@SqlWhere='' or @sqlWhere=NULL)
         set @sql = 'select @totalRecord = count(*) from ' + @TableName
     else
         set @sql = 'select @totalRecord = count(*) from ' + @TableName + ' where ' + @sqlWhere

     EXEC sp_executesql @sql,N'@totalRecord int OUTPUT',@totalRecord OUTPUT--计算总记录数        
    
     --计算总页数
     select @TotalPage=CEILING((@totalRecord+0.0)/@PageSize)
	 set	@Counts=@totalRecord
     if (@SqlWhere='' or @sqlWhere=NULL)
         set @sql = 'Select * FROM (select ROW_NUMBER() Over(order by ' + @OrderField + ') as rowId,' + @Fields + ' from ' + @TableName 
     else
         set @sql = 'Select * FROM (select ROW_NUMBER() Over(order by ' + @OrderField + ') as rowId,' + @Fields + ' from ' + @TableName + ' where ' + @SqlWhere    
        
    
     --处理页数超出范围情况
     if @PageIndex<=0 
         Set @pageIndex = 1
    
     if @pageIndex>@TotalPage
         Set @pageIndex = @TotalPage

      --处理开始点和结束点
     Declare @StartRecord int
     Declare @EndRecord int
    
     set @StartRecord = (@pageIndex-1)*@PageSize + 1
     set @EndRecord = @StartRecord + @pageSize - 1

     --继续合成sql语句
     set @Sql = @Sql + ') as ' + @TableName + ' where rowId between ' + Convert(varchar(50),@StartRecord) + ' and ' +   Convert(varchar(50),@EndRecord)
    
     EXEC (@Sql)
     ---------------------------------------------------
     If @@Error <> 0
       Begin
         RollBack Tran
         Return -1
       End
      Else
       Begin
         Commit Tran
         Return @totalRecord 
       End    
end
GO
/****** Object:  Table [dbo].[u_Account]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[u_Account](
	[UGR_ID] [int] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[UGR_Money] [money] NOT NULL,
	[UGR_LeftMoney] [money] NOT NULL,
	[addtime] [datetime] NOT NULL,
 CONSTRAINT [PK_u_Account] PRIMARY KEY CLUSTERED 
(
	[UGR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[u_user_userlogs]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[u_user_userlogs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[logID] [nvarchar](12) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[content] [ntext] NULL,
	[creatTime] [datetime] NOT NULL,
	[dateNum] [smallint] NULL,
	[LogDateTime] [datetime] NULL,
	[userNum] [nvarchar](15) NULL,
 CONSTRAINT [PK_u_user_userlogs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[b_Template]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_Template](
	[T_ID] [smallint] IDENTITY(1,1) NOT NULL,
	[T_Name] [varchar](50) NOT NULL,
	[T_Path] [varchar](500) NOT NULL,
	[T_Author] [varchar](500) NOT NULL,
	[T_AddDate] [varchar](20) NOT NULL,
	[T_Copyright] [varchar](100) NOT NULL,
	[T_Ver] [varchar](100) NOT NULL,
	[T_Flag] [bit] NOT NULL,
 CONSTRAINT [PK_b_Template] PRIMARY KEY CLUSTERED 
(
	[T_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[i_MachiningType]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[i_MachiningType](
	[MT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MT_Name] [varchar](100) NOT NULL,
	[MT_ParentID] [bigint] NOT NULL,
	[ModuleName] [varchar](50) NOT NULL,
	[FullID] [varchar](500) NOT NULL,
	[InfoCount] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
 CONSTRAINT [PK__i_MachiningType__4FFCBE51] PRIMARY KEY CLUSTERED 
(
	[MT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[u_notes]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[u_notes](
	[notesid] [int] IDENTITY(1,1) NOT NULL,
	[notescontent] [ntext] NULL,
	[Usernum] [nchar](15) NULL,
 CONSTRAINT [PK_u_notes] PRIMARY KEY CLUSTERED 
(
	[notesid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[b_AdPlaceInfo]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_AdPlaceInfo](
	[AP_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AP_Name] [varchar](200) NOT NULL,
	[AP_Alt] [varchar](5000) NULL,
	[AT_ID] [int] NOT NULL,
	[AP_IsUse] [bit] NOT NULL,
 CONSTRAINT [PK_b_AdPlaceInfo] PRIMARY KEY CLUSTERED 
(
	[AP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_SearchKey]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_SearchKey](
	[SK_ID] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[SK_Name] [varchar](50) NOT NULL,
	[SK_Sort] [varchar](50) NOT NULL,
	[SK_Count] [bigint] NOT NULL,
	[SK_IsCommend] [bit] NOT NULL,
	[SK_IsRanking] [bit] NOT NULL,
	[SK_CustomPrice] [varchar](50) NOT NULL,
	[SK_AddTime] [datetime] NOT NULL,
	[SK_LastSearchTime] [datetime] NULL,
 CONSTRAINT [PK__b_SearchKey__5D6BC808] PRIMARY KEY CLUSTERED 
(
	[SK_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XY_FieldContentoffer]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XY_FieldContentoffer](
	[C_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[pinpai] [varchar](50) NULL,
	[paihao] [varchar](50) NULL,
	[yongtujibie] [varchar](50) NULL,
	[waiguan] [varchar](50) NULL,
	[midu] [varchar](50) NULL,
	[rowquekou] [varchar](50) NULL,
	[rebianxing] [varchar](50) NULL,
	[jiagongfangshi] [varchar](50) NULL,
	[wanqumoliang] [varchar](50) NULL,
	[wanquqiangdu] [varchar](50) NULL,
	[ruanhuadian] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[i_EngageInfo]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[i_EngageInfo](
	[EI_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[P_ID] [int] NOT NULL,
	[EI_Job] [varchar](50) NOT NULL,
	[EI_Branch] [varchar](50) NULL,
	[EI_EndDate] [datetime] NOT NULL,
	[EI_Type] [varchar](50) NULL,
	[Province_ID] [int] NOT NULL,
	[C_ID] [int] NOT NULL,
	[Area_ID] [int] NULL,
	[EI_Request] [varchar](2000) NOT NULL,
	[EI_Pay] [varchar](50) NOT NULL,
	[EI_Eb] [varchar](50) NOT NULL,
	[EI_Age] [varchar](20) NOT NULL,
	[EI_Sex] [varchar](4) NOT NULL,
	[EI_Experience] [varchar](10) NOT NULL,
	[EI_Nationality] [varchar](200) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[EI_AddDate] [datetime] NOT NULL,
	[EI_ClickNum] [int] NULL,
	[EI_Puach] [bit] NULL,
	[EI_Number] [int] NULL,
	[EI_HTMLPage] [varchar](500) NULL,
	[EI_Vouch] [bit] NULL,
	[AuditingState] [int] NULL,
 CONSTRAINT [PK_i_engageinfo] PRIMARY KEY CLUSTERED 
(
	[EI_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[i_ShowType]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[i_ShowType](
	[SHT_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SHT_Name] [varchar](100) NOT NULL,
	[SHT_ParentID] [bigint] NOT NULL,
	[FullID] [varchar](500) NOT NULL,
	[InfoCount] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
 CONSTRAINT [PK__i_CooperateType__03B16C81] PRIMARY KEY CLUSTERED 
(
	[SHT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[b_Pro_property]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[b_Pro_property](
	[PT_Proid] [bigint] IDENTITY(1,1) NOT NULL,
	[PT_ID] [bigint] NOT NULL,
	[PT_EName] [varchar](100) NOT NULL,
	[PT_Othername] [varchar](500) NULL,
	[PT_OtherEname] [varchar](500) NULL,
	[PT_Cas_rn] [varchar](100) NULL,
	[PT_Einecs] [varchar](100) NULL,
	[PT_fenzi] [varchar](100) NULL,
	[PT_Fenzi_weight] [varchar](100) NULL,
	[PT_Danger] [varchar](100) NULL,
	[PT_Hazard] [varchar](100) NULL,
	[PT_Safe_Terminology] [varchar](400) NULL,
	[PT_Wuhuaxingzhi] [text] NULL,
	[PT_yongtu] [text] NULL,
	[PT_topmaterial] [varchar](500) NULL,
	[PT_usept] [varchar](500) NULL,
	[PT_Addtime] [datetime] NOT NULL,
	[PT_Editetime] [datetime] NULL,
 CONSTRAINT [PK_b_Pro_property] PRIMARY KEY CLUSTERED 
(
	[PT_Proid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[u_GradeRelation]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[u_GradeRelation](
	[UR_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[U_ID] [bigint] NOT NULL,
	[UGR_ID] [smallint] NOT NULL,
	[U_BeginTime] [datetime] NOT NULL,
	[U_EndTime] [varchar](50) NULL,
	[U_Money] [money] NULL,
	[UR_Flag] [bit] NULL,
 CONSTRAINT [PK_u_graderelation] PRIMARY KEY CLUSTERED 
(
	[UR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fs_Collect_RuleApply]    Script Date: 10/03/2011 19:31:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fs_Collect_RuleApply](
	[SiteID] [int] NOT NULL,
	[RuleID] [int] NOT NULL,
	[RefreshTime] [datetime] NOT NULL,
 CONSTRAINT [PK_fs_Collect_RuleRender] PRIMARY KEY CLUSTERED 
(
	[SiteID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[XYV_FriendLink]    Script Date: 10/03/2011 19:32:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_FriendLink]
AS
SELECT     b_FriendLink.FL_ID, b_FriendLink.FL_Type, b_FriendLink.FL_Font, b_FriendLink.FL_URL, b_FriendLink.FL_Alt, 
                      b_FriendLink.FL_Flag, b_FriendLink.FL_AddDate, pl_Attachment.At_ID, pl_Attachment.At_Path, b_Server.S_URL, 
                      b_FriendLink.FS_ID, b_FriendLinkSort.FS_Name, b_FriendLinkSort.FS_PID, b_FriendLink.FL_IsCommend
FROM         pl_Attachment LEFT OUTER JOIN
                      b_Server ON pl_Attachment.S_ID = b_Server.S_ID RIGHT OUTER JOIN
                      b_FriendLinkSort INNER JOIN
                      b_FriendLink ON b_FriendLinkSort.FS_ID = b_FriendLink.FS_ID ON pl_Attachment.DescTabID = b_FriendLink.FL_ID AND 
                      pl_Attachment.DescTabName = 'b_FriendLink' OR pl_Attachment.DescTabName IS NULL
GO
/****** Object:  View [dbo].[XYV_Attachment]    Script Date: 10/03/2011 19:32:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_Attachment]
AS
SELECT     pl_Attachment.At_ID, pl_Attachment.DescTabID, pl_Attachment.DescTabName, pl_Attachment.At_Path, 
                      pl_Attachment.At_FileFormat, pl_Attachment.At_FileType, pl_Attachment.At_Index, pl_Attachment.At_PulishDate, 
                      pl_Attachment.At_Remark, pl_Attachment.S_ID, b_Server.S_URL, b_Server.S_Path, b_Server.S_Name, b_Server.S_IsCurrent, 
                      pl_Attachment.ThumbnailImg
FROM         b_Server RIGHT OUTER JOIN
                      pl_Attachment ON b_Server.S_ID = pl_Attachment.S_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertServer]    Script Date: 10/03/2011 19:33:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[XYP_InsertServer]
(
        
       @S_Name varchar(50),
        @S_Path varchar(500),
        @S_URL varchar(500),
        @S_IsCurrent bit,
	@S_Flag bit
)
AS
   declare @count int 
select @count=count(S_ID) from b_server where S_Name=@S_Name and S_Path = @S_Path and S_URL = @S_URL
if @count >0
return -1
else
   begin
   begin tran tr
   begin
	if 1 = @S_IsCurrent
	begin
		update b_server set S_IsCurrent=0 where S_Flag=@S_Flag
	end

   INSERT INTO b_server(
	[S_Name],[S_Path],[S_URL],S_IsCurrent,S_Flag
	)VALUES(
	@S_Name,@S_Path,@S_URL,@S_IsCurrent,@S_Flag
	)

   end
   if @@error <> 0
   begin
   rollback tran tr
   return -2
   end
   end
   commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateDefaultServer]    Script Date: 10/03/2011 19:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- 更新默认服务器状态

-- 创建标识：刘甲20080428

-- 参数：
-- @ID			要修改记录的ID值

-- 返回值：
-- 
-- =============================================
CREATE PROCEDURE [dbo].[XYP_UpdateDefaultServer]
(
  @ID int
)
AS
   begin
   begin tran tr
	declare @Flag bit
	select @Flag=s_Flag from b_Server where s_id = @ID
	update b_Server set s_IsCurrent=0 where s_Flag=@Flag
	update b_Server set s_IsCurrent=1 where s_id = @ID
     if @@error <> 0
       begin
             rollback tran tr
             return -2
       end
     end
  commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateServer]    Script Date: 10/03/2011 19:34:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[XYP_UpdateServer]
        @S_ID smallint,
        @S_Name varchar(50),
        @S_Path varchar(500),
        @S_URL varchar(500)
 AS 
	
  begin
        begin tran tr
        begin
      UPDATE b_Server SET 
	  [S_Name]=@S_Name,[S_Path]=@S_Path,[S_URL]=@S_URL
	  WHERE S_ID=@S_ID
        end
	if @@error <> 0
	begin
		rollback tran tr
		return -2
	end
	end
	commit
GO
/****** Object:  View [dbo].[XYV_AdInfo]    Script Date: 10/03/2011 19:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_AdInfo]
AS
SELECT     b_Server.S_URL, pl_Attachment.At_ID, pl_Attachment.At_Path, b_AdPlaceInfo.AP_Name, b_AdInfo.AD_ID, b_AdInfo.AD_Name, 
                      b_AdInfo.AP_ID, b_AdInfo.AD_LinkURL, b_AdInfo.AD_Type, b_AdInfo.AD_OpenType, b_AdInfo.AD_NoteText, 
                      b_AdInfo.AD_CodeContent, b_AdInfo.AD_PicURL, b_AdInfo.AD_Alt, b_AdInfo.AD_Width, b_AdInfo.AD_High, b_AdInfo.AD_Letter, 
                      b_AdInfo.AD_Font, b_AdInfo.AD_Size, b_AdInfo.AD_Color, b_AdInfo.AD_JSname, b_AdInfo.AD_Isuse, b_AdInfo.Ad_StartDate, 
                      b_AdInfo.Ad_EndDate, b_AdInfo.Ad_Traffic
FROM         b_Server RIGHT OUTER JOIN
                      b_AdInfo LEFT OUTER JOIN
                      b_AdPlaceInfo ON b_AdInfo.AP_ID = b_AdPlaceInfo.AP_ID LEFT OUTER JOIN
                      pl_Attachment ON b_AdInfo.AD_ID = pl_Attachment.DescTabID AND pl_Attachment.DescTabName = 'b_AdInfo' ON 
                      b_Server.S_ID = pl_Attachment.S_ID
GO
/****** Object:  View [dbo].[XYV_UserNews]    Script Date: 10/03/2011 19:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_UserNews]
AS
SELECT     u_News.N_ID, u_News.N_title, u_News.N_content, u_News.U_ID, u_News.N_addtime, u_UserInfo.UI_Name, 
                      u_UserInfo.Area_ID, u_UserInfo.UI_License, u_UserInfo.UI_Area, u_UserInfo.UI_Character, u_UserInfo.UI_LinkMan, 
                      u_UserInfo.UI_Number, u_UserInfo.UI_HomePage, u_UserInfo.UI_Synopsis, u_UserInfo.UI_Postcode, u_UserInfo.UI_Mobil, 
                      u_UserInfo.U_Section, u_UserInfo.U_Post, u_UserInfo.U_Way, u_UserInfo.U_SupplyProduct, u_UserInfo.U_BuyProduct, 
                      u_UserInfo.U_Mode, u_UserInfo.U_Money, u_UserInfo.U_Year, u_UserInfo.U_Address, u_UserInfo.U_PType, 
                      u_UserInfo.U_MoneyType, u_UserInfo.IM, u_UserInfo.Telephone, u_UserInfo.Fax, u_User.U_Name, u_User.U_Email, 
                      u_User.U_HtmlPage, u_User.U_RegDate, u_User.U_ClickNum, u_User.UG_ID, b_UserGrade.UG_Order, 
                      u_User.UserAuditingState, u_News.AuditingState
FROM         u_News INNER JOIN
                      u_User ON u_News.U_ID = u_User.U_ID INNER JOIN
                      b_UserGrade ON b_UserGrade.UG_ID = u_User.UG_ID INNER JOIN
                      u_UserInfo ON u_UserInfo.U_ID = u_User.U_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUserNews]    Script Date: 10/03/2011 19:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateUserNews]
	@N_ID int ,
	@N_title  varchar(100),
	@N_content  varchar(8000)
AS

    UPDATE u_news SET N_title = @N_title, N_content=@N_content WHERE (N_ID = @N_ID)

	if @@error <> 0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertUserNews]    Script Date: 10/03/2011 19:33:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertUserNews]
(
	@U_ID bigint,
	@N_title  varchar(100),
	@N_content  varchar(8000),
	@AuditingState int
 )	
AS
	declare @coun int 
	select @coun=count(U_ID) from u_news where  N_title=@N_title and U_ID=@U_ID

	if @coun >0
		return -1

	insert into u_news(U_ID,N_title,N_content,AuditingState) values(@U_ID,@N_title,@N_content,@AuditingState)  

	if @@error <>0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdatesAuditing]    Script Date: 10/03/2011 19:34:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdatesAuditing]
(
  @DescTabID bigint,
  @DescTabName varchar(50),
  @Auditingstate bigint
)
AS
    if(@DescTabName='i_supply')
    	update i_supply set AuditingState=@Auditingstate where SD_ID=@DescTabID 

	if(@DescTabName='i_Demand')
    	update i_Demand set AuditingState=@Auditingstate where SD_ID=@DescTabID 

	if(@DescTabName='i_ServiceInfo')
    	update i_ServiceInfo  set AuditingState=@Auditingstate where S_ID=@DescTabID 

	if(@DescTabName='i_InviteBusinessmanInfo')
    	update i_InviteBusinessmanInfo set AuditingState=@Auditingstate where IBI_ID=@DescTabID 

	if(@DescTabName='u_Barnd')
    	update u_Barnd set AuditingState=@Auditingstate where B_ID=@DescTabID 

	if(@DescTabName='i_engageinfo')
    	update i_engageinfo set AuditingState=@Auditingstate where EI_ID=@DescTabID 

	if(@DescTabName='u_user')
    	update u_user set UserAuditingState=@Auditingstate where U_ID=@DescTabID 

	if(@DescTabName='n_news')
    	update n_news set AuditingState=@Auditingstate where NS_ID=@DescTabID 

	if(@DescTabName='i_EngageInfo')
    	update i_EngageInfo set AuditingState=@Auditingstate where EI_ID=@DescTabID 

	if(@DescTabName='U_Certificate')
    	update u_Certificate set AuditingState=@Auditingstate where CE_ID=@DescTabID 

	if(@DescTabName='u_Remit')
    	update u_Remit set AuditingState=@Auditingstate where R_ID=@DescTabID 
	
	if(@DescTabName='u_News')
    	update u_News set AuditingState=@Auditingstate where N_ID=@DescTabID 

	if(@DescTabName='XY_UserDomain')
    	update XY_UserDomain set AuditingState=@Auditingstate where InfoId=@DescTabID
GO
/****** Object:  View [dbo].[XYV_AddMoneyInfo]    Script Date: 10/03/2011 19:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_AddMoneyInfo]
AS
SELECT     u_InputMoneyInfo.IM_ID, u_InputMoneyInfo.U_ID, u_InputMoneyInfo.IM_Count, 
                      CASE u_InputMoneyInfo.PM_ID WHEN - 1 THEN '在线充值' ELSE b_PayMathod.PM_Name END AS PM_Name, 
                      u_InputMoneyInfo.IM_Time, u_InputMoneyInfo.PM_ID
FROM         u_InputMoneyInfo LEFT OUTER JOIN
                      b_PayMathod ON u_InputMoneyInfo.PM_ID = b_PayMathod.PM_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdatePayMathod]    Script Date: 10/03/2011 19:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdatePayMathod]
(
@PM_ID int ,
@PM_Name varchar(200),
@PM_Remark  varchar(8000)
)
as
begin
 begin tran tr
   update b_PayMathod set PM_Name=@PM_Name ,PM_Remark=@PM_Remark where PM_ID=@PM_ID
  if @@error <>0 
    begin
     rollback tran 
     end 
     commit
     end
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertPayMathod]    Script Date: 10/03/2011 19:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_InsertPayMathod]
(
@PM_ID   int ,
@PM_Name varchar(50),
@PM_Remark varchar(8000)
)
as
declare @count int 
select @count=count(PM_Name) from b_PayMathod where PM_Name=@PM_Name
if @count >0
begin 
return 1
end 
else
begin 
 begin tran tr
   insert into b_PayMathod(PM_Name,PM_Remark) values(@PM_Name,@PM_Remark) 
   if @@error <>0
       begin
		rollback tran tr
		return -2
		end
		commit
   end
GO
/****** Object:  View [dbo].[XYV_FictitiouaCount]    Script Date: 10/03/2011 19:32:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_FictitiouaCount]
AS
SELECT u_FictitiouCount.*, u_User.U_Name
FROM u_User RIGHT OUTER JOIN
      u_FictitiouCount ON u_User.U_ID = u_FictitiouCount.U_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateConsumption]    Script Date: 10/03/2011 19:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE        procedure [dbo].[XYP_UpdateConsumption]
(
    @U_ID bigint,
    @NS_ID bigint,
    @ConsumeFictitiouMoney money,  
    @ConsumeAccountMoney money,
    @AC_Explain varchar(250),
    @FC_Explain varchar(250)
)
as

    begin tran tr
        declare @money money      
     begin 
         set @money = (select UGR_LeftMoney from u_Account where U_ID=@U_ID)
       if @ConsumeAccountMoney < @money
          begin
              set @money = (select C_LeftMoney from u_FictitiouCount where U_ID=@U_ID)
            if @ConsumeFictitiouMoney < @money
               begin
                  update u_FictitiouCount set  C_LeftMoney=C_LeftMoney-@ConsumeFictitiouMoney where U_ID=@U_ID
                  update u_Account set UGR_LeftMoney=UGR_LeftMoney-@ConsumeAccountMoney where U_ID=@U_ID
       
                 if @@error = 0
                   begin
                     insert into u_FictitiouConsumptionInfo (U_ID,FC_Count,FC_Explain) values (@U_ID,@ConsumeFictitiouMoney,@FC_Explain)
                     insert into u_AccountConsumptionInfo (U_ID,AC_Count,AC_Explain) values (@U_ID,@ConsumeAccountMoney,@AC_Explain)
                     insert into n_ChargeNewsInfo (U_ID,NS_ID) values (@U_ID,@NS_ID)
                   
                   
                      if @@error <> 0
                        begin
                          rollback tran tr
                          return -2
                        end
                   end
                 else
                   begin 
                     rollback tran tr
                     return -2
                   end
               end 
            else
               begin
                 rollback tran tr
                 return -1
               end 
          end
       else
          begin
             rollback tran tr
             return -1
          end
  end
 commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_RefreshInfo]    Script Date: 10/03/2011 19:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[XYP_RefreshInfo]

@ModuleName varchar(20),		--模块名称
@InfoType varchar(50),			--信息类型
@InfoId bigint,					--信息ID
@UserId bigint,					--用户Id
@AddWebMoneyCount money,		--刷新信息给用户新增的虚拟币个数
@Result nvarchar(100) output	--返回结果	

AS
	Declare @TimeSpanByInfo int				--单条信息刷新时间间隔(分钟)
	Declare @InfoCountByDay int				--一天内最多允许刷新的信息条数
	Declare @RefreshNumbersByDay int		--一天内一条信息最多刷新次数

	Declare @UserGradeId int				--用户等级ID
	
	Declare @IntradayRefreshCount int 		--用户当天刷新的信息条数
	Declare @IntradayRefreshNumbers	int		--用户当天刷新的次数(针对一天信息)
	Declare @LastRefreshTime smalldatetime	--最后一次刷新时间(针对一条信息)
	Declare @EnabledDays int				--有效天数(针对一条信息)

	--获取用户等级信息
	Select @UserGradeId = UG_ID From U_User where U_ID = @UserId 

	If @UserGradeId <=0 
		Begin
			Set @Result= '异常失败！请重新刷新！'
			Return
		End

	--获取相关权限信息
	Select	@TimeSpanByInfo			= UGP_RefurbishTime,
			@InfoCountByDay			= UGP_RefubishNum,
			@RefreshNumbersByDay	= UGP_RefubishTimes
	From b_UserGradePopedom
	Where UG_ID = @UserGradeId

	--删除过期数据
	Delete From XY_InfoRefreshLog Where Datediff(dd,lastRefreshTime,GetDate()) <> 0

	--获取用户当天刷新的信息条数
	Select @IntradayRefreshCount = Count(ID)
	From XY_InfoRefreshLog
	Where UserId = @UserId And ModuleName = @ModuleName And Datediff(dd,lastRefreshTime,GetDate()) = 0


	Begin Tran	

	--如果当天的刷新条数小于最大刷新条数	
	If @IntradayRefreshCount < @InfoCountByDay
		Begin
			If Not Exists(Select Id From XY_InfoRefreshLog Where UserId = @UserId And ModuleName = @ModuleName and InfoId = @InfoId)
				Begin
					Insert into XY_InfoRefreshLog(UserId,InfoId,ModuleName,IntradayNumbers,LastRefreshTime)
					Values (@UserID,@InfoId,@ModuleName,1,getdate())
				End
			Else
				Begin
					Select @IntradayRefreshNumbers = IntradayNumbers,@LastRefreshTime = LastRefreshTime
					From XY_InfoRefreshLog
					Where UserId = @UserId And ModuleName = @ModuleName and InfoId = @InfoId

					If 	@IntradayRefreshNumbers >=@RefreshNumbersByDay
						Begin
							Set @Result= '刷新失败，一条信息一天内最多只能刷新' + Convert(nvarchar(20),@RefreshNumbersByDay) + '次！'
							RollBack Tran
							Return 
						End

					If Datediff(minute,@LastRefreshTime,getdate()) <=@TimeSpanByInfo
						Begin 
							Set @Result =  '刷新失败，单条信息刷新时间间隔必须在' + Convert(nvarchar(20),@TimeSpanByInfo) + '分钟以上！'
							RollBack Tran
							Return							
						End	

					--刷新日志
					Update XY_InfoRefreshLog 
					Set IntradayNumbers = IntradayNumbers + 1,
						LastRefreshTime = GetDate()
					Where UserId = @UserId And @ModuleName = ModuleName and InfoId = @InfoId
				End
		End

	--如果当天的刷新条数小于最大刷新条数
	If @IntradayRefreshCount >= @InfoCountByDay
		Begin	
			If Not Exists(Select Id From XY_InfoRefreshLog Where UserId = @UserId And ModuleName = @ModuleName and InfoId = @InfoId)
				Begin
					Set @Result= '刷新失败，一天内最多允许刷新' + Convert(nvarchar(20),@InfoCountByDay) + '条信息！'
					RollBack Tran
					Return 
				End

			Select @IntradayRefreshNumbers = IntradayNumbers,@LastRefreshTime = LastRefreshTime
			From XY_InfoRefreshLog
			Where UserId = @UserId And ModuleName = @ModuleName and InfoId = @InfoId

			If 	@IntradayRefreshNumbers >=@RefreshNumbersByDay
				Begin
					Set @Result= '刷新失败，一条信息一天内最多只能刷新' + Convert(nvarchar(20),@RefreshNumbersByDay) + '次！'
					RollBack Tran
					Return 
				End

			If Datediff(minute,@LastRefreshTime,getdate()) <=@TimeSpanByInfo
				Begin 
					Set @Result =  '刷新失败，单条信息刷新时间间隔必须在' + Convert(nvarchar(20),@TimeSpanByInfo) + '分钟以上！'
					RollBack Tran
					Return							
				End	

			--刷新日志
			Update XY_InfoRefreshLog 
			Set IntradayNumbers = IntradayNumbers + 1,
				LastRefreshTime = GetDate()
			Where UserId = @UserId And @ModuleName = ModuleName and InfoId = @InfoId
		End

	
	--刷新信息
	If(@InfoType ='offer')
		Begin
			Select @EnabledDays = SD_Date From i_Supply Where SD_ID = @InfoID
			If(@EnabledDays=0)
				Update i_Supply Set SD_publishDate = Getdate() Where SD_ID = @InfoID
			Else
				Update i_Supply Set SD_publishDate = Getdate(),SD_EndDate = DateAdd(day,@EnabledDays,GetDate()) Where SD_ID = @InfoID
		End

	If(@InfoType ='machining')
		Begin
			Select @EnabledDays = SD_Date From i_demand Where SD_ID = @InfoID
			If(@EnabledDays=0)
				Update i_demand Set SD_publishDate = Getdate() Where SD_ID = @InfoID
			Else
				Update i_demand Set SD_publishDate = Getdate(),SD_EndDate = DateAdd(day,@EnabledDays,GetDate()) Where SD_ID = @InfoID
		End

	If(@InfoType ='investment')
		Begin
			Select @EnabledDays = IBI_EndDate From i_InviteBusinessmanInfo Where IBI_ID = @InfoID
			If(@EnabledDays=0)
				Update i_InviteBusinessmanInfo Set IBI_PublishDate = GetDate() where IBI_ID = @InfoID
			Else
				Update i_InviteBusinessmanInfo Set IBI_PublishDate = GetDate(),IBI_EndTime=DateAdd(day,@EnabledDays,GetDate()) where IBI_ID = @InfoID
		End

	If(@InfoType='service')	
		Begin
			Select @EnabledDays = S_EndDate From i_ServiceInfo Where S_ID = @InfoID
			If(@EnabledDays=0)
				Update i_ServiceInfo Set S_AddTime = GetDate() where S_ID = @InfoID
			Else
				Update i_ServiceInfo Set S_AddTime = GetDate(),S_EndTime=DateAdd(day,@EnabledDays,GetDate()) where S_ID = @InfoID
		End

	If(@InfoType='job')	
		Begin
			Update i_engageinfo Set EI_AddDate = GetDate() where EI_ID = @InfoID
		End

	--给用户新增虚拟币
	IF(@AddWebMoneyCount <>0)
		Update  u_FictitiouCount  
		set C_SumMoney=C_SumMoney+@AddWebMoneyCount,C_LeftMoney=C_LeftMoney+@AddWebMoneyCount 
		where U_ID=@UserId

	If @@Error <> 0
		Begin		
			Set @Result= '刷新失败！请重新刷新！'
			RollBack Tran
			Return
		End				

	Commit Tran
	Set @Result= '刷新成功！'
	Return
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateFictitiouMoney]    Script Date: 10/03/2011 19:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdateFictitiouMoney]
@U_ID  bigint,
@Money  money 
as
begin 
begin tran tr
update  u_FictitiouCount  set C_SumMoney=C_SumMoney+@Money  ,C_LeftMoney=C_LeftMoney+@Money where U_ID=@U_ID
if @@error <> 0
begin 
rollback tran tr
return -2
end 
end 
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdatedeDuctFictitiouMoney]    Script Date: 10/03/2011 19:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdatedeDuctFictitiouMoney]
@U_ID  bigint,
@Money   money 
as
begin 
begin tran tr
update  u_FictitiouCount  set  C_SumMoney=C_SumMoney-@Money, C_LeftMoney=C_LeftMoney-@Money    where U_ID=@U_ID
if @@error <> 0
begin 
rollback tran tr
return -2
end 
end 
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertFictitiouCount]    Script Date: 10/03/2011 19:33:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[XYP_InsertFictitiouCount]
@U_ID bigint ,
@C_SumMoney money,
@C_LeftMoney  money

as

begin
begin tran tr
insert into u_FictitiouCount  (U_ID,C_SumMoney,C_LeftMoney)  values(@U_ID,@C_SumMoney,@C_LeftMoney)
end 
if @@error <>0
begin 
rollback tran tr
end 
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertUser]    Script Date: 10/03/2011 19:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertUser]
(
    @U_ID bigint output,
	@U_Name varchar(50),
	@U_Email varchar(100),
	@U_PassWord varchar(50),
	@U_Question varchar(50),
	@U_Answer varchar(50),
	@UG_ID int ,
    @U_Flag bit
)
AS
	declare @Count int
	select @Count = count(U_ID) from u_User where U_Name=@U_Name
	if @Count >0
		return -1

	INSERT INTO u_User(U_Name, U_Email, U_PassWord, U_Question, U_Answer,UG_ID,U_Flag)       
	VALUES 
	(@U_Name, @U_Email,  @U_PassWord, @U_Question, @U_Answer,@UG_ID,@U_Flag)


	if @@error<>0
		return -2

	set @U_ID= @@identity
	insert into u_Account (U_ID,UGR_Money,UGR_LeftMoney) values(@U_ID,0,0)
	insert into u_FictitiouCount(U_ID,C_SumMoney,C_LeftMoney)  values(@U_ID,0,0)

	if @@error <>0 
		return -2
GO
/****** Object:  View [dbo].[XYV_ReceiveBusinessMessage]    Script Date: 10/03/2011 19:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_ReceiveBusinessMessage]
AS
SELECT     u_User.U_ID AS R_ID, '加工' AS type, i_Demand.SD_Title AS Title, u_User.U_Name AS R_Name, pl_Message.M_ID, 
                      pl_Message.M_Email, pl_Message.M_UserName, pl_Message.M_CompanyName, pl_Message.M_PHMa, 
                      pl_Message.M_Moblie, pl_Message.M_FHM, pl_Message.M_Adress, pl_Message.Area_ID, pl_Message.M_Title, 
                      pl_Message.M_Content, pl_Message.U_ID, pl_Message.M_HasReply, pl_Message.UR_ID, pl_Message.M_RecverType, 
                      pl_Message.M_SenderType, pl_Message.M_UserType, pl_Message.M_AddTime, pl_Message.M_Sex, 
                      pl_Message.M_Restore
FROM         pl_Message LEFT OUTER JOIN
                      i_Demand ON pl_Message.UR_ID = i_Demand.SD_ID LEFT OUTER JOIN
                      u_User ON i_Demand.U_ID = u_User.U_ID
WHERE     (pl_Message.M_SenderType = 'machining')
UNION
SELECT     u_User_4.U_ID AS R_ID, '招商' AS type, i_InviteBusinessmanInfo.IBI_Title AS Title, u_User_4.U_Name AS R_Name, pl_Message_3.M_ID, 
                      pl_Message_3.M_Email, pl_Message_3.M_UserName, pl_Message_3.M_CompanyName, pl_Message_3.M_PHMa, pl_Message_3.M_Moblie, 
                      pl_Message_3.M_FHM, pl_Message_3.M_Adress, pl_Message_3.Area_ID, pl_Message_3.M_Title, pl_Message_3.M_Content, pl_Message_3.U_ID, 
                      pl_Message_3.M_HasReply, pl_Message_3.UR_ID, pl_Message_3.M_RecverType, pl_Message_3.M_SenderType, pl_Message_3.M_UserType, 
                      pl_Message_3.M_AddTime, pl_Message_3.M_Sex, pl_Message_3.M_Restore
FROM         u_User AS u_User_4 RIGHT OUTER JOIN
                      u_User AS u_User_1 RIGHT OUTER JOIN
                      pl_Message AS pl_Message_3 LEFT OUTER JOIN
                      i_InviteBusinessmanInfo ON pl_Message_3.UR_ID = i_InviteBusinessmanInfo.IBI_ID ON u_User_1.U_ID = pl_Message_3.U_ID ON 
                      u_User_4.U_ID = i_InviteBusinessmanInfo.U_ID
WHERE     (pl_Message_3.M_SenderType = 'investment')
UNION
SELECT     u_User_3.U_ID AS R_ID, '供求' AS type, i_Supply.SD_Title AS Title, u_User_3.U_Name AS R_Name, pl_Message_2.M_ID, 
                      pl_Message_2.M_Email, pl_Message_2.M_UserName, pl_Message_2.M_CompanyName, pl_Message_2.M_PHMa, pl_Message_2.M_Moblie, 
                      pl_Message_2.M_FHM, pl_Message_2.M_Adress, pl_Message_2.Area_ID, pl_Message_2.M_Title, pl_Message_2.M_Content, pl_Message_2.U_ID, 
                      pl_Message_2.M_HasReply, pl_Message_2.UR_ID, pl_Message_2.M_RecverType, pl_Message_2.M_SenderType, pl_Message_2.M_UserType, 
                      pl_Message_2.M_AddTime, pl_Message_2.M_Sex, pl_Message_2.M_Restore
FROM         u_User AS u_User_1 RIGHT OUTER JOIN
                      pl_Message AS pl_Message_2 ON u_User_1.U_ID = pl_Message_2.U_ID LEFT OUTER JOIN
                      i_Supply ON pl_Message_2.UR_ID = i_Supply.SD_ID LEFT OUTER JOIN
                      u_User AS u_User_3 ON i_Supply.U_ID = u_User_3.U_ID
WHERE     (pl_Message_2.M_SenderType = 'offer')
UNION
SELECT     u_User_2.U_ID AS R_ID, '服务' AS type, i_Supply_1.SD_Title AS Title, u_User_2.U_Name AS R_Name, pl_Message_1.M_ID, pl_Message_1.M_Email, 
                      pl_Message_1.M_UserName, pl_Message_1.M_CompanyName, pl_Message_1.M_PHMa, pl_Message_1.M_Moblie, pl_Message_1.M_FHM, 
                      pl_Message_1.M_Adress, pl_Message_1.Area_ID, pl_Message_1.M_Title, pl_Message_1.M_Content, pl_Message_1.U_ID, 
                      pl_Message_1.M_HasReply, pl_Message_1.UR_ID, pl_Message_1.M_RecverType, pl_Message_1.M_SenderType, pl_Message_1.M_UserType, 
                      pl_Message_1.M_AddTime, pl_Message_1.M_Sex, pl_Message_1.M_Restore
FROM         pl_Message AS pl_Message_1 LEFT OUTER JOIN
                      i_Supply AS i_Supply_1 ON pl_Message_1.UR_ID = i_Supply_1.SD_ID LEFT OUTER JOIN
                      u_User AS u_User_2 ON i_Supply_1.U_ID = u_User_2.U_ID
WHERE     (pl_Message_1.M_SenderType = 'service')
GO
/****** Object:  View [dbo].[XYV_RecverManage]    Script Date: 10/03/2011 19:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_RecverManage]
AS
SELECT     u_User.U_ID AS R_ID, '网站' AS type, '管理员' AS Title, u_User.U_Name AS R_Name, pl_Message.M_ID, pl_Message.M_Email, 
                      pl_Message.M_UserName, pl_Message.M_CompanyName, pl_Message.M_PHMa, pl_Message.M_Moblie, pl_Message.M_FHM, 
                      pl_Message.M_Adress, pl_Message.Area_ID, pl_Message.M_Title, pl_Message.M_Content, pl_Message.U_ID, 
                      pl_Message.M_HasReply, pl_Message.UR_ID, pl_Message.M_RecverType, pl_Message.M_SenderType, 
                      pl_Message.M_UserType, pl_Message.M_AddTime, pl_Message.M_Sex, pl_Message.M_Restore, pl_Message.InfoID
FROM         u_User AS u_User_1 RIGHT OUTER JOIN
                      pl_Message ON u_User_1.U_ID = pl_Message.U_ID LEFT OUTER JOIN
                      u_User ON pl_Message.UR_ID = u_User.U_ID
WHERE     (pl_Message.M_SenderType = 'administrator')
UNION
SELECT     u_User_9.U_ID AS R_ID, '用户' AS type, '管理员' AS Title, u_User_9.U_Name AS R_Name, pl_Message_8.M_ID, pl_Message_8.M_Email, 
                      pl_Message_8.M_UserName, pl_Message_8.M_CompanyName, pl_Message_8.M_PHMa, pl_Message_8.M_Moblie, pl_Message_8.M_FHM, 
                      pl_Message_8.M_Adress, pl_Message_8.Area_ID, pl_Message_8.M_Title, pl_Message_8.M_Content, pl_Message_8.U_ID, 
                      pl_Message_8.M_HasReply, pl_Message_8.UR_ID, pl_Message_8.M_RecverType, pl_Message_8.M_SenderType, pl_Message_8.M_UserType, 
                      pl_Message_8.M_AddTime, pl_Message_8.M_Sex, pl_Message_8.M_Restore, pl_Message_8.InfoID
FROM         u_User AS u_User_1 RIGHT OUTER JOIN
                      pl_Message AS pl_Message_8 ON u_User_1.U_ID = pl_Message_8.U_ID LEFT OUTER JOIN
                      u_User AS u_User_9 ON pl_Message_8.UR_ID = u_User_9.U_ID
WHERE     (pl_Message_8.M_SenderType = 'user')
UNION
SELECT     u_User_8.U_ID AS R_ID, '加工' AS type, i_Demand.SD_Title AS Title, u_User_8.U_Name AS R_Name, pl_Message_7.M_ID, 
                      pl_Message_7.M_Email, pl_Message_7.M_UserName, pl_Message_7.M_CompanyName, pl_Message_7.M_PHMa, pl_Message_7.M_Moblie, 
                      pl_Message_7.M_FHM, pl_Message_7.M_Adress, pl_Message_7.Area_ID, pl_Message_7.M_Title, pl_Message_7.M_Content, pl_Message_7.U_ID, 
                      pl_Message_7.M_HasReply, pl_Message_7.UR_ID, pl_Message_7.M_RecverType, pl_Message_7.M_SenderType, pl_Message_7.M_UserType, 
                      pl_Message_7.M_AddTime, pl_Message_7.M_Sex, pl_Message_7.M_Restore, pl_Message_7.InfoID
FROM         pl_Message AS pl_Message_7 LEFT OUTER JOIN
                      i_Demand ON pl_Message_7.UR_ID = i_Demand.SD_ID LEFT OUTER JOIN
                      u_User AS u_User_8 ON i_Demand.U_ID = u_User_8.U_ID
WHERE     (pl_Message_7.M_SenderType = 'machining')
UNION
SELECT     u_User_7.U_ID AS R_ID, '招商' AS type, i_InviteBusinessmanInfo.IBI_Title AS Title, u_User_7.U_Name AS R_Name, pl_Message_6.M_ID, 
                      pl_Message_6.M_Email, pl_Message_6.M_UserName, pl_Message_6.M_CompanyName, pl_Message_6.M_PHMa, pl_Message_6.M_Moblie, 
                      pl_Message_6.M_FHM, pl_Message_6.M_Adress, pl_Message_6.Area_ID, pl_Message_6.M_Title, pl_Message_6.M_Content, pl_Message_6.U_ID, 
                      pl_Message_6.M_HasReply, pl_Message_6.UR_ID, pl_Message_6.M_RecverType, pl_Message_6.M_SenderType, pl_Message_6.M_UserType, 
                      pl_Message_6.M_AddTime, pl_Message_6.M_Sex, pl_Message_6.M_Restore, pl_Message_6.InfoID
FROM         u_User AS u_User_7 RIGHT OUTER JOIN
                      u_User AS u_User_1 RIGHT OUTER JOIN
                      pl_Message AS pl_Message_6 LEFT OUTER JOIN
                      i_InviteBusinessmanInfo ON pl_Message_6.UR_ID = i_InviteBusinessmanInfo.IBI_ID ON u_User_1.U_ID = pl_Message_6.U_ID ON 
                      u_User_7.U_ID = i_InviteBusinessmanInfo.U_ID
WHERE     (pl_Message_6.M_SenderType = 'investment')
UNION
SELECT     u_User_6.U_ID AS R_ID, '供求' AS type, i_Supply.SD_Title AS Title, u_User_6.U_Name AS R_Name, pl_Message_5.M_ID, 
                      pl_Message_5.M_Email, pl_Message_5.M_UserName, pl_Message_5.M_CompanyName, pl_Message_5.M_PHMa, pl_Message_5.M_Moblie, 
                      pl_Message_5.M_FHM, pl_Message_5.M_Adress, pl_Message_5.Area_ID, pl_Message_5.M_Title, pl_Message_5.M_Content, pl_Message_5.U_ID, 
                      pl_Message_5.M_HasReply, pl_Message_5.UR_ID, pl_Message_5.M_RecverType, pl_Message_5.M_SenderType, pl_Message_5.M_UserType, 
                      pl_Message_5.M_AddTime, pl_Message_5.M_Sex, pl_Message_5.M_Restore, pl_Message_5.InfoID
FROM         u_User AS u_User_1 RIGHT OUTER JOIN
                      pl_Message AS pl_Message_5 ON u_User_1.U_ID = pl_Message_5.U_ID LEFT OUTER JOIN
                      i_Supply ON pl_Message_5.UR_ID = i_Supply.SD_ID LEFT OUTER JOIN
                      u_User AS u_User_6 ON i_Supply.U_ID = u_User_6.U_ID
WHERE     (pl_Message_5.M_SenderType = 'offer')
UNION
SELECT     u_User_5.U_ID AS R_ID, '服务' AS type, i_Supply_1.SD_Title AS Title, u_User_5.U_Name AS R_Name, pl_Message_4.M_ID, pl_Message_4.M_Email, 
                      pl_Message_4.M_UserName, pl_Message_4.M_CompanyName, pl_Message_4.M_PHMa, pl_Message_4.M_Moblie, pl_Message_4.M_FHM, 
                      pl_Message_4.M_Adress, pl_Message_4.Area_ID, pl_Message_4.M_Title, pl_Message_4.M_Content, pl_Message_4.U_ID, 
                      pl_Message_4.M_HasReply, pl_Message_4.UR_ID, pl_Message_4.M_RecverType, pl_Message_4.M_SenderType, pl_Message_4.M_UserType, 
                      pl_Message_4.M_AddTime, pl_Message_4.M_Sex, pl_Message_4.M_Restore, pl_Message_4.InfoID
FROM         pl_Message AS pl_Message_4 LEFT OUTER JOIN
                      i_Supply AS i_Supply_1 ON pl_Message_4.UR_ID = i_Supply_1.SD_ID LEFT OUTER JOIN
                      u_User AS u_User_5 ON i_Supply_1.U_ID = u_User_5.U_ID
WHERE     (pl_Message_4.M_SenderType = 'service')
UNION
SELECT     u_User_4.U_ID AS R_ID, '品牌' AS type, u_Barnd.B_Type AS Title, u_User_4.U_Name AS R_Name, pl_Message_3.M_ID, pl_Message_3.M_Email, 
                      pl_Message_3.M_UserName, pl_Message_3.M_CompanyName, pl_Message_3.M_PHMa, pl_Message_3.M_Moblie, pl_Message_3.M_FHM, 
                      pl_Message_3.M_Adress, pl_Message_3.Area_ID, pl_Message_3.M_Title, pl_Message_3.M_Content, pl_Message_3.U_ID, 
                      pl_Message_3.M_HasReply, pl_Message_3.UR_ID, pl_Message_3.M_RecverType, pl_Message_3.M_SenderType, pl_Message_3.M_UserType, 
                      pl_Message_3.M_AddTime, pl_Message_3.M_Sex, pl_Message_3.M_Restore, pl_Message_3.InfoID
FROM         u_Barnd RIGHT OUTER JOIN
                      pl_Message AS pl_Message_3 ON u_Barnd.B_ID = pl_Message_3.UR_ID LEFT OUTER JOIN
                      u_User AS u_User_1 ON pl_Message_3.U_ID = u_User_1.U_ID CROSS JOIN
                      u_User AS u_User_4
WHERE     (pl_Message_3.M_SenderType = 'brand')
UNION
SELECT     u_User_3.U_ID AS R_ID, '网店' AS type, u_UserInfo.UI_Name AS Title, u_User_3.U_Name AS R_Name, pl_Message_2.M_ID, 
                      pl_Message_2.M_Email, pl_Message_2.M_UserName, pl_Message_2.M_CompanyName, pl_Message_2.M_PHMa, pl_Message_2.M_Moblie, 
                      pl_Message_2.M_FHM, pl_Message_2.M_Adress, pl_Message_2.Area_ID, pl_Message_2.M_Title, pl_Message_2.M_Content, pl_Message_2.U_ID, 
                      pl_Message_2.M_HasReply, pl_Message_2.UR_ID, pl_Message_2.M_RecverType, pl_Message_2.M_SenderType, pl_Message_2.M_UserType, 
                      pl_Message_2.M_AddTime, pl_Message_2.M_Sex, pl_Message_2.M_Restore, pl_Message_2.InfoID
FROM         u_UserInfo RIGHT OUTER JOIN
                      pl_Message AS pl_Message_2 LEFT OUTER JOIN
                      u_User AS u_User_3 ON pl_Message_2.UR_ID = u_User_3.U_ID ON u_UserInfo.U_ID = u_User_3.U_ID
WHERE     (pl_Message_2.M_SenderType = 'company')
GO
/****** Object:  View [dbo].[XYV_OrderForm]    Script Date: 10/03/2011 19:32:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_OrderForm]
AS
SELECT o_OrderForm.OF_ID, o_OrderForm.OF_Type, 
      o_OrderForm.OF_Money, o_OrderForm.OF_BeginTime, 
      o_OrderForm.OF_UID, i_Supply.SD_ID, i_Supply.SD_Title, 
      u_UserInfo.UI_Name AS UI_Name1, o_OrderForm.OF_Achieye, 
      o_OrderForm.OF_Code, o_OrderForm.OF_AdateTime, u_UserInfo_1.UI_Name, 
      o_OrderForm.Customer_ID, i_Supply.SD_HTMLPage, 
      u_User.U_HtmlPage, u_User_1.U_HtmlPage AS U_HtmlPage1, 
      u_User.U_Name, u_User_1.U_Name AS U_Name1
FROM o_OrderForm INNER JOIN
      i_Supply ON o_OrderForm.SD_ID = i_Supply.SD_ID INNER JOIN
      u_UserInfo ON o_OrderForm.OF_UID = u_UserInfo.U_ID INNER JOIN
      u_UserInfo u_UserInfo_1 ON 
      o_OrderForm.Customer_ID = u_UserInfo_1.U_ID INNER JOIN
      u_User ON u_UserInfo.U_ID = u_User.U_ID INNER JOIN
      u_User u_User_1 ON u_UserInfo_1.U_ID = u_User_1.U_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateInfoIsHasImage]    Script Date: 10/03/2011 19:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateInfoIsHasImage]
(
	@DescTabID bigint,
	@DescTabName varchar(50)
)
AS
	if(@DescTabName = 'i_supply')
		update i_supply set IsHasImage = (select isNull(count(*),0) From pl_attachment where DescTabName='i_supply' and DescTabId = i_supply.SD_ID) where SD_ID = @DescTabID

	if(@DescTabName = 'i_demand')
		update i_demand set IsHasImage = (select isNull(count(*),0) From pl_attachment where DescTabName='i_demand' and DescTabId = i_demand.SD_ID) where SD_ID = @DescTabID

	if(@DescTabName = 'i_invitebusinessmaninfo')
		update i_InviteBusinessmanInfo set IsHasImage = (select isNull(count(*),0) From pl_attachment where DescTabName='i_invitebusinessmaninfo' and DescTabId = i_InviteBusinessmanInfo.IBI_ID) where IBI_ID = @DescTabID

	if(@DescTabName = 'i_serviceinfo')
		update i_serviceinfo set IsHasImage = (select isNull(count(*),0) From pl_attachment where DescTabName='i_serviceinfo' and DescTabId = i_serviceinfo.S_ID) where S_ID = @DescTabID

	if(@DescTabName = 'u_barnd')
		update u_barnd set IsHasImage = (select isNull(count(*),0) From pl_attachment where DescTabName='u_barnd' and DescTabId = u_barnd.B_ID) where B_ID  = @DescTabID

	if(@DescTabName = 'u_logo' or @DescTabName = 'u_individual')
		update u_user set UserIsHasImage = (select isNull(count(*),0) From pl_attachment where (DescTabName='u_user' or DescTabName='u_Individual') and DescTabId = u_user.U_ID) where U_ID = @DescTabID

	if(@DescTabName = 'n_news')
		update n_news set IsHasImage = (select isNull(count(*),0) From pl_attachment where DescTabName='n_news' and DescTabId = n_news.NS_ID) where NS_ID = @DescTabID

	if(@DescTabName = 'xy_topic')
		update xy_topic set IsHasImage = (select isNull(count(*),0) From pl_attachment where DescTabName='xy_topic' and DescTabId = xy_topic.ID) where ID = @DescTabID

	if(@DescTabName = 'i_showinfo')
		update xy_showinfo set IsHasImage = (select isNull(count(*),0) From pl_attachment where DescTabName='i_showinfo' and DescTabId = xy_showinfo.ID) where ID = @DescTabID
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateAttachment]    Script Date: 10/03/2011 19:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateAttachment]
(
	@At_ID bigint,
	@DescTabID bigint,
	@DescTabName varchar(50),
	@At_FileFormat varchar(10),
	@At_Index tinyint,
	@At_FileType varchar(50),
	@At_Remark varchar(500),
	@At_Path	varchar(500),
	@S_ID	int,
	@ThumbnailImg	varchar(2000)
)
AS
	UPDATE [pl_Attachment] 
		SET [DescTabID] = @DescTabID, 
			[DescTabName] = @DescTabName, 
			[At_FileFormat] = @At_FileFormat, 
			[At_Index] = @At_Index, 
			[At_FileType] = @At_FileType, 
			[At_Remark] = @At_Remark ,
			[At_Path] = @At_Path,
			[S_ID]=@S_ID,
			ThumbnailImg=@ThumbnailImg
	WHERE [At_ID] = @At_ID

	if @@error <> 0
			return -2

	if(@DescTabName = 'i_supply')
		Update i_supply set IsHasImage = 1 where SD_ID = @DescTabID

	if(@DescTabName = 'i_demand')
		Update i_demand set IsHasImage = 1 where SD_ID = @DescTabID

	if(@DescTabName = 'i_invitebusinessmaninfo')
		Update i_InviteBusinessmanInfo set IsHasImage = 1 where IBI_ID = @DescTabID

	if(@DescTabName = 'i_serviceinfo')
		Update i_serviceinfo set IsHasImage = 1 where S_ID = @DescTabID

	if(@DescTabName = 'u_barnd')
		Update u_barnd set IsHasImage = 1 where B_ID = @DescTabID

	if(@DescTabName = 'u_user')
		Update u_user set UserIsHasImage = 1 where U_ID = @DescTabID

	if(@DescTabName = 'n_news')
		Update n_news set IsHasImage = 1 where NS_ID = @DescTabID

	if(@DescTabName = 'u_individual')
		Update u_user set UserIsHasImage = 1 where U_ID = @DescTabID

	if(@DescTabName = 'xy_topic')
		Update xy_topic set IsHasImage = 1 where ID = @DescTabID

	if(@DescTabName = 'i_showinfo')
		Update xy_showinfo set IsHasImage = 1 where ID = @DescTabID

	--if(@DescTabName = 'U_Certificate')
		--Update U_Certificate set IsHasImage = 1 where CE_ID = @DescTabID

	--if(@DescTabName = 'b_FriendLink')
		--Update u_user set UserIsHasImage = 1 where NS_ID = @DescTabID
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateInfoCount]    Script Date: 10/03/2011 19:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[XYP_UpdateInfoCount]

@SortFlagName varchar(20),
@SortId bigint

As
	If @SortId >0
		Begin

		if @SortFlagName = 'offer'
			Update b_productType set infoCount =(select IsNull(count(SD_ID),0) From i_supply where PT_ID = @SortId) where PT_ID = @SortId

		if @SortFlagName='machining'
			Update i_MachiningType set InfoCount =(select IsNull(count(SD_ID),0) From i_demand where MT_ID = @SortId) where MT_ID = @SortId

		if @SortFlagName='investment'
			Update i_InviteBusinessType set InfoCount =(select IsNull(count(IBI_ID),0) From i_InviteBusinessmanInfo where IT_ID = @SortId) where IT_ID = @SortId

		if @SortFlagName='service'
			Update i_ServiceType set InfoCount =(select IsNull(count(S_ID),0) From i_ServiceInfo where ST_ID = @SortId) where ST_ID = @SortId

		if @SortFlagName='exhibition'
			Update i_ShowType set InfoCount =(select IsNull(count(ID),0) From XY_ShowInfo where typeid = @SortId) where SHT_ID = @SortId

		if @SortFlagName='job'
			Update b_Post set InfoCount =(select IsNull(count(EI_ID),0) From i_EngageInfo where P_ID = @SortId) where P_ID = @SortId

		if @SortFlagName='brand'
			Update XY_BrandType set InfoCount =(select IsNull(count(B_ID),0) From u_Barnd where PT_ID = @SortId) where ID = @SortId

		if @SortFlagName='company'
			Update b_UserType set UT_InfoCount =(select IsNull(count(U_ID),0) From u_UserInfo where UT_ID = @SortId) where UT_ID = @SortId

		End
	Else
		Begin
		if @SortFlagName = 'offer'
			Update b_productType set infoCount =(select IsNull(count(SD_ID),0) From i_supply where PT_ID = b_productType.PT_ID) From b_productType

		if @SortFlagName='machining'
			Update i_MachiningType set InfoCount =(select IsNull(count(SD_ID),0) From i_demand where MT_ID = i_MachiningType.MT_ID) From i_MachiningType

		if @SortFlagName='investment'
			Update i_InviteBusinessType set InfoCount =(select IsNull(count(IBI_ID),0) From i_InviteBusinessmanInfo where IT_ID = i_InviteBusinessType.IT_ID) From i_InviteBusinessType

		if @SortFlagName='service'
			Update i_ServiceType set InfoCount =(select IsNull(count(S_ID),0) From i_ServiceInfo where ST_ID = i_ServiceType.ST_ID) From i_ServiceType

		if @SortFlagName='exhibition'
			Update i_ShowType set InfoCount =(select IsNull(count(ID),0) From XY_ShowInfo where typeid = i_ShowType.SHT_ID) From i_ShowType

		if @SortFlagName='job'
			Update b_Post set InfoCount =(select IsNull(count(EI_ID),0) From i_EngageInfo where P_ID = b_Post.P_ID) From b_Post

		if @SortFlagName='brand'
			Update XY_BrandType set InfoCount =(select IsNull(count(B_ID),0) From u_Barnd where PT_ID = XY_BrandType.ID) From  XY_BrandType 

		if @SortFlagName='company'
			Update b_UserType set UT_InfoCount =(select IsNull(count(U_ID),0) From u_UserInfo where UT_ID = b_UserType.UT_ID) From b_UserType
		End
GO
/****** Object:  StoredProcedure [dbo].[XYP_StatsTotal]    Script Date: 10/03/2011 19:33:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[XYP_StatsTotal]
as
begin
declare @C_User int
declare @C_Supply int
declare @C_Invite int
declare @C_Demand int
declare @C_Engage int
declare @C_Service int
declare @C_Barnd int
declare @C_Show int
declare @C_News int

declare @UserCount int
declare @SupplyCount int
declare @InviteCount int
declare @DemandCount int
declare @EngageCount int
declare @ServiceCount int
declare @BarndCount int
declare @ShowCount int
declare @NewsCount int

--未审核总条数
set @UserCount = (select count(*) from u_user where UserAuditingState = -1 or UserAuditingState is null)
set	@SupplyCount = (select count(*) from  i_supply  where AuditingState  = -1 or AuditingState  is null)
set	@InviteCount = (select count(*) from i_InviteBusinessmanInfo where AuditingState  = -1 or AuditingState  is null)
set	@DemandCount = (select count(*) from i_Demand where AuditingState  = -1 or AuditingState  is null)
set	@EngageCount = (select count(*) from i_EngageInfo where AuditingState  = -1 or AuditingState  is null)
set	@ServiceCount = (select count(*) from i_ServiceInfo where AuditingState  = -1 or AuditingState  is null)
set	@BarndCount = (select count(*) from u_Barnd where AuditingState  = -1 or AuditingState  is null)
set	@ShowCount = (select count(*) from xy_showinfo where EndTime < getdate())
set	@NewsCount = (select count(*) from n_news where AuditingState = -1 or AuditingState is null)
--总条数
set @C_User = (select count(*) from u_user)
set	@C_Supply = (select count(*) from  i_supply)
set	@C_Invite = (select count(*) from i_InviteBusinessmanInfo)
set	@C_Demand = (select count(*) from i_Demand)
set	@C_Engage  = (select count(*) from i_EngageInfo)
set	@C_Service = (select count(*) from i_ServiceInfo)
set	@C_Barnd = (select count(*) from u_Barnd)
set	@C_Show = (select count(*) from xy_showinfo)
set @C_News = (select count(*) from n_news) 


If (Exists(Select * From tempdb.dbo.sysobjects Where [name] = '##TmpStatsTable'))

begin
		update ##TmpStatsTable set UserCount = @UserCount,NewsCount = @NewsCount,SupplyCount=@SupplyCount,InviteCount=@InviteCount,
			DemandCount=@DemandCount,EngageCount=@EngageCount,ServiceCount=@ServiceCount,BarndCount=@BarndCount,ShowCount=@ShowCount,
			C_User = @C_User,C_News = @C_News,C_Supply=@C_Supply,C_Invite=@C_Invite,C_Demand=@C_Demand,C_Engage=@C_Engage,
			C_Service=@C_Service,C_Barnd=@C_Barnd,C_Show=@C_Show
	if @@Rowcount > 0
		select * from ##TmpStatsTable
	else 
		return 2
end

else

begin
	begin tran
create table ##TmpStatsTable
(
	UserCount int,
	NewsCount int,
	SupplyCount int,
	InviteCount int,
	DemandCount int,
	EngageCount int,
	ServiceCount int,
	BarndCount int,
	ShowCount int,
	C_User int,
	C_Supply int,
	C_Invite int,
	C_Demand int,
	C_Engage int,
	C_Service int,
	C_Barnd int,
	C_Show int,
	C_News int
	
)
	if @@ERROR = 0
	begin
		insert into ##TmpStatsTable(UserCount,NewsCount,SupplyCount,InviteCount,DemandCount,EngageCount,ServiceCount,BarndCount,ShowCount,C_User,C_News,C_Supply,C_Invite,C_Demand,C_Engage,C_Service,C_Barnd,C_Show) 
		values(@UserCount,@NewsCount,@SupplyCount,@InviteCount,@DemandCount,@EngageCount,@ServiceCount,@BarndCount,@ShowCount,@C_User,@C_News,@C_Supply,@C_Invite,@C_Demand,@C_Engage,@C_Service,@C_Barnd,@C_Show)
		if @@rowcount > 0
			begin
				select * from ##TmpStatsTable
				commit tran
			end
	end
	else
	begin
		rollback tran
		return 1
	end
end

end
GO
/****** Object:  View [dbo].[XYV_Supply]    Script Date: 10/03/2011 19:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_Supply] 

AS
SELECT		i_Supply.SD_ID, 
			i_Supply.PT_ID, 
			i_Supply.SD_Title, 
			i_Supply.SD_Description, 
			i_Supply.SD_PublishDate, 
			i_Supply.SD_IsSupply, 
			i_Supply.SD_HTMLPage, 
			i_Supply.SD_ClickNum, 
			i_Supply.SD_Vouch, 
			i_Supply.SD_MessageNum, 
			i_Supply.SD_NoMessgeNum, 
			i_Supply.SD_Flag, 
			i_Supply.SD_Date, 
			i_Supply.P_ID, 
			i_Supply.SD_EndDate, 
			i_Supply.SD_Unit, 
			i_Supply.SD_Price, 
			i_Supply.SD_SmallNum, 
			i_Supply.SD_CountNum, 
			i_Supply.SD_IsPayMent, 
			i_Supply.U_ID,
			i_Supply.isshop, 
			i_Supply.AuditingState,
			i_Supply.IsHasImage,
			i_Supply.companyproducttypeid,

			u_user.U_Name, 
			u_user.U_Email, 
			u_user.U_RegDate, 
			u_user.U_HtmlPage, 
			u_user.U_ClickNum, 
			u_user.U_TempName, 
			u_user.UG_ID, 
			u_user.U_Mark,
			u_user.UserAuditingState,
			u_user.UserIsHasImage,

			b_userGrade.UG_order,

			u_userinfo.UI_Name, 
			u_userinfo.Area_ID, 
			u_userinfo.UI_Area, 
			u_userinfo.UI_License, 
			u_userinfo.UI_Character, 
			u_userinfo.UI_LinkMan, 
			u_userinfo.UI_Number, 
			u_userinfo.UI_HomePage, 
			u_userinfo.UI_Synopsis, 
			u_userinfo.UI_Postcode, 
			u_userinfo.UI_Mobil,
			u_userinfo.UT_ID, 
			u_userinfo.U_Section,
			u_userinfo.U_Post, 
			u_userinfo.U_Way,
			u_userinfo.U_SupplyProduct,
			u_userinfo.U_BuyProduct, 
			u_userinfo.U_Mode, 
			u_userinfo.U_Money, 
			u_userinfo.U_Year, 
			u_userinfo.U_Address, 
			u_userinfo.U_PType, 
			u_userinfo.U_MoneyType,
			u_userinfo.IM, 
			u_userinfo.Telephone, 
			u_userinfo.Fax, 
			u_userinfo.TradeIds as UserTradeIds,
			
			b_ProductType.PT_Name, 
			b_ProductType.ModuleName,
			b_ProductType.FullID,
			b_ProductType.TradeId
FROM      i_Supply 
			Inner Join
			u_user on i_supply.U_ID = u_user.u_id 
			Inner Join 
			b_UserGrade on b_UserGrade.UG_ID = u_user.UG_ID
			Inner Join 
			u_UserInfo on u_user.U_ID = u_userinfo.U_ID
			Inner Join 
			b_ProductType ON i_Supply.PT_ID = b_ProductType.PT_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertSupply]    Script Date: 10/03/2011 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertSupply]
(
    @SD_ID bigint output,
	@U_ID bigint,
	@PT_ID bigint,
	@SD_Title varchar(100),
	@SD_Description text,
	@SD_Flag int,
	@SD_Date int ,
	@P_ID bigint,
	@SD_EndDate datetime,
	@SD_Unit varchar(100),
	@SD_Price money ,
	@SD_SmallNum int ,
	@SD_CountNum int ,
	@SD_IsPayMent  bit,
	@companyproducttypeid int
)
AS

	declare @count int 
	select @count=count(SD_ID) from i_Supply where U_ID=@U_ID and SD_Title = @SD_Title and SD_Flag = @SD_Flag
	if @count >0
		return -1

	Begin Tran tr

	INSERT INTO i_Supply(U_ID,  PT_ID,SD_Title,  SD_Description, SD_Flag,SD_Date,P_ID,SD_EndDate,SD_Unit,SD_Price,SD_SmallNum,SD_CountNum,SD_IsPayMent,companyproducttypeid) VALUES 
	(@U_ID, @PT_ID, @SD_Title,  @SD_Description, @SD_Flag,@SD_Date,@P_ID,@SD_EndDate,@SD_Unit,@SD_Price,@SD_SmallNum,@SD_CountNum,@SD_IsPayMent,@companyproducttypeid)  
	
	update b_productType set infoCount = InfoCount +1 where PT_ID = @PT_ID

	if @companyproducttypeid<>0
		begin
			update XY_CompanyProductType set infocount = infocount +1 where id = @companyproducttypeid
		end

	if @@error<>0
		Begin
			RollBack tran tr
			return -2
		End

	commit
	set @SD_ID=@@identity
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateSupplyVouch]    Script Date: 10/03/2011 19:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateSupplyVouch]
(
  @SD_Vouch bit,
  @SD_ID bigint
)
AS
	begin
	
	UPDATE [i_Supply] SET SD_Vouch = @SD_Vouch WHERE [SD_ID] = @SD_ID
	
	if @@error <> 0
		return -2

	End
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateSupply]    Script Date: 10/03/2011 19:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateSupply]

(	@SD_ID bigint,
	@U_ID bigint,
	@PT_ID varchar(500),	
	@SD_Title varchar(100),
	@SD_Description text,
	@SD_Flag int ,
	@SD_Date int ,
	@P_ID bigint ,
    @SD_EndDate datetime,
	@SD_Unit varchar(100),
	@SD_Price money,
	@SD_SmallNum int ,
	@SD_CountNum int,
	@SD_IsPayMent bit,
	@companyproducttypeid int
)
AS
begin 

	UPDATE i_Supply SET U_ID = @U_ID,  SD_Title = @SD_Title,  SD_Description = @SD_Description, PT_ID=@PT_ID,SD_Flag=@SD_Flag,SD_Date=@SD_Date ,P_ID=@P_ID,SD_EndDate=@SD_EndDate ,SD_Unit=@SD_Unit  ,SD_Price=@SD_Price ,SD_SmallNum=@SD_SmallNum ,SD_CountNum=@SD_CountNum ,SD_IsPayMent=@SD_IsPayMent,companyproducttypeid=@companyproducttypeid  WHERE SD_ID = @SD_ID 

	if @@error<>0
		   return -2
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateCompanyProductTypeInfoCount]    Script Date: 10/03/2011 19:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[XYP_UpdateCompanyProductTypeInfoCount]
@userid bigint
AS
BEGIN
	SET NOCOUNT ON;
	Update XY_CompanyProductType set infoCount =(select count(*) From i_supply where companyproducttypeid = XY_CompanyProductType.id) where userid = @userid 
END
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertMessage]    Script Date: 10/03/2011 19:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[XYP_InsertMessage]
(
	@M_UserName varchar(50),
	@M_Moblie varchar(11),
	@M_Content varchar(5000),
	@UR_ID bigint,
	@M_RecverType varchar(50),
	@U_ID bigint,
	@M_PHMa  varchar(200),
	@M_FHM varchar(200),
	@M_Title varchar(500),
	@M_Adress varchar(200),
	@M_Email varchar(50),
	@M_SenderType  varchar(50),
	@M_UserType   bit,
	@M_CompanyName varchar(100),
	@M_Sex bit,
	@M_Restore bit,
	@Area_ID int, 
	@InfoID bigint
)
AS
	begin tran tr

	INSERT INTO 
		[PL_Message] 
		(M_UserName,M_Moblie,M_Content, UR_ID, 
			M_RecverType,U_ID,M_PHMa,M_FHM,M_Title,M_Adress,M_Email,M_SenderType,M_UserType,M_CompanyName,
			M_Sex,M_Restore,Area_ID,InfoID) 
	VALUES 
		(@M_UserName, @M_Moblie, @M_Content,
			 @UR_ID, @M_RecverType,@U_ID,@M_PHMa,@M_FHM,@M_Title,@M_Adress,@M_Email,@M_SenderType,@M_UserType,@M_CompanyName,
			@M_Sex,@M_Restore,@Area_ID,@InfoID)

	if @@error <> 0
		Begin
			rollback tran tr
			return -2
		End


	if(@M_SenderType='machining') 
		begin 
			update i_Demand set SD_MessageNum=SD_MessageNum+1 ,SD_NoMessgeNum=SD_NoMessgeNum+1  where SD_ID=@InfoID
		end 	

	if(@M_SenderType='offer') 
		begin 
			update i_Supply  set SD_MessageNum=SD_MessageNum+1 ,SD_NoMessgeNum=SD_NoMessgeNum+1  where SD_ID=@InfoID
		end 		
	    
	if(@M_SenderType='service') 
		begin 
			update i_ServiceInfo set S_MessageNum=S_MessageNum+1 ,S_NoMessageNum=S_NoMessageNum+1  where S_ID=@InfoID
		end 

	if(@M_SenderType='company') 
		begin 
			update  u_User set U_MessageNum=U_MessageNum+1 ,U_NoMessgeNum=U_NoMessgeNum+1  where U_ID=@InfoID
		end 	

	if(@M_SenderType='investment') 
		begin 
			update   i_InviteBusinessmanInfo   set IBI_MessageNum=IBI_MessageNum+1 ,IBI_NoMessageNum=IBI_NoMessageNum+1  where IBI_ID=@InfoID
		end
	if(@M_SenderType='brand') 
		begin 
			update   u_Barnd   set B_MessageNum=B_MessageNum+1 ,B_NoMessageNum=B_NoMessageNum+1  where B_ID=@InfoID
		end 				

	commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUserData]    Script Date: 10/03/2011 19:34:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateUserData](
@uid int,
@companyids varchar(500)
)
AS
       
       	begin tran tr 

       	UPDATE xy_userdata SET companyids = @companyids where uid = @uid
		
	if @@error <> 0
	begin
		rollback tran tr
		return -2
	end

	commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertUserData]    Script Date: 10/03/2011 19:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertUserData]
(
@uid int,
@companyids varchar(500)
)
AS

   begin tran tr
	
	declare @Count int
     	select @Count = count(uid) from xy_userdata where uid = @uid 
     	if @Count >0
        begin 
        	update xy_userdata set companyids=@companyids where uid=@uid
        end
     	else
	begin
   		INSERT INTO xy_userdata values (@uid,@companyids)
   		if @@error <> 0
   		begin
   			rollback tran tr
   			return -2
   		end
	end
   commit
GO
/****** Object:  View [dbo].[XYV_Demand]    Script Date: 10/03/2011 19:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_Demand]
AS
SELECT     
			i_Demand.SD_ID, 
			i_Demand.MT_ID, 
			i_Demand.SD_Title, 
			i_Demand.SD_Description, 
			i_Demand.SD_PublishDate, 
			i_Demand.SD_IsSupply, 
			i_Demand.SD_HTMLPage, 
			i_Demand.SD_ClickNum, 
			i_Demand.SD_Vouch, 
			i_Demand.SD_MessageNum, 
			i_Demand.SD_NoMessgeNum, 
			i_Demand.SD_Date, 
			i_Demand.SD_Flag, 
			i_Demand.P_ID, 
			i_Demand.SD_EndDate, 
			i_Demand.SD_Unit, 
			i_Demand.SD_Price, 
			i_Demand.SD_SmallNum, 
			i_Demand.SD_CountNum, 
			i_Demand.SD_IsPayMent, 
			i_Demand.U_ID,
			i_Demand.AuditingState,
			i_Demand.IsHasImage,

			i_MachiningType.MT_Name, 
			i_MachiningType.ModuleName, 
			i_MachiningType.FullId, 

			u_user.U_Name, 
			u_user.U_Email, 
			u_user.U_RegDate, 
			u_user.U_HtmlPage, 
			u_user.U_ClickNum, 
			u_user.U_TempName, 
			u_user.UG_ID,
			u_user.U_Mark,

			b_userGrade.UG_order,

			u_userinfo.UI_Name, 
			u_userinfo.Area_ID, 
			u_userinfo.UI_Area, 
			u_userinfo.UI_License, 
			u_userinfo.UI_Character, 
			u_userinfo.UI_LinkMan, 
			u_userinfo.UI_Number, 
			u_userinfo.UI_HomePage, 
			u_userinfo.UI_Synopsis, 
			u_userinfo.UI_Postcode, 
			u_userinfo.UI_Mobil,
			u_userinfo.UT_ID, 
			u_userinfo.U_Section,
			u_userinfo.U_Post, 
			u_userinfo.U_Way,
			u_userinfo.U_SupplyProduct,
			u_userinfo.U_BuyProduct, 
			u_userinfo.U_Mode, 
			u_userinfo.U_Money, 
			u_userinfo.U_Year, 
			u_userinfo.U_Address, 
			u_userinfo.U_PType, 
			u_userinfo.U_MoneyType,
			u_userinfo.IM, 
			u_userinfo.Telephone, 
			u_userinfo.Fax, 
			u_userinfo.TradeIds as UserTradeIds,

			u_user.UserAuditingState,
			u_user.UserIsHasImage

FROM         i_Demand
			Inner JOIN
			i_MachiningType ON i_Demand.MT_ID = i_MachiningType.MT_ID
			Inner Join 
			u_user on i_Demand.U_ID = u_user.u_id 
			Inner Join 
			b_UserGrade on b_UserGrade.UG_ID = u_user.UG_ID
			Inner Join 
			u_UserInfo on u_user.U_ID = u_userinfo.U_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateDemand]    Script Date: 10/03/2011 19:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateDemand]
(
	@U_ID bigint,
	@MT_ID varchar(500),
	@SD_Title varchar(100),
	@SD_Description text,
	@SD_ID bigint,
	@SD_Date int,
	@SD_Flag int ,
	@P_ID bigint ,
	@SD_EndDate datetime,
	@SD_Unit varchar(100),
	@SD_Price money ,
	@SD_SmallNum int ,
	@SD_CountNum int ,
	@SD_IsPayMent  bit

 )
AS
	UPDATE i_Demand SET U_ID = @U_ID,  SD_Title = @SD_Title,  SD_Description = @SD_Description, SD_Date=@SD_Date  ,MT_ID=@MT_ID ,SD_Flag=@SD_Flag ,P_ID=@P_ID ,SD_EndDate=@SD_EndDate,SD_Unit=@SD_Unit ,SD_Price=@SD_Price ,SD_SmallNum=@SD_SmallNum ,SD_CountNum=@SD_CountNum ,SD_IsPayMent=@SD_IsPayMent WHERE SD_ID = @SD_ID 

	if @@error<>0
		   return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateDemandVouch]    Script Date: 10/03/2011 19:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateDemandVouch]
(
  @SD_Vouch bit,
  @SD_ID bigint
)
AS

	UPDATE [i_Demand] SET SD_Vouch = @SD_Vouch WHERE [SD_ID] = @SD_ID
	
	if @@error <> 0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertDemand]    Script Date: 10/03/2011 19:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertDemand]
(
    @SD_ID bigint output,
	@U_ID bigint,
	@MT_ID bigint,
	@SD_Title varchar(100),
	@SD_Description text,
	@SD_Date  int,
	@SD_Flag  int,
	@P_ID bigint ,
	@SD_EndDate datetime,
	@SD_Unit varchar(100),
	@SD_Price money ,
	@SD_SmallNum int ,
	@SD_CountNum int ,
	@SD_IsPayMent  bit
)
AS
	declare @count int 
	select @count=count(SD_ID) from i_Demand where U_ID=@U_ID and SD_Title = @SD_Title and SD_Flag = @SD_Flag 
	
	if @count >0
		return -1


	Begin Tran tr

	INSERT INTO i_Demand(U_ID, MT_ID, SD_Title, SD_Description, SD_Date,SD_Flag,P_ID,SD_EndDate,SD_Unit,SD_Price,SD_SmallNum,SD_CountNum,SD_IsPayMent) VALUES 
	(@U_ID,@MT_ID,@SD_Title,  @SD_Description, @SD_Date,@SD_Flag ,@P_ID,@SD_EndDate,@SD_Unit,@SD_Price,@SD_SmallNum,@SD_CountNum,@SD_IsPayMent)

	Update i_MachiningType set infoCount = infoCount +1 where MT_ID = @MT_ID

	if @@error<>0
		Begin
			Rollback Tran tr
			return -2
		End 

	Commit tran

	set @SD_ID=@@identity
GO
/****** Object:  View [dbo].[XYV_Remit]    Script Date: 10/03/2011 19:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_Remit]
AS
SELECT     u_Remit.R_ID, u_Remit.R_Name, u_Remit.R_Email, u_Remit.U_ID, u_Remit.R_Tephone, u_Remit.R_IsPay, 
                      u_Remit.R_Time, u_Remit.R_Bank, u_Remit.R_Account, u_Remit.R_CAccount, u_Remit.R_RName, u_Remit.R_Money, 
                      u_User.U_Name,u_Remit.AuditingState

FROM         u_Remit inner Join u_User ON u_Remit.U_ID = u_User.U_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateRemit]    Script Date: 10/03/2011 19:34:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateRemit]
@R_ID bigint
as
begin 
begin tran tr
update u_Remit   set R_IsPay =1    where R_ID=@R_ID
if @@error <>0
begin
 rollback tran 
 end 
end
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertUserRemit]    Script Date: 10/03/2011 19:33:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[XYP_InsertUserRemit]
(
@R_Name  varchar(200),
@R_Email  varchar(100),
@R_Tephone varchar(200),
@R_Time datetime,
@R_Bank varchar(100),
@R_Account varchar(100),
@R_CAccount varchar(100),
@R_RName varchar(100),
@R_Money  money,
@U_ID bigint
)
as

begin
begin tran tr
insert into u_Remit (R_Name,R_Email,R_Tephone,R_Time,R_Bank,R_Account,R_CAccount,R_RName,R_Money,U_ID) values (@R_Name ,@R_Email ,@R_Tephone,@R_Time,@R_Bank,@R_Account,@R_CAccount,@R_RName,@R_Money,@U_ID)
if @@error <> 0
begin
rollback  tran tr
return -2
end 
commit
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUserProductType]    Script Date: 10/03/2011 19:34:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[XYP_UpdateUserProductType] 
	@id int,
	@ptname varchar(100),
	@userid bigint
 AS 
    UPDATE XY_CompanyProductType SET  [ptname] = @ptname,[userid] = @userid
	WHERE [id] = @id
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertUserProductyType]    Script Date: 10/03/2011 19:33:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertUserProductyType]
@ptname varchar(100),
@userid bigint
 AS 
	declare @Count int
	select @Count = count(id) from XY_CompanyProductType where ptname=@ptname and  userid = @userid

	if @Count >0
		return -1
	INSERT INTO XY_CompanyProductType(	[ptname],[userid])VALUES(	@ptname,@userid)

	if @@error <> 0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateTopic]    Script Date: 10/03/2011 19:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateTopic]
(
  @ID int output,
  @CName varchar(200),
  @EName Varchar(50),
  @TCID smallint,
  @TemplatePath Varchar(500),
  @URL Varchar(500),
  @Commend bit,
  @TopicType varchar(500),
  @IsDomain bit
)

AS
   begin
   begin tran tr
    begin
		  update XY_Topic set CName = @CName,EName = @EName,TCID = @TCID,TemplatePath = @TemplatePath,
						URL = @URL,IsDomain = @IsDomain,Commend = @Commend,TopicType=@TopicType where ID = @ID       
    end       
     if @@error <> 0
       begin
             rollback tran tr
             return -2
       end          
  end   
  commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertTopic]    Script Date: 10/03/2011 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertTopic]
(
  @ID int output,
  @CName varchar(200),
  @EName Varchar(50),
  @TCID smallint,
  @TopicType varchar(500),
  @TemplatePath Varchar(500),
  @URL Varchar(500),
  @IsDomain bit,
  @Commend bit
)

AS
	if exists(select ID from XY_Topic where CName=@CName or TemplatePath = @TemplatePath)
		  return -1 

	insert into XY_Topic(CName,EName,TCID,TopicType,TemplatePath,URL,Commend,IsDomain)
	values (@CName,@EName,@TCID,@TopicType,@TemplatePath,@URL,@Commend,@IsDomain)

	if @@error <> 0
		 return -2       
	else
		 set @ID = @@identity
GO
/****** Object:  View [dbo].[XYV_Topic]    Script Date: 10/03/2011 19:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_Topic]
AS
SELECT     dbo.XY_Topic.TCID, dbo.XY_Topic.CName, dbo.XY_Topic.EName, dbo.XY_Topic.ID, dbo.XY_Topic.TemplatePath, dbo.XY_Topic.URL, 
                      dbo.XY_Topic.ShowNum, dbo.XY_Topic.Commend, dbo.XY_Topic.State, dbo.XY_Topic.AddTime, dbo.XY_Topic.HTMLPage, dbo.XY_Topic.TopicType, 
                      dbo.XY_Topic.IsHasImage, dbo.XY_Topic.IsDomain, dbo.XY_TopicClass.Name AS TCName, at.ThumbnailImg AS timg
FROM         dbo.XY_Topic INNER JOIN
                      dbo.XY_TopicClass ON dbo.XY_Topic.TCID = dbo.XY_TopicClass.ID LEFT OUTER JOIN
                          (SELECT     DescTabID, ThumbnailImg
                            FROM          dbo.pl_Attachment
                            WHERE      (DescTabName = 'XY_Topic')) AS at ON dbo.XY_Topic.ID = at.DescTabID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[18] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "XY_Topic"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 183
               Right = 184
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "XY_TopicClass"
            Begin Extent = 
               Top = 22
               Left = 250
               Bottom = 157
               Right = 380
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "at"
            Begin Extent = 
               Top = 6
               Left = 418
               Bottom = 84
               Right = 564
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'XYV_Topic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'XYV_Topic'
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertAdPlaceType]    Script Date: 10/03/2011 19:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertAdPlaceType]
(
  @AT_ID int output,
  @AT_Name varchar(200),
  @AT_PID int,
  @AT_Alt varchar(5000)
)
AS
 begin
 begin tran tr
 begin
 
    if not exists(select AT_Name from b_AdPlaceType where AT_Name=@AT_Name)
     begin 
      insert into b_AdPlaceType(AT_Name,AT_PID,AT_Alt) values (@AT_Name,@AT_PID,@AT_Alt)
      
     end
    else
     begin 
      rollback tran tr
      return -1
     end  
    end 
 if @@error <> 0
   begin
      rollback tran tr
      return -2
   end
  else
   begin
        set @AT_ID = @@identity
   end          
 end
commit tran
GO
/****** Object:  View [dbo].[XYV_AdPlaceInfoType]    Script Date: 10/03/2011 19:32:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_AdPlaceInfoType]
AS
SELECT b_AdPlaceInfo.AP_ID, b_AdPlaceInfo.AP_Name, b_AdPlaceInfo.AP_Alt, 
      b_AdPlaceInfo.AT_ID, b_AdPlaceType.AT_Name, 
      b_AdPlaceInfo.AP_IsUse
FROM b_AdPlaceInfo LEFT OUTER JOIN
      b_AdPlaceType ON b_AdPlaceInfo.AT_ID = b_AdPlaceType.AT_ID OR 
      b_AdPlaceInfo.AT_ID IS NULL
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateAdPlaceType]    Script Date: 10/03/2011 19:33:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateAdPlaceType] 

(
 @AT_ID int,
 @AT_Name varchar(200),
 @AT_PID int,
 @AT_Alt varchar(5000)
)
AS
 begin
 begin tran tr
 begin
         update b_AdPlaceType set AT_Name = @AT_Name, AT_PID = @AT_PID, AT_Alt = @AT_Alt where AT_ID = @AT_ID
 end
 
 if @@error <> 0
 begin 
 rollback tran tr
 return -2
 end 
    end
    
 commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateOrderid]    Script Date: 10/03/2011 19:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateOrderid]
(
	@ename varchar(200),--表名
	@ID   bigint,--类型ID
	@Type	bit --是1上升0下降  
)

as
begin
	declare @ParentID bigint
	declare @OrderID int 
	declare	@PT_IDUp varchar(20)

	if @ename = 'offer'
	begin
		if @type = 1
		begin
			select @ParentID=PT_ParentID, @OrderID=OrderID from  b_ProductType where PT_ID=@ID	
			select  top 1 @PT_IDUp=PT_ID  from  b_ProductType where PT_ParentID=@ParentID and orderid<@orderid order by orderid desc		
			update b_ProductType set Orderid = @Orderid where PT_ID=@PT_IDUp
			update b_ProductType set Orderid = (@Orderid-1) where PT_ID=@ID	
		end

		else 
		begin
			select @ParentID=PT_ParentID, @OrderID=OrderID from  b_ProductType where PT_ID=@ID	
			select  top 1 @PT_IDUp=PT_ID  from  b_ProductType where PT_ParentID=@ParentID and orderid>@orderid order by orderid 	
			update b_ProductType set Orderid = @Orderid where PT_ID=@PT_IDUp
			update b_ProductType set Orderid = (@Orderid+1) where PT_ID=@ID	 
		end 
	end
	else if @ename = 'machining'
	begin
		if @type = 1
		begin
			select @ParentID=MT_ParentID, @OrderID=OrderID from  i_MachiningType where MT_ID=@ID	
			select  top 1 @PT_IDUp=MT_ID  from  i_MachiningType where MT_ParentID=@ParentID and orderid<@orderid order by orderid desc		
			update i_MachiningType set Orderid = @Orderid where MT_ID=@PT_IDUp
			update i_MachiningType set Orderid = (@Orderid-1) where MT_ID=@ID	
		end

		else 
		begin
			select @ParentID=MT_ParentID, @OrderID=OrderID from  i_MachiningType where MT_ID=@ID	
			select  top 1 @PT_IDUp=MT_ID  from  i_MachiningType where MT_ParentID=@ParentID and orderid>@orderid order by orderid 	
			update i_MachiningType set Orderid = @Orderid where MT_ID=@PT_IDUp
			update i_MachiningType set Orderid = (@Orderid+1) where MT_ID=@ID	 
		end 
	end
	else if @ename = 'investment'
	begin
		if @type = 1
		begin
			select @ParentID=IT_ParentID, @OrderID=OrderID from  i_InviteBusinessType where IT_ID=@ID	
			select  top 1 @PT_IDUp=IT_ID  from  i_InviteBusinessType where IT_ParentID=@ParentID and orderid<@orderid order by orderid desc		
			update i_InviteBusinessType set Orderid = @Orderid where IT_ID=@PT_IDUp
			update i_InviteBusinessType set Orderid = (@Orderid-1) where IT_ID=@ID	
		end

		else 
		begin
			select @ParentID=IT_ParentID, @OrderID=OrderID from  i_InviteBusinessType where IT_ID=@ID	
			select  top 1 @PT_IDUp=IT_ID  from  i_InviteBusinessType where IT_ParentID=@ParentID and orderid>@orderid order by orderid 	
			update i_InviteBusinessType set Orderid = @Orderid where IT_ID=@PT_IDUp
			update i_InviteBusinessType set Orderid = (@Orderid+1) where IT_ID=@ID	 
		end 
	end
	else if @ename = 'service'
	begin
		if @type = 1
		begin
			select @ParentID=ST_ParentID, @OrderID=OrderID from  i_ServiceType where ST_ID=@ID	
			select  top 1 @PT_IDUp=ST_ID  from  i_ServiceType where ST_ParentID=@ParentID and orderid<@orderid order by orderid desc		
			update i_ServiceType set Orderid = @Orderid where ST_ID=@PT_IDUp
			update i_ServiceType set Orderid = (@Orderid-1) where ST_ID=@ID	
		end

		else 
		begin
			select @ParentID=ST_ParentID, @OrderID=OrderID from  i_ServiceType where ST_ID=@ID	
			select  top 1 @PT_IDUp=ST_ID  from  i_ServiceType where ST_ParentID=@ParentID and orderid>@orderid order by orderid 	
			update i_ServiceType set Orderid = @Orderid where ST_ID=@PT_IDUp
			update i_ServiceType set Orderid = (@Orderid+1) where ST_ID=@ID	 
		end 
	end
	else if @ename = 'exhibition'
	begin
		if @type = 1
		begin
			select @ParentID=SHT_ParentID, @OrderID=OrderID from  i_showType where SHT_ID=@ID	
			select  top 1 @PT_IDUp=SHT_ID  from  i_showType where SHT_ParentID=@ParentID and orderid<@orderid order by orderid desc		
			update i_showType set Orderid = @Orderid where SHT_ID=@PT_IDUp
			update i_showType set Orderid = (@Orderid-1) where SHT_ID=@ID	
		end

		else 
		begin
			select @ParentID=SHT_ParentID, @OrderID=OrderID from  i_showType where SHT_ID=@ID	
			select  top 1 @PT_IDUp=SHT_ID  from  i_showType where SHT_ParentID=@ParentID and orderid>@orderid order by orderid 	
			update i_showType set Orderid = @Orderid where SHT_ID=@PT_IDUp
			update i_showType set Orderid = (@Orderid+1) where SHT_ID=@ID	 
		end 
	end
	else if @ename = 'brand'
	begin
		if @type = 1
		begin
			select @ParentID=ParentID, @OrderID=OrderID from  XY_BrandType where ID=@ID	
			select  top 1 @PT_IDUp=ID  from  XY_BrandType where ParentID=@ParentID and orderid<@orderid order by orderid desc		
			update XY_BrandType set Orderid = @Orderid where ID=@PT_IDUp
			update XY_BrandType set Orderid = (@Orderid-1) where ID=@ID	
		end

		else 
		begin
			select @ParentID=ParentID, @OrderID=OrderID from  XY_BrandType where ID=@ID	
			select  top 1 @PT_IDUp=ID  from  XY_BrandType where ParentID=@ParentID and orderid>@orderid order by orderid 	
			update XY_BrandType set Orderid = @Orderid where ID=@PT_IDUp
			update XY_BrandType set Orderid = (@Orderid+1) where ID=@ID	 
		end 
	end
	else if @ename = 'news'
	begin
		if @type = 1
		begin
			select @ParentID=NT_PID, @OrderID=OrderID from  n_NewsTitleInfo where NT_ID=@ID	
			select  top 1 @PT_IDUp=NT_ID  from  n_NewsTitleInfo where NT_PID=@ParentID and orderid<@orderid order by orderid desc		
			update n_NewsTitleInfo set Orderid = @Orderid where NT_ID=@PT_IDUp
			update n_NewsTitleInfo set Orderid = (@Orderid-1) where NT_ID=@ID	
		end

		else 
		begin
			select @ParentID=NT_PID, @OrderID=OrderID from  n_NewsTitleInfo where NT_ID=@ID	
			select  top 1 @PT_IDUp=NT_ID  from  n_NewsTitleInfo where NT_PID=@ParentID and orderid>@orderid order by orderid 	
			update n_NewsTitleInfo set Orderid = @Orderid where NT_ID=@PT_IDUp
			update n_NewsTitleInfo set Orderid = (@Orderid+1) where NT_ID=@ID	 
		end 
	end
	else if @ename = 'job'
	begin
		if @type = 1
		begin
			select @ParentID=p_ParentID, @OrderID=OrderID from  b_post where P_ID=@ID	
			select  top 1 @PT_IDUp=P_ID  from  b_post where p_ParentID=@ParentID and orderid<@orderid order by orderid desc		
			update b_post set Orderid = @Orderid where P_ID=@PT_IDUp
			update b_post set Orderid = (@Orderid-1) where P_ID=@ID	
		end

		else 
		begin
			select @ParentID=p_ParentID, @OrderID=OrderID from  b_post where P_ID=@ID	
			select  top 1 @PT_IDUp=P_ID  from  b_post where p_ParentID=@ParentID and orderid>@orderid order by orderid 	
			update b_post set Orderid = @Orderid where P_ID=@PT_IDUp
			update b_post set Orderid = (@Orderid+1) where P_ID=@ID	 
		end 
	end
	else if @ename = 'company'
	begin
		if @type = 1
		begin
			select @ParentID=ut_PID, @OrderID=OrderID from  b_userType where ut_ID=@ID	
			select  top 1 @PT_IDUp=ut_ID  from  b_userType where ut_PID=@ParentID and orderid<@orderid order by orderid desc		
			update b_userType set Orderid = @Orderid where ut_ID=@PT_IDUp
			update b_userType set Orderid = (@Orderid-1) where ut_ID=@ID	
		end

		else 
		begin
			select @ParentID=ut_PID, @OrderID=OrderID from  b_userType where ut_ID=@ID	
			select  top 1 @PT_IDUp=ut_ID  from  b_userType where ut_PID=@ParentID and orderid>@orderid order by orderid 	
			update b_userType set Orderid = @Orderid where ut_ID=@PT_IDUp
			update b_userType set Orderid = (@Orderid+1) where ut_ID=@ID	 
		end 
	end
	else if @ename = 'area'
	begin
		if @type = 1
		begin
			select @ParentID=ParentID, @OrderID=OrderID from  xy_area where ID=@ID	
			select  top 1 @PT_IDUp=ID  from  xy_area where ParentID=@ParentID and orderid<@orderid order by orderid desc		
			update xy_area set Orderid = @Orderid where ID=@PT_IDUp
			update xy_area set Orderid = (@Orderid-1) where ID=@ID	
		end

		else 
		begin
			select @ParentID=ParentID, @OrderID=OrderID from  xy_area where ID=@ID	
			select  top 1 @PT_IDUp=ID  from  xy_area where ParentID=@ParentID and orderid>@orderid order by orderid 	
			update xy_area set Orderid = @Orderid where ID=@PT_IDUp
			update xy_area set Orderid = (@Orderid+1) where ID=@ID	 
		end 
	end
	else if @ename = 'trade'
	begin
		if @type = 1
		begin
			select @ParentID=ParentId, @OrderID=OrderID from  xy_trade where ID=@ID	
			select  top 1 @PT_IDUp=ID  from  xy_trade where ParentId=@ParentID and orderid<@orderid order by orderid desc		
			update xy_trade set Orderid = @Orderid where ID=@PT_IDUp
			update xy_trade set Orderid = (@Orderid-1) where ID=@ID	
		end

		else 
		begin
			select @ParentID=ParentId, @OrderID=OrderID from  xy_trade where ID=@ID	
			select  top 1 @PT_IDUp=ID  from  xy_trade where ParentId=@ParentID and orderid>@orderid order by orderid 	
			update xy_trade set Orderid = @Orderid where ID=@PT_IDUp
			update xy_trade set Orderid = (@Orderid+1) where ID=@ID	 
		end 
	end
	else
		begin
		return -2
		end
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertNewsTitles]    Script Date: 10/03/2011 19:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertNewsTitles]
(
	@NT_ID int output,
	@NT_Name varchar(200),
	@NT_NessName varchar(50),
	@NT_PID int,
	@NT_EnName varchar(50),
	@NT_TempletFolder varchar(500),
	@NT_TempletViewAddress varchar(500),
	@NT_IsShow bit,
	@NT_IsAllowContribut bit,
	@DomainName varchar(100)
)
AS
 

	if exists(select NT_Name from n_NewsTitleInfo  where NT_Name=@NT_Name and NT_PID=@NT_PID )
		return -1

	declare @Count int 
	
	declare @orderid int 

	select top 1 @orderid=orderid from n_NewsTitleInfo where NT_PID=@NT_PID order by orderid desc
	
	select @Count=Count(*) from n_NewsTitleInfo where NT_PID=@NT_PID
	
	if @Count <1
		set @orderid=0



	insert into n_NewsTitleInfo (NT_Name,NT_NessName,NT_PID,NT_EnName,NT_TempletFolderAddress,NT_TempletViewAddress,NT_IsShow,NT_IsAllowContribut,DomainName,orderid)
	values (@NT_Name,@NT_NessName,@NT_PID,@NT_EnName,@NT_TempletFolder,@NT_TempletViewAddress,@NT_IsShow,@NT_IsAllowContribut,@DomainName,@orderid+1)

	if @@error <> 0
		return -2

	set @NT_ID = @@identity
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateNewsTitles]    Script Date: 10/03/2011 19:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateNewsTitles]
(
	@NT_ID int,
	@NT_Name varchar(200),
	@NT_NessName varchar(50),
	@NT_PID int,
	@NT_EnName varchar(50),
	@NT_TempletFolder varchar(500),
	@NT_TempletViewAddress varchar(500),
	@NT_IsShow bit,
	@NT_IsAllowContribut bit,
	@DomainName varchar(100)
)
AS


	declare @ParentIDOld bigint
	declare @Orderid int
	declare @newOrderid int
	declare @count int
	
	SELECT @ParentIDOld=NT_PID from n_NewsTitleInfo where NT_ID = @NT_ID

	if @ParentIDOld <> @NT_PID
	begin 
		select top 1 @Orderid=orderid from  n_NewsTitleInfo where  NT_PID=@NT_PID order by orderid desc
		select @count=count(*) from  n_NewsTitleInfo where  NT_PID=@NT_PID
		
		if @count >0 
			set	@newOrderid = (@Orderid+1)
		else 
			set @newOrderid = 1
		
		update n_NewsTitleInfo 
		set NT_Name = @NT_Name,
		NT_NessName = @NT_NessName,
		NT_PID = @NT_PID,
		NT_EnName = @NT_EnName,
		NT_TempletFolderAddress = @NT_TempletFolder,
		NT_TempletViewAddress = @NT_TempletViewAddress,
		NT_IsShow = @NT_IsShow,
		NT_IsAllowContribut = @NT_IsAllowContribut,
		DomainName = @DomainName,
		orderid=@newOrderid
		where NT_ID = @NT_ID
		
	end
	else
	begin

		update n_NewsTitleInfo 
		set NT_Name = @NT_Name,
		NT_NessName = @NT_NessName,
		NT_PID = @NT_PID,
		NT_EnName = @NT_EnName,
		NT_TempletFolderAddress = @NT_TempletFolder,
		NT_TempletViewAddress = @NT_TempletViewAddress,
		NT_IsShow = @NT_IsShow,
		NT_IsAllowContribut = @NT_IsAllowContribut,
		DomainName = @DomainName
		where NT_ID = @NT_ID

	end

	

	if @@error <> 0
		return -2
GO
/****** Object:  View [dbo].[XYV_News]    Script Date: 10/03/2011 19:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_News]
AS
SELECT     n_News.NS_ID, n_News.NS_Type, n_News.NS_NewsName, n_News.NS_TitleStyle, n_News.NS_Sort, n_News.NT_ID, 
                      n_News.NS_KeyWord, n_News.NS_LinkAddress, n_News.NS_PicUrl, n_News.NS_NewsAuthor, n_News.NS_NewsOrigin, 
                      n_News.NS_NewsLess, n_News.NS_NewsNote, n_News.NS_AddTime, n_News.NS_Count, n_News.NS_IsCommand, 
                      n_News.NS_HTMLPage, n_News.NS_IsDiscuss, n_News.NS_IsTop, n_News.NS_IsHot, n_News.NS_IsSlide, 
                      n_NewsTitleInfo.NT_Name, n_NewsTitleInfo.NT_NessName, n_NewsTitleInfo.NT_EnName, n_NewsTitleInfo.NT_TempletViewAddress, 
                      n_NewsTitleInfo.NT_TempletFolderAddress, n_News.AuditingState, n_News.IsHasImage, n_News.AreaIds, n_News.TradeIds, 
                      CASE WHEN
                          (SELECT     COUNT(CN_ID)
                            FROM          n_ChargeNewsSet
                            WHERE      n_ChargeNewsSet.NS_ID = n_News.Ns_ID) > 0 THEN 1 ELSE 0 END AS IsChargeNews, n_News.NS_TwoName, 
                      n_News.TopicType, n_News.Contributor, n_NewsTitleInfo.NT_IsShow, n_NewsTitleInfo.DomainName, n_News.UM_ID, 
                      n_News.FileUrl, n_News.ProtypeIds
FROM         n_News INNER JOIN
                      n_NewsTitleInfo ON CONVERT(int, SUBSTRING(n_News.NT_ID, 2, CHARINDEX(',', n_News.NT_ID, 2) - 2)) = n_NewsTitleInfo.NT_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertInviteBusinessman]    Script Date: 10/03/2011 19:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[XYP_InsertInviteBusinessman]
(
	@IBI_ID bigint output,
	@U_ID bigint,
	@IBI_Title varchar(200),
	@IBI_Content text,
	@IT_ID bigint,
	@A_Area varchar(1000),
	@S_Name varchar(500),
	@IBI_Description text,
	@IBI_Support varchar(8000),
	@IBI_Demand varchar(8000),
	@IBI_EndDate  int,
	@IBI_EndTime datetime,
	@IBI_URL varchar(100),
	@IBI_Sign tinyint,
	@P_ID bigint
)
AS
	declare @count int 
	select @count=count(IBI_ID) from i_InviteBusinessmanInfo where U_ID=@U_ID and IBI_Title = @IBI_Title and IBI_Sign = @IBI_Sign
	
	if @count >0
		return -1

	Begin tran tr

	INSERT INTO i_InviteBusinessmanInfo ([U_ID], [IBI_Title], [IBI_Content], [IT_ID], [A_Area], [IBI_Description], [IBI_Support], [IBI_Demand],[IBI_EndDate],IBI_EndTime,IBI_URL,IBI_Sign,P_ID) 
		VALUES (@U_ID, @IBI_Title, @IBI_Content, @IT_ID, @A_Area, @IBI_Description, @IBI_Support, @IBI_Demand,@IBI_EndDate,@IBI_EndTime,@IBI_URL,@IBI_Sign,@P_ID)

	Update i_InviteBusinessType set InfoCount = InfoCount + 1 where IT_ID = @IT_ID

	if @@error <>0
		Begin
			Rollback tran tr
			return -2
		End

	Commit

	set @IBI_ID= @@identity
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertInviteBusinessType]    Script Date: 10/03/2011 19:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[XYP_InsertInviteBusinessType]
(
	@IT_Name varchar(100),
	@IT_ParentID bigint,
	@ModuleName varchar(50),
	@FullId varchar(500)
)
as 
	declare @Count int 
	declare @orderid int 
	select top 1 @orderid=orderid from i_InviteBusinessType where IT_ParentID=@IT_ParentID order by orderid desc

    if exists (select IT_ID from i_InviteBusinessType where IT_Name=@IT_Name and IT_ParentID=@IT_ParentID and ModuleName=@ModuleName)
		Return -1

	select @Count=Count(*) from i_InviteBusinessType where IT_ParentID=@IT_ParentID
	
	if @Count <1
		set @orderid=0	

    insert into i_InviteBusinessType (IT_Name,IT_ParentID,ModuleName,FullId,orderid) values (@IT_Name,@IT_ParentID,@ModuleName,@FullId,@orderid+1)

	if @@error <> 0
        return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateInviteBusinessType]    Script Date: 10/03/2011 19:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   procedure [dbo].[XYP_UpdateInviteBusinessType]
(
	@IT_ID bigint,
	@IT_Name varchar(100),
	@ModuleName varchar(50),
	@IT_ParentID bigint,
	@FullId varchar(500)
)
 as

	declare @ParentIDOld bigint
	declare @Orderid int
	declare @newOrderid int
	declare @count int


	SELECT @ParentIDOld=IT_ParentID from i_InviteBusinessType where IT_ID = @IT_ID
	
	if @ParentIDOld <> @IT_ParentID
	begin 
		select top 1 @Orderid=orderid from  i_InviteBusinessType where  IT_ParentID=@IT_ParentID order by orderid desc
		select @count=count(*) from  i_InviteBusinessType where  IT_ParentID=@IT_ParentID
		
		if @count >0 
			set	@newOrderid = (@Orderid+1)
		else 
			set @newOrderid = 1
		
		update i_InviteBusinessType set IT_Name=@IT_Name,
		ModuleName=@ModuleName,
		IT_ParentID=@IT_ParentID,
		orderid= @newOrderid,
		FullId =@FullId 
		where IT_ID=@IT_ID

	end 
	
	else 
	begin
		update i_InviteBusinessType set IT_Name=@IT_Name,
		ModuleName=@ModuleName,
		IT_ParentID=@IT_ParentID,
		FullId =@FullId 
		where IT_ID=@IT_ID
	end	
   
 
   if @@error <> 0
       return -2
GO
/****** Object:  View [dbo].[XYV_InviteBusinessmanInfo]    Script Date: 10/03/2011 19:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_InviteBusinessmanInfo]
AS
SELECT 

		i_InviteBusinessmanInfo.IBI_ID, 
		i_InviteBusinessmanInfo.U_ID, 
		i_InviteBusinessmanInfo.IBI_Title, 
		i_InviteBusinessmanInfo.IBI_Content, 
		i_InviteBusinessmanInfo.IT_ID, 
		i_InviteBusinessmanInfo.A_Area, 
		i_InviteBusinessmanInfo.S_Name, 
		i_InviteBusinessmanInfo.IBI_Description, 
		i_InviteBusinessmanInfo.IBI_Support, 
		i_InviteBusinessmanInfo.IBI_Demand, 
		i_InviteBusinessmanInfo.IBI_HTMLPage, 
		i_InviteBusinessmanInfo.IBI_PublishDate, 
		i_InviteBusinessmanInfo.IBI_ClickNum, 
		i_InviteBusinessmanInfo.IBI_Vouch, 
		i_InviteBusinessmanInfo.IBI_Pause, 
		i_InviteBusinessmanInfo.IBI_MessageNum, 
		i_InviteBusinessmanInfo.IBI_NoMessageNum, 
		i_InviteBusinessmanInfo.IBI_EndTime, 
		i_InviteBusinessmanInfo.IBI_EndDate, 
		i_InviteBusinessmanInfo.IBI_URL, 
		i_InviteBusinessmanInfo.IBI_Sign, 
		i_InviteBusinessmanInfo.P_ID, 
 		i_InviteBusinessmanInfo.AuditingState,
		i_InviteBusinessmanInfo.IsHasImage,

		i_InviteBusinessType.IT_Name, 
		i_InviteBusinessType.ModuleName,
		i_InviteBusinessType.FullId,

		u_user.U_Name, 
		u_user.U_Email, 
		u_user.U_RegDate, 
		u_user.U_HtmlPage, 
		u_user.U_ClickNum, 
		u_user.U_TempName, 
		u_user.UG_ID, 
		u_user.U_Mark,

		b_userGrade.UG_order,

		u_userinfo.UI_Name, 
		u_userinfo.Area_ID, 
		u_userinfo.UI_Area, 
		u_userinfo.UI_License, 
		u_userinfo.UI_Character, 
		u_userinfo.UI_LinkMan, 
		u_userinfo.UI_Number, 
		u_userinfo.UI_HomePage, 
		u_userinfo.UI_Synopsis, 
		u_userinfo.UI_Postcode, 
		u_userinfo.UI_Mobil,
		u_userinfo.UT_ID, 
		u_userinfo.U_Section,
		u_userinfo.U_Post, 
		u_userinfo.U_Way,
		u_userinfo.U_SupplyProduct,
		u_userinfo.U_BuyProduct, 
		u_userinfo.U_Mode, 
		u_userinfo.U_Money, 
		u_userinfo.U_Year, 
		u_userinfo.U_Address, 
		u_userinfo.U_PType, 
		u_userinfo.U_MoneyType,
		u_userinfo.IM, 
		u_userinfo.Telephone, 
		u_userinfo.Fax, 
		u_userinfo.TradeIds as UserTradeIds,

		u_user.UserAuditingState,
		u_user.UserIsHasImage

FROM         
		i_InviteBusinessmanInfo 
		Inner Join
		i_InviteBusinessType  ON i_InviteBusinessType.IT_ID = i_InviteBusinessmanInfo.IT_ID 
		Inner Join 
		u_user on i_InviteBusinessmanInfo.U_ID = u_user.u_id 
		Inner Join 
		b_UserGrade on b_UserGrade.UG_ID = u_user.UG_ID
		Inner Join 
		u_UserInfo on u_user.U_ID = u_userinfo.U_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateExpressMessage]    Script Date: 10/03/2011 19:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdateExpressMessage]
(
	@Id int,
	@ModuleName varchar(50),
	@Body varchar(300)
)

as

	update XY_ExpressMessage set ModuleName = @ModuleName, body = @Body
	where ID = @Id
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertExpressMessage]    Script Date: 10/03/2011 19:33:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_InsertExpressMessage]
(
  @ModuleName varchar(50),
  @Body varchar(300)
)

as 

if Not Exists (select id from XY_ExpressMessage where body=@Body and ModuleName=@ModuleName)
	insert into XY_ExpressMessage(ModuleName,Body) values (@ModuleName,@Body)
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertField]    Script Date: 10/03/2011 19:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[XYP_InsertField]
(
	@TypeId bigint,
	@ModuleName varchar(50),
	@EName varchar(50),
	@CName varchar(50),
	@Type varchar(20),
	@Description varchar(5000),
	@SelectValue varchar(5000),
	@FieldSize	int
)
AS
if @@trancount > 0
		rollback tran
else
	begin
		begin tran tr
		if EXISTS (select * from XY_Field where EName = @EName and ModuleName = @ModuleName)
		begin
			rollback tran tr
			return -2--有重名字段			
		end

		--错误标识 如果调用存储过程出错 则回滚事务
		DECLARE	@return_value int

		INSERT INTO XY_Field (TypeID,ModuleName,EName,CName,Type,Description,SelectValue,FieldSize)
		values (@TypeId,@ModuleName,@EName,@CName,@Type,@Description,@SelectValue,@FieldSize)
		
		exec @return_value=XYP_InsertFieldTable @ModuleName,@EName,@Type,@FieldSize
		if @return_value <> 0
		begin
			rollback tran tr
			return -10
		end		

		if @@error <> 0
		begin
			rollback tran tr
			return -10
		end
		commit
	end
GO
/****** Object:  StoredProcedure [dbo].[XYP_DeleteFieldTable]    Script Date: 10/03/2011 19:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_DeleteFieldTable]
	@ModuleName varchar(50),
	@EName varchar(50)
AS
BEGIN
		declare @tablename varchar(200),@sql varchar(500)

		set @tablename = 'XY_FieldContent' + @ModuleName 
		
		--判断是否有其他子类在使用
		if NOT EXISTS (select * from XY_Field where ModuleName = @ModuleName and EName=@EName)
		begin
			set @sql = 'ALTER TABLE ' + @tablename + ' DROP COLUMN ' + @EName

			exec(@sql)
		end
--		if NOT EXISTS (SELECT * FROM XY_Field WHERE ModuleName=@ModuleName)
--		begin
--			if NOT EXISTS (SELECT * FROM XY_FieldInherit WHERE ModuleName=@ModuleName)
--			begin
--				set @sql = 'drop table ' + @tablename
--				exec(@sql)
--			end
--		end
		return @@error
END
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateField]    Script Date: 10/03/2011 19:34:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateField]
	@id	bigint,
	@TypeId bigint,
	@ModuleName varchar(50),
	@EName varchar(50),
	@CName varchar(50),
	@Type varchar(20),
	@Description varchar(5000),
	@SelectValue varchar(1000),
	@FieldSize	int
AS
BEGIN
if @@trancount > 0
		rollback tran
else
	begin
		begin tran tr		
		if exists(select * from XY_Field where id = @id)
		begin
			--如果字段都没有改变则不需要更新
			if not exists (select * from XY_Field where id=@id and EName=@EName and CName=@CName and [Type]=@Type and Description=@Description and SelectValue=@SelectValue and FieldSize=@FieldSize)
			begin
				--先判断是否有重名
				if exists (select * from XY_Field where id<>@id and ModuleName=@ModuleName and EName=@EName)
				begin
					rollback tran tr
					return -2--出现重名
				end

				--错误标识 如果调用存储过程出错 则回滚事务
				DECLARE	@return_value int

				declare @oldename varchar(50)
				select @oldename = EName from XY_Field where id=@id

				--更新字段
				update XY_Field set EName=@EName,CName=@CName,[Type]=@Type,Description=@Description,SelectValue=@SelectValue,FieldSize=@FieldSize where id=@id
				exec @return_value=XYP_UpdateFieldTable @ModuleName,@EName,@Type,@FieldSize,@oldename
				if @return_value <> 0
				begin
					rollback tran tr
					return -10
				end
			end
		end
			
		if @@error <> 0
			begin
				rollback tran tr
				return -10
			end
		commit
	end
END
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUserGradePopedom]    Script Date: 10/03/2011 19:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateUserGradePopedom]
@UG_ID int ,
@UGP_ID int ,
@UGP_IsShop   bit ,
@UGP_IsMessage bit ,
@UGP_RefurbishTime int ,
@UGP_RefubishNum int ,
@UGP_RefubishTimes int ,
@UGP_Faith int ,
@UGP_IsPayMent bit,
@UGP_IsLeachKeyWord bit,
@UGP_IsSupplyLinkMathod bit,
@UGP_IsBuyLinkMathod bit,
@UGP_IsSupplyMachiningLinkMathod bit ,
@UGP_IsBuyMachiningLinkMathod bit,
@UGP_IsBuinessLinkMathod bit ,
@UGP_IsSurrogateLinkMathod bit,
@UGP_IsSupplyServerLinkMathod bit,
@UGP_IsBuyServerLinkMathod bit ,
@UGP_IsExhibtionLinkMathod bit,
@UGP_IsBrandLinkMathod bit,
@UGP_IsJobLinkMathod bit,
@UGP_IsCompanyLinkMathod bit,
@SeeBySellOffer bit,
@SeeByBuyOffer bit,
@SeeBySellMachining bit,
@SeeByBuyMachining bit,
@SeeBySellBusiness bit,
@SeeByBuyBusiness bit,
@SeeBySellService bit,
@SeeByBuyService bit,
@SeeByExhibtion bit,
@SeeByBrand bit,
@SeeByJob bit,
@SeeByCompany bit,
@AdviseDays int,
@DebaseUserGrade int,
@IsQQOnLineTalk bit,
@IsShowChargeNews bit,
@UploadPicNum int,
@SeeContactsNum int,
@MessageNum varchar(500),
@LimitDate int,
@iscompanyprotype bit,
@IsSubdomain bit,
@IsBindingTopdomain  bit

AS


Update b_UserGradePopedom 
	Set UG_ID=@UG_ID,
		UGP_IsShop=@UGP_IsShop,
		UGP_IsMessage=@UGP_IsMessage,
		UGP_RefurbishTime=@UGP_RefurbishTime,
		UGP_RefubishNum=@UGP_RefubishNum,
		UGP_RefubishTimes=@UGP_RefubishTimes,
		UGP_Faith=@UGP_Faith ,
		UGP_IsPayMent=@UGP_IsPayMent  ,
		UGP_IsLeachKeyWord=@UGP_IsLeachKeyWord ,
		UGP_IsSupplyLinkMathod=@UGP_IsSupplyLinkMathod  ,
		UGP_IsBuyLinkMathod=@UGP_IsBuyLinkMathod ,
		UGP_IsSupplyMachiningLinkMathod=@UGP_IsSupplyMachiningLinkMathod  ,
		UGP_IsBuyMachiningLinkMathod=@UGP_IsBuyMachiningLinkMathod  ,  
		UGP_IsBuinessLinkMathod=@UGP_IsBuinessLinkMathod  ,
		UGP_IsSurrogateLinkMathod=@UGP_IsSurrogateLinkMathod  ,
		UGP_IsSupplyServerLinkMathod=@UGP_IsSupplyServerLinkMathod  ,
		UGP_IsBuyServerLinkMathod=@UGP_IsBuyServerLinkMathod  ,
		UGP_IsExhibtionLinkMathod=@UGP_IsExhibtionLinkMathod  ,
		UGP_IsBrandLinkMathod=@UGP_IsBrandLinkMathod  ,
		UGP_IsJobLinkMathod=@UGP_IsJobLinkMathod ,
		UGP_IsCompanyLinkMathod=@UGP_IsCompanyLinkMathod,
		[SeeBySellOffer] = @SeeBySellOffer,
		[SeeByBuyOffer] = @SeeByBuyOffer,
		[SeeBySellMachining] = @SeeBySellMachining,
		[SeeByBuyMachining] = @SeeByBuyMachining,
		[SeeBySellBusiness] = @SeeBySellBusiness, 
		[SeeByBuyBusiness] = @SeeByBuyBusiness, 
		[SeeBySellService] = @SeeBySellService,
		[SeeByBuyService] = @SeeByBuyService,
		[SeeByExhibtion] = @SeeByExhibtion,
		[SeeByBrand] = @SeeByBrand,
		[SeeByJob] = @SeeByJob,
		[SeeByCompany] = @SeeByCompany,
		AdviseDays = @AdviseDays,
		DebaseUserGrade=@DebaseUserGrade,
		IsQQOnLineTalk=@IsQQOnLineTalk,
		IsShowChargeNews = @IsShowChargeNews,
		UploadPicNum=@UploadPicNum,
		SeeContactsNum=@SeeContactsNum,
		MessageNum=@MessageNum,
		LimitDate=@LimitDate,
		iscompanyprotype=@iscompanyprotype,
		IsSubdomain=@IsSubdomain,
		IsBindingTopdomain=@IsBindingTopdomain
Where UGP_ID=@UGP_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertUserGradePopedom]    Script Date: 10/03/2011 19:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertUserGradePopedom]
	@UG_ID int
AS
	declare @count int 
	select @count=count(UG_ID) from b_UserGradePopedom where UG_ID=@UG_ID
	if @count >0 
        return -1

    insert into b_UserGradePopedom (UG_ID)values(@UG_ID)
GO
/****** Object:  StoredProcedure [dbo].[XYP_GetUserGradeState]    Script Date: 10/03/2011 19:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_GetUserGradeState]
(
   @UserId bigint,
   @Days varchar(100) output
)
as 
       declare	@guid smallint,			/*等级编号*/
				@tempnum int,			/*结束时间和当前时间之差*/
				@temptime varchar(50)		/*权限结束时间*/
			

		Set @Days= ''

		if(@UserId <= 0) return -2

		select @guid = UGR_ID,@temptime =U_EndTime  from u_graderelation where U_ID =@UserId
 
		if(@temptime <> '')
			set @tempnum = datediff(day,getdate(),@temptime)
		else 
			set @tempnum = 9999

		if @@error <> 0  return -2

		if(@tempnum <= 0)
			begin
				Declare @DebaseUserGrade int

				Select @DebaseUserGrade = DebaseUserGrade from b_UserGradePopedom where UG_ID = @guid

				if(@guid = @DebaseUserGrade)
					begin
						set @days ='degrade|done'
						return 1;
					end
				
				begin tran tr
				update u_User set UG_ID=(@DebaseUserGrade)
				update u_graderelation set UGR_ID=@DebaseUserGrade,U_EndTime=(getdate()) where U_ID=@UserId

				if(@@error <> 0)
					begin
						set @Days = 'degrade|err'
						rollback tran
						return -2
					end
				else 
					begin
						set @Days = 'degrade|ok'
						commit tran 
						return 1;
					end
			end

		if((@tempnum <= (select AdviseDays from b_UserGradePopedom where UG_ID = @guid)))  
			set @Days = 'remind|'+Convert(varchar(50),@tempnum)
		Else
			set @Days = 'normal|'+ Convert(varchar(50),@tempnum)
GO
/****** Object:  StoredProcedure [dbo].[XYP_IsUserGradeEndData]    Script Date: 10/03/2011 19:33:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_IsUserGradeEndData]
(
   @UserName varchar(50),
   @Days varchar(100) output
)
as 
  begin tran tr
       declare	@userId bigint,
				@guid smallint,			/*等级编号*/
				@tempnum int,			/*结束时间和当前时间之差*/
				@temptime datetime		/*权限结束时间*/

		Set @Days= ''

		Select @UserId = U_ID from u_User where U_Name=@UserName

		if(@UserId <= 0) return

		select @guid = UGR_ID,@temptime =convert(datetime,U_EndTime)  from u_graderelation where U_ID =@UserId
 
		set @tempnum = datediff(day,@temptime,getdate())

		if @@error <> 0  return;

		if(@tempnum <= 0)
			begin
				/*小于等于0，标示需要对用户进行降级操作*/

				Declare @DebaseUserGrade int

				Select @DebaseUserGrade = DebaseUserGrade from b_UserGradePopedom where UGP_ID = @guid
				
				update u_User set UG_ID=(@DebaseUserGrade)
				update u_graderelation set UGR_ID=@DebaseUserGrade,U_EndTime=(getdate()) where U_ID=@UserId

				if(@@error <> 0)
				  begin
					 set @Days = 'update|err'
					 rollback tran
					 return -2
				  end
				else 
				  begin
					 set @Days = 'update|ok'
				  end
			end

		if((@tempnum <= (select AdviseDays from b_UserGradePopedom where UG_ID = @guid)))  
			/*小于到期后指定天数，标示需要对用户进行提示*/
			set @Days = 'remind|'+@tempnum
		Else
			/*大于到期后指定天数,标示不需要对用户进行操作*/
			set @Days = 'ok|'+ @tempnum

	commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertChargeNews]    Script Date: 10/03/2011 19:33:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[XYP_InsertChargeNews]
(
   @CN_VisitPopedom smallint,
   @CN_ConsumeWebMoney int,
   @CN_ConsumeMoney int,
   @NS_ID bigint 
)
 as 

   begin tran tr 
     begin 
        if not exists (select CN_ID from n_ChargeNewsSet where CN_VisitPopedom=@CN_VisitPopedom and NS_ID=@NS_ID)
           begin
            insert into n_ChargeNewsSet(CN_VisitPopedom, CN_ConsumeWebMoney, CN_ConsumeMoney, NS_ID) values (@CN_VisitPopedom, @CN_ConsumeWebMoney, @CN_ConsumeMoney, @NS_ID)
           end
        else
           begin
               rollback tran tr
               return -1
           end
       if @@error <> 0
          begin 
              rollback tran tr
              return -1
          end
      end
 commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateChargeNews]    Script Date: 10/03/2011 19:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[XYP_UpdateChargeNews]
(
  @CN_ID bigint,
  @CN_VisitPopedom smallint,
  @CN_ConsumeWebMoney int,
  @CN_ConsumeMoney int,
  @NS_ID bigint
)
as
   begin tran tr
       begin
         update n_ChargeNewsSet set CN_VisitPopedom=@CN_VisitPopedom, CN_ConsumeWebMoney=@CN_ConsumeWebMoney, CN_ConsumeMoney=@CN_ConsumeMoney, NS_ID=@NS_ID where CN_ID=@CN_ID
       end
    if @@error <> 0
        begin 
           rollback tran tr
           return -2
        end
commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_IsChargedForNews]    Script Date: 10/03/2011 19:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE              procedure [dbo].[XYP_IsChargedForNews]
(
   @U_ID bigint,
   @NS_ID bigint,
   @CN_ConsumeWebMoney int output,
   @CN_ConsumeMoney int output
)
as  
   begin  
	declare @val smallint  
 	declare @lue bigint
        declare @uid bigint
        set @uid = @U_ID 
   begin 
     if not exists (select * from n_ChargeNewsSet where NS_ID=@NS_ID)
        set @lue = -1
     else
       if @uid = 0
          set @lue = -3
       else
         begin                
	    set @val  = (select  UGR_ID   from u_graderelation where U_ID=@U_ID)
            if not  exists  (select *  from n_ChargeNewsSet where CN_VisitPopedom=@val and  NS_ID=@NS_ID)         
              begin
                if not exists (select * from n_ChargeNewsSet where NS_ID=@NS_ID)
                   set @lue =  -1
                else
                   set @lue = -2 
              end
            else
	      begin
                if not exists (select * from n_ChargeNewsInfo  where U_ID=@U_ID and  NS_ID=@NS_ID) 
                  begin 
                    set @lue =  0
                    set @CN_ConsumeWebMoney = (select CN_ConsumeWebMoney from n_ChargeNewsSet where CN_VisitPopedom=@val and  NS_ID=@NS_ID) 
                    set @CN_ConsumeMoney = (select CN_ConsumeMoney from n_ChargeNewsSet where CN_VisitPopedom=@val and  NS_ID=@NS_ID)
                  end
                else
                  set @lue = (select CI_ID from n_ChargeNewsInfo where U_ID=@U_ID and NS_ID=@NS_ID)
                end
         end
      end
   return  @lue
 end
GO
/****** Object:  View [dbo].[XYV_ChargeNewsSet]    Script Date: 10/03/2011 19:32:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_ChargeNewsSet]
AS
SELECT     b_UserGrade.UG_Name, n_ChargeNewsSet.CN_ID, n_ChargeNewsSet.CN_VisitPopedom, 
                      n_ChargeNewsSet.CN_ConsumeWebMoney, n_ChargeNewsSet.CN_ConsumeMoney, n_ChargeNewsSet.NS_ID, 
                      n_News.NS_NewsName
FROM         n_News RIGHT OUTER JOIN
                      n_ChargeNewsSet ON n_News.NS_ID = n_ChargeNewsSet.NS_ID LEFT OUTER JOIN
                      b_UserGrade ON n_ChargeNewsSet.CN_VisitPopedom = b_UserGrade.UG_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_GetMaxIndex]    Script Date: 10/03/2011 19:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***** 1 *******/

CREATE PROCEDURE [dbo].[XYP_GetMaxIndex] 
@tablename  varchar(200)
as
select IsNull(max(At_Index),0) from  pl_Attachment  where DescTabName=@tablename

/***** 2 *******/

If Exists (Select * from syscolumns Where Name='SuperClassIdList' And ID=OBJECT_ID('XY_ClassLabel'))
	alter table XY_ClassLabel drop column SuperClassIdList

If Not Exists (Select * from syscolumns Where Name='ChildClassIdList' And ID=OBJECT_ID('XY_ClassLabel'))
	alter table XY_ClassLabel drop column ChildClassIdList 


/***** 3 *******/

IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[XYP_Pagination]') AND type in (N'P', N'PC'))
DROP PROCEDURE [XYP_Pagination]

IF NOT EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[XYP_Pagination]') AND type in (N'P', N'PC'))
BEGIN
EXEC sp_executesql @statement = N'CREATE PROCEDURE [XYP_Pagination]

@TableName varchar(100),	
@FieldNames varchar(1000),		
@SortFieldName varchar(255)='''', 
@PageSize   int = 10,			
@PageIndex  int = 1,			
@OrderType bit = 1,				
@StrWhere  varchar(2500) = ''''	

AS 

declare @strSQL   varchar(5000)       
declare @strTmp   varchar(110)        
declare @strOrder varchar(400)        

if @FieldNames is null Or @FieldNames=''''
	Set @FieldNames =''*''

if @OrderType != 0 
	begin 
	    set @strTmp = ''<(select min'' 
		set @strOrder = '' order by ['' + @SortFieldName +''] desc'' 
	end 
else 
	begin 
	    set @strTmp = ''>(select max'' 
	    set @strOrder = '' order by ['' + @SortFieldName +''] asc'' 
	end 

if @PageIndex = 1 
	begin 
	    if @StrWhere != ''''   
			set @strSQL = ''select top '' + str(@PageSize) +'' ''+@FieldNames+ ''  from ['' + @TableName + ''] where '' + @StrWhere + '' '' + @strOrder 
	     else 
			set @strSQL = ''select top '' + str(@PageSize) +'' ''+@FieldNames+ ''  from [''+ @TableName + ''] ''+ @strOrder 
	end 
else 
	begin 
	set @strSQL = ''select top '' + str(@PageSize) +'' ''+@FieldNames+ ''  from ['' 
	    + @TableName + ''] where ['' + @SortFieldName + '']'' + @strTmp + ''([''+ @SortFieldName + '']) from (select top '' + str((@PageIndex-1)*@PageSize) + '' [''+ @SortFieldName + ''] from ['' + @TableName + '']'' + @strOrder + '') as tblTmp)''+ @strOrder 
	
	if @StrWhere != '''' 
	    set @strSQL = ''select top '' + str(@PageSize) +'' ''+@FieldNames+ ''  from ['' 
	        + @TableName + ''] where ['' + @SortFieldName + '']'' + @strTmp + ''(['' 
	        + @SortFieldName + '']) from (select top '' + str((@PageIndex-1)*@PageSize) + '' ['' 
	        + @SortFieldName + ''] from ['' + @TableName + ''] where '' + @StrWhere + '' '' 
	        + @strOrder + '') as tblTmp) and '' + @StrWhere + '' '' + @strOrder 
	end 
	exec (@strSQL) 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertAttachment]    Script Date: 10/03/2011 19:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertAttachment]
(
	@AT_ID bigint output,
	@DescTabID bigint,
	@DescTabName varchar(50),
	@At_FileFormat varchar(10),
	@At_Index int,
	@At_FileType varchar(50),
	@At_Remark varchar(500),
    @At_Path varchar(500),
    @S_ID smallint    
)
AS
begin 
	INSERT INTO [pl_Attachment] ([At_Path],[S_ID],[DescTabID], [DescTabName], [At_FileFormat], [At_Index], [At_FileType], [At_Remark]) 
	VALUES (@At_Path,@S_ID, @DescTabID, @DescTabName, @At_FileFormat, @At_Index, @At_FileType, @At_Remark)

	if @@error = 0
		set @AT_ID=@@identity
	else
		return -2
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateHTMLPageSet]    Script Date: 10/03/2011 19:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[XYP_UpdateHTMLPageSet]
(
	@HPS_ID tinyint,
	@HPS_Index bit,
	@HPS_Indextime int,
	@HPS_Supply bit,
	@HPS_Supplytime int,
	@HPS_Demand bit,
	@HPS_Demandtime int,
	@HPS_Business bit,
	@HPS_Businesstime int,
	@HPS_Engage bit,
	@HPS_Engagetime int,
	@HPS_Corporation bit,
	@HPS_Corporationtime int,
	@HPS_Address bit,
	@HPS_Addresstime int
)
AS
        begin
        begin tran tr
        begin
        UPDATE b_HTMLPageSet SET HPS_Index = @HPS_Index,HPS_Indextime = @HPS_Indextime,
		HPS_Supply = @HPS_Supply,HPS_Supplytime = @HPS_Supplytime,HPS_Demand = @HPS_Demand,
		HPS_Demandtime = @HPS_Demandtime,HPS_Business = @HPS_Business,HPS_Businesstime = @HPS_Businesstime,
		HPS_Engage = @HPS_Engage,HPS_Engagetime = @HPS_Engagetime,HPS_Corporation = @HPS_Corporation,
		HPS_Corporationtime = @HPS_Corporationtime,HPS_Address = @HPS_Address,HPS_Addresstime = @HPS_Addresstime
		where HPS_ID = @HPS_ID
		
   	end
	if @@error <> 0
	begin
		rollback tran tr
		return -2
	end
	end
	commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertHTMLPageSet]    Script Date: 10/03/2011 19:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[XYP_InsertHTMLPageSet]
(
        @HPS_Index bit,
	@HPS_Indextime int,
	@HPS_Supply bit,
	@HPS_Supplytime int,
	@HPS_Demand bit,
	@HPS_Demandtime int,
	@HPS_Business bit,
	@HPS_Businesstime int,
	@HPS_Engage bit,
	@HPS_Engagetime int,
	@HPS_Corporation bit,
	@HPS_Corporationtime int,
	@HPS_Address bit,
	@HPS_Addresstime int
)
AS
   begin
   begin tran tr
   begin
   	INSERT INTO b_HTMLPageSet (HPS_Index,HPS_Indextime,HPS_Supply,HPS_Supplytime
		,HPS_Demand,HPS_Demandtime,HPS_Business,HPS_Businesstime,HPS_Engage,
		HPS_Engagetime,HPS_Corporation,HPS_Corporationtime,HPS_Address,HPS_Addresstime)
		 values (@HPS_Index,@HPS_Indextime,@HPS_Supply,@HPS_Supplytime
		,@HPS_Demand,@HPS_Demandtime,@HPS_Business,@HPS_Businesstime,@HPS_Engage,
		@HPS_Engagetime,@HPS_Corporation,@HPS_Corporationtime,@HPS_Address,@HPS_Addresstime)
   end
   if @@error <> 0
   begin
   rollback tran tr
   return -2
   end
   end
   commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateArea]    Script Date: 10/03/2011 19:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- 修改地区信息

-- 创建标识：刘甲20080422

-- 参数：
-- @ID			要修改记录的ID值
-- @ParentID	父节点的ID值
-- @Name		地区的名称

-- 返回值：
-- -1:要修改成的记录已经存在，-2:发生错误
-- =============================================
CREATE PROCEDURE [dbo].[XYP_UpdateArea]
(
  @ID int,
  @Name varchar(200) 
)
AS
   begin
   begin tran tr
    begin
       if not exists(select ID from XY_Area where [Name]=@Name and ID<>@ID)
            begin
              update XY_Area set [Name]=@Name where ID=@ID
            end
       else
            begin
              rollback tran tr
              return -1
            end
    end
     if @@error <> 0
       begin
             rollback tran tr
             return -2
       end
     end
  commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertArea]    Script Date: 10/03/2011 19:33:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- 插入地区信息

-- 创建标识：刘甲20080422

-- 参数：
-- @ParentID	父节点的ID值
-- @Name		地区的名称

-- 返回值：
-- -1:记录已经存在，-2:发生错误
-- =============================================

--XYP_InsertArea 51,'ddd','1,46,47,51'
CREATE PROCEDURE [dbo].[XYP_InsertArea] 
(
@ParentID int,
@Name varchar(200),
@FullID varchar(20)
)
AS
	begin
		begin tran tr

		begin

			Declare @LastId int

			if not exists(select ID from XY_Area where [Name]=@Name and ParentID=@ParentID)
				begin
					insert into XY_Area(ParentID,[Name],FullID)
					values (@ParentID,@Name,@FullID)

					Set @LastId = @@Identity

				end
			else
				begin
					rollback tran tr
					return -1
				end
		end

		if @@error <> 0
			begin
			rollback tran tr
			return -2
		end

		commit tran
	
		if @FullID<>'' and @LastId >0 
			update XY_Area set @FullID = @FullID + ',' + convert(varchar(5),@LastId) where id=@LastId

	end
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertUserAppraiseLogInfo]    Script Date: 10/03/2011 19:33:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertUserAppraiseLogInfo]
	@UserId bigint,
	@Score smallint,
	@Message nvarchar(500),
	@PostTime datetime,
	@MsgUserId bigint,
	@MsgUserIP varchar(50)
AS
BEGIN
	If exists(Select LogId From XY_UserAppraiseLog where UserId = @UserId and msgUserIP = @MsgUserIP and msgUserId = @MsgUserId and datediff(dd,posttime,getdate())=0)
		return -1;

	Insert Into XY_UserAppraiseLog(score,[message],posttime,userid,msgUserid,msgUserIP)
	values(@Score,@Message,@PostTime,@UserId,@MsgUserId,@MsgUserIP)

	If Not Exists(Select InfoId From XY_UserAppraise where UserId = @UserId)
		Insert Into XY_UserAppraise(UserId) values (@UserId)

	If(@Score >0)
		Update XY_UserAppraise Set GoodTimes = GoodTimes + 1 Where UserId = @UserId

	If(@Score = 0)
		Update XY_UserAppraise Set FairTimes = FairTimes + 1 Where UserId = @UserId

	If(@Score < 0)
		Update XY_UserAppraise Set PoorTimes = PoorTimes + 1 Where UserId = @UserId

	Update XY_UserAppraise Set TotalScore = (GoodTimes * 2) - (PoorTimes * 2) where UserId = @UserId

END
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateCartificateIsOpen]    Script Date: 10/03/2011 19:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateCartificateIsOpen]
@CE_ID bigint,
@CE_Isopen bit
 AS
begin
  begin tran tr
    update u_Certificate set CE_Isopen=@CE_Isopen where CE_ID = @CE_ID
     if @@error<>0
     begin
      rollback tran tr
   end
commit
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertCertificate]    Script Date: 10/03/2011 19:33:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertCertificate] 
(
@CE_ID bigint output,
@U_ID bigint,
@CE_Name varchar(100),
@CE_Organ varchar(100),
@CE_Begin datetime,
@CE_Upto datetime,
@CE_Type bigint,
@CE_Isopen bit

)
AS
begin
  begin tran tr
    begin 
     INSERT INTO u_Certificate(U_ID,CE_Name,CE_Organ ,CE_Begin,CE_Upto,CE_Addtime,CE_Type,CE_Isopen)
     VALUES(@U_ID,@CE_Name,@CE_Organ,@CE_Begin,@CE_Upto,getdate(),@CE_Type,@CE_Isopen)
    end
    if @@error<>0
     begin
      rollback tran tr
     end
    else
     begin
              set @CE_ID=@@identity      
   end
commit
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateCertificate]    Script Date: 10/03/2011 19:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateCertificate]
(
@CE_ID bigint,
@U_ID bigint,
@CE_Name varchar(100),
@CE_Organ varchar(100),
@CE_Begin datetime,
@CE_Upto datetime,
@CE_Type bigint,
@CE_Isopen bit

)
AS
begin
  begin tran tr
    begin 
     UPDATE u_Certificate set CE_Name=@CE_Name ,CE_Organ=@CE_Organ, 
     CE_Begin=@CE_Begin,CE_Upto=@CE_Upto,CE_Type=@CE_Type,CE_Isopen=@CE_Isopen 
      WHERE CE_ID=@CE_ID and U_ID=@U_ID
  
    end
    if @@error<>0
     begin
      rollback tran tr
   end
   
commit
end
GO
/****** Object:  View [dbo].[XYV_Certificate]    Script Date: 10/03/2011 19:32:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_Certificate]
AS
SELECT 
	u_User.U_Name, 
	u_Certificate.*, 
	u_UserInfo.UI_Name
FROM u_Certificate
	Inner Join  u_UserInfo  ON u_Certificate.U_ID = u_UserInfo.U_ID
	Inner Join  u_User ON u_UserInfo.U_ID = u_User.U_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertProductType]    Script Date: 10/03/2011 19:33:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertProductType]
(
	@PT_Name varchar(100),
	@PT_ParentID bigint,
	@ModuleName	varchar(50),
	@FullId varchar(500),
	@TradeId int,
	@FlagName varchar(50),
	@IsCustomTemplate bit,
	@Baikeid int
)
AS
	declare @Count int 
	
	declare @orderid int 

	select @Count=Count(PT_ID) from b_ProductType where PT_Name=@PT_Name and PT_ParentID=@PT_ParentID and ModuleName = @ModuleName 

	if @Count>0
		return -1

	select top 1 @orderid=orderid from b_ProductType where PT_ParentID=@PT_ParentID order by orderid desc
	
	select @Count=Count(*) from b_ProductType where PT_ParentID=@PT_ParentID
	
	if @Count <1
		set @orderid=0

	INSERT INTO b_ProductType(PT_Name, PT_ParentID,ModuleName,FullID,TradeId,orderid,FlagName,IsCustomTemplate,Baikeid) VALUES (@PT_Name, @PT_ParentID,@ModuleName,@FullId,@TradeId,@orderid+1,@FlagName,@IsCustomTemplate,@Baikeid)

	if @@error<>0
		return -2
	else
		insert into  i_InfoCount  (PT_ID)   values(@@identity)
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertUserLogin]    Script Date: 10/03/2011 19:33:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[XYP_InsertUserLogin]
(
       @U_ID bigint output,
       @RegIP varchar(20)
)
AS
  declare @LastLoginIP  varchar(20)
  declare @LastLoginDate datetime
  declare @LoginNum int
	begin
      if not exists( select *  from XY_UserLoginLog  where U_ID=@U_ID)
		begin
			INSERT INTO XY_UserLoginLog(U_ID,RegIP,FirstLoginDate,LastLoginDate,LoginNum)   VALUES (@U_ID,@RegIP,getdate(),getdate(),1)
		end  
	  else
		begin
			select 
				@LastLoginDate = LastLoginDate,
				@LoginNum = LoginNum 
			from XY_UserLoginLog  where U_ID=@U_ID  
            
			if datediff(dd,@LastLoginDate,getdate())> 0
				begin
					update XY_UserLoginLog set LoginNum = @LoginNum + 1,LastLoginDate=getdate(),LastLoginIP=@RegIP where U_ID=@U_ID
				end
			else
				begin     
					update XY_UserLoginLog set LastLoginDate=getdate(),LastLoginIP=@RegIP where U_ID=@U_ID
				end
		end
   
   if @@error <> 0
	begin
		return -2
	end
 end
GO
/****** Object:  View [dbo].[XYV_UserInfo]    Script Date: 10/03/2011 19:32:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_UserInfo]
AS
SELECT    
	u_UserInfo.UI_Name, 
	u_UserInfo.Area_ID, 
	u_UserInfo.UI_Sex, 
	u_UserInfo.UI_License, 
	u_UserInfo.UI_Area, 
	u_UserInfo.UI_Character, 
	u_UserInfo.UI_LinkMan, 
	u_UserInfo.UI_Number, 
	u_UserInfo.UI_HomePage, 
	u_UserInfo.UI_Synopsis, 
	u_UserInfo.UI_Postcode,
	u_UserInfo.UI_Mobil, 
	u_UserInfo.UT_ID, 
	u_UserInfo.U_Section, 
	u_UserInfo.U_Post, 
	u_UserInfo.U_Way, 
	u_UserInfo.U_SupplyProduct, 
	u_UserInfo.U_BuyProduct, 
	u_UserInfo.U_Mode, 
	u_UserInfo.U_Money, 
	u_UserInfo.U_Year, 
	u_UserInfo.AC_ID, 
	u_UserInfo.U_Address, 
	u_UserInfo.U_PType, 
	u_UserInfo.U_MoneyType,
	u_UserInfo.Telephone, 
	u_UserInfo.Fax, 
	u_UserInfo.U_ID, 
	u_UserInfo.IM, 
	u_userInfo.TradeIds,

	b_UserType.UT_Type, 
	b_UserType.UT_FullId,

	u_user.U_Name, 
	u_user.U_PassWord, 
	u_user.U_Email, 
	u_user.U_HtmlPage, 
	u_user.U_ClickNum, 
	u_user.U_Flag, 
	u_user.U_TempName, 
	u_user.U_Activation, 
	u_user.U_InFormation, 
	u_user.U_RegDate, 
	u_user.U_Vouch, 
	u_user.UG_ID,
	u_user.U_Mark,

	b_userGrade.UG_order,

	XY_UserLoginLog.LoginNum, 

	u_user.UserAuditingState, 
	u_user.UserIsHasImage
FROM    u_userinfo 

	Inner Join u_user on u_userinfo.U_ID =u_user.U_ID
	Inner Join 	b_UserGrade on b_UserGrade.UG_ID = u_user.UG_ID
	LEft Join b_UserType ON b_UserType.UT_ID = u_UserInfo.UT_ID
	LEft Join XY_UserLoginLog ON u_userinfo.U_ID = XY_UserLoginLog.U_ID
GO
/****** Object:  View [dbo].[XYV_ServiceInfo]    Script Date: 10/03/2011 19:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_ServiceInfo]
AS
SELECT     
			i_ServiceInfo.S_ID, 
			i_ServiceInfo.S_Title, 
			i_ServiceInfo.U_ID, 
			i_ServiceInfo.ST_ID, 
			i_ServiceInfo.S_Content, 
			i_ServiceInfo.S_AddTime, 
			i_ServiceInfo.S_EndDate, 
			i_ServiceInfo.S_EndTime, 
			i_ServiceInfo.S_Vouch, 
			i_ServiceInfo.S_Pause, 
			i_ServiceInfo.S_HTMLPage, 
			i_ServiceInfo.S_ClickNum, 
			i_ServiceInfo.S_MessageNum, 
			i_ServiceInfo.S_NoMessageNum, 
			i_ServiceInfo.P_ID, 
			i_ServiceInfo.S_Flag, 
			i_ServiceInfo.AuditingState, 
			i_ServiceInfo.IsHasImage, 

			i_ServiceType.ST_Name, 
			i_ServiceType.ModuleName, 
			i_ServiceType.FullId, 

		
			u_user.U_Name, 
			u_user.U_Email, 
			u_user.U_RegDate, 
			u_user.U_HtmlPage, 
			u_user.U_ClickNum, 
			u_user.U_TempName, 
			u_user.UG_ID, 
			u_user.U_Mark,

			b_userGrade.UG_order,

			u_userinfo.UI_Name, 
			u_userinfo.Area_ID, 
			u_userinfo.UI_Area, 
			u_userinfo.UI_License, 
			u_userinfo.UI_Character, 
			u_userinfo.UI_LinkMan, 
			u_userinfo.UI_Number, 
			u_userinfo.UI_HomePage, 
			u_userinfo.UI_Synopsis, 
			u_userinfo.UI_Postcode, 
			u_userinfo.UI_Mobil,
			u_userinfo.UT_ID, 
			u_userinfo.U_Section,
			u_userinfo.U_Post, 
			u_userinfo.U_Way,
			u_userinfo.U_SupplyProduct,
			u_userinfo.U_BuyProduct, 
			u_userinfo.U_Mode, 
			u_userinfo.U_Money, 
			u_userinfo.U_Year, 
			u_userinfo.U_Address, 
			u_userinfo.U_PType, 
			u_userinfo.U_MoneyType,
			u_userinfo.IM, 
			u_userinfo.Telephone, 
			u_userinfo.Fax, 
			u_userinfo.TradeIds as UserTradeIds,

			u_user.UserAuditingState,
			u_user.UserIsHasImage
			
FROM	
			i_ServiceInfo       
			Inner Join 
			i_ServiceType ON i_ServiceInfo.ST_ID = i_ServiceType.ST_ID
			Inner Join 
			u_user on i_ServiceInfo.U_ID = u_user.u_id 
			Inner Join 
			b_UserGrade on b_UserGrade.UG_ID = u_user.UG_ID
			Inner Join 
			u_UserInfo on u_user.U_ID = u_userinfo.U_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertServiceType]    Script Date: 10/03/2011 19:33:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   procedure [dbo].[XYP_InsertServiceType]
(
	@ST_Name varchar(100),
	@ST_ParentID bigint,
	@ModuleName varchar(50),
	@FullId varchar(500)
)
as
	declare @orderid int 
	declare @Count int 
	select top 1 @orderid=orderid from i_ServiceType where ST_ParentID=@ST_ParentID order by orderid desc 

    if exists (select ST_ID from i_ServiceType where ST_Name=@ST_Name and  ST_ParentID=@ST_ParentID and ModuleName=@ModuleName)
		return -1

	select @Count=Count(*) from i_ServiceType where ST_ParentID=@ST_ParentID
	
	if @Count <1
		set @orderid=0	

    insert into i_ServiceType (ST_Name,ST_ParentID,ModuleName,FullId,orderid) values (@ST_Name,@ST_ParentID,@ModuleName,@FullId,@orderid+1)

	if @@error <> 0
        return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateServiceType]    Script Date: 10/03/2011 19:34:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[XYP_UpdateServiceType]
(
	@ST_ID bigint,
	@ST_Name varchar(100),
	@ModuleName varchar(50),
	@ST_ParentID bigint,
	@FullId varchar(500)
)
 as

	declare @ParentIDOld bigint
	declare @Orderid int
	declare @newOrderid int
	declare @count int


	SELECT @ParentIDOld=ST_ParentID from i_ServiceType where ST_ID = @ST_ID
	
	if @ParentIDOld <> @ST_ParentID
	begin 
		select top 1 @Orderid=orderid from  i_ServiceType where  ST_ParentID=@ST_ParentID order by orderid desc
		select @count=count(*) from  i_ServiceType where  ST_ParentID=@ST_ParentID
		
		if @count >0 
			set	@newOrderid = (@Orderid+1)
		else 
			set @newOrderid = 1
		
		update i_ServiceType set ST_Name=@ST_Name,
		ModuleName=@ModuleName,
		ST_ParentID=@ST_ParentID,
		orderid=@newOrderid,
		FullId = @FullID 
		where ST_ID=@ST_ID
		
			
	end 
	
	else
	begin
		update i_ServiceType set ST_Name=@ST_Name, ModuleName=@ModuleName,ST_ParentID=@ST_ParentID,FullId = @FullID where ST_ID=@ST_ID
	end
	

	if @@error <> 0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertService]    Script Date: 10/03/2011 19:33:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_InsertService]
(
	@S_ID bigint output,
	@S_Title  varchar(200),
	@U_ID bigint,
	@ST_ID bigint,
	@S_Content text,
	@S_EndDate int,
	@S_EndTime datetime,
	@P_ID bigint ,
	@S_Flag int 
) 
as 
    if exists (select S_ID from i_ServiceInfo where S_Title=@S_Title and U_ID=@U_ID and ST_ID=@ST_ID and S_Flag=@S_Flag)
		return -1;

	Begin tran tr

    insert into i_ServiceInfo(S_Title,U_ID,ST_ID,S_Content,S_EndDate,S_EndTime,P_ID,S_Flag) 
    values(@S_Title,@U_ID,@ST_ID, @S_Content,@S_EndDate, @S_EndTime,@P_ID,@S_Flag)

	Update i_ServiceType set InfoCount = infoCount + 1 where ST_ID = @ST_ID

	if @@error <>0
		Begin
			Rollback tran tr
			return -2
		End

	Commit Tran

	set @S_ID=@@identity
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUserGrade]    Script Date: 10/03/2011 19:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[XYP_UpdateUserGrade]
(
	@UG_ID smallint,
	@UG_Name varchar(50),
 	@UG_Month money,
	@UG_Year money,
	@UG_SmallIconName varchar(50),
	@UG_BigIconName varchar(50),
	@UG_Order int
)
AS
    begin
		UPDATE b_UserGrade 
		SET UG_Name = @UG_Name, 
			UG_Month = @UG_Month,
			UG_Year=@UG_Year ,
			UG_SmallIconName = @UG_SmallIconName,
			UG_BigIconName = @UG_BigIconName,
			UG_Order = @UG_Order

		WHERE (UG_ID = @UG_ID)
    end
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertUserGrade]    Script Date: 10/03/2011 19:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[XYP_InsertUserGrade]
(
    @UG_ID int output ,
	@UG_Name varchar(50),
	@UG_Month money,
	@UG_Year money,
	@UG_SmallIconName varchar(50),
	@UG_BigIconName varchar(50)
)
AS
	declare @Count int 
	select @Count=Count(UG_Name) from b_UserGrade   where UG_Name=@UG_Name 	
	if @Count>0  return -1

	INSERT INTO b_UserGrade(UG_Name, UG_Month,UG_Year,UG_SmallIconName,UG_BigIconName) 
	VALUES (@UG_Name, @UG_Month,@UG_Year,@UG_SmallIconName,@UG_BigIconName);

	if @@error<>0
		begin
			rollback tran tr
			return -2
		end
	else
		set @UG_ID = @@identity
GO
/****** Object:  View [dbo].[XYV_ChargedNews]    Script Date: 10/03/2011 19:32:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_ChargedNews]
AS
SELECT     n_ChargeNewsInfo.CI_ID, n_ChargeNewsInfo.U_ID, n_ChargeNewsInfo.NS_ID, n_ChargeNewsInfo.CI_AddTime, 
                      u_UserInfo.UI_Name, n_News.NS_NewsName, b_UserGrade.UG_Name, n_News.NS_Type
FROM         u_GradeRelation LEFT OUTER JOIN
                      b_UserGrade ON u_GradeRelation.UGR_ID = b_UserGrade.UG_ID RIGHT OUTER JOIN
                      u_UserInfo ON u_GradeRelation.U_ID = u_UserInfo.U_ID RIGHT OUTER JOIN
                      n_News RIGHT OUTER JOIN
                      n_ChargeNewsInfo ON n_News.NS_ID = n_ChargeNewsInfo.NS_ID ON u_UserInfo.U_ID = n_ChargeNewsInfo.U_ID
GO
/****** Object:  View [dbo].[XYV_Engageinfo]    Script Date: 10/03/2011 19:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_Engageinfo]
AS
SELECT  
	i_EngageInfo.EI_ID,
	i_EngageInfo.P_ID, 
	i_EngageInfo.EI_Job, 
	i_EngageInfo.EI_Branch, 
	i_EngageInfo.EI_EndDate, 
	i_EngageInfo.EI_Type, 
	i_EngageInfo.Province_ID, 
	i_EngageInfo.C_ID, 
	i_EngageInfo.Area_ID as WorkAreaID, 
	i_EngageInfo.EI_Request, 
	i_EngageInfo.EI_Pay, 
	i_EngageInfo.EI_Eb, 
	i_EngageInfo.EI_Age, 
	i_EngageInfo.EI_Sex, 
	i_EngageInfo.EI_Experience, 
	i_EngageInfo.EI_Nationality, 
	i_EngageInfo.U_ID, 
	i_EngageInfo.EI_AddDate, 
	i_EngageInfo.EI_ClickNum, 
	i_EngageInfo.EI_Puach, 
	i_EngageInfo.EI_Number, 
	i_EngageInfo.EI_HTMLPage, 
	i_EngageInfo.EI_Vouch, 
	i_EngageInfo.AuditingState,
	
	b_Post.P_Name, 
	b_Post.FullId, 


	u_user.U_Name, 
	u_user.U_Email, 
	u_user.U_RegDate, 
	u_user.U_HtmlPage, 
	u_user.U_ClickNum, 
	u_user.U_TempName, 
	u_user.UG_ID, 

	b_userGrade.UG_order,

	u_userinfo.UI_Name, 
	u_userinfo.Area_ID, 
	u_userinfo.UI_Area, 
	u_userinfo.UI_License, 
	u_userinfo.UI_Character, 
	u_userinfo.UI_LinkMan, 
	u_userinfo.UI_Number, 
	u_userinfo.UI_HomePage, 
	u_userinfo.UI_Synopsis, 
	u_userinfo.UI_Postcode, 
	u_userinfo.UI_Mobil,
	u_userinfo.UT_ID, 
	u_userinfo.U_Section,
	u_userinfo.U_Post, 
	u_userinfo.U_Way,
	u_userinfo.U_SupplyProduct,
	u_userinfo.U_BuyProduct, 
	u_userinfo.U_Mode, 
	u_userinfo.U_Money, 
	u_userinfo.U_Year, 
	u_userinfo.U_Address, 
	u_userinfo.U_PType, 
	u_userinfo.U_MoneyType,
	u_userinfo.IM, 
	u_userinfo.Telephone, 
	u_userinfo.Fax, 
	u_userinfo.TradeIds as UserTradeIds,

	u_user.UserAuditingState,
	u_user.UserIsHasImage
	
FROM         
	i_EngageInfo 
	Inner JOIN
	b_Post ON i_EngageInfo.P_ID = b_Post.P_ID
	Inner Join 
	u_user on i_EngageInfo.U_ID = u_user.u_id 
	Inner Join 
	b_UserGrade on b_UserGrade.UG_ID = u_user.UG_ID
	Inner Join 
	u_UserInfo on u_user.U_ID = u_userinfo.U_ID
GO
/****** Object:  View [dbo].[XYV_Brand]    Script Date: 10/03/2011 19:32:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_Brand]
AS
SELECT    
	u_Barnd.B_ID, 
	u_Barnd.U_ID, 
	u_Barnd.B_Type, 
	u_Barnd.B_Remark, 
	u_Barnd.addtime, 
	u_Barnd.PT_ID,
	u_Barnd.B_Vouch, 
	u_Barnd.B_IsAuditing, 
	u_Barnd.B_HtmlPage, 
	u_Barnd.B_MessageNum, 
	u_Barnd.B_ClickNum, 
	u_Barnd.B_NoMessageNum,  
	u_Barnd.AuditingState, 
	u_Barnd.IsHasImage, 

	XY_BrandType.Name AS PT_Name, 
	XY_BrandType.ID, 
	XY_BrandType.FullId, 

	u_user.U_Name, 
	u_user.U_Email, 
	u_user.U_RegDate, 
	u_user.U_HtmlPage, 
	u_user.U_ClickNum,
	u_user.UG_ID, 
	u_user.U_Mark,

	b_userGrade.UG_order,

	u_userinfo.UI_Name, 
	u_userinfo.Area_ID, 
	u_userinfo.UI_Area, 
	u_userinfo.UI_License,
	u_userinfo.UI_Character, 
	u_userinfo.UI_LinkMan, 
	u_userinfo.UI_Number, 
	u_userinfo.UI_HomePage, 
	u_userinfo.UI_Synopsis, 
	u_userinfo.UI_Postcode, 
	u_userinfo.UI_Mobil, 
	u_userinfo.UT_ID, 
	u_userinfo.U_Section, 
	u_userinfo.U_Way, 
	u_userinfo.U_Post, 
	u_userinfo.U_SupplyProduct, 
	u_userinfo.U_BuyProduct, 
	u_userinfo.U_Mode, 
	u_userinfo.U_Money, 
	u_userinfo.U_Year, 
	u_userinfo.U_Address, 
	u_userinfo.U_PType, 
	u_userinfo.U_MoneyType, 
	u_userinfo.Telephone, 
	u_userinfo.Fax, 
	u_userinfo.IM, 
	u_userinfo.TradeIds as UserTradeIds,

	u_user.UserAuditingState,
	u_user.UserIsHasImage
FROM  u_Barnd 
		Inner Join
		XY_BrandType ON u_Barnd.PT_ID = XY_BrandType.ID 
		Inner Join 
		u_user on u_Barnd.U_ID = u_user.u_id 
		Inner Join 
		b_UserGrade on b_UserGrade.UG_ID = u_user.UG_ID
		Inner Join 
		u_UserInfo on u_user.U_ID = u_userinfo.U_ID
GO
/****** Object:  View [dbo].[XYV_Finance]    Script Date: 10/03/2011 19:32:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_Finance]
AS
SELECT b_FinanceType.FT_Type, b_Admin.UM_Name, b_Finance.*
FROM b_Finance LEFT OUTER JOIN
      b_Admin ON b_Finance.UM_ID = b_Admin.UM_ID LEFT OUTER JOIN
      b_FinanceType ON b_Finance.FT_ID = b_FinanceType.FT_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertFinanceType]    Script Date: 10/03/2011 19:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[XYP_InsertFinanceType]
@FT_Type   varchar(500)
as

declare @count int 

select   @count=count(FT_Type)  from b_FinanceType  where FT_Type=@FT_Type
if @count >0
begin 
return -1
end 
else
begin 
begin  tran 
insert into b_FinanceType (FT_Type) values(@FT_Type)
end 
if @@error <>0
begin 
rollback tran 
return -2
end 
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateFinanceType]    Script Date: 10/03/2011 19:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[XYP_UpdateFinanceType]
@FT_ID int ,
@FT_Type varchar(500)
as
begin 
begin tran tr
update b_FinanceType set FT_Type=@FT_Type where FT_ID =@FT_ID
end 
if @@error <>0 
begin 
rollback tran 
return -2
end 
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertFaithset]    Script Date: 10/03/2011 19:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertFaithset]
(
 @GF_Fath int,
 @GF_Money int,
 @GF_ErrFath int,
 @GF_ErrMoney int,
 @GF_Remark varchar(1000),
 @HF_Fath int,
 @HF_Money int,
 @HF_ErrFath int,
 @HF_ErrMoney int,
 @HF_Remark varchar(1000),
 @UF_Fath int,
 @UF_Money int,
 @UF_ErrFath int,
 @UF_ErrMoney int,
 @UF_Remark varchar(1000),
 @BF_Fath int,
 @BF_Money int,
 @BF_ErrFath int,
 @BF_ErrMoney int,
 @BF_Remark varchar(1000),
 @FS_Base int,
 @FS_Hot int,
 @FS_Licence int,
 @FS_Certificate int 
 )
AS
  declare @Count int
  select @Count=count(F_ID) from b_FaithSet
   if @Count > 0
     begin 
      return -1
     end
   else
    begin 
     begin tran tr
      insert into b_FaithSet( GF_Fath,GF_Money,GF_ErrFath,GF_ErrMoney,GF_Remark,HF_Fath,HF_Money,HF_ErrFath,HF_ErrMoney,HF_Remark,UF_Fath,UF_Money,UF_ErrFath,UF_ErrMoney,UF_Remark,BF_Fath,BF_Money,BF_ErrFath,BF_ErrMoney,BF_Remark,FS_Base,FS_Hot,FS_Licence,FS_Certificate)	values(@GF_Fath,@GF_Money,@GF_ErrFath,@GF_ErrMoney,@GF_Remark,@HF_Fath,@HF_Money,@HF_ErrFath,@HF_ErrMoney,@HF_Remark,@UF_Fath,@UF_Money,@UF_ErrFath,@UF_ErrMoney,@UF_Remark,@BF_Fath,@BF_Money,@BF_ErrFath,@BF_ErrMoney,@BF_Remark,@FS_Base,@FS_Hot,@FS_Licence,@FS_Certificate)
      if @@error <>0
       begin
		rollback tran tr
		return -2
		end
		
	commit
   end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateFaithSet]    Script Date: 10/03/2011 19:34:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateFaithSet] 
(
 @F_ID int,
 @GF_Fath int,
 @GF_Money int,
 @GF_ErrFath int,
 @GF_ErrMoney int,
 @GF_Remark varchar(1000),
 @HF_Fath int,
 @HF_Money int,
 @HF_ErrFath int,
 @HF_ErrMoney int,
 @HF_Remark varchar(1000),
 @UF_Fath int,
 @UF_Money int,
 @UF_ErrFath int,
 @UF_ErrMoney int,
 @UF_Remark varchar(1000),
 @BF_Fath int,
 @BF_Money int,
 @BF_ErrFath int,
 @BF_ErrMoney int,
 @BF_Remark varchar(1000),
 @FS_Base int,
 @FS_Hot int,
 @FS_Licence int,
 @FS_Certificate int 
 )
AS
  begin 
     begin tran tr
      update b_FaithSet set 
GF_Fath=@GF_Fath,GF_Money=@GF_Money,GF_ErrFath=@GF_ErrFath,GF_ErrMoney=@GF_ErrMoney,GF_Remark=@GF_Remark,HF_Fath=@HF_Fath, HF_Money=@HF_Money,HF_ErrFath=@HF_ErrFath,HF_ErrMoney=@HF_ErrMoney,HF_Remark=@HF_Remark,UF_Fath=@UF_Fath,UF_Money=@UF_Money,UF_ErrFath=@UF_ErrFath,UF_ErrMoney=@UF_ErrMoney,UF_Remark=@UF_Remark,BF_Fath=@BF_Fath,BF_Money=@BF_Money,BF_ErrFath=@BF_ErrFath,BF_ErrMoney=@BF_ErrMoney,BF_Remark=@BF_Remark,FS_Base=@FS_Base,FS_Hot=@FS_Hot,FS_Licence=@FS_Licence,FS_Certificate=@FS_Certificate where F_ID=@F_ID
      if @@error <>0
        begin
	rollback tran tr
	return -2
      end
		
 commit
 end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateMode]    Script Date: 10/03/2011 19:34:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[XYP_UpdateMode]
@M_Type varchar(100),
@M_ID int 
as
begin 
begin tran tr
update b_Mode  set M_Type=@M_Type where M_ID=@M_ID
if @@error <>0
begin 
rollback tran tr
end 
end
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertMode]    Script Date: 10/03/2011 19:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[XYP_InsertMode]
@M_Type varchar(100)
as
declare @count int 
select   @count= (M_ID) from  b_Mode   where M_Type=@M_Type
if @count >0
 begin 
  return -1
end 
else
 begin 
begin tran tr
insert into b_Mode(M_Type) values (@M_Type)
if @@error <>0
begin 
rollback tran tr
 return -2
end 
end 
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertAuditingInfo]    Script Date: 10/03/2011 19:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertAuditingInfo]
(
	@DescTabID bigint,
	@DescTabName varchar(50),
	@A_Reason varchar(1000),
	@A_Advice varchar(1000)
    
)
AS
	declare @Count int
	select @Count=count(A_ID) from pl_Auditing where DescTabID=@DescTabID and DescTabName=@DescTabName 

	if @Count<>0
		return -1

	INSERT INTO [pl_Auditing] ([DescTabID], [DescTabName], [A_Reason], [A_Advice]) VALUES 
	(@DescTabID, @DescTabName, @A_Reason, @A_Advice)
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateAuditingInfo]    Script Date: 10/03/2011 19:33:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateAuditingInfo]
(
	@DescTabID bigint,
	@DescTabName varchar(50),
	@A_Reason varchar(1000),
	@A_Advice varchar(1000)
)
AS
	begin
		if not exists(select * from pl_Auditing where DescTabID = @DescTabID and DescTabName = @DescTabName)
			INSERT INTO [pl_Auditing] ([DescTabID], [DescTabName], [A_Reason], [A_Advice]) VALUES 
			(@DescTabID, @DescTabName, @A_Reason, @A_Advice)	
		else
			UPDATE [pl_Auditing] SET [A_Reason] = @A_Reason, [A_Advice] = @A_Advice 
			WHERE DescTabID = @DescTabID and DescTabName = @DescTabName

	if @@error <> 0
		return -2
	end
GO
/****** Object:  StoredProcedure [dbo].[XYP_IsUser]    Script Date: 10/03/2011 19:33:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_IsUser]
@tablename varchar(50),
@UM_ID bigint,
@ispopedom bit  output 

as
begin tran tr
declare @sql bit
select  @sql = P_IsPopedom   from b_PopedomSet  where P_tablename=@tablename and UR_ID=(select UR_ID from b_Admin where UM_ID = @UM_ID)
if @@error = 0
begin
set @ispopedom = @sql
print @ispopedom
end
commit
GO
/****** Object:  View [dbo].[XYV_Individual]    Script Date: 10/03/2011 19:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_Individual]
AS
SELECT     
	u_Individual.U_ID, 
	u_Individual.UI_Name, 
	u_Individual.UI_Sex, 
	u_Individual.UI_Code, 
	u_Individual.Area_ID, 
	u_Individual.UI_Address, 
	u_Individual.UI_Postcode, 
	u_Individual.UI_Mobil,
	 u_Individual.UI_Flag, 
	u_Individual.Telephone, 
	u_Resume.RE_JobYear, 
	u_Resume.RE_School, 
	u_Resume.RE_Speciality, 
	u_Resume.RE_Gyear, 
	u_Resume.RE_Schoolage, 
	u_Resume.RE_Resume, 
	u_Resume.RE_Intentjob, 
	u_Resume.RE_Intentadd, 
	u_Resume.RE_Intentpay, 
	u_Resume.RE_Experience, 
	u_Resume.RE_Adddate, 
	u_Resume.RE_HtmlPage,
	u_User.U_RegDate, 
	u_User.U_Name, 
	u_User.U_Email,
	u_User.UserAuditingState
FROM        
	u_Individual Inner Join u_User ON u_Individual.U_ID = u_User.U_ID 
	LEFT OUTER JOIN  u_Resume ON u_Individual.U_ID = u_Resume.U_ID
GO
/****** Object:  View [dbo].[XYV_JobResume]    Script Date: 10/03/2011 19:32:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_JobResume]
AS
SELECT     u_JobResume.EI_ID, u_JobResume.RE_AddDate, u_JobResume.RE_Estate, u_Resume.RE_JobYear, u_Resume.RE_Experience,
                       u_Resume.RE_Intentpay, u_Resume.RE_Intentadd, u_Resume.RE_Intentjob, u_Resume.RE_Resume, 
                      u_Resume.RE_Schoolage, u_Resume.RE_Gyear, u_Resume.RE_Speciality, u_Resume.RE_School, u_JobResume.ER_ID, 
                      i_EngageInfo.EI_Job, u_JobResume.RE_Seedate, u_JobResume.U_ID, u_Individual.UI_Name AS UI_LinkMan, 
                      u_Individual.UI_Mobil, u_Individual.UI_Address AS U_Address, u_UserInfo.UI_Name, u_User.U_Name, u_User.U_HtmlPage, 
                      i_EngageInfo.EI_HTMLPage
FROM         u_Resume INNER JOIN
                      i_EngageInfo INNER JOIN
                      u_JobResume ON i_EngageInfo.EI_ID = u_JobResume.EI_ID INNER JOIN
                      u_Individual ON u_JobResume.U_ID = u_Individual.U_ID ON u_Resume.U_ID = u_Individual.U_ID INNER JOIN
                      u_User ON i_EngageInfo.U_ID = u_User.U_ID INNER JOIN
                      u_UserInfo ON u_User.U_ID = u_UserInfo.U_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertResume]    Script Date: 10/03/2011 19:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[XYP_InsertResume]
@U_ID  bigint,
@RE_JobYear  varchar(50),
@RE_School   varchar(30),
@RE_Speciality varchar(30),
@RE_Gyear datetime,
@RE_Schoolage  varchar(50),
@RE_Resume  text,
@RE_Experience varchar(500), /*工作经验*/
@RE_Intentpay varchar(20), /* 期望工资*/
@RE_Intentadd varchar(20),  /*期望工作地*/
@RE_Intentjob  varchar(50)  /*期望职位*/
AS
begin 
  begin tran tr  
      if not exists( select *  from u_Resume  where U_ID=@U_ID)
     begin 
       INSERT INTO u_Resume(U_ID,RE_Adddate,RE_JobYear,RE_School,RE_Speciality,RE_Gyear,RE_Schoolage,RE_Resume,RE_Experience,RE_Intentpay,RE_Intentadd,RE_Intentjob)
        VALUES(@U_ID,getdate(),@RE_JobYear,@RE_School,@RE_Speciality,@RE_Gyear,@RE_Schoolage,@RE_Resume,@RE_Experience,@RE_Intentpay,@RE_Intentadd,@RE_Intentjob)
    end
   else
    begin
       Update u_Resume set RE_JobYear=@RE_JobYear,RE_School=@RE_School,RE_Speciality=@RE_Speciality,
                 RE_Schoolage=@RE_Schoolage,RE_Resume=@RE_Resume,RE_Intentpay=@RE_Intentpay,
                RE_Intentadd=@RE_Intentadd, RE_Intentjob=@RE_Intentjob,RE_Experience=@RE_Experience,RE_Gyear=@RE_Gyear

     where  U_ID=@U_ID   
   end

    If @@error<>0
   begin 
    rollback tran tr
    return -2
  end  
end
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateFriendLinkSort]    Script Date: 10/03/2011 19:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateFriendLinkSort] 

(
 @FS_ID int,
 @FS_Name varchar(200),
 @FS_PID int,
 @FS_Alt varchar(5000)
)
AS

 begin
 begin tran tr
 begin
     update b_FriendLinkSort set FS_Name = @FS_Name, FS_PID = @FS_PID, FS_Alt = @FS_Alt where FS_ID = @FS_ID
 end
 
 if @@error <> 0
 begin
 rollback tran tr
  return -2
 end
   end
 
 commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertFriendLinkSort]    Script Date: 10/03/2011 19:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertFriendLinkSort]
(
 @FS_ID int output,
 @FS_Name varchar(200),
 @FS_PID int,
 @FS_Alt varchar(5000)
)
AS

begin
begin tran tr
begin 
  if not exists(select FS_Name from b_FriendLinkSort where FS_Name=@FS_Name)
   begin
     insert into b_FriendLinkSort(FS_Name,FS_PID,FS_Alt) values (@FS_Name,@FS_PID,@FS_Alt)
     
     end
    else
     begin
       rollback tran tr
       return -1
      end
   end
 if @@error <> 0
  begin       
     rollback tran tr
     return -2
    end
  else
    begin 
       set @FS_ID = @@identity
    end
   end
 commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertLabelType]    Script Date: 10/03/2011 19:33:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[XYP_InsertLabelType]
(
    @LT_Name varchar(50),
	@LT_ParentID int,
	@LT_Remark varchar(500)

)
AS
	declare @Count int
 	select @Count = count(LT_Name) from b_LabelType where LT_Name = @LT_Name and LT_ParentID = @LT_ParentID
 	if @Count >0
    begin 
    	return -1
    end
 	else
	begin
   		INSERT INTO b_LabelType (LT_Name,LT_ParentID,LT_Remark)
		 values (@LT_Name,@LT_ParentID,@LT_Remark)

   		if @@error <> 0
   		begin
   			return -2
   		end
	end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateLabelType]    Script Date: 10/03/2011 19:34:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[XYP_UpdateLabelType]
(
	@LT_ID int,     
	@LT_Name varchar(50),
	@LT_ParentID int,
	@LT_Remark varchar(500)
	

)
AS
       
       	begin tran tr 

       	UPDATE b_LabelType SET LT_Name = @LT_Name,LT_ParentID = @LT_ParentID,LT_Remark = @LT_Remark where LT_ID = @LT_ID
		
	if @@error <> 0
	begin
		rollback tran tr
		return -2
	end

	commit tran
GO
/****** Object:  View [dbo].[XYV_Label]    Script Date: 10/03/2011 19:32:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_Label]
AS
SELECT     b_LabelType.LT_Name, b_LabelType.LT_ParentID, b_LabelType.LT_Remark, b_Label.*
FROM         b_LabelType RIGHT OUTER JOIN
                      b_Label ON b_LabelType.LT_ID = b_Label.LT_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertEmail]    Script Date: 10/03/2011 19:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_InsertEmail]
@E_title  nvarchar(500),
@E_content  varchar(8000),
@U_IDS  varchar(500)
as
begin 
begin tran tr
insert into u_SendEmail(E_title,E_content,U_IDS) values (@E_title,@E_content,@U_IDS)
if @@error <>0
begin 
rollback tran tr
return -2
end 
commit 
end
GO
/****** Object:  View [dbo].[XYV_RankingLog]    Script Date: 10/03/2011 19:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_RankingLog]
AS
SELECT     
	b_SearchKey.SK_Name as Keyword,
	XY_RankingLog.Logid,XY_RankingLog.KeyId, XY_RankingLog.UserId,XY_RankingLog.RealEndTime,
	XY_RankingLog.BeginTime, XY_RankingLog.EndTime, XY_RankingLog.Amount, XY_RankingLog.[Rank],
	u_user.u_name,u_userinfo.UI_Name
FROM        
	XY_RankingLog
	Inner Join b_SearchKey on  XY_RankingLog.KeyId = b_SearchKey.SK_ID
	Inner Join u_user on XY_RankingLog.UserId = u_user.u_id
	Inner Join u_userinfo on XY_RankingLog.UserId = u_userInfo.U_id
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateFriendLinkForFlag]    Script Date: 10/03/2011 19:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateFriendLinkForFlag]
(
	@FL_ID smallint,
	@FL_Flag bit
)
AS
	
	begin tran tr
   
	UPDATE b_FriendLink SET FL_Flag=@FL_Flag  where FL_ID=@FL_ID

	if @@error <> 0
	begin
		rollback tran tr
		return -2
	end
	commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertFriendLink]    Script Date: 10/03/2011 19:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertFriendLink]
(
	@FL_ID smallint output,
    @FL_Type bit,
	@FL_Font varchar(200),
	@FL_URL varchar(500),
	@FL_Alt varchar(500),
	@FL_Flag bit,
	@FS_ID int
)
AS
   begin
   begin tran tr
   begin
		INSERT INTO b_FriendLink (FL_Type,FL_Font,FL_URL,FL_Alt,FL_Flag,FS_ID) 
			values (@FL_Type,@FL_Font,@FL_URL,@FL_Alt,@FL_Flag,@FS_ID)
   end
   if @@error <> 0
   begin
		rollback tran tr
		return -2
	end
else
	begin
		set @FL_ID = @@identity	
	end
	end
   commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateFriendLink]    Script Date: 10/03/2011 19:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateFriendLink]
(
	@FL_ID smallint,
    @FL_Type bit,
	@FL_Font varchar(100),
	@FL_URL varchar(500),
	@FL_Alt varchar(500),
	@FL_Flag bit,
	@FS_ID int
)
AS
	update b_FriendLink  set FL_Type = @FL_Type,FL_Font = @FL_Font,
	FL_URL = @FL_URL,FL_Alt = @FL_Alt,FL_Flag = @FL_Flag,
	FS_ID = @FS_ID where FL_ID = @FL_ID

	if @@error <> 0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertAccountConsumption]    Script Date: 10/03/2011 19:32:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_InsertAccountConsumption]
(
   @U_ID bigint,
   @AC_Count money,
   @AC_Explain varchar(300)
)
as
  begin tran tr
      begin
        insert into u_AccountConsumptionInfo (U_ID,AC_Count,AC_Explain) values (@U_ID,@AC_Count,@AC_Explain)
      end
   if @@error <> 0
       begin
          rollback tran tr
          return -2
       end
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertFeedback]    Script Date: 10/03/2011 19:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertFeedback]
(
	@Type int,
	@Title varchar(100),
	@Name varchar(50),
	@telephone varchar(50),
	@Email varchar(100),
	@Centent varchar(1000),
	@addtime datetime
)

as    
	begin
	insert into XY_Feedback ([type],Title,[Name],telephone,Email,Centent,addtime)
	values (@Type,@Title,@Name,@telephone,@Email,@Centent,@addtime)
	end
GO
/****** Object:  StoredProcedure [dbo].[XYP_GetField]    Script Date: 10/03/2011 19:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[XYP_GetField]
(
	@TypeID bigint,
	@ModuleName varchar(50),
	@TopID bigint
)
AS
begin
	begin tran tr
	declare @sql varchar(5000)
	set @sql = 'select * from XY_Field where TypeID = ' +convert(varchar, @TypeID) + ' and ModuleName = ''' +@ModuleName + ''''
	--取得继承的字段信息
	if EXISTS (select * from XY_FieldInherit where TypeID=@TypeID and ModuleName=@ModuleName)
	begin
		declare @ids varchar(1000)
		if EXISTS (select * from XY_FieldInherit where TypeID=@TypeID and ModuleName=@ModuleName and IsInherit=1)
		begin
			set @sql = @sql + ' or (ModuleName = ''' +@ModuleName + ''' and TypeID = (select top 1 InheritID from XY_FieldInherit where ModuleName=''' + @ModuleName + ''' and TypeID=' + convert(varchar, @TypeID) + '))'
		end
		else
		begin
			select @ids=FieldIDS from XY_FieldInherit where TypeID=@TypeID and ModuleName=@ModuleName
			if @ids<>''
			set @sql = @sql + ' or id in (' + @ids + ')'
		end
	end
	else
	begin
		set @sql = @sql + ' or (ModuleName = ''' +@ModuleName + ''' and TypeID = ' + convert(varchar, @TopID) + ')'
	end
print @sql
	set @sql = @sql + ' order by id asc'
	exec(@sql)
	commit
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertFieldInherit]    Script Date: 10/03/2011 19:33:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertFieldInherit]
	@InheritID bigint,
	@TypeID	bigint,
	@ModuleName	varchar(50),
	@FieldIDS	varchar(1000),
	@IsInherit	bit
AS
if @@trancount > 0
		rollback tran
else
	begin
		begin tran tr

		--如果已经存在 则修改
		if EXISTS (SELECT * FROM XY_FieldInherit WHERE TypeID = @TypeID and ModuleName = @ModuleName)
		begin
			update XY_FieldInherit set FieldIDS=@FieldIDS,IsInherit=@IsInherit where TypeID = @TypeID and ModuleName = @ModuleName
		end
		else
		begin
			INSERT INTO XY_FieldInherit (InheritID,TypeID,ModuleName,FieldIDS,IsInherit)
				values (@InheritID,@TypeId,@ModuleName,@FieldIDS,@IsInherit)
		end

		if @@error <> 0
			begin
				rollback tran tr
				return -1
			end
		commit		
	end
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertChargeNewsInfo]    Script Date: 10/03/2011 19:33:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[XYP_InsertChargeNewsInfo]
(
   @U_ID bigint,
   @NS_ID bigint
)
as
  begin tran tr
    begin 
       if not exists (select CI_ID from n_ChargeNewsInfo where U_ID=@U_ID and NS_ID=@NS_ID)
          begin
           insert into n_ChargeNewsInfo (U_ID, NS_ID) values (@U_ID, @NS_ID)
          end
       else
          begin
            rollback tran tr
            return -1
          end
     if @@error <> 0
        begin
           rollback tran tr
           return -2
        end
    end
 commit tran
GO
/****** Object:  View [dbo].[XYV_FictitiouConsumptionlist]    Script Date: 10/03/2011 19:32:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_FictitiouConsumptionlist]
AS
SELECT u_FictitiouConsumptionInfo.*, u_User.U_Name
FROM u_FictitiouConsumptionInfo INNER JOIN
      u_User ON u_FictitiouConsumptionInfo.U_ID = u_User.U_ID
GO
/****** Object:  View [dbo].[XYV_Acount]    Script Date: 10/03/2011 19:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_Acount]
AS
SELECT u_Account.*, u_User.U_Name
FROM u_Account LEFT OUTER JOIN
      u_User ON u_Account.U_ID = u_User.U_ID
GO
/****** Object:  View [dbo].[XYV_Invoice]    Script Date: 10/03/2011 19:32:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_Invoice]
AS
SELECT     u_Invoice.I_ID, u_Invoice.I_Name, u_Invoice.I_Address, u_Invoice.I_Money, u_Invoice.I_Title, u_Invoice.I_Content, 
                      u_Invoice.I_Reason AS A_IsAudited, u_Invoice.U_ID, u_Invoice.I_Advice, u_Invoice.I_Addtime, u_Invoice.I_IsFlag, 
                      u_Invoice.I_PostCode, u_Invoice.I_Product
FROM         u_Invoice INNER JOIN
                      u_User ON u_Invoice.U_ID = u_User.U_ID
GO
/****** Object:  View [dbo].[XYV_MessageWebRecver]    Script Date: 10/03/2011 19:32:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_MessageWebRecver]
AS
SELECT     pl_Message.M_ID, pl_Message.M_Email, pl_Message.M_UserName, pl_Message.M_CompanyName, pl_Message.M_PHMa, 
                      pl_Message.M_Moblie, pl_Message.M_FHM, pl_Message.M_Adress, pl_Message.Area_ID, pl_Message.M_Title, 
                      pl_Message.M_Content, pl_Message.U_ID, pl_Message.M_HasReply, pl_Message.UR_ID, pl_Message.M_RecverType, 
                      pl_Message.M_SenderType, pl_Message.M_UserType, pl_Message.M_AddTime, pl_Message.M_Sex, pl_Message.M_Restore, 
                      pl_Message.InfoID, '网站' AS type, '管理员' AS Title, u_User.U_Name, u_User.U_HtmlPage, u_User.U_Email, 
                      u_UserInfo.UI_Mobil
FROM         u_UserInfo RIGHT OUTER JOIN
                      u_User ON u_UserInfo.U_ID = u_User.U_ID FULL OUTER JOIN
                      pl_Message ON u_User.U_ID = pl_Message.U_ID
WHERE     (pl_Message.M_SenderType = 'administrator')
GO
/****** Object:  View [dbo].[XYV_MessageByAdmin]    Script Date: 10/03/2011 19:32:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_MessageByAdmin]
AS
SELECT     pl_Message.M_ID, pl_Message.M_Email, pl_Message.M_UserName, pl_Message.M_CompanyName, pl_Message.M_PHMa, 
                      pl_Message.M_Moblie, pl_Message.M_FHM, pl_Message.M_Adress, pl_Message.Area_ID, pl_Message.M_Title, 
                      pl_Message.M_Content, pl_Message.U_ID, pl_Message.M_HasReply, pl_Message.UR_ID, pl_Message.M_RecverType, 
                      pl_Message.M_SenderType, pl_Message.M_UserType, pl_Message.M_AddTime, pl_Message.M_Sex, pl_Message.M_Restore, 
                      pl_Message.InfoID, '网站' AS type, '管理员' AS Title, u_User.U_Name, u_User.U_HtmlPage, u_User.U_Email, 
                      u_UserInfo.UI_Mobil
FROM         u_UserInfo RIGHT OUTER JOIN
                      u_User ON u_UserInfo.U_ID = u_User.U_ID FULL OUTER JOIN
                      pl_Message ON u_User.U_ID = pl_Message.U_ID
WHERE     (pl_Message.M_RecverType = 'administrator')
GO
/****** Object:  StoredProcedure [dbo].[XYP_IsExistUserName]    Script Date: 10/03/2011 19:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[XYP_IsExistUserName]
@UserName varchar(50)
as
select  count(u_name) from u_user where u_name = @UserName
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUserCommonError]    Script Date: 10/03/2011 19:34:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdateUserCommonError]
@U_ID  bigint,
@U_CommonErr  int
as
begin
begin tran tr
update u_User set  U_CommonErr=U_CommonErr+@U_CommonErr where U_ID=@U_ID
IF @@error <>0
begin 
rollback tran tr
return -2
end 
commit
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertActivationCode]    Script Date: 10/03/2011 19:32:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertActivationCode] 
(
    @UserId bigint,
    @ActivationCode  varchar(500)
)
AS
	/* 该激活码已经存在*/
	If Exists( select U_ID from u_User where  U_ActivationCode=@ActivationCode)
		return -1

	Update u_User set U_Activation=0,U_ActivationCode=@ActivationCode where  U_ID=@UserId

	If @@error <> 0
		Return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateConsummate]    Script Date: 10/03/2011 19:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[XYP_UpdateConsummate]
(
	@U_ID bigint,
	@U_InFormation  int 
)
AS
	begin
	begin tran tr
	begin	
        UPDATE u_User SET      U_InFormation=@U_InFormation   WHERE U_ID=@U_ID
        end
	if @@error <> 0
	begin	
	rollback tran tr
	 return -2
	end
	end
	commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_IsExistEmail]    Script Date: 10/03/2011 19:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[XYP_IsExistEmail]
@email varchar(500)
as
select  count(u_id) from u_user where u_email = @email
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUserPassword]    Script Date: 10/03/2011 19:34:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateUserPassword]
(
       @U_ID bigint,
       @U_PassWord char(32)
    
)
AS
 
   begin
	begin tran tr
	begin	
		UPDATE u_User SET U_Password=@U_PassWord WHERE U_ID =@U_ID 
	end
	if @@error <> 0	
	begin	
	rollback tran tr
	 return -2
	end
   end
	commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUsercCred]    Script Date: 10/03/2011 19:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdateUsercCred] 
@U_ID  bigint,
@Money  int
as
begin
begin tran tr
update u_User set  U_Cred=@Money where U_ID=@U_ID
IF @@error <>0
begin 
rollback tran tr
return -2
end 
commit
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUserMaliceError]    Script Date: 10/03/2011 19:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdateUserMaliceError]
@U_ID  bigint,
@MaliceErr  int
as
begin
begin tran tr
update u_User set  U_MaliceErr=U_MaliceErr+@MaliceErr where U_ID=@U_ID
IF @@error <>0
begin 
rollback tran tr
return -2
end 
commit
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_RetakePassWord]    Script Date: 10/03/2011 19:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[XYP_RetakePassWord]
(
	@UserName varchar(50),
	@Question  varchar(50),
	@Answer varchar(50),
	@Password varchar(50),
	@ReturnValue  int output 
)
as  
	begin  

	set @ReturnValue =-2
    
	if not exists (select * from u_User where U_Name=@UserName and U_Question=@Question and U_Answer=@Answer)
		set @ReturnValue = -1
    else  
		begin
			update u_User set U_PassWord=@Password where U_Name=@UserName
			if @@error =0
				set @ReturnValue =1
		end
	return  @ReturnValue
	end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUserMark]    Script Date: 10/03/2011 19:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[XYP_UpdateUserMark]
@U_ID  bigint,
@Mark  bigint
as
begin
begin tran tr
update u_User set  U_Mark=U_Mark+@Mark  where U_ID=@U_ID
IF @@error <>0
begin 
rollback tran tr
return -2
end 
commit
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateActivation]    Script Date: 10/03/2011 19:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateActivation] 
(
      @U_ActivationCode  varchar(500)
)
AS
begin 
     begin tran tr
          
      if  exists( select U_ID   from u_User  where  U_ActivationCode=@U_ActivationCode)
      begin
       update u_User set U_ACtivation=1
       where  U_ActivationCode=@U_ActivationCode
       end
       if @@error <> 0
     begin
     rollback tran tr
     return -2
   end

end
commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUGID]    Script Date: 10/03/2011 19:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdateUGID]
@U_ID bigint ,
@UG_ID int 
as
begin 
begin tran tr
update u_User  set UG_ID=@UG_ID  where U_ID=@U_ID
if @@error <> 0
begin 
rollback tran tr
return -2
end 
commit
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_CheckUser]    Script Date: 10/03/2011 19:32:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[XYP_CheckUser]
@UserName varchar(50),
@Password varchar(32)
as
select count(u_name) from u_user 
where U_Name =@UserName and U_PassWord = @Password
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUserDeduct]    Script Date: 10/03/2011 19:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdateUserDeduct]
@U_ID  bigint,
@Money  int
as
begin
begin tran tr
update u_User set  U_Cred=U_Cred-@Money where U_ID=@U_ID
IF @@error <>0
begin 
rollback tran tr
return -2
end 
commit
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUserVouch]    Script Date: 10/03/2011 19:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateUserVouch]
(
  @U_Vouch bit,
  @U_ID bigint
)
AS
	begin
	begin tran tr
	begin	
UPDATE [u_User] SET U_Vouch = @U_Vouch
WHERE [U_ID] = @U_ID
	
	end
	if @@error <> 0
	begin	
	rollback tran tr
	 return -2
	end
	end
	commit
GO
/****** Object:  View [dbo].[XYV_Ranking]    Script Date: 10/03/2011 19:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_Ranking]
AS
SELECT     
	b_SearchKey.SK_Name as Keyword, b_SearchKey.SK_CustomPrice, 
	XY_Ranking.Rid,XY_Ranking.KeyId, XY_Ranking.UserId, XY_Ranking.InfoIds, 
	XY_Ranking.BeginTime, XY_Ranking.EndTime, XY_Ranking.Amount, XY_Ranking.[Rank],
	u_user.u_name,u_userinfo.UI_Name
FROM        
	XY_Ranking
	Inner Join b_SearchKey on  XY_Ranking.KeyId = b_SearchKey.SK_ID
	Inner Join u_user on XY_Ranking.UserId = u_user.u_id
	Inner Join u_userinfo on XY_Ranking.UserId = u_userInfo.U_id
GO
/****** Object:  View [dbo].[XYV_NewsDiscuss]    Script Date: 10/03/2011 19:32:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_NewsDiscuss]
AS
SELECT     n_NewsDiscuss.ND_ID, n_NewsDiscuss.U_ID, n_NewsDiscuss.U_Name, n_NewsDiscuss.NS_ID, n_NewsDiscuss.ND_Content, 
                      n_NewsDiscuss.ND_AddTime, n_NewsDiscuss.ND_IsShow, u_User.U_HtmlPage, u_User.U_Flag, n_NewsDiscuss.IPAddress, 
                      n_NewsDiscuss.IPIsShow
FROM         n_NewsDiscuss LEFT OUTER JOIN
                      u_User ON n_NewsDiscuss.U_ID = u_User.U_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateIndividual]    Script Date: 10/03/2011 19:34:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateIndividual]
@U_ID bigint ,
@UI_Name varchar(30) ,
@UI_Sex bit ,
@UI_Code char(18) ,
@AreaID int ,
@UI_Address varchar(500) ,
@Telephone varchar(200) ,
@UI_Postcode char(6) ,
@UI_Mobil varchar(100) ,
@UI_Flag tinyint ,
@U_Email varchar(100)
 AS

     UPDATE U_Individual SET 	[UI_Name] = @UI_Name,[UI_Sex] = @UI_Sex,
     [UI_Code] = @UI_Code,
     [UI_Address] = @UI_Address,[Telephone] = @Telephone,
     [UI_Postcode] = @UI_Postcode,[UI_Mobil] = @UI_Mobil,[UI_Flag] = @UI_Flag,[Area_ID]=@AreaID
	WHERE [U_ID] = @U_ID
      
	update u_User set U_Email=@U_Email   where U_ID=@U_ID

	if @@error<>0
	    return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertIndividual]    Script Date: 10/03/2011 19:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertIndividual]
@U_ID bigint ,
@UI_Name varchar(30) ,
@UI_Sex bit ,
@UI_Code char(18) ,
@AreaID int,
@UI_Address varchar(500) ,
@Telephone varchar(200) ,
@UI_Postcode char(6) ,
@UI_Mobil varchar(100) ,
@UI_Flag tinyint ,
@U_Email varchar(100)
 AS

	if exists( select *  from U_Individual  where U_ID=@U_ID )
	return -1   /*此用户已经存在*/


     INSERT INTO U_Individual([U_ID],[UI_Name],[UI_Sex],[UI_Code],[Area_ID],[UI_Address],[Telephone],[UI_Postcode],[UI_Mobil],[UI_Flag])
     VALUES(@U_ID,@UI_Name,@UI_Sex,@UI_Code,@AreaID,@UI_Address,@Telephone, @UI_Postcode,@UI_Mobil,@UI_Flag)
     
	if @U_Email <>''
		update u_User set U_Email=@U_Email   where U_ID=@U_ID

	if @@error<>0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUserInfo]    Script Date: 10/03/2011 19:34:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateUserInfo]
(
	@U_ID bigint,
	@UI_Name varchar(100),
	@UI_Area varchar(100),
	@UI_License varchar(50),
	@UI_Character varchar(50),
	@UI_LinkMan varchar(50),
	@UI_Number varchar(50),
	@UI_HomePage varchar(200),
	@UI_Synopsis varchar(5000),
	@UI_Postcode char(6),
	@UI_Mobil varchar(100),
	@UT_ID bigint ,
	@UI_Sex bit,
	@U_Section  varchar(100),
	@U_Post varchar(100),
	@U_Way  smallint,
	@U_SupplyProduct varchar(500),
	@U_BuyProduct varchar(500),
	@U_Mode varchar(200),
	@U_Money decimal,
	@U_Address varchar(200),
	@U_PType varchar(5000),
	@U_Year  int ,
	@U_MoneyType varchar(100),
	@Area_ID INT ,
	@AC_ID int ,
    @U_Email varchar(50),
	@IM	varchar(50),
	@Telephone varchar(200),
	@Fax varchar(200),
	@TradeIds varchar(100)
)
AS
	Begin
	
		declare @OldEmail varchar(100)

		UPDATE u_UserInfo SET UI_Name = @UI_Name, 
			UI_Mobil = @UI_Mobil, UI_Postcode = @UI_Postcode, UI_Synopsis = @UI_Synopsis, UI_HomePage = @UI_HomePage, UI_Number = @UI_Number, UI_LinkMan = @UI_LinkMan, UI_Character = @UI_Character, UI_License = @UI_License, UI_Area = @UI_Area,
			UT_ID=@UT_ID,UI_Sex=@UI_Sex,U_Section=@U_Section,U_Post=@U_Post,U_Way=@U_Way,U_SupplyProduct=@U_SupplyProduct,U_BuyProduct=@U_BuyProduct,U_Mode=@U_Mode,U_Money=@U_Money,U_Address=@U_Address,U_PType=@U_PType,U_Year=@U_Year,U_MoneyType=@U_MoneyType,Area_ID=@Area_ID,AC_ID=@AC_ID,
			IM=@IM,Telephone=@Telephone,Fax = @Fax,TradeIds=@TradeIds
		WHERE U_ID=@U_ID
	        

		Select @OldEmail = U_Email From u_user where U_ID=@U_ID
		
		if(@OldEmail <> @U_Email)
			UPDATE u_User SET U_Email=@U_Email,U_Activation=0  Where  U_ID=@U_ID

		if @@error <> 0
			return -2


	
	End
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertClassLabel]    Script Date: 10/03/2011 19:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[XYP_InsertClassLabel]

@Name varchar(100),
@CNName nvarchar(100),
@Body varchar(8000),
@TableName varchar(200)


As

	If not Exists(Select ID From XY_ClassLabel where name = @name)
	Insert Into XY_ClassLabel(name,CNName,body,tableName)
    values (@Name,@CNName,@Body,@TableName)
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateOrderForm]    Script Date: 10/03/2011 19:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[XYP_UpdateOrderForm]

@OF_ID bigint,
@OF_Type int,
@OF_Price decimal(18,0) ,
@OF_Favorable decimal(18,0) ,
@OF_CBear bit ,
@OF_CBegin bit ,
@OF_Carriage decimal(18,0) ,
@OF_Number int ,
@OF_Money decimal(18,0) ,
@LinkMan varchar(50) ,
@LinkTel varchar(100) ,
@LinkAddress varchar(200) ,
@OF_AdateTime datetime ,
@OF_remark text 
 AS 

    begin
        begin tran tr
        begin
	UPDATE o_OrderForm SET 
	[OF_Type] = @OF_Type, [OF_Price] = @OF_Price,[OF_Favorable] = @OF_Favorable,[OF_CBear] = @OF_CBear,[OF_CBegin] = @OF_CBegin,[OF_Carriage] = @OF_Carriage,[OF_Number] = @OF_Number,[OF_Money] = @OF_Money,[LinkMan] = @LinkMan,[LinkTel] = @LinkTel,[LinkAddress] = @LinkAddress,[OF_AdateTime] = @OF_AdateTime,[OF_remark] = @OF_remark
	WHERE [OF_ID] = @OF_ID
   end
	if @@error <> 0
	begin
		rollback tran tr
		return -2
	end
	end
	commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertOrderForm]    Script Date: 10/03/2011 19:33:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[XYP_InsertOrderForm]
@OF_ID bigint output,
@OF_Achieye bit ,
@OF_Type tinyint ,
@Customer_ID bigint ,
@SD_ID bigint ,
@OF_UID bigint ,
@OF_Price decimal(18,0) ,
@OF_Favorable decimal(18,0) ,
@OF_CBear bit ,
@OF_CBegin bit ,
@OF_Carriage decimal(18,0) ,
@OF_Number int ,
@OF_Money decimal(18,0) ,
@OF_BeginTime datetime ,
@LinkMan varchar(50) ,
@LinkTel varchar(100) ,
@LinkAddress varchar(200) ,
@OF_AdateTime datetime ,
@OF_remark text ,
@OF_Code varchar(12)
 AS 
if (@Customer_ID=@OF_UID)
begin
return -1
end
else
    begin
        begin tran tr
        begin
	INSERT INTO o_OrderForm(
	[OF_Achieye],[OF_Type],[Customer_ID],[SD_ID],[OF_UID],[OF_Price],[OF_Favorable],[OF_CBear],[OF_CBegin],[OF_Carriage],[OF_Number],[OF_Money],[OF_BeginTime],[LinkMan],[LinkTel],[LinkAddress],[OF_AdateTime],[OF_remark],[OF_Code]
	)VALUES(
	@OF_Achieye,@OF_Type,@Customer_ID,@SD_ID,@OF_UID,@OF_Price,@OF_Favorable,@OF_CBear,@OF_CBegin,@OF_Carriage,@OF_Number,@OF_Money,getdate(),@LinkMan,@LinkTel,@LinkAddress,@OF_AdateTime,@OF_remark,@OF_Code
	)
   end
	if @@error <> 0
	begin
		rollback tran tr
		return -2
	end
             else
               set @OF_ID= @@identity
	end
	commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateOrderFormAchieve]    Script Date: 10/03/2011 19:34:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateOrderFormAchieve]
@U_ID bigint
AS
	UPDATE o_OrderForm SET 
	[OF_Achieye] = 0, [OF_Type]=11
	where [OF_ID] in (select [OF_ID]
	                from o_OrderForm
	                where  [OF_Achieye]=1 and OF_AdateTime <= getdate() and [OF_Type]<3) and OF_UID=@U_ID
             UPDATE o_OrderForm SET 
	[OF_Achieye] = 0, [OF_Type]=11
	where [OF_ID] in (select [OF_ID]
	                from o_OrderForm
	                where  [OF_Achieye]=1 and OF_AdateTime <= getdate() and [OF_Type]<3 ) and Customer_ID=@U_ID
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[XYP_CountBrandByType]    Script Date: 10/03/2011 19:32:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- 统计品牌类别下的信息数目 包括子类别

-- 创建标识：刘甲20080428

-- 参数：
-- @ID			要统计的类别ID

-- 返回值：
-- 
-- =============================================
CREATE PROCEDURE [dbo].[XYP_CountBrandByType]
(
	@id int
)
AS
begin
	select count(b_id) from u_Barnd where pt_id in (select id from XY_BrandType where id=@id or ParentID=@id or FullID like (convert(varchar(10),@id)+',%') or FullID like ('%,'+convert(varchar(10),@id)+',%') or FullID like ('%,'+convert(varchar(10),@id)))
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertBrandType]    Script Date: 10/03/2011 19:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- 插入品牌类别信息

-- 创建标识：刘甲20080426

-- 参数：
-- @ParentID	父节点的ID值
-- @Name		品牌的名称

-- 返回值：
-- -1:记录已经存在，-2:发生错误
-- =============================================
CREATE PROCEDURE [dbo].[XYP_InsertBrandType] 
(
  @ParentID int,
  @Name varchar(200),
  @FullID varchar(20)
)
AS
   begin
   begin tran tr
    begin
	declare @Count int 
	declare @orderid int 
	select top 1 @orderid=orderid from XY_BrandType where ParentID=@ParentID order by orderid desc
       if not exists(select ID from XY_BrandType where [Name]=@Name and ParentID=@ParentID)
			begin
			  
			  select @Count=Count(*) from XY_BrandType where ParentID=@ParentID
	
			  if @Count <1
				set @orderid=0	

              insert into XY_BrandType(ParentID,[Name],FullID,orderid)
              values (@ParentID,@Name,@FullID,@orderid+1)
            end
       else
            begin
              rollback tran tr
              return -1
            end
    end
     if @@error <> 0
       begin
             rollback tran tr
             return -2
       end
     end   
  commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertBrand]    Script Date: 10/03/2011 19:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_InsertBrand]
@B_ID bigint output ,
@U_ID int ,
@PT_ID bigint,
@B_Type varchar(500),
@B_Remark  varchar(8000)
as
	Begin tran tr

	insert into u_Barnd(U_ID,B_Type,B_Remark,PT_ID) values (@U_ID,@B_Type,@B_Remark,@PT_ID)

	Update xy_brandType set infoCount = infoCount + 1 where ID = @PT_ID

	if @@error <>0
		Begin
			Rollback tran tr
			return -2
		End
	
	Commit Tran

	set @B_ID=@@identity
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateBrandType]    Script Date: 10/03/2011 19:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- 修改品牌类别信息

-- 创建标识：刘甲20080422

-- 参数：
-- @ID			要修改记录的ID值
-- @ParentID	父节点的ID值
-- @Name		品牌的名称

-- 返回值：
-- -1:要修改成的记录已经存在，-2:发生错误
-- =============================================
CREATE PROCEDURE [dbo].[XYP_UpdateBrandType]
(
  @ID int,
  @Name varchar(200),
 @FullID varchar(100),
  @ParentID int  
)
AS
	declare @ParentIDOld bigint
	declare @Orderid int
	declare @newOrderid int
	declare @count int


	SELECT @ParentIDOld=ParentID from XY_BrandType where ID = @ID
	
	if @ParentIDOld <> @ParentID
	begin 
		select top 1 @Orderid=orderid from  XY_BrandType where  ParentID=@ParentID order by orderid desc
		select @count=count(*) from  XY_BrandType where  ParentID=@ParentID
		
		if @count >0 
			set	@newOrderid = (@Orderid+1)
		else 
			set @newOrderid = 1
		
       if not exists(select ID from XY_BrandType where [Name]=@Name and ID<>@ID)
            begin
              update XY_BrandType set [Name]=@Name ,ParentID=@ParentID,FullID=@FullID,orderid=@orderid where ID=@ID
            end
       else
            begin
              rollback tran tr
              return -1
            end
    end
	
	else
	begin
		if not exists(select ID from XY_BrandType where [Name]=@Name and ID<>@ID)
            begin
              update XY_BrandType set [Name]=@Name ,ParentID=@ParentID,FullID=@FullID where ID=@ID
            end
		else
            begin
              rollback tran tr
              return -1
            end
	end

     if @@error <> 0
       begin
             rollback tran tr
             return -2
       end
GO
/****** Object:  View [dbo].[XYV_Log]    Script Date: 10/03/2011 19:32:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_Log]
AS
SELECT b_log.L_ID, b_log.L_Title, b_log.L_Content, b_log.L_MF, 
      b_log.UM_ID, b_log.L_addtime, b_Admin.UM_Name
FROM b_log LEFT OUTER JOIN
      b_Admin ON b_log.UM_ID = b_Admin.UM_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertLog]    Script Date: 10/03/2011 19:33:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_InsertLog]
@L_Title  varchar(500),
@L_Content  varchar(8000),
@UM_ID  int ,
@L_MF  varchar(100)
as
insert into b_Log(L_Title,L_Content,UM_ID,L_MF)  values(@L_Title,@L_Content,@UM_ID,@L_MF)
begin 
begin tran tr
if @@error <> 0
begin
rollback tran tr
return -2
end 
commit
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertAdmin]    Script Date: 10/03/2011 19:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertAdmin]
(
        
		@UM_Pwd char(32),
		@UM_Name char(20),
		@UR_ID SMALLINT,
		@Usernum NVARCHAR(15)
)
AS
declare @count int 
select @count=count(UM_Name) from b_Admin where UM_Name=@UM_Name and UR_ID=@UR_ID AND Usernum=@Usernum
if @count >0
return -1
else

   begin
   begin tran tr
   begin
   INSERT INTO b_Admin(
	[UM_Pwd],[UR_ID],[UM_Name],[Usernum],isSuper,isLock, OnlyLogin
	)VALUES(
	@UM_Pwd,@UR_ID,@UM_Name,@Usernum,0,0,1
	)

   end
   if @@error <> 0
   begin
   rollback tran tr
   return -2
   end
   end
   commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertUserInfo]    Script Date: 10/03/2011 19:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertUserInfo]
(
	@U_ID bigint,
	@UI_Name varchar(100),
	@UI_Area varchar(100),
	@UI_License varchar(50),
	@UI_Character varchar(50),
	@UI_LinkMan varchar(50),
	@UI_Number varchar(50),
	@UI_HomePage varchar(200),
	@UI_Synopsis varchar(5000),
	@UI_Postcode varchar(6),
	@UI_Mobil varchar(100),
	@UT_ID bigint,
	@UI_Sex  bit,
	@U_Section  varchar(100),
	@U_Post  varchar(100),
	@U_Way smallint ,
	@U_SupplyProduct varchar(500),
	@U_BuyProduct varchar(500),
	@U_Mode varchar(200),
	@U_Money decimal,
	@U_Address varchar(200),
	@U_PType varchar(5000),
	@U_Year int ,
	@U_MoneyType varchar(100),
	@Area_ID int ,
	@AC_ID int ,
	@IM	varchar(50),
	@Telephone varchar(200),
	@Fax varchar(200),
	@TradeIds varchar(100)

)
AS
	declare @Count int
	select @Count=count(U_ID) from u_UserInfo where U_ID=@U_ID  

	if @Count >0
		return -1

	INSERT INTO u_UserInfo(U_ID, UI_Name, UI_Area, UI_License, UI_Character, UI_LinkMan, UI_Number, UI_HomePage, UI_Synopsis, UI_Postcode, UI_Mobil,UT_ID,UI_Sex,U_Section,U_Post,U_Way,U_SupplyProduct,U_BuyProduct,U_Mode,U_Money,U_Address,U_PType,U_Year,U_MoneyType,Area_ID,AC_ID,IM,Telephone,Fax,TradeIds)
	VALUES (@U_ID, @UI_Name, @UI_Area, @UI_License, @UI_Character, @UI_LinkMan,  @UI_Number, @UI_HomePage,  @UI_Synopsis, @UI_Postcode, @UI_Mobil,@UT_ID,@UI_Sex,@U_Section,@U_Post,@U_Way,@U_SupplyProduct,@U_BuyProduct,@U_Mode,@U_Money,@U_Address,@U_PType,@U_Year,@U_MoneyType,@Area_ID,@AC_ID,@IM,@Telephone,@Fax,@TradeIds)

	if @@error=0
			return -2


	set @U_ID= @@identity
GO
/****** Object:  View [dbo].[XYV_OnlineJoin]    Script Date: 10/03/2011 19:32:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_OnlineJoin]
AS
SELECT     XY_OnlineJoin.ID, XY_OnlineJoin.InvestmentID, XY_OnlineJoin.UserID, XY_OnlineJoin.Title, XY_OnlineJoin.InfoContent, 
                      XY_OnlineJoin.QuondamProduct, XY_OnlineJoin.AreaIDs, XY_OnlineJoin.HasReply, XY_OnlineJoin.AddTime, XY_OnlineJoin.IP, 
                      u_UserInfo_1.UI_LinkMan, u_UserInfo_1.UI_Name, u_UserInfo_1.Telephone, u_UserInfo_1.UI_Mobil, i_InviteBusinessmanInfo.U_ID AS InfoUserID,
                       u_UserInfo.UI_Name AS InfoConpanyName, u_UserInfo.UI_LinkMan AS InfoLinkMan
FROM         XY_OnlineJoin LEFT OUTER JOIN
                      i_InviteBusinessmanInfo ON XY_OnlineJoin.InvestmentID = i_InviteBusinessmanInfo.IBI_ID LEFT OUTER JOIN
                      u_UserInfo ON i_InviteBusinessmanInfo.U_ID = u_UserInfo.U_ID LEFT OUTER JOIN
                      u_UserInfo AS u_UserInfo_1 ON XY_OnlineJoin.UserID = u_UserInfo_1.U_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateLabel]    Script Date: 10/03/2011 19:34:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[XYP_UpdateLabel]
(
	@L_ID bigint,     
	@L_Name varchar(100),
	@L_CName varchar(100),
	@LT_ID int,
	@L_TableName varchar(500),
	@L_Content varchar(5000),
	@L_StyleHead varchar(5000),
	@L_StyleContent varchar(8000),
	@L_StyleFooter varchar(5000)

)
AS
        begin
        begin tran tr
        begin
        UPDATE b_Label SET L_Name = @L_Name,L_CName = @L_CName,LT_ID = @LT_ID,
			L_TableName = @L_TableName,L_Content = @L_Content,L_StyleHead = @L_StyleHead,
			L_StyleContent = @L_StyleContent,L_StyleFooter = @L_StyleFooter 
			where L_ID = @L_ID
		
   	end
	if @@error <> 0
	begin
		rollback tran tr
		return -2
	end
	end
	commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertLabel]    Script Date: 10/03/2011 19:33:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[XYP_InsertLabel]
(
    @L_Name varchar(100),
	@L_CName varchar(100),
	@LT_ID int,
	@L_TableName varchar(500),
	@L_Content varchar(5000),
	@L_StyleHead varchar(5000),
	@L_StyleContent varchar(8000),
	@L_StyleFooter varchar(5000)
)
AS

  
	declare @Count int
     select @Count = count(L_Name) from b_Label where L_Name = @L_Name
     if @Count >0
         begin 
         return -1
         end
     else
	begin 
	begin tran tr
   	begin
   	INSERT INTO b_Label (L_Name,L_CName,LT_ID,L_TableName,L_Content,L_StyleHead,L_StyleContent,L_StyleFooter)
		 values (@L_Name,@L_CName,@LT_ID,@L_TableName,@L_Content,@L_StyleHead,@L_StyleContent,@L_StyleFooter)
   	end
   if @@error <> 0
   begin
   rollback tran tr
   return -2
   end
	end

  commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertRole]    Script Date: 10/03/2011 19:33:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[XYP_InsertRole]
	(
		@value varchar(50),---字段内容
		@TableName varchar(50)---表名称
	)
AS
  declare @Count int
  begin
	  if @TableName='b_Role'
		select @Count=count(UR_ID) from b_Role where UR_Name=@value
      if @TableName='b_FiltrateKeyWord'
        select @Count=count(FKW_ID) from b_FiltrateKeyWord where FKW_Name=@value  
  end
  if(@Count>0)
	  begin
	  return -1
	  end
  else
	  begin 
		  begin tran tr
			  begin
				  if @TableName='b_Role' 
					insert into b_Role (UR_Name) values (@value)
                  if @TableName='b_FiltrateKeyWord'
                    insert into b_FiltrateKeyWord (FKW_Name) values (@value)
			  end
		  if @@error<>0
		   begin
				 rollback tran tr
				 return -2
			end
	  end
  commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateFiltrateKeyWord]    Script Date: 10/03/2011 19:34:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[XYP_UpdateFiltrateKeyWord]

	(
                @FKW_ID int,
		@FKW_Name varchar(50)
	)


AS

   begin
   begin tran tr
   begin
   update b_FiltrateKeyWord set FKW_Name=@FKW_Name where FKW_ID=@FKW_ID 
   end
   	if @@error <> 0
	begin
		rollback tran tr
		return -2
	end
   end
   commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertFiltrateKeyWord]    Script Date: 10/03/2011 19:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[XYP_InsertFiltrateKeyWord]
(
        @FKW_Name varchar(50) 
)
AS
declare @count int 
select @count=count(FKW_Name) from b_FiltrateKeyWord where FKW_Name=@FKW_Name 
if @count >0
return -1
else
   begin
	
   begin tran tr
   begin
   INSERT INTO b_FiltrateKeyWord (FKW_Name) values (@FKW_Name)
   end
   if @@error <> 0
   begin
   rollback tran tr
   return -2
   end
   end
   commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_Update]    Script Date: 10/03/2011 19:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[XYP_Update]
	(
        @ID int,---修改条件
		@value varchar(50),---字段内容
		@TableName varchar(50)---表名称
	)
AS

	  begin 
		  begin tran tr
			  begin
				  if @TableName='b_Role' 
					Update b_Role set UR_Name=@value where UR_ID=@ID
				  
                  if @TableName='b_FiltrateKeyWord'
                    update b_FiltrateKeyWord set FKW_Name=@value where FKW_ID=@ID
			  end
		  if @@error<>0
		   begin
				 rollback tran tr
				 return -2
			end
	  end
  commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertOnlineJoin]    Script Date: 10/03/2011 19:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertOnlineJoin]
	@InvestmentID	bigint,
	@UserID		bigint,
	@Title		varchar(200),
	@InfoContent	varchar(1000),
	@QuondamProduct	varchar(200),
	@AreaIDs	varchar(200),
	@AddTime	smalldatetime,
	@IP			varchar(15)
AS
BEGIN
	insert into XY_OnlineJoin values (@InvestmentID,@UserID,@Title,@InfoContent,@QuondamProduct,@AreaIDs,0,@AddTime,@IP)

	
	update i_InviteBusinessmanInfo set IBI_MessageNum=IBI_MessageNum+1 ,IBI_NoMessageNum=IBI_NoMessageNum+1  where IBI_ID=@InvestmentID
	
END
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateInviteBusinessman]    Script Date: 10/03/2011 19:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateInviteBusinessman]
( 
	@IBI_ID bigint,
	@U_ID bigint,
	@IBI_Title varchar(200),
	@IBI_Content text,
	@IT_ID bigint,
	@A_Area varchar(1000),
	@S_Name varchar(500),
	@IBI_Description text,
	@IBI_Support varchar(8000),
	@IBI_Demand varchar(8000),
	@IBI_EndDate int,
	@IBI_EndTime datetime,
	@IBI_URL varchar(100),
	@IBI_Sign tinyint,
	@P_ID bigint 
)
AS

	UPDATE [i_InviteBusinessmanInfo] 
	SET [U_ID] = @U_ID, [IBI_Title] = @IBI_Title, [IBI_Content] = @IBI_Content, [IT_ID] = @IT_ID, [A_Area] = @A_Area, S_Name=@S_Name,
        [IBI_Description] = @IBI_Description, [IBI_Support] = @IBI_Support, [IBI_Demand] = @IBI_Demand,IBI_EndDate=@IBI_EndDate,
        IBI_EndTime=@IBI_EndTime, IBI_URL=@IBI_URL, IBI_Sign=@IBI_Sign,P_ID=@P_ID
	WHERE [IBI_ID] = @IBI_ID

	if @@error <> 0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateServiceVouch]    Script Date: 10/03/2011 19:34:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateServiceVouch]
(
  @S_Vouch bit,
  @S_ID bigint
)
AS

	UPDATE [i_ServiceInfo] SET S_Vouch = @S_Vouch
	WHERE [S_ID] = @S_ID

	if @@error <> 0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateService]    Script Date: 10/03/2011 19:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[XYP_UpdateService]
(
  @S_ID bigint,
  @S_Title  varchar(200),
  @U_ID bigint,
  @ST_ID bigint,
  @S_Content text,
  @S_EndDate int,
  @S_EndTime datetime,
  @P_ID bigint ,
  @S_Flag int 
)
as
	update i_ServiceInfo
	set S_Title=@S_Title,U_ID=@U_ID,ST_ID=@ST_ID, S_EndDate=@S_EndDate, S_EndTime=@S_EndTime,S_Content=@S_Content,P_ID=@P_ID,S_Flag=@S_Flag
	where S_ID=@S_ID
	
	if @@error<>0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUserType]    Script Date: 10/03/2011 19:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateUserType]
	@UT_ID bigint,
	@UT_Type nvarchar(50),
	@UT_PID bigint,
	@UT_FullID varchar(500)

 AS 

	declare @Count int
	select @Count = count(UT_ID) from b_UserType where UT_Type=@UT_Type and  UT_PID = @UT_PID and UT_ID <> @UT_ID

	if @Count >0
		return -1

	declare @ParentIDOld bigint
	declare @Orderid int
	declare @newOrderid int
	
	SELECT @ParentIDOld=UT_PID from b_UserType where UT_ID = @UT_ID

	if @ParentIDOld <> @UT_PID
	begin 
		select top 1 @Orderid=orderid from  b_UserType where  UT_PID=@UT_PID order by orderid desc
		select @count=count(*) from  b_UserType where  UT_PID=@UT_PID
		
		if @count >0 
			set	@newOrderid = (@Orderid+1)
		else 
			set @newOrderid = 1


		UPDATE b_UserType SET  [UT_Type] = @UT_Type,
								[UT_PID] = @UT_PID,
								UT_FullId = @UT_FullID,
								orderid = @newOrderid
		WHERE [UT_ID] = @UT_ID

	end
	else
	begin
		UPDATE b_UserType SET  [UT_Type] = @UT_Type,
								[UT_PID] = @UT_PID,
								UT_FullId = @UT_FullID
		WHERE [UT_ID] = @UT_ID
	end
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertUserType]    Script Date: 10/03/2011 19:33:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertUserType]
@UT_Type varchar(50) ,
@UT_PID bigint ,
@UT_FullId varchar(500)

 AS 

	declare @Count int
	select @Count = count(UT_ID) from b_UserType where UT_Type=@UT_Type and  UT_PID = @UT_PID

	if @Count >0
		return -1
	
	declare @orderid int 

	select top 1 @orderid=orderid from b_UserType where UT_PID=@UT_PID order by orderid desc
	
	select @Count=Count(*) from b_UserType where UT_PID=@UT_PID
	
	if @Count <1
		set @orderid=0

	INSERT INTO b_UserType(	[UT_Type],[UT_PID],[UT_FullID],orderid)
	VALUES(	@UT_Type,@UT_PID,@UT_FullId,@orderid+1)

	if @@error <> 0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertNewsDiscuss]    Script Date: 10/03/2011 19:33:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_InsertNewsDiscuss]
(
  @U_ID  bigint,
  @U_Name varchar(30),
  @NS_ID bigint,
  @ND_Content varchar(5000),
  @ND_IsShow bit,
  @IPAddress varchar(30),
  @IPIsShow bit
)

as

 begin
  begin tran tr
    begin
      insert into n_NewsDiscuss (U_ID, U_Name, NS_ID, ND_Content, ND_IsShow, IPAddress,IPIsShow)
              values (@U_ID, @U_Name, @NS_ID, @ND_Content, @ND_IsShow,@IPAddress,@IPIsShow)
    end
 
 if @@error <> 0
    begin
      rollback tran tr
      return -2
    end
 end
commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateNewsDiscussIsShow]    Script Date: 10/03/2011 19:34:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[XYP_UpdateNewsDiscussIsShow]
(
    @ND_ID bigint,
    @ND_IsShow bit
)

as

  begin
     begin tran tr
       begin
         update n_NewsDiscuss set ND_IsShow = @ND_IsShow where ND_ID = @ND_ID
       end
  if @@error <> 0
    begin 
        rollback tran tr
        return -2
    end
  end
 commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateNewsDiscuss]    Script Date: 10/03/2011 19:34:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdateNewsDiscuss]
(
   @ND_ID bigint,
   @U_ID bigint,
   @U_Name varchar(30),
   @NS_ID bigint,
   @ND_Content varchar(5000),
   @ND_IsShow bit,
   @IPAddress varchar(30),
   @IPIsShow bit
)

  as
   begin
     begin tran tr
        begin
           update n_NewsDiscuss set U_ID = @U_ID, U_Name = @U_Name, NS_ID = @NS_ID, 
                                    ND_Content = @ND_Content, ND_IsShow = @ND_IsShow
                                 where ND_ID = @ND_ID
        end
   if @@error <> 0
      begin
           rollback tran tr
           return -2
      end
    end
 commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertFictitiouConsumption]    Script Date: 10/03/2011 19:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[XYP_InsertFictitiouConsumption]
(
   @U_ID bigint,
   @FC_Count money,
   @FC_Explain varchar(300)
)
as

  begin tran tr
      begin 
         insert into u_FictitiouConsumptionInfo (U_ID, FC_Count, FC_Explain) values (@U_ID, @FC_Count, @FC_Explain)
      end
   if @@error <> 0
       begin 
          rollback tran tr
          return -2
       end
commit tran
GO
/****** Object:  View [dbo].[XYV_ShowInfo]    Script Date: 10/03/2011 19:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_ShowInfo]
AS
SELECT     
	XY_ShowInfo.id, 
	XY_ShowInfo.infotitle, 
	XY_ShowInfo.contents, 
	XY_ShowInfo.typeid, 
	XY_ShowInfo.BeginTime, 
	XY_ShowInfo.EndTime, 
	XY_ShowInfo.District, 
	XY_ShowInfo.Site, 
	XY_ShowInfo.sponsor, 
	XY_ShowInfo.undertake, 
	XY_ShowInfo.coorganizor, 
	XY_ShowInfo.sustain, 
	XY_ShowInfo.Sycle, 
	XY_ShowInfo.Type, 
	XY_ShowInfo.URL, 
	XY_ShowInfo.Area, 
	XY_ShowInfo.unitPrice, 
	XY_ShowInfo.leastRation, 
	XY_ShowInfo.areaTotal, 
	XY_ShowInfo.IsCommend, 
	XY_ShowInfo.addInfoTime, 
	XY_ShowInfo.HtmlPage,
	XY_ShowInfo.IsHasImage,
	i_ShowType.SHT_Name, 
	i_ShowType.FullID
FROM         
	XY_ShowInfo 
	Inner Join i_ShowType ON XY_ShowInfo.typeid = i_ShowType.SHT_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateShowInfoCommend]    Script Date: 10/03/2011 19:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[XYP_UpdateShowInfoCommend](
  @id bigint,
  @IsCommend bit
)

as
	update XY_ShowInfo set IsCommend=@IsCommend where id=@id


	if @@error <> 0
	  return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateShowInfo]    Script Date: 10/03/2011 19:34:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[XYP_UpdateShowInfo]
(
	@id bigint output,
	@infotitle varchar(100),
	@typeid int,
	@contents ntext,
	@BeginTime datetime,
	@EndTime datetime,
	@District varchar(500),
	@Site varchar(200),
	@sponsor varchar(200),
	@undertake varchar(200),
	@coorganizor varchar(200),
	@sustain varchar(50),
	@Sycle varchar(50),
	@Type varchar(50),
	@URL varchar(50),
	@Area varchar(50),
	@unitPrice int,
	@leastRation int,
	@areaTotal int,
	@IsCommend bit,
	@htmlPage varchar(200)
)
as

	update XY_ShowInfo set infotitle=@infotitle,typeid=@typeid,contents=@contents,
		BeginTime=@BeginTime,EndTime=@EndTime,District=@District,Site=@Site,
		sponsor=@sponsor,undertake=@undertake,coorganizor=@coorganizor,
		sustain=@sustain,Sycle=@Sycle,Type=@Type,URL=@URL,
		Area=@Area,unitPrice=@unitPrice,leastRation=@leastRation,
		areaTotal=@areaTotal,IsCommend=@IsCommend,htmlPage=@htmlPage
	where id=@id

   if @@error <> 0
       return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertShowInfo]    Script Date: 10/03/2011 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[XYP_InsertShowInfo]
(
	@id bigint output,
	@infotitle varchar(100),
	@typeid int,
	@contents ntext,
	@BeginTime datetime,
	@EndTime datetime,
	@District varchar(500),
	@Site varchar(200),
	@sponsor varchar(200),
	@undertake varchar(200),
	@coorganizor varchar(200),
	@sustain varchar(50),
	@Sycle varchar(50),
	@Type varchar(50),
	@URL varchar(50),
	@Area varchar(50),
	@unitPrice int,
	@leastRation int,
	@areaTotal int
)
as 
 
    if exists (select * from XY_ShowInfo where infotitle=@infotitle and id=@id)
		Return -2

	Begin tran tr

	insert into XY_ShowInfo 
		(infotitle,typeid,contents,BeginTime,EndTime,District,Site,sponsor,undertake,coorganizor,
		sustain,Sycle,Type,URL,Area,unitPrice,leastRation,areaTotal)
	values (@infotitle,@typeid,@contents,@BeginTime,@EndTime,@District,@Site,@sponsor,@undertake,
		@coorganizor,@sustain,@Sycle,@Type,@URL,@Area,@unitPrice,@leastRation,@areaTotal)

	Update i_ShowType set infoCount= infoCount + 1 where SHT_ID = @typeid

   if @@error <> 0
		Begin
			Rollback tran tr
			return -1
		End

	Commit tran

   set @id=@@identity
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUserDomain]    Script Date: 10/03/2011 19:34:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateUserDomain] 
	@UserId bigint,
	@Domain varchar(200),
	@ICPInfo varchar(200),
	@AuditingState smallint
AS
BEGIN
	If Exists(select 1  From XY_UserDomain Where userId = @UserId)
		Update XY_UserDomain Set domain = @Domain,ICPInfo = @ICPInfo,AuditingState = @AuditingState Where UserId = @UserId
	Else
		Insert into XY_UserDomain(UserId,Domain,ICPInfo,AuditingState) Values (@UserId,@Domain,@ICPInfo,@AuditingState)
END
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateBrand]    Script Date: 10/03/2011 19:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdateBrand]
@U_ID  bigint ,
@B_Type  varchar(500),
@B_Remark  varchar(8000),
@B_ID  bigint ,
@PT_ID bigint

as
begin 
begin tran tr
update u_Barnd  set  U_ID=@U_ID,B_Type=@B_Type,B_Remark=@B_Remark,PT_ID=@PT_ID where B_ID=@B_ID
if @@error <>0
begin
rollback tran 
return -2
end 
commit
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateProductType]    Script Date: 10/03/2011 19:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateProductType]
(
	@PT_ID bigint,
	@PT_Name varchar(100),
	@PT_ParentID bigint,
	@ModuleName varchar(50),
	@FullId varchar(500),
	@TradeId int,
	@FlagName varchar(50),
	@IsCustomTemplate bit,
	@Baikeid int /*新增对应百科id*/
)
AS
	
	declare @ParentIDOld bigint
	declare @Orderid int
	declare @newOrderid int
	declare @count int
	
	SELECT @ParentIDOld=PT_ParentID from b_ProductType where pt_id = @PT_ID

	if @ParentIDOld <> @PT_ParentID
	begin 
		select top 1 @Orderid=orderid from  b_ProductType where  PT_ParentID=@PT_ParentID order by orderid desc
		select @count=count(*) from  b_ProductType where  PT_ParentID=@PT_ParentID
		
		if @count >0 
			set	@newOrderid = (@Orderid+1)
		else 
			set @newOrderid = 1

		UPDATE b_ProductType 
			SET PT_Name = @PT_Name, 
			PT_ParentID = @PT_ParentID,
			ModuleName = @ModuleName,
			FullId =@FullId,
			TradeId = @TradeId,
			orderid = @newOrderid,
			FlagName=@FlagName,
			IsCustomTemplate=@IsCustomTemplate,
			Baikeid = @Baikeid
		WHERE PT_ID = @PT_ID
	end 
	else 
	begin
		UPDATE b_ProductType 
			SET PT_Name = @PT_Name, 
			PT_ParentID = @PT_ParentID,
			ModuleName = @ModuleName,
			FullId =@FullId,
			TradeId = @TradeId,
			FlagName=@FlagName,
			IsCustomTemplate=@IsCustomTemplate,
			Baikeid = @Baikeid
		WHERE PT_ID = @PT_ID
	end
	if @@error <> 0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertProduct]    Script Date: 10/03/2011 19:33:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertProduct]
(
              @P_ID bigint output,
	@P_FaLanStandard varchar(50),
	@P_FaLanMaterial varchar(50),
	@P_GeneralDia decimal(18),
	@P_StandardID varchar(50),
	@P_GeneralForce decimal(18)
)
AS
   begin
   begin tran tr
   begin
   INSERT INTO p_Product(P_FaLanStandard, P_FaLanMaterial, P_GeneralDia, 
   P_StandardID, P_GeneralForce) VALUES ( @P_FaLanStandard, @P_FaLanMaterial, @P_GeneralDia, @P_StandardID, @P_GeneralForce)
   end
   if @@error = 0
   begin
   set @P_ID= @@identity
   end  
   else
    begin
   rollback tran tr
     return -2
   end
   end
   commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateProduct]    Script Date: 10/03/2011 19:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateProduct]
(
@P_FaLanStandard varchar(50),
@P_StandardID varchar(50),
@P_FaLanMaterial varchar(50),
@P_GeneralDia decimal,
@P_GeneralForce decimal,
@P_ID  int

)
AS
	begin 
        begin tran tr 
        begin  
        UPDATE p_Product SET P_FaLanStandard = @P_FaLanStandard, P_FaLanMaterial = @P_FaLanMaterial,
         P_GeneralDia = @P_GeneralDia, P_StandardID = @P_StandardID, P_GeneralForce = @P_GeneralForce
        WHERE P_ID = @P_ID
        end
        if @@error <> 0
       
        begin
         rollback tran tr
         return -2
        end  
        end 
        commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertAdTrafficLog]    Script Date: 10/03/2011 19:33:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_InsertAdTrafficLog]
(
    @Adid bigint,
    @IP  varchar(100)
)
AS	
	declare @Date int
	
	If Exists( select Date=@Date from XY_AdTrafficLog where  IP=@IP and adid=@Adid)
	begin
		if(getdate()>dateadd(hour,24,@Date))
		begin
			INSERT INTO XY_AdTrafficLog
			([Adid],[IP],[date])
			values
			(@Adid,@IP,getdate())
			delete from XY_AdTrafficLog where dateadd(hour,24,@Date)<getdate() and Adid=@Adid

			update b_AdInfo set Ad_Traffic=(select Ad_Traffic+1 from b_AdInfo where Ad_id=@Adid)
			where  Ad_id=@Adid
		end
	end
	else
	begin
		INSERT INTO XY_AdTrafficLog
		([Adid],[IP],[date])
		values
		(@Adid,@IP,getdate())
		delete from XY_AdTrafficLog where dateadd(hour,24,@Date)<getdate()

		update b_AdInfo set Ad_Traffic=(select Ad_Traffic+1 from b_AdInfo where Ad_id=@Adid)
		where Ad_id=@Adid
	end
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertAdInfo]    Script Date: 10/03/2011 19:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertAdInfo]
(
   @AD_ID  int output,
   @AD_Name Varchar(200),
   @AP_ID bigint,
   @AD_LinkURL Varchar(500),
   @AD_Type Smallint,
   @AD_OpenType bit,
   @AD_NoteText Varchar(5000),
   @AD_PicURL Varchar(500),
   @AD_Alt Varchar(5000),
   /*新加字段*/
  @AD_Width int,
  @AD_High int,
   @AD_Letter Varchar(100),
   @AD_Font  varchar(50), 
   @AD_Size int,
   @AD_Color varchar(50),
   @AD_JSname varchar(200),
	@AD_CodeContent varchar(8000),
	@Ad_StartDate datetime,
	@Ad_EndDate datetime

) 
	
AS
  begin
  begin tran tr 
  begin
     if not exists(select AD_Name from b_AdInfo where AD_Name = @AD_Name)
      begin
      insert into b_AdInfo (AD_Name,AP_ID,AD_LinkURL,AD_Type,AD_OpenType,AD_NoteText,AD_CodeContent,AD_PicURL,AD_Alt,AD_Width,AD_High,AD_Letter,AD_Font,AD_Size,AD_Color, AD_JSname,Ad_StartDate,Ad_EndDate) 
      values (@AD_Name,@AP_ID,@AD_LinkURL,@AD_Type,@AD_OpenType,@AD_NoteText,@AD_CodeContent,@AD_PicURL,@AD_Alt,@AD_Width,@AD_High,@AD_Letter,@AD_Font,@AD_Size,@AD_Color, @AD_JSname,@Ad_StartDate,@Ad_EndDate)
      end
     else
      begin
       rollback tran tr
       return -1  
      end 
  end
     if @@error <> 0
    begin
  
     rollback tran tr 
     return -2
     end
  else 
     begin 
       set @AD_ID = @@identity   
  end
  end
  commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateAdInfo]    Script Date: 10/03/2011 19:33:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateAdInfo] 

(
  @AD_ID int,
  @AD_Name varchar(200),
  @AP_ID bigint,
  @AD_LinkURL varchar(500),
  @AD_Type smallint,
  @AD_OpenType bit,
  @AD_NoteText varchar(5000),
  @AD_PicURL varchar(200),
  @AD_Alt varchar(5000),
 /*新加字段*/
  @AD_Width int,
  @AD_High int,
  @AD_Letter Varchar(100),
  @AD_Font  varchar(50), 
  @AD_Size int,
  @AD_Color varchar(50),
  @AD_JSname varchar(200),
  @AD_CodeContent varchar(8000),
  @Ad_EndDate  datetime
   
)

AS
	begin 
	begin tran tr
	begin 
	     update b_AdInfo set AD_Name = @AD_Name, AP_ID = @AP_ID, AD_LinkURL = @AD_LinkURL, AD_Type = @AD_Type, 
	           AD_OpenType = @AD_OpenType, AD_NoteText = @AD_NoteText, AD_PicURL = @AD_PicURL, AD_Alt = @AD_Alt, AD_Width  = @AD_Width,
                        AD_High=@AD_High,AD_Letter=@AD_Letter,AD_Font=@AD_Font,AD_Size=@AD_Size,AD_Color=@AD_Color, AD_JSname= @AD_JSname,
						AD_CodeContent = @AD_CodeContent,Ad_EndDate=@Ad_EndDate
	           where AD_ID = @AD_ID
	 end
	 
	 if @@error <> 0
	 begin
	   rollback tran tr        
	   return -2
	   end
	 end
   commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateAdForIsUse]    Script Date: 10/03/2011 19:33:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateAdForIsUse]
	
(
  @AD_IDs varchar(500),
  @AD_Isuse bit
)	
AS
	begin tran tr
	
	update b_AdInfo SET AD_Isuse = @AD_Isuse where AD_ID in  (  @AD_IDs  )
	
	if @@error <> 0
	begin 
	   rollback tran tr
	   return -2
	end
  commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateInvoice]    Script Date: 10/03/2011 19:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateInvoice]
@I_ID  int,
@I_IsFlag smallint,
@I_Advice varchar(1000),
@I_Reason varchar(1000)
AS
begin 
begin tran tr
update u_Invoice set I_IsFlag=@I_IsFlag ,I_Reason=@I_Reason ,I_Advice=@I_Advice where  I_ID=@I_ID
if @@error <>0
begin 
rollback tran tr
return -2
end
end
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertInvoice]    Script Date: 10/03/2011 19:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_InsertInvoice]
@I_Name varchar(100),
@I_Address  varchar(100),
@I_PostCode varchar(100),
@I_Money  money,
@I_Title varchar(100),
@I_Content  varchar(8000),
@I_Product  varchar(100),
@I_IsFlag smallint,
@U_ID bigint 
as

begin 
begin tran tr
insert into u_Invoice(I_Name,I_Address,I_PostCode,I_Money,I_Title,I_Content,I_Product,I_IsFlag,U_ID)  values(@I_Name,@I_Address,@I_PostCode,@I_Money,@I_Title,@I_Content,@I_Product,@I_IsFlag,@U_ID)
if @@error <>0
begin 
rollback tran tr
end 
commit
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateRanking]    Script Date: 10/03/2011 19:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
CREATE PROCEDURE [dbo].[XYP_UpdateRanking]
@RId bigint,
@KeyId bigint,
@UserId bigint,
@InfoIds varchar(100),
@BeginTime datetime,
@EndTime datetime,
@Amount decimal,
@Rank smallint

AS
BEGIN
	if(datediff(dd,@EndTime,getdate())>=0)
		Begin
			Delete From [XY_Ranking] where Rid = @RId 
			return
		end

	UPDATE [XY_Ranking]
	   SET [KeyId] = @KeyId
		  ,[UserId] = @UserId
		  ,[InfoIds] = @InfoIds
		  ,[BeginTime] = @BeginTime
		  ,[EndTime] = @EndTime
		  ,[Amount] = @Amount
		  ,[Rank] = @Rank

	 WHERE RId = @RId
END

select datediff(dd,'2009-6-27',getdate())
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertRanking]    Script Date: 10/03/2011 19:33:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
CREATE PROCEDURE [dbo].[XYP_InsertRanking]
@KeyId bigint,
@UserId bigint,
@InfoIds varchar(100),
@BeginTime datetime,
@EndTime datetime,
@Amount decimal,
@Rank smallint

AS
BEGIN
	INSERT INTO [XY_Ranking]
           ([KeyId],[UserId],[InfoIds],[BeginTime],[EndTime],[Amount],[Rank])
     VALUES
           (@KeyId,@UserId,@InfoIds,@BeginTime,@EndTime,@Amount,@Rank)
END
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertNewsAuthor]    Script Date: 10/03/2011 19:33:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertNewsAuthor] 

(
  @NA_ID int output,
  @NA_Name varchar(200)
)

AS

  begin
  begin tran tr
  begin
     if not exists(select NA_Name from n_NewsAuthor where NA_Name = @NA_Name)
         begin
            insert into n_NewsAuthor (NA_Name) values (@NA_Name)
         end
     else
         begin
           rollback tran tr
           return -1
         end          
     end
   if  @@error <> 0
     begin
        rollback tran tr
        return -2
     end
  else
     begin
            set @NA_ID = @@identity
     end
  end                  
commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateNewsAuthor]    Script Date: 10/03/2011 19:34:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateNewsAuthor]

(
   @NA_ID int,
   @NA_Name varchar(200)
)

AS

  begin
  begin tran tr
  begin
          update n_NewsAuthor set NA_Name = @NA_Name where NA_ID = @NA_ID
  end
  
  if @@error <> 0
  begin 
    rollback tran tr
    return -2      
    end
      end
 commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateNewsForAuditing]    Script Date: 10/03/2011 19:34:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateNewsForAuditing]
(
  @NS_ID bigint,
  @AuditingState int
)  
AS
   
   update n_News set AuditingState = @AuditingState where NS_ID = @NS_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateNewsHTMLPage]    Script Date: 10/03/2011 19:34:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateNewsHTMLPage]

(
   @NS_ID smallint,
   @NS_HTMLPage varchar(500)
)

AS
   begin tran tr
     update n_News set NS_HTMLPage = @NS_HTMLPage where NS_ID = @NS_ID 
     if @@error <> 0
     begin
        rollback tran tr
        return -2
     end
    commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateNews]    Script Date: 10/03/2011 19:34:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateNews]
(
  @NS_ID bigint,
  @NS_Type smallint,
  @NS_NewsName varchar(2000),
  @NS_TwoName varchar(200),
  @NS_TitleStyle Varchar(100),
  @NT_ID varchar(200),
  @NS_KeyWord varchar(200),
  @NS_LinkAddress varchar(200),
  @NS_PicUrl varchar(200),
  @NS_NewsAuthor varchar(50),
  @NS_NewsOrigin varchar(200),
  @NS_NewsLess varchar(4000),
  @NS_NewsNote text,
  @NS_AddTime datetime,
  @NS_Count int,
  @NS_IsCommand bit,
  @NS_HTMLPage varchar(500),
  @NS_IsDiscuss bit,
  @NS_IsTop bit,
  @NS_IsHot bit,
  @NS_IsSlide bit,
  @TopicType varchar(500) = '',
  @Contributor bigint,
  @AuditingState int,
  @AreaIds varchar(200),
  @TradeIds varchar(200),
  @FileUrl varchar(500),
  @ProtypeIds varchar(200)
)
AS
  
	update n_News set NS_Type =  @NS_Type,NS_NewsName = @NS_NewsName,NS_TwoName=@NS_TwoName,NS_TitleStyle=@NS_TitleStyle,NT_ID = @NT_ID,
				  NS_KeyWord = @NS_KeyWord,NS_LinkAddress = @NS_LinkAddress,NS_PicUrl = @NS_PicUrl,
				  NS_NewsAuthor = @NS_NewsAuthor,NS_NewsOrigin = @NS_NewsOrigin,NS_NewsLess = @NS_NewsLess,
				  NS_NewsNote = @NS_NewsNote, NS_AddTime = @NS_AddTime,NS_Count = @NS_Count,NS_IsCommand = @NS_IsCommand,
				  NS_HTMLPage = @NS_HTMLPage,NS_IsDiscuss=@NS_IsDiscuss, NS_IsTop=@NS_IsTop,NS_IsHot=@NS_IsHot,
				  NS_IsSlide=@NS_IsSlide,TopicType=@TopicType,Contributor=@Contributor,AuditingState=@AuditingState,AreaIds=@AreaIds,TradeIds=@TradeIds,FileUrl=@FileUrl,ProtypeIds=@ProtypeIds
				  where NS_ID = @NS_ID

	if @@error <> 0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertNews]    Script Date: 10/03/2011 19:33:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertNews]
(
  @NS_ID bigint output,
  @NS_Type smallint,
  @NS_NewsName Varchar(2000),
  @NS_TwoName Varchar(2000),
  @NS_TitleStyle Varchar(100),
  @NT_ID varchar(200),
  @NS_KeyWord Varchar(200),
  @NS_LinkAddress Varchar(200),
  @NS_PicUrl Varchar(200),
  @NS_NewsAuthor Varchar(50),
  @NS_NewsOrigin Varchar(200),
  @NS_NewsLess Varchar(4000),
  @NS_NewsNote text,
  @NS_AddTime datetime,
  @NS_Count int,
  @NS_IsCommand bit,
  @NS_HTMLPage Varchar(500),
  @NS_IsDiscuss bit,
  @NS_IsTop bit,
  @NS_IsHot bit,
  @NS_IsSlide bit,
  @TopicType Varchar(500),
  @Contributor bigint,
  @AuditingState int,
  @AreaIds varchar(200),
  @TradeIds varchar(200),
  @UM_ID int,
  @FileUrl varchar(500),
  @ProtypeIds varchar(200)	 
)

AS

	if exists(select NS_ID from n_News where NS_NewsName=@NS_NewsName AND NS_Type=@NS_Type AND NT_ID=@NT_ID AND NS_NewsAuthor=@NS_NewsAuthor AND NS_NewsOrigin=@NS_NewsOrigin)
		return -1


	insert into n_News(NS_Type,NS_NewsName,NS_TwoName,NS_TitleStyle,NT_ID,NS_KeyWord,NS_LinkAddress,NS_PicUrl,NS_NewsAuthor,NS_NewsOrigin,NS_NewsLess,NS_NewsNote,NS_AddTime,
				NS_Count,NS_IsCommand,NS_HTMLPage,NS_IsDiscuss,NS_IsTop,NS_IsHot,NS_IsSlide,TopicType,Contributor,AuditingState,AreaIds,TradeIds,UM_ID,FileUrl,ProtypeIds)
	values (@NS_Type,@NS_NewsName,@NS_TwoName,@NS_TitleStyle,@NT_ID,@NS_KeyWord,@NS_LinkAddress,@NS_PicUrl,@NS_NewsAuthor,@NS_NewsOrigin,@NS_NewsLess,@NS_NewsNote,
				@NS_AddTime,@NS_Count,@NS_IsCommand,@NS_HTMLPage,@NS_IsDiscuss,@NS_IsTop,@NS_IsHot,@NS_IsSlide,@TopicType,@Contributor,@AuditingState,@AreaIds,@TradeIds,@UM_ID,@FileUrl,@ProtypeIds)
      
	if @@error <> 0
		return -2      

	set @NS_ID = @@identity
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateNewsForCommend]    Script Date: 10/03/2011 19:34:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateNewsForCommend]

(
  @NS_ID bigint,
  @NS_IsCommand bit
)

AS
update n_News set NS_IsCommand = @NS_IsCommand where NS_ID = @NS_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertNewsOrigin]    Script Date: 10/03/2011 19:33:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertNewsOrigin]

(
   @NO_ID int output,
   @NO_Name varchar(200)
)

AS

  begin 
  begin tran tr
  begin  
       if not exists(select NO_Name from n_NewsOrigin where NO_Name = @NO_Name)
        begin 
          insert into  n_NewsOrigin (NO_Name) values (@NO_Name)
        end
       else
        begin
          rollback tran tr
          return -1
        end    
       end
   if @@error <> 0
       begin 
           rollback tran tr
           return -2
       end
   else
      begin 
         set @NO_ID = @@identity
      end    
   end
commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateNewsOrigin]    Script Date: 10/03/2011 19:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateNewsOrigin]

(
   @NO_ID int,
   @NO_Name varchar(200)
)

AS

 begin
  begin tran tr
   begin 
    update n_NewsOrigin set NO_Name = @NO_Name where NO_ID = @NO_ID
   end
  if @@error <> 0
  begin
    rollback tran tr
    return -2
   end
  end
 commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateUserFriendLink]    Script Date: 10/03/2011 19:34:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateUserFriendLink]
(
	@LinkId int,
	@Url varchar(200),
	@LogoUrl varchar(200),
	@SiteName varchar(50),
	@UserID bigint
)

as    
	begin
		update XY_UserFirendLink  set Url = @Url,LogoUrl = @LogoUrl,
		SiteName = @SiteName,UserID = @UserID where LinkId = @LinkId
	end
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertUserFriendLink]    Script Date: 10/03/2011 19:33:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertUserFriendLink]
(
	@Url varchar(200),
	@LogoUrl varchar(200),
	@SiteName varchar(50),
	@UserID bigint
)

as    
	begin
	insert into XY_UserFirendLink (Url,LogoUrl,SiteName,UserID)
	values (@Url,@LogoUrl,@SiteName,@UserID)
	end
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertFavorites]    Script Date: 10/03/2011 19:33:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[XYP_InsertFavorites]
(
	@U_ID bigint,
	@DescTabName varchar(50),
	@DescTabID bigint


)
AS
	declare @count int 
select @count=count(Fa_ID) from pl_Favorite where U_ID = @U_ID and DescTabName = @DescTabName and DescTabID = @DescTabID 
if @count >0
return -1
else
	begin

    begin tran tr
    begin
	
	INSERT INTO [pl_Favorite] ([U_ID], [DescTabID], [DescTabName]) VALUES (@U_ID, @DescTabID, @DescTabName)
	
    end
   if @@error <> 0
   begin 
   rollback tran tr
   return -2
   end
end
   commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateJobResume]    Script Date: 10/03/2011 19:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdateJobResume]
(
  @RE_ID  bigint,
  @RE_Estate  int
)
as
 begin tran tr
    begin
        update  u_JobResume set  RE_Estate=@RE_Estate where ER_ID=@RE_ID
    end
     
   IF @@error <>0
     begin 
        rollback tran tr
       return -2
     end 
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertJobResume]    Script Date: 10/03/2011 19:33:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertJobResume]
@U_ID bigint,
@EI_ID bigint
 AS
begin 
  if exists( select *  from u_JobResume  where U_ID=@U_ID and EI_ID=@EI_ID)
       return -1   /*已经存在 */
   else   
  begin tran tr    
   begin 
    INSERT INTO u_JobResume(U_ID,EI_ID,RE_AddDate)
                   VALUES(@U_ID,@EI_ID,getdate())
   end
  if @@error<>0
  begin 
    rollback tran tr
    return -2
  end
commit
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateLookJobResume]    Script Date: 10/03/2011 19:34:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdateLookJobResume]
(
@RE_ID  bigint,
@RE_Estate  int
)
as
 begin tran tr
   if exists( select *  from u_JobResume  where ER_ID=@RE_ID and RE_Seedate=null)
      begin
         update u_JobResume set  RE_Estate=@RE_Estate,RE_Seedate=getdate() where ER_ID=@RE_ID
     end

  IF @@error <>0
     begin 
        rollback tran tr
        return -2
     end 
   commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertInputMoneyInfo]    Script Date: 10/03/2011 19:33:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_InsertInputMoneyInfo]
@UM_ID bigint, 
@U_ID bigint ,
@PM_ID int ,
@FT_ID bigint, 
@IM_Count money,
@OrderID varchar(50),
@PlatformFlag varchar(50)
as
begin 
begin tran tr
insert  into  u_InputMoneyInfo(UM_ID,U_ID,PM_ID,FT_ID,IM_Count,OrderID,PlatformFlag)  
values (@UM_ID,@U_ID,@PM_ID,@FT_ID,@IM_Count,@OrderID,@PlatformFlag) 
if @@error <> 0
begin 
rollback tran tr
return -2
end
end
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateMessageIsReply]    Script Date: 10/03/2011 19:34:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[XYP_UpdateMessageIsReply]
(
	@M_ID bigint
)
AS
begin tran tr
	update PL_Message set M_HasReply = 1 where M_ID = @M_ID
 if @@error <> 0
	Begin
		rollback tran tr
		return -2
	End

commit tran
--Return 1
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateMessage]    Script Date: 10/03/2011 19:34:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[XYP_UpdateMessage]
(
	@M_ID bigint 
)
AS


update  PL_Message  set   M_Restore=1 where M_ID=@M_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertAndUpdateUserAnnounce]    Script Date: 10/03/2011 19:33:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertAndUpdateUserAnnounce]
(
	@Centent varchar(1000),
	@UserID varchar(200)
)

as    
	begin
	declare @count int 
	select @count=count(*) from XY_UserAnnounce where userid=@UserID
	if(@count > 0)
		update XY_UserAnnounce  set Centent = @Centent
		where UserID = @UserID
	else
		insert into XY_UserAnnounce (Centent,UserID)
		values (@Centent,@UserID)
	end
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertEngage]    Script Date: 10/03/2011 19:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[XYP_InsertEngage]
@EI_ID bigint output,
@P_ID int,
@EI_Job varchar(50) ,
@EI_Branch varchar(50) ,
@EI_EndDate datetime ,
@EI_Type varchar(50) ,
@EI_Request varchar(2000) ,
@EI_Pay varchar(50) ,
@EI_Eb varchar(20) ,
@EI_Age varchar(20) ,
@EI_Sex varchar(2) ,
@EI_Experience varchar(20) ,
@EI_Nationality varchar(200) ,
@U_ID bigint ,
@EI_ClickNum int ,
@EI_Number int,
@Area_ID int 
 AS 

	Begin tran tr

	INSERT INTO i_engageinfo([EI_Number],
		[P_ID],[EI_Job],[EI_Branch],[EI_EndDate],[EI_Type],[Province_ID],[C_ID],[EI_Request],[EI_Pay],[EI_Eb],[EI_Age],[EI_Sex],[EI_Experience],[EI_Nationality],[U_ID],[EI_ClickNum],[Area_ID]
		)
	VALUES(@EI_Number,
		@P_ID,@EI_Job,@EI_Branch,@EI_EndDate,@EI_Type,0,0,@EI_Request,@EI_Pay,@EI_Eb,@EI_Age,@EI_Sex,@EI_Experience,@EI_Nationality,@U_ID,@EI_ClickNum,@Area_ID
	)

	Update b_post set InfoCount = infoCount + 1 where P_ID= @P_ID

	if @@error<>0
		Begin 
			rollback tran tr
			return -2
		End

	Commit tran 

	set  @EI_ID=@@identity
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertPost]    Script Date: 10/03/2011 19:33:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertPost]
	@P_Name varchar(50) ,
	@P_ParentID int,
	@FullId varchar(500)

 AS 

	declare @orderid int 
	select top 1 @orderid=orderid from b_Post where P_ParentID=@P_ParentID order by orderid desc

	declare @Count int
    
	select @Count = count(P_ID) from b_Post where P_Name = @P_Name
    
	if @Count >0
         return -1
	
	select @Count=Count(*) from b_Post where P_ParentID=@P_ParentID
	
	if @Count <1
		set @orderid=0

	INSERT INTO b_Post(P_Name,P_ParentID,FullId,orderid)VALUES(@P_Name,@P_ParentID,@FullId,@orderid+1)

	if @@error <> 0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdatePost]    Script Date: 10/03/2011 19:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdatePost]
(
	@P_Name varchar(50),
	@P_ParentID int,
	@P_ID int,
	@FullId varchar(500)
)
AS
	
	declare @ParentIDOld bigint
	declare @Orderid int
	declare @newOrderid int
	declare @count int


	SELECT @ParentIDOld=P_ID from b_Post where P_ID = @P_ID
	
	if @ParentIDOld <> @P_ParentID
	begin 
		select top 1 @Orderid=orderid from  b_Post where  P_ParentID=@P_ParentID order by orderid desc
		select @count=count(*) from  b_Post where  P_ParentID=@P_ParentID
		
		if @count >0 
			set	@newOrderid = (@Orderid+1)
		else 
			set @newOrderid = 1

		UPDATE b_Post SET P_Name = @P_Name, 
		P_ParentID = @P_ParentID,
		orderid=@newOrderid,
		FullID = @FullID WHERE (P_ID = @P_ID)
	end
	else
	begin
		UPDATE b_Post SET P_Name = @P_Name, 
		P_ParentID = @P_ParentID,
		FullID = @FullID WHERE (P_ID = @P_ID)
	end
	if @@error <> 0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateFinance]    Script Date: 10/03/2011 19:34:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure   [dbo].[XYP_UpdateFinance]
@F_ID bigint ,
@U_Name varchar(100),
@F_Remark  varchar(2000),
@M_Money decimal ,
@FT_ID int 
as
begin 
begin tran tr
update b_Finance set M_Money=@M_Money,FT_ID=@FT_ID  ,U_Name=@U_Name ,F_Remark=@F_Remark where F_ID=@F_ID
end
if @@error <>0
begin
rollback tran tr
return -2
end 
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertFinance]    Script Date: 10/03/2011 19:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure   [dbo].[XYP_InsertFinance]
@U_Name varchar(100) ,
@F_Remark varchar(2000),
@UM_ID  int ,
@M_Money decimal ,
@FT_ID int 
as
begin 
begin tran tr
 insert into b_Finance (U_Name,UM_ID,M_Money,FT_ID,F_Remark) values (@U_Name,@UM_ID,@M_Money,@FT_ID,@F_Remark)
end
if @@error <>0
begin
rollback tran tr
return -2
end 
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateAccountMoney]    Script Date: 10/03/2011 19:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[XYP_UpdateAccountMoney]
	@U_ID bigint ,
	@Money money
as

update u_Account  set UGR_LeftMoney=UGR_LeftMoney+@Money   where U_ID=@U_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdaeAccountMoney]    Script Date: 10/03/2011 19:33:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdaeAccountMoney]
@U_ID bigint ,
@Money money
as

update u_Account  set UGR_Money=UGR_Money+@Money ,UGR_LeftMoney=UGR_LeftMoney+@Money   where U_ID=@U_ID
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateDeductAccountMoney]    Script Date: 10/03/2011 19:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[XYP_UpdateDeductAccountMoney]
@U_ID bigint ,
@Money money
as
begin 
begin tran tr
 update u_Account  set UGR_LeftMoney=UGR_LeftMoney-@Money   where U_ID=@U_ID
if @@error <>0
 begin 
 rollback tran tr
return -2
end
end
commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateMachiningType]    Script Date: 10/03/2011 19:34:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[XYP_UpdateMachiningType]
(
	@MT_ID bigint,
	@MT_Name varchar(100),
	@ModuleName varchar(50),
	@MT_ParentID bigint,
	@FullId varchar(500)
)
 as

	declare @ParentIDOld bigint
	declare @Orderid int
	declare @newOrderid int
	declare @count int


	SELECT @ParentIDOld=MT_ParentID from i_MachiningType where MT_ID = @MT_ID
	
	if @ParentIDOld <> @MT_ParentID
	begin 
		select top 1 @Orderid=orderid from  i_MachiningType where  MT_ParentID=@MT_ParentID order by orderid desc
		select @count=count(*) from  i_MachiningType where  MT_ParentID=@MT_ParentID
		
		if @count >0 
			set	@newOrderid = (@Orderid+1)
		else 
			set @newOrderid = 1

		update i_MachiningType set MT_Name=@MT_Name,
		ModuleName=@ModuleName,
		MT_ParentID=@MT_ParentID,
		FullId = @FullId,
		orderid = @newOrderid
		where MT_ID=@MT_ID
	end

	else
	begin
		update i_MachiningType set MT_Name=@MT_Name,
		ModuleName=@ModuleName,
		MT_ParentID=@MT_ParentID,
		FullId = @FullId
		where MT_ID=@MT_ID
	end 
	


	if @@error <> 0
       return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertMachiningType]    Script Date: 10/03/2011 19:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   procedure [dbo].[XYP_InsertMachiningType]
(
	@MT_Name varchar(100),
	@MT_ParentID bigint,
	@ModuleName varchar(50),
	@FullId varchar(500)
)
as 
	declare @Count int 
	declare @orderid int 
	select top 1 @orderid=orderid from i_MachiningType where MT_ParentID=@MT_ParentID order by orderid desc


    if exists (select MT_ID from i_MachiningType where MT_Name=@MT_Name and  MT_ParentID=@MT_ParentID and ModuleName=@ModuleName)
		return -1

	select @Count=Count(*) from i_MachiningType where MT_ParentID=@MT_ParentID
	
	if @Count <1
		set @orderid=0	

    insert into i_MachiningType (MT_Name,MT_ParentID,ModuleName,FullId,orderid) values (@MT_Name,@MT_ParentID,@ModuleName,@FullId,@orderid+1)

	if @@error <> 0
        return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateSearchKey]    Script Date: 10/03/2011 19:34:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdateSearchKey]
(
@SK_ID bigint,
@SK_Name varchar(50),
@SK_Sort varchar(50),
@SK_Count bigint,
@SK_IsCommend bit,
@SK_IsRanking bit,
@SK_CustomPrice varchar(50)
)

 as 
	update b_SearchKey 
		set SK_Name=@SK_Name, 
		SK_Sort=@SK_Sort, 
		SK_Count=@SK_Count, 
		SK_IsCommend=@SK_IsCommend,
		SK_IsRanking = @SK_IsRanking,
		SK_CustomPrice = @SK_CustomPrice

	where SK_ID=@SK_ID

	if @@error <> 0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertSearchKey]    Script Date: 10/03/2011 19:33:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_InsertSearchKey]
(
	@SK_Name varchar(50),
	@SK_Sort varchar(50),
	@SK_Count bigint,
	@SK_IsCommend bit,
	@SK_IsRanking bit,
	@SK_CustomPrice varchar(50)
)
 as 

	if exists (select SK_ID from b_SearchKey where SK_Name=@SK_Name and SK_Sort=@SK_Sort)
		return -1

	insert into b_SearchKey(SK_Name,SK_Sort,SK_Count,SK_IsCommend,SK_IsRanking,SK_CustomPrice) values (@SK_Name,@SK_Sort,@SK_Count,@SK_IsCommend,@SK_IsRanking,@SK_CustomPrice)

	if @@error <> 0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_SearchSearchKey]    Script Date: 10/03/2011 19:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_SearchSearchKey]
(
@SearchKeyName varchar(50),
@SearchKeySort varchar(50),
@IsInsert bit
) 
as
	if exists (select SK_ID from b_SearchKey where SK_Name=@SearchKeyName and SK_Sort=@SearchKeySort)
		update b_SearchKey set SK_Count=SK_Count+1,SK_LastSearchTime = getdate() where SK_Name=@SearchKeyName and SK_Sort=@SearchKeySort
	else 
		if @IsInsert = 1
			insert into b_SearchKey(SK_Name,SK_Sort,SK_Count,SK_IsCommend,SK_IsRanking) values (@SearchKeyName,@SearchKeySort,0,0,0)

	if @@error <> 0
		return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateAdPlaceForIsUse]    Script Date: 10/03/2011 19:33:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateAdPlaceForIsUse]
	
(
  @AP_ID int,
  @AP_IsUse bit
)	
AS
	begin tran tr
	
	update b_AdPlaceInfo  SET AP_IsUse = @AP_IsUse where AP_ID = @AP_ID
	
	if @@error <> 0
	begin 
	   rollback tran tr
	   return -2
	end
  commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateAdPlace]    Script Date: 10/03/2011 19:33:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateAdPlace]

(
   @AP_ID int,
   @AP_Name varchar(200),
   @AT_ID int,
   @AP_Alt varchar(5000),
   @AP_IsUse bit
)

AS
   begin
   begin tran tr
   begin 
    update b_AdPlaceInfo set AP_Name = @AP_Name, AT_ID = @AT_ID, AP_Alt = @AP_Alt, AP_IsUse = @AP_IsUse where AP_ID = @AP_ID
   end
   if @@error <> 0
   begin 
     rollback tran tr
     return -2
   end
  end
 commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertAdPlace]    Script Date: 10/03/2011 19:33:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_InsertAdPlace]
(
  @AP_Name Varchar(200),
  @AT_ID int,
  @AP_Alt Varchar(5000),
  @AP_IsUse bit 
)	
AS
begin
begin tran tr
begin
  if not exists (select AP_Name from b_AdPlaceInfo where AP_Name = @AP_Name)
   begin
    insert into b_AdPlaceInfo(AP_Name,AT_ID,AP_Alt,AP_IsUse) values (@AP_Name,@AT_ID,@AP_Alt,@AP_IsUse)
   end
  else
   begin
    rollback tran tr
    return -1 
   end 
  end
if @@error <> 0
 begin
  rollback tran tr
  return -2
 end
 end
 commit tran
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateEngage]    Script Date: 10/03/2011 19:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_UpdateEngage]
@EI_ID int ,
@P_ID int ,
@EI_Job varchar(50) ,
@EI_Branch varchar(50) ,
@EI_EndDate datetime ,
@EI_Type varchar(50) ,
@EI_Request varchar(2000) ,
@EI_Pay varchar(50) ,
@EI_Eb varchar(20),
@EI_Age varchar(20) ,
@EI_Sex varchar(10) ,
@EI_Experience varchar(10) ,
@EI_Nationality varchar(200) ,
@U_ID bigint,
@EI_Number int,
@Area_ID int 


 AS 
    begin 
    begin tran tr
    begin 
    UPDATE i_engageinfo SET 
	EI_Number=@EI_Number,[P_ID] = @P_ID,[EI_Job] = @EI_Job,[EI_Branch] = @EI_Branch,[EI_EndDate] = @EI_EndDate,[EI_Type] = @EI_Type,[EI_Request] = @EI_Request,[EI_Pay] = @EI_Pay,[EI_Eb] = @EI_Eb,[EI_Age] = @EI_Age,[EI_Sex] = @EI_Sex,[EI_Experience] = @EI_Experience,[EI_Nationality] = @EI_Nationality,[U_ID] = @U_ID,Area_ID=@Area_ID
	WHERE [EI_ID] = @EI_ID
    end 
    if @@error<>0
    begin
    rollback tran tr
    return -2
    end
    end
   commit
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertShowType]    Script Date: 10/03/2011 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_InsertShowType]
(
	@SHT_Name varchar(100),
	@SHT_ParentID bigint,
	@FullId varchar(500)
)
as
	declare @orderid int 
	declare @Count int

	select top 1 @orderid=orderid from i_ShowType where SHT_ParentID=@SHT_ParentID order by orderid desc

    if exists (select SHT_ID from i_ShowType where SHT_Name=@SHT_Name and SHT_ParentID=@SHT_ParentID)
		Return -1
	
	select @Count=Count(*) from i_ShowType where SHT_ParentID=@SHT_ParentID
	
	if @Count <1
		set @orderid=0

    insert into i_ShowType(SHT_Name,SHT_ParentID,FullId,orderid) values (@SHT_Name,@SHT_ParentID,@FullId,@orderid+1)

	if @@error <> 0
         return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateShowType]    Script Date: 10/03/2011 19:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_UpdateShowType]
(
	@SHT_ID bigint,
	@SHT_Name varchar(100),
	@SHT_ParentID bigint,
	@FullId varchar(500)
)
 as

	declare @ParentIDOld bigint
	declare @Orderid int
	declare @newOrderid int
	declare @count int
	
	SELECT @ParentIDOld=SHT_ParentID from i_ShowType where SHT_ID = @SHT_ID

	if @ParentIDOld <> @SHT_ParentID
	begin 
		select top 1 @Orderid=orderid from  i_ShowType where  SHT_ParentID=@SHT_ParentID order by orderid desc
		select @count=count(*) from  i_ShowType where  SHT_ParentID=@SHT_ParentID
		
		if @count >0 
			set	@newOrderid = (@Orderid+1)
		else 
			set @newOrderid = 1
		
		update i_ShowType set SHT_Name=@SHT_Name,SHT_ParentID=@SHT_ParentID,FullId = @FullId,orderid=@newOrderid where SHT_ID=@SHT_ID
	end
		
	else
	begin
		update i_ShowType set SHT_Name=@SHT_Name,SHT_ParentID=@SHT_ParentID,FullId = @FullId where SHT_ID=@SHT_ID
	end

   

   if @@error <> 0
       return -2
GO
/****** Object:  StoredProcedure [dbo].[XYP_InsertGraderelation]    Script Date: 10/03/2011 19:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[XYP_InsertGraderelation]
@U_ID bigint ,
@UGR_ID smallint,
@U_BeginTime datetime,
@U_EndTime  varchar(100),
@U_Money  decimal
as
begin
begin tran tr
insert  into u_graderelation (U_ID,UGR_ID,U_BeginTime,U_EndTime,U_Money)  values(@U_ID,@UGR_ID,@U_BeginTime,@U_EndTime,@U_Money)
if @@error <>0
begin 
rollback tran tr
return -2
end 
commit
end
GO
/****** Object:  StoredProcedure [dbo].[XYP_UpdateGradeRelation]    Script Date: 10/03/2011 19:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[XYP_UpdateGradeRelation]
	@U_ID bigint,
	@UGR_ID smallint,
	@U_BeginTime datetime,
	@U_EndTime varchar(200),
	@U_Money money,
	@UR_Flag bit
as

	update u_graderelation   
		set UGR_ID=@UGR_ID,
			U_BeginTime =@U_BeginTime,
			U_EndTime=@U_EndTime,
			U_Money=@U_Money,
			UR_Flag=@UR_Flag     
	where U_ID=@U_ID
GO
/****** Object:  View [dbo].[XYV_SendMessage]    Script Date: 10/03/2011 19:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_SendMessage]
AS
SELECT     pl_Message.M_ID, pl_Message.M_Email, pl_Message.M_UserName, pl_Message.M_CompanyName, pl_Message.M_PHMa, 
                      pl_Message.M_Moblie, pl_Message.M_FHM, pl_Message.M_Adress, pl_Message.Area_ID, pl_Message.M_Title, 
                      pl_Message.M_Content, pl_Message.U_ID, pl_Message.M_HasReply, pl_Message.UR_ID, pl_Message.M_RecverType, 
                      pl_Message.M_SenderType, pl_Message.M_UserType, pl_Message.M_AddTime, pl_Message.M_Sex, pl_Message.M_Restore, 
                      '管理员' AS type, '管理员' AS Title, XYV_UserInfo.UI_Name, XYV_UserInfo.UI_LinkMan
FROM         pl_Message LEFT OUTER JOIN
                      XYV_UserInfo ON pl_Message.UR_ID = XYV_UserInfo.U_ID
WHERE     (pl_Message.M_SenderType = 'administrator')
UNION
SELECT     pl_Message_8.M_ID, pl_Message_8.M_Email, pl_Message_8.M_UserName, pl_Message_8.M_CompanyName, pl_Message_8.M_PHMa, 
                      pl_Message_8.M_Moblie, pl_Message_8.M_FHM, pl_Message_8.M_Adress, pl_Message_8.Area_ID, pl_Message_8.M_Title, 
                      pl_Message_8.M_Content, pl_Message_8.U_ID, pl_Message_8.M_HasReply, pl_Message_8.UR_ID, pl_Message_8.M_RecverType, 
                      pl_Message_8.M_SenderType, pl_Message_8.M_UserType, pl_Message_8.M_AddTime, pl_Message_8.M_Sex, pl_Message_8.M_Restore, 
                      '供求' AS type, i_Supply.SD_Title AS Title, XYV_UserInfo_7.UI_Name, XYV_UserInfo_7.UI_LinkMan
FROM         XYV_UserInfo AS XYV_UserInfo_7 RIGHT OUTER JOIN
                      i_Supply ON XYV_UserInfo_7.U_ID = i_Supply.U_ID RIGHT OUTER JOIN
                      pl_Message AS pl_Message_8 ON i_Supply.SD_ID = pl_Message_8.UR_ID
WHERE     (pl_Message_8.M_SenderType = 'offer')
UNION
SELECT     pl_Message_7.M_ID, pl_Message_7.M_Email, pl_Message_7.M_UserName, pl_Message_7.M_CompanyName, pl_Message_7.M_PHMa, 
                      pl_Message_7.M_Moblie, pl_Message_7.M_FHM, pl_Message_7.M_Adress, pl_Message_7.Area_ID, pl_Message_7.M_Title, 
                      pl_Message_7.M_Content, pl_Message_7.U_ID, pl_Message_7.M_HasReply, pl_Message_7.UR_ID, pl_Message_7.M_RecverType, 
                      pl_Message_7.M_SenderType, pl_Message_7.M_UserType, pl_Message_7.M_AddTime, pl_Message_7.M_Sex, pl_Message_7.M_Restore, 
                      '招商' AS type, i_InviteBusinessmanInfo.IBI_Title AS Title, XYV_UserInfo_6.UI_Name, XYV_UserInfo_6.UI_LinkMan
FROM         XYV_UserInfo AS XYV_UserInfo_6 RIGHT OUTER JOIN
                      i_InviteBusinessmanInfo ON XYV_UserInfo_6.U_ID = i_InviteBusinessmanInfo.U_ID RIGHT OUTER JOIN
                      pl_Message AS pl_Message_7 ON i_InviteBusinessmanInfo.IBI_ID = pl_Message_7.UR_ID
WHERE     (pl_Message_7.M_SenderType = 'investment')
UNION
SELECT     pl_Message_6.M_ID, pl_Message_6.M_Email, pl_Message_6.M_UserName, pl_Message_6.M_CompanyName, pl_Message_6.M_PHMa, 
                      pl_Message_6.M_Moblie, pl_Message_6.M_FHM, pl_Message_6.M_Adress, pl_Message_6.Area_ID, pl_Message_6.M_Title, 
                      pl_Message_6.M_Content, pl_Message_6.U_ID, pl_Message_6.M_HasReply, pl_Message_6.UR_ID, pl_Message_6.M_RecverType, 
                      pl_Message_6.M_SenderType, pl_Message_6.M_UserType, pl_Message_6.M_AddTime, pl_Message_6.M_Sex, pl_Message_6.M_Restore, 
                      '服务' AS type, i_ServiceInfo.S_Title AS Title, XYV_UserInfo_5.UI_Name, XYV_UserInfo_5.UI_LinkMan
FROM         i_ServiceInfo LEFT OUTER JOIN
                      XYV_UserInfo AS XYV_UserInfo_5 ON i_ServiceInfo.U_ID = XYV_UserInfo_5.U_ID RIGHT OUTER JOIN
                      pl_Message AS pl_Message_6 ON i_ServiceInfo.S_ID = pl_Message_6.UR_ID
WHERE     (pl_Message_6.M_SenderType = 'service')
UNION
SELECT     pl_Message_5.M_ID, pl_Message_5.M_Email, pl_Message_5.M_UserName, pl_Message_5.M_CompanyName, pl_Message_5.M_PHMa, 
                      pl_Message_5.M_Moblie, pl_Message_5.M_FHM, pl_Message_5.M_Adress, pl_Message_5.Area_ID, pl_Message_5.M_Title, 
                      pl_Message_5.M_Content, pl_Message_5.U_ID, pl_Message_5.M_HasReply, pl_Message_5.UR_ID, pl_Message_5.M_RecverType, 
                      pl_Message_5.M_SenderType, pl_Message_5.M_UserType, pl_Message_5.M_AddTime, pl_Message_5.M_Sex, pl_Message_5.M_Restore, 
                      '加工' AS type, i_Demand.SD_Title AS Title, XYV_UserInfo_4.UI_Name, XYV_UserInfo_4.UI_LinkMan
FROM         i_Demand LEFT OUTER JOIN
                      XYV_UserInfo AS XYV_UserInfo_4 ON i_Demand.U_ID = XYV_UserInfo_4.U_ID RIGHT OUTER JOIN
                      pl_Message AS pl_Message_5 ON i_Demand.SD_ID = pl_Message_5.UR_ID
WHERE     (pl_Message_5.M_SenderType = 'machining')
UNION
SELECT     pl_Message_4.M_ID, pl_Message_4.M_Email, pl_Message_4.M_UserName, pl_Message_4.M_CompanyName, pl_Message_4.M_PHMa, 
                      pl_Message_4.M_Moblie, pl_Message_4.M_FHM, pl_Message_4.M_Adress, pl_Message_4.Area_ID, pl_Message_4.M_Title, 
                      pl_Message_4.M_Content, pl_Message_4.U_ID, pl_Message_4.M_HasReply, pl_Message_4.UR_ID, pl_Message_4.M_RecverType, 
                      pl_Message_4.M_SenderType, pl_Message_4.M_UserType, pl_Message_4.M_AddTime, pl_Message_4.M_Sex, pl_Message_4.M_Restore, 
                      '网店' AS type, u_User.U_Name AS Title, u_UserInfo.UI_Name, u_UserInfo.UI_LinkMan
FROM         pl_Message AS pl_Message_4 LEFT OUTER JOIN
                      u_User ON pl_Message_4.UR_ID = u_User.U_ID LEFT OUTER JOIN
                      u_UserInfo ON u_User.U_ID = u_UserInfo.U_ID
WHERE     (pl_Message_4.M_SenderType = 'company')
UNION
SELECT     pl_Message_3.M_ID, pl_Message_3.M_Email, pl_Message_3.M_UserName, pl_Message_3.M_CompanyName, pl_Message_3.M_PHMa, 
                      pl_Message_3.M_Moblie, pl_Message_3.M_FHM, pl_Message_3.M_Adress, pl_Message_3.Area_ID, pl_Message_3.M_Title, 
                      pl_Message_3.M_Content, pl_Message_3.U_ID, pl_Message_3.M_HasReply, pl_Message_3.UR_ID, pl_Message_3.M_RecverType, 
                      pl_Message_3.M_SenderType, pl_Message_3.M_UserType, pl_Message_3.M_AddTime, pl_Message_3.M_Sex, pl_Message_3.M_Restore, 
                      '品牌' AS type, u_Barnd.B_Type AS Title, XYV_UserInfo_3.UI_Name, XYV_UserInfo_3.UI_LinkMan
FROM         XYV_UserInfo AS XYV_UserInfo_3 RIGHT OUTER JOIN
                      u_Barnd ON XYV_UserInfo_3.U_ID = u_Barnd.U_ID RIGHT OUTER JOIN
                      pl_Message AS pl_Message_3 ON u_Barnd.B_ID = pl_Message_3.UR_ID
WHERE     (pl_Message_3.M_SenderType = 'brand')
UNION
SELECT     pl_Message_1.M_ID, pl_Message_1.M_Email, pl_Message_1.M_UserName, pl_Message_1.M_CompanyName, pl_Message_1.M_PHMa, 
                      pl_Message_1.M_Moblie, pl_Message_1.M_FHM, pl_Message_1.M_Adress, pl_Message_1.Area_ID, pl_Message_1.M_Title, 
                      pl_Message_1.M_Content, pl_Message_1.U_ID, pl_Message_1.M_HasReply, pl_Message_1.UR_ID, pl_Message_1.M_RecverType, 
                      pl_Message_1.M_SenderType, pl_Message_1.M_UserType, pl_Message_1.M_AddTime, pl_Message_1.M_Sex, pl_Message_1.M_Restore, 
                      '用户' AS type, XYV_UserInfo_1.U_Name AS Title, XYV_UserInfo_1.UI_Name, XYV_UserInfo_1.UI_LinkMan
FROM         pl_Message AS pl_Message_1 LEFT OUTER JOIN
                      XYV_UserInfo AS XYV_UserInfo_1 ON pl_Message_1.UR_ID = XYV_UserInfo_1.U_ID
WHERE     (pl_Message_1.M_SenderType = 'user')
GO
/****** Object:  View [dbo].[XYV_SupplyFavorite]    Script Date: 10/03/2011 19:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_SupplyFavorite]
AS
SELECT     pl_Favorite.Fa_ID, pl_Favorite.U_ID, pl_Favorite.DescTabID, pl_Favorite.DescTabName, pl_Favorite.At_PulishDate, 
                      i_Supply.SD_HTMLPage AS HTMLPage, i_Supply.SD_PublishDate AS AddTime, i_Supply.SD_Title AS title, XYV_UserInfo.U_Name, 
                      XYV_UserInfo.UI_LinkMan, i_Supply.SD_Flag AS flag, XYV_UserInfo.UI_Name
FROM         i_Supply LEFT OUTER JOIN
                      XYV_UserInfo ON i_Supply.U_ID = XYV_UserInfo.U_ID RIGHT OUTER JOIN
                      pl_Favorite ON i_Supply.SD_ID = pl_Favorite.DescTabID
WHERE     (pl_Favorite.DescTabName = 'offer')
UNION
SELECT     pl_Favorite_6.Fa_ID, pl_Favorite_6.U_ID, pl_Favorite_6.DescTabID, pl_Favorite_6.DescTabName, pl_Favorite_6.At_PulishDate, 
                      i_Demand.SD_HTMLPage, i_Demand.SD_PublishDate, i_Demand.SD_Title AS title, XYV_UserInfo_6.U_Name, 
                      XYV_UserInfo_6.UI_LinkMan, i_Demand.SD_Flag AS flag, XYV_UserInfo_6.UI_Name
FROM         i_Demand LEFT OUTER JOIN
                      XYV_UserInfo AS XYV_UserInfo_6 ON i_Demand.U_ID = XYV_UserInfo_6.U_ID RIGHT OUTER JOIN
                      pl_Favorite AS pl_Favorite_6 ON i_Demand.SD_ID = pl_Favorite_6.DescTabID
WHERE     (pl_Favorite_6.DescTabName = 'machining')
UNION
SELECT     pl_Favorite_5.Fa_ID, pl_Favorite_5.U_ID, pl_Favorite_5.DescTabID, pl_Favorite_5.DescTabName, pl_Favorite_5.At_PulishDate, 
                      i_ServiceInfo.S_HTMLPage AS htmlpage, i_ServiceInfo.S_AddTime AS addtime, i_ServiceInfo.S_Title AS title, XYV_UserInfo_5.U_Name, 
                      XYV_UserInfo_5.UI_LinkMan, i_ServiceInfo.S_Flag, XYV_UserInfo_5.UI_Name
FROM         i_ServiceInfo LEFT OUTER JOIN
                      XYV_UserInfo AS XYV_UserInfo_5 ON i_ServiceInfo.U_ID = XYV_UserInfo_5.U_ID RIGHT OUTER JOIN
                      pl_Favorite AS pl_Favorite_5 ON i_ServiceInfo.S_ID = pl_Favorite_5.DescTabID
WHERE     (pl_Favorite_5.DescTabName = 'service')
UNION
SELECT     pl_Favorite_4.Fa_ID, pl_Favorite_4.U_ID, pl_Favorite_4.DescTabID, pl_Favorite_4.DescTabName, pl_Favorite_4.At_PulishDate, 
                      i_InviteBusinessmanInfo.IBI_HTMLPage AS htmlpage, i_InviteBusinessmanInfo.IBI_PublishDate AS addtime, 
                      i_InviteBusinessmanInfo.IBI_Title AS title, XYV_UserInfo_4.U_Name, XYV_UserInfo_4.UI_LinkMan, i_InviteBusinessmanInfo.IBI_Sign, 
                      XYV_UserInfo_4.UI_Name
FROM         XYV_UserInfo AS XYV_UserInfo_4 RIGHT OUTER JOIN
                      i_InviteBusinessmanInfo ON XYV_UserInfo_4.U_ID = i_InviteBusinessmanInfo.U_ID RIGHT OUTER JOIN
                      pl_Favorite AS pl_Favorite_4 ON i_InviteBusinessmanInfo.IBI_ID = pl_Favorite_4.DescTabID
WHERE     (pl_Favorite_4.DescTabName = 'investment')
UNION
SELECT     pl_Favorite_2.Fa_ID, pl_Favorite_2.U_ID, pl_Favorite_2.DescTabID, pl_Favorite_2.DescTabName, pl_Favorite_2.At_PulishDate, 
                      u_Barnd.B_HtmlPage AS htmlpage, u_Barnd.addtime, u_Barnd.B_Type AS title, XYV_UserInfo_2.U_Name, XYV_UserInfo_2.UI_LinkMan, 
                      u_Barnd.PT_ID AS flag, XYV_UserInfo_2.UI_Name
FROM         u_Barnd LEFT OUTER JOIN
                      XYV_UserInfo AS XYV_UserInfo_2 ON u_Barnd.U_ID = XYV_UserInfo_2.U_ID RIGHT OUTER JOIN
                      pl_Favorite AS pl_Favorite_2 ON u_Barnd.B_ID = pl_Favorite_2.DescTabID
WHERE     (pl_Favorite_2.DescTabName = 'brand')
UNION
SELECT     pl_Favorite_1.Fa_ID, pl_Favorite_1.U_ID, pl_Favorite_1.DescTabID, pl_Favorite_1.DescTabName, pl_Favorite_1.At_PulishDate, 
                      XYV_UserInfo_1.U_HtmlPage AS htmlpage, XYV_UserInfo_1.U_RegDate AS addtime, XYV_UserInfo_1.UI_Name AS title, XYV_UserInfo_1.U_Name, 
                      XYV_UserInfo_1.UI_LinkMan, - 1 AS flag, XYV_UserInfo_1.UI_Name
FROM         pl_Favorite AS pl_Favorite_1 LEFT OUTER JOIN
                      XYV_UserInfo AS XYV_UserInfo_1 ON pl_Favorite_1.DescTabID = XYV_UserInfo_1.U_ID
WHERE     (pl_Favorite_1.DescTabName = 'company')
GO
/****** Object:  View [dbo].[XYV_FavoriteAllBusinesslist]    Script Date: 10/03/2011 19:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_FavoriteAllBusinesslist]
AS
SELECT     pl_Favorite.Fa_ID, pl_Favorite.U_ID, pl_Favorite.DescTabID, pl_Favorite.DescTabName, pl_Favorite.At_PulishDate, 
                      i_Supply.SD_HTMLPage AS HTMLPage, i_Supply.SD_PublishDate AS AddTime, i_Supply.SD_Title AS title, XYV_UserInfo.U_Name, 
                      XYV_UserInfo.UI_LinkMan, i_Supply.SD_ID AS infoid, i_Supply.SD_Flag AS flag, XYV_UserInfo.UI_Name
FROM         i_Supply LEFT OUTER JOIN
                      XYV_UserInfo ON i_Supply.U_ID = XYV_UserInfo.U_ID RIGHT OUTER JOIN
                      pl_Favorite ON i_Supply.SD_ID = pl_Favorite.DescTabID
WHERE     (pl_Favorite.DescTabName = 'offer')
UNION
SELECT     pl_Favorite_3.Fa_ID, pl_Favorite_3.U_ID, pl_Favorite_3.DescTabID, pl_Favorite_3.DescTabName, pl_Favorite_3.At_PulishDate, 
                      i_Demand.SD_HTMLPage AS HTMLPage, i_Demand.SD_PublishDate AS AddTime, i_Demand.SD_Title AS title, XYV_UserInfo_3.U_Name, 
                      XYV_UserInfo_3.UI_LinkMan, i_Demand.SD_ID AS infoid, i_Demand.SD_Flag AS flag, XYV_UserInfo_3.UI_Name
FROM         i_Demand LEFT OUTER JOIN
                      XYV_UserInfo AS XYV_UserInfo_3 ON i_Demand.U_ID = XYV_UserInfo_3.U_ID RIGHT OUTER JOIN
                      pl_Favorite AS pl_Favorite_3 ON i_Demand.SD_ID = pl_Favorite_3.DescTabID
WHERE     (pl_Favorite_3.DescTabName = 'machining')
UNION
SELECT     pl_Favorite_2.Fa_ID, pl_Favorite_2.U_ID, pl_Favorite_2.DescTabID, pl_Favorite_2.DescTabName, pl_Favorite_2.At_PulishDate, 
                      i_ServiceInfo.S_HTMLPage AS HTMLPage, i_ServiceInfo.S_AddTime AS AddTime, i_ServiceInfo.S_Title AS title, XYV_UserInfo_2.U_Name, 
                      XYV_UserInfo_2.UI_LinkMan, i_ServiceInfo.S_ID AS infoid, i_ServiceInfo.S_Flag, XYV_UserInfo_2.UI_Name
FROM         i_ServiceInfo LEFT OUTER JOIN
                      XYV_UserInfo AS XYV_UserInfo_2 ON i_ServiceInfo.U_ID = XYV_UserInfo_2.U_ID RIGHT OUTER JOIN
                      pl_Favorite AS pl_Favorite_2 ON i_ServiceInfo.S_ID = pl_Favorite_2.DescTabID
WHERE     (pl_Favorite_2.DescTabName = 'service')
UNION
SELECT     pl_Favorite_1.Fa_ID, pl_Favorite_1.U_ID, pl_Favorite_1.DescTabID, pl_Favorite_1.DescTabName, pl_Favorite_1.At_PulishDate, 
                      i_InviteBusinessmanInfo.IBI_HTMLPage AS HTMLPage, i_InviteBusinessmanInfo.IBI_PublishDate AS AddTime, 
                      i_InviteBusinessmanInfo.IBI_Title AS title, XYV_UserInfo_1.U_Name, XYV_UserInfo_1.UI_LinkMan, i_InviteBusinessmanInfo.IBI_ID AS infoid, 
                      i_InviteBusinessmanInfo.IBI_Sign, XYV_UserInfo_1.UI_Name
FROM         XYV_UserInfo AS XYV_UserInfo_1 RIGHT OUTER JOIN
                      i_InviteBusinessmanInfo ON XYV_UserInfo_1.U_ID = i_InviteBusinessmanInfo.U_ID RIGHT OUTER JOIN
                      pl_Favorite AS pl_Favorite_1 ON i_InviteBusinessmanInfo.IBI_ID = pl_Favorite_1.DescTabID
WHERE     (pl_Favorite_1.DescTabName = 'investment')
GO
/****** Object:  StoredProcedure [dbo].[XYP_DeleteField]    Script Date: 10/03/2011 19:32:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XYP_DeleteField]
	@actype int,
	@id	bigint
AS
BEGIN
	if @@trancount > 0
			rollback tran
	else
	begin
		begin tran tr

		--错误标识 如果调用存储过程出错 则回滚事务
		DECLARE	@return_value int

		declare @modulename varchar(200),@typeid bigint,@EName varchar(50),@tablename varchar(200),@index int
		declare @tmpid bigint, @tmpename varchar(200),@tmpInheritID bit,@tmpFieldIDS varchar(1000),@tmptypeid bigint
		select @modulename=ModuleName,@typeid=TypeID,@EName=EName from XY_Field where id=@id
		
		if @actype <> 0
		begin
			--如果有继承的
			if exists (select * from XY_FieldInherit where InheritID=@typeid and (IsInherit = 1 or PATINDEX('' + convert(varchar, @id) + ',%',FieldIDS) <>0 or PATINDEX('%,' + convert(varchar, @id) + ',%',FieldIDS) <>0 or PATINDEX('%,' + convert(varchar, @id) + '',FieldIDS) <>0 or FieldIDS=convert(varchar, @id)))
			begin
				DECLARE cur CURSOR for
				select id,InheritID,FieldIDS,typeid from XY_FieldInherit where InheritID=@typeid and (IsInherit = 1 or PATINDEX('' + convert(varchar, @id) + ',%',FieldIDS) <>0 or PATINDEX('%,' + convert(varchar, @id) + ',%',FieldIDS) <>0 or PATINDEX('%,' + convert(varchar, @id) + '',FieldIDS) <>0 or FieldIDS=convert(varchar, @id))
				open cur
				FETCH NEXT FROM cur into @tmpid,@tmpInheritID,@tmpFieldIDS,@tmptypeid
				WHILE @@fetch_status = 0
				BEGIN
					--复制字段到子类
					if @actype = 2
					begin
						insert into XY_Field (TypeID,ModuleName,EName,CName,[Type],Description,SelectValue,FieldSize)
						select @tmptypeid,ModuleName,EName,CName,[Type],Description,SelectValue,FieldSize from XY_Field where id=@id
					end

					--不是完全继承需要更新数据库					
					if @tmpInheritID = 0
					begin
						if patindex('%,%',@tmpFieldIDS) = 0
						begin
							set @tmpFieldIDS=''
						end
						else
						begin
							set @index = PATINDEX('' + convert(varchar, @id) + ',%',@tmpFieldIDS)
							if @index = 0
							begin
								set @index = PATINDEX('%,' + convert(varchar, @id) + '',@tmpFieldIDS)
								if @index=0
									set @index = PATINDEX('%,' + convert(varchar, @id) + ',%',@tmpFieldIDS)
							end
							set @tmpFieldIDS = stuff(@tmpFieldIDS,@index,len(convert(varchar, @id)) +1,'')
						end
						update XY_FieldInherit set FieldIDS=@tmpFieldIDS where id=@tmpid
					end
					FETCH NEXT FROM cur into @tmpid,@tmpInheritID,@tmpFieldIDS,@tmptypeid
				end
				CLOSE cur
				DEALLOCATE cur
			end
		end
		
		if @actype <> 2
		begin
			--删除子类字段
			delete from XY_Field where id=@id
			exec @return_value=XYP_DeleteFieldTable @modulename,@EName
			if @return_value <>0
			begin
				rollback tran tr
			end
		end

		if @@error <> 0
			begin
				rollback tran tr
				return -2
			end
		commit
	end
END
GO
/****** Object:  View [dbo].[XYV_FavoriteOtherList]    Script Date: 10/03/2011 19:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[XYV_FavoriteOtherList]
AS
SELECT     pl_Favorite_2.Fa_ID, pl_Favorite_2.U_ID, pl_Favorite_2.DescTabID, pl_Favorite_2.DescTabName, pl_Favorite_2.At_PulishDate, 
                      XYV_UserInfo_2.U_Name, u_Barnd.addtime, u_Barnd.B_HtmlPage AS htmlpage, XYV_UserInfo_2.UI_LinkMan, u_Barnd.B_Type AS title, 
                      XYV_UserInfo_2.UI_Name
FROM         u_Barnd LEFT OUTER JOIN
                      XYV_UserInfo AS XYV_UserInfo_2 ON u_Barnd.U_ID = XYV_UserInfo_2.U_ID RIGHT OUTER JOIN
                      pl_Favorite AS pl_Favorite_2 ON u_Barnd.B_ID = pl_Favorite_2.DescTabID
WHERE     (pl_Favorite_2.DescTabName = 'brand')
UNION
SELECT     pl_Favorite_1.Fa_ID, pl_Favorite_1.U_ID, pl_Favorite_1.DescTabID, pl_Favorite_1.DescTabName, pl_Favorite_1.At_PulishDate, 
                      XYV_UserInfo_1.U_Name, XYV_UserInfo_1.U_RegDate AS addtime, XYV_UserInfo_1.U_HtmlPage AS htmlpage, XYV_UserInfo_1.UI_LinkMan, 
                      XYV_UserInfo_1.UI_Name AS title, XYV_UserInfo_1.UI_Name
FROM         pl_Favorite AS pl_Favorite_1 LEFT OUTER JOIN
                      XYV_UserInfo AS XYV_UserInfo_1 ON pl_Favorite_1.DescTabID = XYV_UserInfo_1.U_ID
WHERE     (pl_Favorite_1.DescTabName = 'company')
GO
/****** Object:  Default [DF_b_AdInfo_AD_Isuse]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_AdInfo] ADD  CONSTRAINT [DF_b_AdInfo_AD_Isuse]  DEFAULT ((1)) FOR [AD_Isuse]
GO
/****** Object:  Default [DF_b_AdInfo_Ad_StartDate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_AdInfo] ADD  CONSTRAINT [DF_b_AdInfo_Ad_StartDate]  DEFAULT (getdate()) FOR [Ad_StartDate]
GO
/****** Object:  Default [DF_b_AdInfo_Ad_Traffic]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_AdInfo] ADD  CONSTRAINT [DF_b_AdInfo_Ad_Traffic]  DEFAULT ((0)) FOR [Ad_Traffic]
GO
/****** Object:  Default [DF_b_FaithSet_GF_Fath1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_GF_Fath1]  DEFAULT ((0)) FOR [GF_Fath]
GO
/****** Object:  Default [DF_b_FaithSet_GF_Money1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_GF_Money1]  DEFAULT ((0)) FOR [GF_Money]
GO
/****** Object:  Default [DF_b_FaithSet_GF_ErrFath1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_GF_ErrFath1]  DEFAULT ((0)) FOR [GF_ErrFath]
GO
/****** Object:  Default [DF_b_FaithSet_GF_ErrMoney1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_GF_ErrMoney1]  DEFAULT ((0)) FOR [GF_ErrMoney]
GO
/****** Object:  Default [DF_b_FaithSet_HF_Fath1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_HF_Fath1]  DEFAULT ((0)) FOR [HF_Fath]
GO
/****** Object:  Default [DF_b_FaithSet_HF_Money1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_HF_Money1]  DEFAULT ((0)) FOR [HF_Money]
GO
/****** Object:  Default [DF_b_FaithSet_HF_ErrFath1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_HF_ErrFath1]  DEFAULT ((0)) FOR [HF_ErrFath]
GO
/****** Object:  Default [DF_b_FaithSet_HF_ErrMoney1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_HF_ErrMoney1]  DEFAULT ((0)) FOR [HF_ErrMoney]
GO
/****** Object:  Default [DF_b_FaithSet_UF_Fath1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_UF_Fath1]  DEFAULT ((0)) FOR [UF_Fath]
GO
/****** Object:  Default [DF_b_FaithSet_UF_Money1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_UF_Money1]  DEFAULT ((0)) FOR [UF_Money]
GO
/****** Object:  Default [DF_b_FaithSet_UF_ErrFath1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_UF_ErrFath1]  DEFAULT ((0)) FOR [UF_ErrFath]
GO
/****** Object:  Default [DF_b_FaithSet_UF_ErrMoney1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_UF_ErrMoney1]  DEFAULT ((0)) FOR [UF_ErrMoney]
GO
/****** Object:  Default [DF_b_FaithSet_BF_Fath1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_BF_Fath1]  DEFAULT ((0)) FOR [BF_Fath]
GO
/****** Object:  Default [DF_b_FaithSet_BF_Money1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_BF_Money1]  DEFAULT ((0)) FOR [BF_Money]
GO
/****** Object:  Default [DF_b_FaithSet_BF_ErrFath1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_BF_ErrFath1]  DEFAULT ((0)) FOR [BF_ErrFath]
GO
/****** Object:  Default [DF_b_FaithSet_BF_ErrMoney1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  CONSTRAINT [DF_b_FaithSet_BF_ErrMoney1]  DEFAULT ((0)) FOR [BF_ErrMoney]
GO
/****** Object:  Default [DF__b_FaithSe__FS_Ba__339FAB6E]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  DEFAULT ((0)) FOR [FS_Base]
GO
/****** Object:  Default [DF__b_FaithSe__FS_Ho__3493CFA7]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  DEFAULT ((0)) FOR [FS_Hot]
GO
/****** Object:  Default [DF__b_FaithSe__FS_Li__3587F3E0]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  DEFAULT ((0)) FOR [FS_Licence]
GO
/****** Object:  Default [DF__b_FaithSe__FS_Ce__367C1819]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FaithSet] ADD  DEFAULT ((0)) FOR [FS_Certificate]
GO
/****** Object:  Default [DF_b_Finance_addtime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_Finance] ADD  CONSTRAINT [DF_b_Finance_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_b_FriendLink_FL_AddDate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FriendLink] ADD  CONSTRAINT [DF_b_FriendLink_FL_AddDate]  DEFAULT (getdate()) FOR [FL_AddDate]
GO
/****** Object:  Default [DF_b_FriendLink_FL_IsCommend]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_FriendLink] ADD  CONSTRAINT [DF_b_FriendLink_FL_IsCommend]  DEFAULT ((0)) FOR [FL_IsCommend]
GO
/****** Object:  Default [DF_b_Label_L_ContentHead]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_Label] ADD  CONSTRAINT [DF_b_Label_L_ContentHead]  DEFAULT ('') FOR [L_StyleHead]
GO
/****** Object:  Default [DF_b_Label_L_StyleContent]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_Label] ADD  CONSTRAINT [DF_b_Label_L_StyleContent]  DEFAULT ('') FOR [L_StyleContent]
GO
/****** Object:  Default [DF_b_Label_L_ContentFooter]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_Label] ADD  CONSTRAINT [DF_b_Label_L_ContentFooter]  DEFAULT ('') FOR [L_StyleFooter]
GO
/****** Object:  Default [DF_b_log_L_addtime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_Log] ADD  CONSTRAINT [DF_b_log_L_addtime]  DEFAULT (getdate()) FOR [L_addtime]
GO
/****** Object:  Default [DF_b_Post_FullId]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_Post] ADD  CONSTRAINT [DF_b_Post_FullId]  DEFAULT ('') FOR [FullId]
GO
/****** Object:  Default [DF_b_Post_InfoCount]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_Post] ADD  CONSTRAINT [DF_b_Post_InfoCount]  DEFAULT ((0)) FOR [InfoCount]
GO
/****** Object:  Default [DF_b_Pro_property_PT_EName]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_Pro_property] ADD  CONSTRAINT [DF_b_Pro_property_PT_EName]  DEFAULT ('') FOR [PT_EName]
GO
/****** Object:  Default [DF_b_Pro_property_PT_Addtime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_Pro_property] ADD  CONSTRAINT [DF_b_Pro_property_PT_Addtime]  DEFAULT (getdate()) FOR [PT_Addtime]
GO
/****** Object:  Default [DF_b_ProductType_M_ID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_ProductType] ADD  CONSTRAINT [DF_b_ProductType_M_ID]  DEFAULT ((0)) FOR [ModuleName]
GO
/****** Object:  Default [DF_b_ProductType_FullId]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_ProductType] ADD  CONSTRAINT [DF_b_ProductType_FullId]  DEFAULT ('') FOR [FullId]
GO
/****** Object:  Default [DF_b_ProductType_InfoCount]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_ProductType] ADD  CONSTRAINT [DF_b_ProductType_InfoCount]  DEFAULT ((0)) FOR [InfoCount]
GO
/****** Object:  Default [DF_b_ProductType_TradeId]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_ProductType] ADD  CONSTRAINT [DF_b_ProductType_TradeId]  DEFAULT ((0)) FOR [TradeId]
GO
/****** Object:  Default [DF_b_ProductType_FlagName]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_ProductType] ADD  CONSTRAINT [DF_b_ProductType_FlagName]  DEFAULT ('') FOR [FlagName]
GO
/****** Object:  Default [DF_b_ProductType_IsCustomTemplate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_ProductType] ADD  CONSTRAINT [DF_b_ProductType_IsCustomTemplate]  DEFAULT ((0)) FOR [IsCustomTemplate]
GO
/****** Object:  Default [DF_b_SearchKey_SK_IsRanking]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_SearchKey] ADD  CONSTRAINT [DF_b_SearchKey_SK_IsRanking]  DEFAULT ((0)) FOR [SK_IsRanking]
GO
/****** Object:  Default [DF_b_SearchKey_SK_CustomPrice]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_SearchKey] ADD  CONSTRAINT [DF_b_SearchKey_SK_CustomPrice]  DEFAULT ('') FOR [SK_CustomPrice]
GO
/****** Object:  Default [DF_b_SearchKey_SK_AddTime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_SearchKey] ADD  CONSTRAINT [DF_b_SearchKey_SK_AddTime]  DEFAULT (getdate()) FOR [SK_AddTime]
GO
/****** Object:  Default [DF_b_Server_S_IsCurrent]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_Server] ADD  CONSTRAINT [DF_b_Server_S_IsCurrent]  DEFAULT ((0)) FOR [S_IsCurrent]
GO
/****** Object:  Default [DF_b_Server_S_Flag]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_Server] ADD  CONSTRAINT [DF_b_Server_S_Flag]  DEFAULT ((0)) FOR [S_Flag]
GO
/****** Object:  Default [DF_b_Template_T_Flag]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_Template] ADD  CONSTRAINT [DF_b_Template_T_Flag]  DEFAULT ((0)) FOR [T_Flag]
GO
/****** Object:  Default [DF_b_UserGrade_UG_Order]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGrade] ADD  CONSTRAINT [DF_b_UserGrade_UG_Order]  DEFAULT ((0)) FOR [UG_Order]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsPayMent]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsPayMent]  DEFAULT ((0)) FOR [UGP_IsPayMent]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsShop]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsShop]  DEFAULT ((0)) FOR [UGP_IsShop]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsMessage]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsMessage]  DEFAULT ((0)) FOR [UGP_IsMessage]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_RefurbishTime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_RefurbishTime]  DEFAULT ((10)) FOR [UGP_RefurbishTime]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_RefubishNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_RefubishNum]  DEFAULT ((20)) FOR [UGP_RefubishNum]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_RefubishTimes]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_RefubishTimes]  DEFAULT ((3)) FOR [UGP_RefubishTimes]
GO
/****** Object:  Default [DF_aaaaa_UGP_Faith]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_aaaaa_UGP_Faith]  DEFAULT ((0)) FOR [UGP_Faith]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsLeachKeyWord]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsLeachKeyWord]  DEFAULT ((0)) FOR [UGP_IsLeachKeyWord]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsSupplyLinkMathod]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsSupplyLinkMathod]  DEFAULT ((0)) FOR [UGP_IsSupplyLinkMathod]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsBuyLinkMathod]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsBuyLinkMathod]  DEFAULT ((0)) FOR [UGP_IsBuyLinkMathod]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsSupplyMachiningLinkMathod]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsSupplyMachiningLinkMathod]  DEFAULT ((0)) FOR [UGP_IsSupplyMachiningLinkMathod]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsBuyMachiningLinkMathod]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsBuyMachiningLinkMathod]  DEFAULT ((0)) FOR [UGP_IsBuyMachiningLinkMathod]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsBuinessLinkMathod]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsBuinessLinkMathod]  DEFAULT ((0)) FOR [UGP_IsBuinessLinkMathod]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsSurrogateLinkMathod]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsSurrogateLinkMathod]  DEFAULT ((0)) FOR [UGP_IsSurrogateLinkMathod]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsSupplyServerLinkMathod]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsSupplyServerLinkMathod]  DEFAULT ((0)) FOR [UGP_IsSupplyServerLinkMathod]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsBuyServerLinkMathod]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsBuyServerLinkMathod]  DEFAULT ((0)) FOR [UGP_IsBuyServerLinkMathod]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsExhibtionLinkMathod]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsExhibtionLinkMathod]  DEFAULT ((0)) FOR [UGP_IsExhibtionLinkMathod]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsBrandLinkMathod]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsBrandLinkMathod]  DEFAULT ((0)) FOR [UGP_IsBrandLinkMathod]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsJobLinkMathod]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsJobLinkMathod]  DEFAULT ((0)) FOR [UGP_IsJobLinkMathod]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UGP_IsCompanyLinkMathod]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UGP_IsCompanyLinkMathod]  DEFAULT ((0)) FOR [UGP_IsCompanyLinkMathod]
GO
/****** Object:  Default [DF_b_UserGradePopedom_BySellOffer]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_BySellOffer]  DEFAULT ((0)) FOR [SeeBySellOffer]
GO
/****** Object:  Default [DF_b_UserGradePopedom_ByBuyOffer]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_ByBuyOffer]  DEFAULT ((0)) FOR [SeeByBuyOffer]
GO
/****** Object:  Default [DF_b_UserGradePopedom_BySellMachining]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_BySellMachining]  DEFAULT ((0)) FOR [SeeBySellMachining]
GO
/****** Object:  Default [DF_b_UserGradePopedom_ByBuyMachining]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_ByBuyMachining]  DEFAULT ((0)) FOR [SeeByBuyMachining]
GO
/****** Object:  Default [DF_b_UserGradePopedom_BySellBusiness]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_BySellBusiness]  DEFAULT ((0)) FOR [SeeBySellBusiness]
GO
/****** Object:  Default [DF_b_UserGradePopedom_ByBuyBusiness]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_ByBuyBusiness]  DEFAULT ((0)) FOR [SeeByBuyBusiness]
GO
/****** Object:  Default [DF_b_UserGradePopedom_BySellService]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_BySellService]  DEFAULT ((0)) FOR [SeeBySellService]
GO
/****** Object:  Default [DF_b_UserGradePopedom_ByBuyService]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_ByBuyService]  DEFAULT ((0)) FOR [SeeByBuyService]
GO
/****** Object:  Default [DF_b_UserGradePopedom_ByExhibtion]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_ByExhibtion]  DEFAULT ((0)) FOR [SeeByExhibtion]
GO
/****** Object:  Default [DF_b_UserGradePopedom_ByBrand]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_ByBrand]  DEFAULT ((0)) FOR [SeeByBrand]
GO
/****** Object:  Default [DF_b_UserGradePopedom_ByJob]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_ByJob]  DEFAULT ((0)) FOR [SeeByJob]
GO
/****** Object:  Default [DF_b_UserGradePopedom_ByCompany]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_ByCompany]  DEFAULT ((0)) FOR [SeeByCompany]
GO
/****** Object:  Default [DF_b_UserGradePopedom_AdviseDays]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_AdviseDays]  DEFAULT ((10)) FOR [AdviseDays]
GO
/****** Object:  Default [DF_b_UserGradePopedom_DebaseUserGrade]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_DebaseUserGrade]  DEFAULT ((0)) FOR [DebaseUserGrade]
GO
/****** Object:  Default [DF_b_UserGradePopedom_IsQQOnLineTalk]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_IsQQOnLineTalk]  DEFAULT ((0)) FOR [IsQQOnLineTalk]
GO
/****** Object:  Default [DF_b_UserGradePopedom_IsShowChargeNews]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_IsShowChargeNews]  DEFAULT ((0)) FOR [IsShowChargeNews]
GO
/****** Object:  Default [DF_b_UserGradePopedom_UploadPicNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_UploadPicNum]  DEFAULT ((3)) FOR [UploadPicNum]
GO
/****** Object:  Default [DF_b_UserGradePopedom_SeeContactsNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_SeeContactsNum]  DEFAULT ((0)) FOR [SeeContactsNum]
GO
/****** Object:  Default [DF_b_UserGradePopedom_LimitDate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_LimitDate]  DEFAULT ((0)) FOR [LimitDate]
GO
/****** Object:  Default [DF_b_UserGradePopedom_iscompanyprotype]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_iscompanyprotype]  DEFAULT ((0)) FOR [iscompanyprotype]
GO
/****** Object:  Default [DF_b_UserGradePopedom_IsSubdomain]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_IsSubdomain]  DEFAULT ((0)) FOR [IsSubdomain]
GO
/****** Object:  Default [DF_b_UserGradePopedom_IsBindingTopdomain]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserGradePopedom] ADD  CONSTRAINT [DF_b_UserGradePopedom_IsBindingTopdomain]  DEFAULT ((0)) FOR [IsBindingTopdomain]
GO
/****** Object:  Default [DF_b_UserType_FullID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserType] ADD  CONSTRAINT [DF_b_UserType_FullID]  DEFAULT ('') FOR [UT_FullID]
GO
/****** Object:  Default [DF_b_UserType_InfoCount]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[b_UserType] ADD  CONSTRAINT [DF_b_UserType_InfoCount]  DEFAULT ((0)) FOR [UT_InfoCount]
GO
/****** Object:  Default [DF__fs_News__History__32AB8735]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_News] ADD  CONSTRAINT [DF__fs_News__History__32AB8735]  DEFAULT ((0)) FOR [History]
GO
/****** Object:  Default [DF__fs_News__RecTF__3493CFA7]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_News] ADD  CONSTRAINT [DF__fs_News__RecTF__3493CFA7]  DEFAULT ((0)) FOR [RecTF]
GO
/****** Object:  Default [DF__fs_News__TodayNe__3587F3E0]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_News] ADD  CONSTRAINT [DF__fs_News__TodayNe__3587F3E0]  DEFAULT ((0)) FOR [TodayNewsTF]
GO
/****** Object:  Default [DF__fs_News__Marquee__367C1819]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_News] ADD  CONSTRAINT [DF__fs_News__Marquee__367C1819]  DEFAULT ((0)) FOR [MarqueeNews]
GO
/****** Object:  Default [DF__fs_News__SBSNews__37703C52]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_News] ADD  CONSTRAINT [DF__fs_News__SBSNews__37703C52]  DEFAULT ((0)) FOR [SBSNews]
GO
/****** Object:  Default [DF__fs_News__ReviewT__3864608B]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_News] ADD  CONSTRAINT [DF__fs_News__ReviewT__3864608B]  DEFAULT ((0)) FOR [ReviewTF]
GO
/****** Object:  Default [DF_fs_Collect_Rule_IgnoreCase]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Rule] ADD  CONSTRAINT [DF_fs_Collect_Rule_IgnoreCase]  DEFAULT ((1)) FOR [IgnoreCase]
GO
/****** Object:  Default [DF__fs_Site__MaxNum__3C34F16F]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__MaxNum__3C34F16F]  DEFAULT ((0)) FOR [MaxNum]
GO
/****** Object:  Default [DF__fs_Site__OtherTy__3D2915A8]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__OtherTy__3D2915A8]  DEFAULT ((0)) FOR [OtherType]
GO
/****** Object:  Default [DF__fs_Site__OtherNe__3E1D39E1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__OtherNe__3E1D39E1]  DEFAULT ((0)) FOR [OtherNewsType]
GO
/****** Object:  Default [DF__fs_Site__IsAutoC__3F115E1A]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__IsAutoC__3F115E1A]  DEFAULT ((0)) FOR [IsAutoCollect]
GO
/****** Object:  Default [DF__fs_Site__Collect__40058253]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__Collect__40058253]  DEFAULT ((0)) FOR [CollectDate]
GO
/****** Object:  Default [DF__fs_Site__TextTF__41EDCAC5]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__TextTF__41EDCAC5]  DEFAULT ((0)) FOR [TextTF]
GO
/****** Object:  Default [DF__fs_Site__SaveRem__42E1EEFE]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__SaveRem__42E1EEFE]  DEFAULT ((0)) FOR [SaveRemotePic]
GO
/****** Object:  Default [DF__fs_Site__Audit__43D61337]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__Audit__43D61337]  DEFAULT ((1)) FOR [Audit]
GO
/****** Object:  Default [DF__fs_Site__IsStyle__44CA3770]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__IsStyle__44CA3770]  DEFAULT ((0)) FOR [IsStyle]
GO
/****** Object:  Default [DF__fs_Site__IsDIV__45BE5BA9]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__IsDIV__45BE5BA9]  DEFAULT ((0)) FOR [IsDIV]
GO
/****** Object:  Default [DF__fs_Site__IsA__46B27FE2]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__IsA__46B27FE2]  DEFAULT ((0)) FOR [IsA]
GO
/****** Object:  Default [DF__fs_Site__IsClass__47A6A41B]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__IsClass__47A6A41B]  DEFAULT ((0)) FOR [IsClass]
GO
/****** Object:  Default [DF__fs_Site__IsFont__489AC854]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__IsFont__489AC854]  DEFAULT ((0)) FOR [IsFont]
GO
/****** Object:  Default [DF__fs_Site__IsSpan__498EEC8D]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__IsSpan__498EEC8D]  DEFAULT ((0)) FOR [IsSpan]
GO
/****** Object:  Default [DF__fs_Site__IsObjec__4A8310C6]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__IsObjec__4A8310C6]  DEFAULT ((0)) FOR [IsObject]
GO
/****** Object:  Default [DF__fs_Site__IsIFram__4B7734FF]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__IsIFram__4B7734FF]  DEFAULT ((0)) FOR [IsIFrame]
GO
/****** Object:  Default [DF__fs_Site__IsScrip__4C6B5938]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__IsScrip__4C6B5938]  DEFAULT ((0)) FOR [IsScript]
GO
/****** Object:  Default [DF__fs_Site__IsAutoP__5224328E]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_Site] ADD  CONSTRAINT [DF__fs_Site__IsAutoP__5224328E]  DEFAULT ((0)) FOR [IsAutoPicNews]
GO
/****** Object:  Default [DF_i_Demand_SD_PublishDate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Demand] ADD  CONSTRAINT [DF_i_Demand_SD_PublishDate]  DEFAULT (getdate()) FOR [SD_PublishDate]
GO
/****** Object:  Default [DF_i_Demand_SD_IsSupply]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Demand] ADD  CONSTRAINT [DF_i_Demand_SD_IsSupply]  DEFAULT ((1)) FOR [SD_IsSupply]
GO
/****** Object:  Default [DF_i_Demand_SD_ClickNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Demand] ADD  CONSTRAINT [DF_i_Demand_SD_ClickNum]  DEFAULT ((0)) FOR [SD_ClickNum]
GO
/****** Object:  Default [DF_i_Demand_SD_Vouch]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Demand] ADD  CONSTRAINT [DF_i_Demand_SD_Vouch]  DEFAULT ((0)) FOR [SD_Vouch]
GO
/****** Object:  Default [DF_i_Demand_SD_MessageNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Demand] ADD  CONSTRAINT [DF_i_Demand_SD_MessageNum]  DEFAULT ((0)) FOR [SD_MessageNum]
GO
/****** Object:  Default [DF_i_Demand_SD_NoMessgeNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Demand] ADD  CONSTRAINT [DF_i_Demand_SD_NoMessgeNum]  DEFAULT ((0)) FOR [SD_NoMessgeNum]
GO
/****** Object:  Default [DF_i_Demand_SD_Date]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Demand] ADD  CONSTRAINT [DF_i_Demand_SD_Date]  DEFAULT ((0)) FOR [SD_Date]
GO
/****** Object:  Default [DF_i_Demand_P_ID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Demand] ADD  CONSTRAINT [DF_i_Demand_P_ID]  DEFAULT ((0)) FOR [P_ID]
GO
/****** Object:  Default [DF_i_Demand_SD_IsPayMent]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Demand] ADD  CONSTRAINT [DF_i_Demand_SD_IsPayMent]  DEFAULT ((0)) FOR [SD_IsPayMent]
GO
/****** Object:  Default [DF_i_Demand_IsHasImage]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Demand] ADD  CONSTRAINT [DF_i_Demand_IsHasImage]  DEFAULT ((0)) FOR [IsHasImage]
GO
/****** Object:  Default [DF_i_engageinfo_EI_AddDate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_EngageInfo] ADD  CONSTRAINT [DF_i_engageinfo_EI_AddDate]  DEFAULT (getdate()) FOR [EI_AddDate]
GO
/****** Object:  Default [DF_i_engageinfo_EI_ClickNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_EngageInfo] ADD  CONSTRAINT [DF_i_engageinfo_EI_ClickNum]  DEFAULT ((0)) FOR [EI_ClickNum]
GO
/****** Object:  Default [DF_i_engageinfo_EI_Puach]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_EngageInfo] ADD  CONSTRAINT [DF_i_engageinfo_EI_Puach]  DEFAULT ((1)) FOR [EI_Puach]
GO
/****** Object:  Default [DF_i_engageinfo_EI_Number]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_EngageInfo] ADD  CONSTRAINT [DF_i_engageinfo_EI_Number]  DEFAULT ((0)) FOR [EI_Number]
GO
/****** Object:  Default [DF_i_engageinfo_EL_Vouch]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_EngageInfo] ADD  CONSTRAINT [DF_i_engageinfo_EL_Vouch]  DEFAULT ((0)) FOR [EI_Vouch]
GO
/****** Object:  Default [DF_i_InfoCount_IC_SupplyCount]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InfoCount] ADD  CONSTRAINT [DF_i_InfoCount_IC_SupplyCount]  DEFAULT ((0)) FOR [IC_SupplyCount]
GO
/****** Object:  Default [DF_i_InfoCount_IC_DemandCount]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InfoCount] ADD  CONSTRAINT [DF_i_InfoCount_IC_DemandCount]  DEFAULT ((0)) FOR [IC_DemandCount]
GO
/****** Object:  Default [DF_i_InfoCount_IC_BusinessCount]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InfoCount] ADD  CONSTRAINT [DF_i_InfoCount_IC_BusinessCount]  DEFAULT ((0)) FOR [IC_BusinessCount]
GO
/****** Object:  Default [DF_i_InfoCount_IC_SupplyAuditedCount]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InfoCount] ADD  CONSTRAINT [DF_i_InfoCount_IC_SupplyAuditedCount]  DEFAULT ((0)) FOR [IC_SupplyAuditedCount]
GO
/****** Object:  Default [DF_i_InfoCount_IC_DemandAuditedCount]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InfoCount] ADD  CONSTRAINT [DF_i_InfoCount_IC_DemandAuditedCount]  DEFAULT ((0)) FOR [IC_DemandAuditedCount]
GO
/****** Object:  Default [DF_i_InfoCount_IC_BusinessAuditedCount]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InfoCount] ADD  CONSTRAINT [DF_i_InfoCount_IC_BusinessAuditedCount]  DEFAULT ((0)) FOR [IC_BusinessAuditedCount]
GO
/****** Object:  Default [DF_i_InviteBusinessmanInfo_IBI_PublishDate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InviteBusinessmanInfo] ADD  CONSTRAINT [DF_i_InviteBusinessmanInfo_IBI_PublishDate]  DEFAULT (getdate()) FOR [IBI_PublishDate]
GO
/****** Object:  Default [DF_i_InviteBusinessmanInfo_IBI_ClickNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InviteBusinessmanInfo] ADD  CONSTRAINT [DF_i_InviteBusinessmanInfo_IBI_ClickNum]  DEFAULT ((0)) FOR [IBI_ClickNum]
GO
/****** Object:  Default [DF_i_InviteBusinessmanInfo_IBI_Vouch]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InviteBusinessmanInfo] ADD  CONSTRAINT [DF_i_InviteBusinessmanInfo_IBI_Vouch]  DEFAULT ((1)) FOR [IBI_Vouch]
GO
/****** Object:  Default [DF_i_InviteBusinessmanInfo_IBI_Pause]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InviteBusinessmanInfo] ADD  CONSTRAINT [DF_i_InviteBusinessmanInfo_IBI_Pause]  DEFAULT ((1)) FOR [IBI_Pause]
GO
/****** Object:  Default [DF_i_InviteBusinessmanInfo_SD_MessageNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InviteBusinessmanInfo] ADD  CONSTRAINT [DF_i_InviteBusinessmanInfo_SD_MessageNum]  DEFAULT ((0)) FOR [IBI_MessageNum]
GO
/****** Object:  Default [DF_i_InviteBusinessmanInfo_IBI_NoMessageNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InviteBusinessmanInfo] ADD  CONSTRAINT [DF_i_InviteBusinessmanInfo_IBI_NoMessageNum]  DEFAULT ((0)) FOR [IBI_NoMessageNum]
GO
/****** Object:  Default [DF_i_InviteBusinessmanInfo_IBI_EndData]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InviteBusinessmanInfo] ADD  CONSTRAINT [DF_i_InviteBusinessmanInfo_IBI_EndData]  DEFAULT ((0)) FOR [IBI_EndDate]
GO
/****** Object:  Default [DF_i_InviteBusinessmanInfo_IBI_Sign]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InviteBusinessmanInfo] ADD  CONSTRAINT [DF_i_InviteBusinessmanInfo_IBI_Sign]  DEFAULT ((1)) FOR [IBI_Sign]
GO
/****** Object:  Default [DF_i_InviteBusinessmanInfo_P_ID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InviteBusinessmanInfo] ADD  CONSTRAINT [DF_i_InviteBusinessmanInfo_P_ID]  DEFAULT ((0)) FOR [P_ID]
GO
/****** Object:  Default [DF_i_InviteBusinessmanInfo_IsHasImage]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InviteBusinessmanInfo] ADD  CONSTRAINT [DF_i_InviteBusinessmanInfo_IsHasImage]  DEFAULT ((0)) FOR [IsHasImage]
GO
/****** Object:  Default [DF_i_InviteBusinessType_FullId]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InviteBusinessType] ADD  CONSTRAINT [DF_i_InviteBusinessType_FullId]  DEFAULT ('') FOR [FullId]
GO
/****** Object:  Default [DF_i_InviteBusinessType_InfoCount]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InviteBusinessType] ADD  CONSTRAINT [DF_i_InviteBusinessType_InfoCount]  DEFAULT ((0)) FOR [InfoCount]
GO
/****** Object:  Default [DF_i_InviteBusinessType_OrderID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_InviteBusinessType] ADD  CONSTRAINT [DF_i_InviteBusinessType_OrderID]  DEFAULT ((0)) FOR [OrderID]
GO
/****** Object:  Default [DF_i_MachiningType_FullID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_MachiningType] ADD  CONSTRAINT [DF_i_MachiningType_FullID]  DEFAULT ('') FOR [FullID]
GO
/****** Object:  Default [DF_i_MachiningType_InfoCount]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_MachiningType] ADD  CONSTRAINT [DF_i_MachiningType_InfoCount]  DEFAULT ((0)) FOR [InfoCount]
GO
/****** Object:  Default [DF_i_MachiningType_OrderID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_MachiningType] ADD  CONSTRAINT [DF_i_MachiningType_OrderID]  DEFAULT ((0)) FOR [OrderID]
GO
/****** Object:  Default [DF_i_ServiceInfo_S_AddTime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_ServiceInfo] ADD  CONSTRAINT [DF_i_ServiceInfo_S_AddTime]  DEFAULT (getdate()) FOR [S_AddTime]
GO
/****** Object:  Default [DF_i_ServiceInfo_S_EndDate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_ServiceInfo] ADD  CONSTRAINT [DF_i_ServiceInfo_S_EndDate]  DEFAULT ((0)) FOR [S_EndDate]
GO
/****** Object:  Default [DF_i_Surrogate_S_Vouch]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_ServiceInfo] ADD  CONSTRAINT [DF_i_Surrogate_S_Vouch]  DEFAULT ((0)) FOR [S_Vouch]
GO
/****** Object:  Default [DF_i_Surrogate_S_Pause]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_ServiceInfo] ADD  CONSTRAINT [DF_i_Surrogate_S_Pause]  DEFAULT ((1)) FOR [S_Pause]
GO
/****** Object:  Default [DF_i_Surrogate_S_ClickNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_ServiceInfo] ADD  CONSTRAINT [DF_i_Surrogate_S_ClickNum]  DEFAULT ((0)) FOR [S_ClickNum]
GO
/****** Object:  Default [DF_i_Surrogate_SD_MessageNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_ServiceInfo] ADD  CONSTRAINT [DF_i_Surrogate_SD_MessageNum]  DEFAULT ((0)) FOR [S_MessageNum]
GO
/****** Object:  Default [DF_i_Surrogate_SD_NoMessgeNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_ServiceInfo] ADD  CONSTRAINT [DF_i_Surrogate_SD_NoMessgeNum]  DEFAULT ((0)) FOR [S_NoMessageNum]
GO
/****** Object:  Default [DF_i_ServiceInfo_P_ID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_ServiceInfo] ADD  CONSTRAINT [DF_i_ServiceInfo_P_ID]  DEFAULT ((0)) FOR [P_ID]
GO
/****** Object:  Default [DF_i_ServiceInfo_IsHasImage]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_ServiceInfo] ADD  CONSTRAINT [DF_i_ServiceInfo_IsHasImage]  DEFAULT ((0)) FOR [IsHasImage]
GO
/****** Object:  Default [DF_i_ServiceType_FullID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_ServiceType] ADD  CONSTRAINT [DF_i_ServiceType_FullID]  DEFAULT ('') FOR [FullID]
GO
/****** Object:  Default [DF_i_ServiceType_InfoCount]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_ServiceType] ADD  CONSTRAINT [DF_i_ServiceType_InfoCount]  DEFAULT ((0)) FOR [InfoCount]
GO
/****** Object:  Default [DF_i_ShowType_FullID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_ShowType] ADD  CONSTRAINT [DF_i_ShowType_FullID]  DEFAULT ('') FOR [FullID]
GO
/****** Object:  Default [DF_i_ShowType_InfoCount]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_ShowType] ADD  CONSTRAINT [DF_i_ShowType_InfoCount]  DEFAULT ((0)) FOR [InfoCount]
GO
/****** Object:  Default [DF_i_ShowType_OrderID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_ShowType] ADD  CONSTRAINT [DF_i_ShowType_OrderID]  DEFAULT ((0)) FOR [OrderID]
GO
/****** Object:  Default [DF_i_Supply_SD_PublishDate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Supply] ADD  CONSTRAINT [DF_i_Supply_SD_PublishDate]  DEFAULT (getdate()) FOR [SD_PublishDate]
GO
/****** Object:  Default [DF_i_Supply_SD_IsSupply]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Supply] ADD  CONSTRAINT [DF_i_Supply_SD_IsSupply]  DEFAULT ((1)) FOR [SD_IsSupply]
GO
/****** Object:  Default [DF_i_Supply_SD_ClickNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Supply] ADD  CONSTRAINT [DF_i_Supply_SD_ClickNum]  DEFAULT ((0)) FOR [SD_ClickNum]
GO
/****** Object:  Default [DF_i_Supply_SD_Vouch]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Supply] ADD  CONSTRAINT [DF_i_Supply_SD_Vouch]  DEFAULT ((0)) FOR [SD_Vouch]
GO
/****** Object:  Default [DF_i_Supply_SD_MessageNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Supply] ADD  CONSTRAINT [DF_i_Supply_SD_MessageNum]  DEFAULT ((0)) FOR [SD_MessageNum]
GO
/****** Object:  Default [DF_i_Supply_SD_NoMessgeNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Supply] ADD  CONSTRAINT [DF_i_Supply_SD_NoMessgeNum]  DEFAULT ((0)) FOR [SD_NoMessgeNum]
GO
/****** Object:  Default [DF_i_Supply_SD_Flag]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Supply] ADD  CONSTRAINT [DF_i_Supply_SD_Flag]  DEFAULT ((1)) FOR [SD_Flag]
GO
/****** Object:  Default [DF_i_Supply_SD_Date]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Supply] ADD  CONSTRAINT [DF_i_Supply_SD_Date]  DEFAULT ((0)) FOR [SD_Date]
GO
/****** Object:  Default [DF_i_Supply_P_ID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Supply] ADD  CONSTRAINT [DF_i_Supply_P_ID]  DEFAULT ((0)) FOR [P_ID]
GO
/****** Object:  Default [DF_i_Supply_SD_IsPayMent]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Supply] ADD  CONSTRAINT [DF_i_Supply_SD_IsPayMent]  DEFAULT ((0)) FOR [SD_IsPayMent]
GO
/****** Object:  Default [DF_i_Supply_isshop]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Supply] ADD  CONSTRAINT [DF_i_Supply_isshop]  DEFAULT ((0)) FOR [isshop]
GO
/****** Object:  Default [DF_i_Supply_iscompanyproducttype]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Supply] ADD  CONSTRAINT [DF_i_Supply_iscompanyproducttype]  DEFAULT ((0)) FOR [companyproducttypeid]
GO
/****** Object:  Default [DF_i_Supply_IsHasImage]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[i_Supply] ADD  CONSTRAINT [DF_i_Supply_IsHasImage]  DEFAULT ((0)) FOR [IsHasImage]
GO
/****** Object:  Default [DF_n_ChargeNewsInfo_CI_AddTime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_ChargeNewsInfo] ADD  CONSTRAINT [DF_n_ChargeNewsInfo_CI_AddTime]  DEFAULT (getdate()) FOR [CI_AddTime]
GO
/****** Object:  Default [DF_n_ChargeNewsSet_CN_ConsumeWebMoney]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_ChargeNewsSet] ADD  CONSTRAINT [DF_n_ChargeNewsSet_CN_ConsumeWebMoney]  DEFAULT ((0)) FOR [CN_ConsumeWebMoney]
GO
/****** Object:  Default [DF_n_ChargeNewsSet_CN_ConsumeMoney]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_ChargeNewsSet] ADD  CONSTRAINT [DF_n_ChargeNewsSet_CN_ConsumeMoney]  DEFAULT ((0)) FOR [CN_ConsumeMoney]
GO
/****** Object:  Default [DF_n_News_NS_TitleStyle]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_News] ADD  CONSTRAINT [DF_n_News_NS_TitleStyle]  DEFAULT ('') FOR [NS_TitleStyle]
GO
/****** Object:  Default [DF_n_News_NS_IsCommand]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_News] ADD  CONSTRAINT [DF_n_News_NS_IsCommand]  DEFAULT ((0)) FOR [NS_IsCommand]
GO
/****** Object:  Default [DF_n_News_NS_IsDiscuss]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_News] ADD  CONSTRAINT [DF_n_News_NS_IsDiscuss]  DEFAULT ((0)) FOR [NS_IsDiscuss]
GO
/****** Object:  Default [DF_n_News_NS_IsTop]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_News] ADD  CONSTRAINT [DF_n_News_NS_IsTop]  DEFAULT ((0)) FOR [NS_IsTop]
GO
/****** Object:  Default [DF_n_News_NS_IsHot]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_News] ADD  CONSTRAINT [DF_n_News_NS_IsHot]  DEFAULT ((0)) FOR [NS_IsHot]
GO
/****** Object:  Default [DF_n_News_NS_IsSlide]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_News] ADD  CONSTRAINT [DF_n_News_NS_IsSlide]  DEFAULT ((0)) FOR [NS_IsSlide]
GO
/****** Object:  Default [DF_n_News_Contributor]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_News] ADD  CONSTRAINT [DF_n_News_Contributor]  DEFAULT ((0)) FOR [Contributor]
GO
/****** Object:  Default [DF_n_News_IsHasImage]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_News] ADD  CONSTRAINT [DF_n_News_IsHasImage]  DEFAULT ((0)) FOR [IsHasImage]
GO
/****** Object:  Default [DF_n_News_AreaId]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_News] ADD  CONSTRAINT [DF_n_News_AreaId]  DEFAULT ('') FOR [AreaIds]
GO
/****** Object:  Default [DF_n_News_TradeIds]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_News] ADD  CONSTRAINT [DF_n_News_TradeIds]  DEFAULT ('') FOR [TradeIds]
GO
/****** Object:  Default [DF_n_News_isFileUrl]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_News] ADD  CONSTRAINT [DF_n_News_isFileUrl]  DEFAULT ('') FOR [FileUrl]
GO
/****** Object:  Default [DF_n_NewsDiscuss_U_ID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_NewsDiscuss] ADD  CONSTRAINT [DF_n_NewsDiscuss_U_ID]  DEFAULT ((0)) FOR [U_ID]
GO
/****** Object:  Default [DF_n_NewsDiscuss_ND_AddTime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_NewsDiscuss] ADD  CONSTRAINT [DF_n_NewsDiscuss_ND_AddTime]  DEFAULT (getdate()) FOR [ND_AddTime]
GO
/****** Object:  Default [DF_n_NewsDiscuss_IPIsShow]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_NewsDiscuss] ADD  CONSTRAINT [DF_n_NewsDiscuss_IPIsShow]  DEFAULT ((1)) FOR [IPIsShow]
GO
/****** Object:  Default [DF_n_NewsTitleInfo_NT_IsShow]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_NewsTitleInfo] ADD  CONSTRAINT [DF_n_NewsTitleInfo_NT_IsShow]  DEFAULT ((1)) FOR [NT_IsShow]
GO
/****** Object:  Default [DF_n_NewsTitleInfo_NT_IsAllowContribut]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[n_NewsTitleInfo] ADD  CONSTRAINT [DF_n_NewsTitleInfo_NT_IsAllowContribut]  DEFAULT ((1)) FOR [NT_IsAllowContribut]
GO
/****** Object:  Default [DF_o_OrderForm_OF_Achieye]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[o_OrderForm] ADD  CONSTRAINT [DF_o_OrderForm_OF_Achieye]  DEFAULT ((0)) FOR [OF_Achieye]
GO
/****** Object:  Default [DF_o_OrderForm_OF_Type]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[o_OrderForm] ADD  CONSTRAINT [DF_o_OrderForm_OF_Type]  DEFAULT ((0)) FOR [OF_Type]
GO
/****** Object:  Default [DF_o_OrderForm_OF_Favorable]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[o_OrderForm] ADD  CONSTRAINT [DF_o_OrderForm_OF_Favorable]  DEFAULT ((0)) FOR [OF_Favorable]
GO
/****** Object:  Default [DF_o_OrderForm_OF_BeginTime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[o_OrderForm] ADD  CONSTRAINT [DF_o_OrderForm_OF_BeginTime]  DEFAULT (getdate()) FOR [OF_BeginTime]
GO
/****** Object:  Default [DF_p_Product_P_GeneralDia]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[p_Product] ADD  CONSTRAINT [DF_p_Product_P_GeneralDia]  DEFAULT ((0)) FOR [P_GeneralDia]
GO
/****** Object:  Default [DF_p_Product_P_GeneralForce]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[p_Product] ADD  CONSTRAINT [DF_p_Product_P_GeneralForce]  DEFAULT ((0)) FOR [P_GeneralForce]
GO
/****** Object:  Default [DF_pl_Attachment_At_PulishDate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[pl_Attachment] ADD  CONSTRAINT [DF_pl_Attachment_At_PulishDate]  DEFAULT (getdate()) FOR [At_PulishDate]
GO
/****** Object:  Default [DF_pl_Favorite_At_PulishDate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[pl_Favorite] ADD  CONSTRAINT [DF_pl_Favorite_At_PulishDate]  DEFAULT (getdate()) FOR [At_PulishDate]
GO
/****** Object:  Default [DF_pl_Message_U_ID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[pl_Message] ADD  CONSTRAINT [DF_pl_Message_U_ID]  DEFAULT ((0)) FOR [U_ID]
GO
/****** Object:  Default [DF_pl_Message_M_HasReply]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[pl_Message] ADD  CONSTRAINT [DF_pl_Message_M_HasReply]  DEFAULT ((0)) FOR [M_HasReply]
GO
/****** Object:  Default [DF_pl_Message_UR_ID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[pl_Message] ADD  CONSTRAINT [DF_pl_Message_UR_ID]  DEFAULT ((0)) FOR [UR_ID]
GO
/****** Object:  Default [DF_pl_Message_M_UserType]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[pl_Message] ADD  CONSTRAINT [DF_pl_Message_M_UserType]  DEFAULT ((1)) FOR [M_UserType]
GO
/****** Object:  Default [DF_pl_Message_M_AddTime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[pl_Message] ADD  CONSTRAINT [DF_pl_Message_M_AddTime]  DEFAULT (getdate()) FOR [M_AddTime]
GO
/****** Object:  Default [DF_pl_Message_M_Restore]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[pl_Message] ADD  CONSTRAINT [DF_pl_Message_M_Restore]  DEFAULT ((0)) FOR [M_Restore]
GO
/****** Object:  Default [DF_pl_Message_InfoID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[pl_Message] ADD  CONSTRAINT [DF_pl_Message_InfoID]  DEFAULT ((0)) FOR [InfoID]
GO
/****** Object:  Default [DF_u_Account_UGR_Money]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_Account] ADD  CONSTRAINT [DF_u_Account_UGR_Money]  DEFAULT ((0)) FOR [UGR_Money]
GO
/****** Object:  Default [DF_u_Account_UGR_LeftMoney]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_Account] ADD  CONSTRAINT [DF_u_Account_UGR_LeftMoney]  DEFAULT ((0)) FOR [UGR_LeftMoney]
GO
/****** Object:  Default [DF_u_Account_addtime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_Account] ADD  CONSTRAINT [DF_u_Account_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__u_Account__AC_Ti__3A179ED3]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_AccountConsumptionInfo] ADD  DEFAULT (getdate()) FOR [AC_Time]
GO
/****** Object:  Default [DF_u_Barnd_PT_ID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_Barnd] ADD  CONSTRAINT [DF_u_Barnd_PT_ID]  DEFAULT ((0)) FOR [PT_ID]
GO
/****** Object:  Default [DF_u_Barnd_B_Vouch]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_Barnd] ADD  CONSTRAINT [DF_u_Barnd_B_Vouch]  DEFAULT ((0)) FOR [B_Vouch]
GO
/****** Object:  Default [DF_u_Barnd_B_HtmlPage]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_Barnd] ADD  CONSTRAINT [DF_u_Barnd_B_HtmlPage]  DEFAULT ('') FOR [B_HtmlPage]
GO
/****** Object:  Default [DF_u_Barnd_B_ClickNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_Barnd] ADD  CONSTRAINT [DF_u_Barnd_B_ClickNum]  DEFAULT ((0)) FOR [B_ClickNum]
GO
/****** Object:  Default [DF_u_Barnd_addtime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_Barnd] ADD  CONSTRAINT [DF_u_Barnd_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_u_Barnd_B_MessageNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_Barnd] ADD  CONSTRAINT [DF_u_Barnd_B_MessageNum]  DEFAULT ((0)) FOR [B_MessageNum]
GO
/****** Object:  Default [DF_u_Barnd_B_NoMessageNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_Barnd] ADD  CONSTRAINT [DF_u_Barnd_B_NoMessageNum]  DEFAULT ((0)) FOR [B_NoMessageNum]
GO
/****** Object:  Default [DF_u_Barnd_IsHasImage]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_Barnd] ADD  CONSTRAINT [DF_u_Barnd_IsHasImage]  DEFAULT ((0)) FOR [IsHasImage]
GO
/****** Object:  Default [DF__u_Fictiti__FC_Ti__5CA1C101]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_FictitiouConsumptionInfo] ADD  DEFAULT (getdate()) FOR [FC_Time]
GO
/****** Object:  Default [DF_u_FictitiouCount_C_SumMoney]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_FictitiouCount] ADD  CONSTRAINT [DF_u_FictitiouCount_C_SumMoney]  DEFAULT ((0)) FOR [C_SumMoney]
GO
/****** Object:  Default [DF_u_FictitiouCount_C_LeftMoney]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_FictitiouCount] ADD  CONSTRAINT [DF_u_FictitiouCount_C_LeftMoney]  DEFAULT ((0)) FOR [C_LeftMoney]
GO
/****** Object:  Default [DF_u_FictitiouCount_addtime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_FictitiouCount] ADD  CONSTRAINT [DF_u_FictitiouCount_addtime]  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF_u_graderelation_U_Money]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_GradeRelation] ADD  CONSTRAINT [DF_u_graderelation_U_Money]  DEFAULT ((0)) FOR [U_Money]
GO
/****** Object:  Default [DF_u_graderelation_UR_Flag]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_GradeRelation] ADD  CONSTRAINT [DF_u_graderelation_UR_Flag]  DEFAULT ((0)) FOR [UR_Flag]
GO
/****** Object:  Default [DF_u_Individual_Telephone]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_Individual] ADD  CONSTRAINT [DF_u_Individual_Telephone]  DEFAULT ('') FOR [Telephone]
GO
/****** Object:  Default [DF_u_InputMoneyInfo_IM_Time]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_InputMoneyInfo] ADD  CONSTRAINT [DF_u_InputMoneyInfo_IM_Time]  DEFAULT (getdate()) FOR [IM_Time]
GO
/****** Object:  Default [DF_u_Invoice_I_Addtime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_Invoice] ADD  CONSTRAINT [DF_u_Invoice_I_Addtime]  DEFAULT (getdate()) FOR [I_Addtime]
GO
/****** Object:  Default [DF_u_JobResume_RE_AddDate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_JobResume] ADD  CONSTRAINT [DF_u_JobResume_RE_AddDate]  DEFAULT (getdate()) FOR [RE_AddDate]
GO
/****** Object:  Default [DF_u_JobResume_RE_Estate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_JobResume] ADD  CONSTRAINT [DF_u_JobResume_RE_Estate]  DEFAULT ((1)) FOR [RE_Estate]
GO
/****** Object:  Default [DF_u_News_addtime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_News] ADD  CONSTRAINT [DF_u_News_addtime]  DEFAULT (getdate()) FOR [N_addtime]
GO
/****** Object:  Default [DF_u_Remit_R_IsPay]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_Remit] ADD  CONSTRAINT [DF_u_Remit_R_IsPay]  DEFAULT ((0)) FOR [R_IsPay]
GO
/****** Object:  Default [DF_u_Resume_RE_Adddate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_Resume] ADD  CONSTRAINT [DF_u_Resume_RE_Adddate]  DEFAULT (getdate()) FOR [RE_Adddate]
GO
/****** Object:  Default [DF_u_SendEmail_AddTime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_SendEmail] ADD  CONSTRAINT [DF_u_SendEmail_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_u_User_U_RegDate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_User] ADD  CONSTRAINT [DF_u_User_U_RegDate]  DEFAULT (getdate()) FOR [U_RegDate]
GO
/****** Object:  Default [DF_u_User_U_ClickNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_User] ADD  CONSTRAINT [DF_u_User_U_ClickNum]  DEFAULT ((0)) FOR [U_ClickNum]
GO
/****** Object:  Default [DF_u_User_U_MessageNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_User] ADD  CONSTRAINT [DF_u_User_U_MessageNum]  DEFAULT ((0)) FOR [U_MessageNum]
GO
/****** Object:  Default [DF_u_User_U_NoMessgeNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_User] ADD  CONSTRAINT [DF_u_User_U_NoMessgeNum]  DEFAULT ((0)) FOR [U_NoMessgeNum]
GO
/****** Object:  Default [DF_u_User_U_Mark]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_User] ADD  CONSTRAINT [DF_u_User_U_Mark]  DEFAULT ((0)) FOR [U_Mark]
GO
/****** Object:  Default [DF_u_User_U_Vouch]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_User] ADD  CONSTRAINT [DF_u_User_U_Vouch]  DEFAULT ((0)) FOR [U_Vouch]
GO
/****** Object:  Default [DF_u_User_U_Puach]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_User] ADD  CONSTRAINT [DF_u_User_U_Puach]  DEFAULT ((1)) FOR [U_Puach]
GO
/****** Object:  Default [DF_u_User_U_Cred]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_User] ADD  CONSTRAINT [DF_u_User_U_Cred]  DEFAULT ((0)) FOR [U_Cred]
GO
/****** Object:  Default [DF_u_User_U_Flag]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_User] ADD  CONSTRAINT [DF_u_User_U_Flag]  DEFAULT ((1)) FOR [U_Flag]
GO
/****** Object:  Default [DF_u_User_U_TempName]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_User] ADD  CONSTRAINT [DF_u_User_U_TempName]  DEFAULT ('default') FOR [U_TempName]
GO
/****** Object:  Default [DF_u_User_U_CommonErr]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_User] ADD  CONSTRAINT [DF_u_User_U_CommonErr]  DEFAULT ((0)) FOR [U_CommonErr]
GO
/****** Object:  Default [DF_u_User_U_MaliceErr]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_User] ADD  CONSTRAINT [DF_u_User_U_MaliceErr]  DEFAULT ((0)) FOR [U_MaliceErr]
GO
/****** Object:  Default [DF_u_User_U_InFormation]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_User] ADD  CONSTRAINT [DF_u_User_U_InFormation]  DEFAULT ((0)) FOR [U_InFormation]
GO
/****** Object:  Default [DF_u_User_UserIsHasImage]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_User] ADD  CONSTRAINT [DF_u_User_UserIsHasImage]  DEFAULT ((0)) FOR [UserIsHasImage]
GO
/****** Object:  Default [DF_u_UserInfo_Area_ID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_UserInfo] ADD  CONSTRAINT [DF_u_UserInfo_Area_ID]  DEFAULT ((0)) FOR [Area_ID]
GO
/****** Object:  Default [DF_u_UserInfo_UI_Number]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_UserInfo] ADD  CONSTRAINT [DF_u_UserInfo_UI_Number]  DEFAULT ((0)) FOR [UI_Number]
GO
/****** Object:  Default [DF_u_UserInfo_Telephone]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_UserInfo] ADD  CONSTRAINT [DF_u_UserInfo_Telephone]  DEFAULT ('') FOR [Telephone]
GO
/****** Object:  Default [DF_u_UserInfo_Fax]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_UserInfo] ADD  CONSTRAINT [DF_u_UserInfo_Fax]  DEFAULT ('') FOR [Fax]
GO
/****** Object:  Default [DF_u_UserInfo_TradeId]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[u_UserInfo] ADD  CONSTRAINT [DF_u_UserInfo_TradeId]  DEFAULT ('') FOR [TradeIds]
GO
/****** Object:  Default [DF_XY_AdTrafficLog_Date]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_AdTrafficLog] ADD  CONSTRAINT [DF_XY_AdTrafficLog_Date]  DEFAULT (getdate()) FOR [Date]
GO
/****** Object:  Default [DF_XY_SiteArea_IsCustomTemplate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_AreaSite] ADD  CONSTRAINT [DF_XY_SiteArea_IsCustomTemplate]  DEFAULT ((0)) FOR [IsCustomTemplate]
GO
/****** Object:  Default [DF_XY_BrandType_InfoCount]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_BrandType] ADD  CONSTRAINT [DF_XY_BrandType_InfoCount]  DEFAULT ((0)) FOR [InfoCount]
GO
/****** Object:  Default [DF_XY_BrandType_OrderID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_BrandType] ADD  CONSTRAINT [DF_XY_BrandType_OrderID]  DEFAULT ((0)) FOR [OrderID]
GO
/****** Object:  Default [DF_XY_ClassLabel_Name]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_ClassLabel] ADD  CONSTRAINT [DF_XY_ClassLabel_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_XY_ClassLabel_CHName]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_ClassLabel] ADD  CONSTRAINT [DF_XY_ClassLabel_CHName]  DEFAULT ('') FOR [CNName]
GO
/****** Object:  Default [DF_XY_ClassLabel_Body]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_ClassLabel] ADD  CONSTRAINT [DF_XY_ClassLabel_Body]  DEFAULT ('') FOR [Body]
GO
/****** Object:  Default [DF_XY_ClassLabel_TableName]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_ClassLabel] ADD  CONSTRAINT [DF_XY_ClassLabel_TableName]  DEFAULT ('') FOR [TableName]
GO
/****** Object:  Default [DF_XY_CompanyProductType_infocount]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_CompanyProductType] ADD  CONSTRAINT [DF_XY_CompanyProductType_infocount]  DEFAULT ((0)) FOR [infocount]
GO
/****** Object:  Default [DF_b_Field_M_ID]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Field] ADD  CONSTRAINT [DF_b_Field_M_ID]  DEFAULT ((0)) FOR [ModuleName]
GO
/****** Object:  Default [DF_XY_InfoRefreshLog_LastRefreshTime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_InfoRefreshLog] ADD  CONSTRAINT [DF_XY_InfoRefreshLog_LastRefreshTime]  DEFAULT (getdate()) FOR [LastRefreshTime]
GO
/****** Object:  Default [DF_XY_Poll_LabelName]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Poll] ADD  CONSTRAINT [DF_XY_Poll_LabelName]  DEFAULT ('') FOR [LabelName]
GO
/****** Object:  Default [DF_XY_Poll_Title]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Poll] ADD  CONSTRAINT [DF_XY_Poll_Title]  DEFAULT ('') FOR [Title]
GO
/****** Object:  Default [DF_XY_PollOption_PollId]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_PollOption] ADD  CONSTRAINT [DF_XY_PollOption_PollId]  DEFAULT ((0)) FOR [PollId]
GO
/****** Object:  Default [DF_XY_PollOption_Option]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_PollOption] ADD  CONSTRAINT [DF_XY_PollOption_Option]  DEFAULT ('') FOR [Option]
GO
/****** Object:  Default [DF_XY_PollOption_Total]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_PollOption] ADD  CONSTRAINT [DF_XY_PollOption_Total]  DEFAULT ((0)) FOR [Total]
GO
/****** Object:  Default [DF_XY_RankingState_InfoId]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Ranking] ADD  CONSTRAINT [DF_XY_RankingState_InfoId]  DEFAULT ('') FOR [InfoIds]
GO
/****** Object:  Default [DF_XY_RankingLog_RealEndTime_1]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_RankingLog] ADD  CONSTRAINT [DF_XY_RankingLog_RealEndTime_1]  DEFAULT (getdate()) FOR [RealEndTime]
GO
/****** Object:  Default [DF_XY_ShowInfo_showIsCommend]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_ShowInfo] ADD  CONSTRAINT [DF_XY_ShowInfo_showIsCommend]  DEFAULT ((0)) FOR [IsCommend]
GO
/****** Object:  Default [DF_XY_ShowInfo_addInfoTime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_ShowInfo] ADD  CONSTRAINT [DF_XY_ShowInfo_addInfoTime]  DEFAULT (getdate()) FOR [addInfoTime]
GO
/****** Object:  Default [DF_XY_ShowInfo_IsHasImage]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_ShowInfo] ADD  CONSTRAINT [DF_XY_ShowInfo_IsHasImage]  DEFAULT ((0)) FOR [IsHasImage]
GO
/****** Object:  Default [DF_XY_Topic_CName]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Topic] ADD  CONSTRAINT [DF_XY_Topic_CName]  DEFAULT ('') FOR [CName]
GO
/****** Object:  Default [DF_XY_Topic_EName]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Topic] ADD  CONSTRAINT [DF_XY_Topic_EName]  DEFAULT ('') FOR [EName]
GO
/****** Object:  Default [DF_XY_Topic_TemplatePath]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Topic] ADD  CONSTRAINT [DF_XY_Topic_TemplatePath]  DEFAULT ('') FOR [TemplatePath]
GO
/****** Object:  Default [DF_XY_Topic_URL]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Topic] ADD  CONSTRAINT [DF_XY_Topic_URL]  DEFAULT ('') FOR [URL]
GO
/****** Object:  Default [DF_XY_Topic_ShowNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Topic] ADD  CONSTRAINT [DF_XY_Topic_ShowNum]  DEFAULT ((0)) FOR [ShowNum]
GO
/****** Object:  Default [DF_XY_Topic_State]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Topic] ADD  CONSTRAINT [DF_XY_Topic_State]  DEFAULT ((1)) FOR [State]
GO
/****** Object:  Default [DF_XY_Topic_Commend]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Topic] ADD  CONSTRAINT [DF_XY_Topic_Commend]  DEFAULT ((0)) FOR [Commend]
GO
/****** Object:  Default [DF_XY_Topic_AddTime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Topic] ADD  CONSTRAINT [DF_XY_Topic_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_XY_Topic_HTMLPage]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Topic] ADD  CONSTRAINT [DF_XY_Topic_HTMLPage]  DEFAULT ('') FOR [HTMLPage]
GO
/****** Object:  Default [DF_XY_Topic_IsHasImage]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Topic] ADD  CONSTRAINT [DF_XY_Topic_IsHasImage]  DEFAULT ((0)) FOR [IsHasImage]
GO
/****** Object:  Default [DF_XY_Topic_IsDomain]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Topic] ADD  CONSTRAINT [DF_XY_Topic_IsDomain]  DEFAULT ((0)) FOR [IsDomain]
GO
/****** Object:  Default [DF_XY_Trade_ParentId]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Trade] ADD  CONSTRAINT [DF_XY_Trade_ParentId]  DEFAULT ((0)) FOR [ParentId]
GO
/****** Object:  Default [DF_XY_Trade_IsCustomTemplate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_Trade] ADD  CONSTRAINT [DF_XY_Trade_IsCustomTemplate]  DEFAULT ((0)) FOR [IsCustomTemplate]
GO
/****** Object:  Default [DF_XY_UserAppraiseStat_GoodTimes]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_UserAppraise] ADD  CONSTRAINT [DF_XY_UserAppraiseStat_GoodTimes]  DEFAULT ((0)) FOR [GoodTimes]
GO
/****** Object:  Default [DF_XY_UserAppraiseStat_FairTimes]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_UserAppraise] ADD  CONSTRAINT [DF_XY_UserAppraiseStat_FairTimes]  DEFAULT ((0)) FOR [FairTimes]
GO
/****** Object:  Default [DF_XY_UserAppraiseStat_PoorTimes]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_UserAppraise] ADD  CONSTRAINT [DF_XY_UserAppraiseStat_PoorTimes]  DEFAULT ((0)) FOR [PoorTimes]
GO
/****** Object:  Default [DF_XY_UserAppraiseStat_TotalScore]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_UserAppraise] ADD  CONSTRAINT [DF_XY_UserAppraiseStat_TotalScore]  DEFAULT ((0)) FOR [TotalScore]
GO
/****** Object:  Default [DF_XY_UserAppraise_score]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_UserAppraiseLog] ADD  CONSTRAINT [DF_XY_UserAppraise_score]  DEFAULT ((0)) FOR [score]
GO
/****** Object:  Default [DF_XY_UserAppraise_message]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_UserAppraiseLog] ADD  CONSTRAINT [DF_XY_UserAppraise_message]  DEFAULT ('') FOR [message]
GO
/****** Object:  Default [DF_XY_UserAppraise_posttime]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_UserAppraiseLog] ADD  CONSTRAINT [DF_XY_UserAppraise_posttime]  DEFAULT (getdate()) FOR [posttime]
GO
/****** Object:  Default [DF_XY_UserAppraise_msgUserId]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_UserAppraiseLog] ADD  CONSTRAINT [DF_XY_UserAppraise_msgUserId]  DEFAULT ((0)) FOR [msgUserId]
GO
/****** Object:  Default [DF_XY_UserAppraiseLog_msgUserIP]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_UserAppraiseLog] ADD  CONSTRAINT [DF_XY_UserAppraiseLog_msgUserIP]  DEFAULT ('') FOR [msgUserIP]
GO
/****** Object:  Default [DF_XY_UserDomain_ICPInfo]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_UserDomain] ADD  CONSTRAINT [DF_XY_UserDomain_ICPInfo]  DEFAULT ('') FOR [ICPInfo]
GO
/****** Object:  Default [DF_XY_UserDomain_State]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_UserDomain] ADD  CONSTRAINT [DF_XY_UserDomain_State]  DEFAULT ((-1)) FOR [AuditingState]
GO
/****** Object:  Default [DF_XY_UserDomain_AddDate]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_UserDomain] ADD  CONSTRAINT [DF_XY_UserDomain_AddDate]  DEFAULT (getdate()) FOR [AddDate]
GO
/****** Object:  Default [DF_u_UserLogin_LoginNum]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[XY_UserLoginLog] ADD  CONSTRAINT [DF_u_UserLogin_LoginNum]  DEFAULT ((0)) FOR [LoginNum]
GO
/****** Object:  ForeignKey [FK_fs_Collect_RuleRender_fs_Collect_Rule]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_RuleApply]  WITH CHECK ADD  CONSTRAINT [FK_fs_Collect_RuleRender_fs_Collect_Rule] FOREIGN KEY([RuleID])
REFERENCES [dbo].[fs_Collect_Rule] ([ID])
GO
ALTER TABLE [dbo].[fs_Collect_RuleApply] CHECK CONSTRAINT [FK_fs_Collect_RuleRender_fs_Collect_Rule]
GO
/****** Object:  ForeignKey [FK_fs_Collect_RuleRender_fs_Collect_Site]    Script Date: 10/03/2011 19:31:58 ******/
ALTER TABLE [dbo].[fs_Collect_RuleApply]  WITH CHECK ADD  CONSTRAINT [FK_fs_Collect_RuleRender_fs_Collect_Site] FOREIGN KEY([SiteID])
REFERENCES [dbo].[fs_Collect_Site] ([ID])
GO
ALTER TABLE [dbo].[fs_Collect_RuleApply] CHECK CONSTRAINT [FK_fs_Collect_RuleRender_fs_Collect_Site]
GO

USE [WMMudTest]
GO
/****** Object:  Table [dbo].[Typos]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Typos](
	[ID] [int] NOT NULL,
	[Note] [nvarchar](500) NOT NULL,
	[SubmittedByPlayerID] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
	[SubmittedDateTime] [nvarchar](30) NOT NULL,
	[Resolved] [bit] NOT NULL,
	[ResolvedByPlayerID] [int] NULL,
	[ResolvedDateTime] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomVisuals]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomVisuals](
	[ID] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
	[Name] [nvarchar](59) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomTypes]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomTypes](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UID] [nvarchar](50) NULL,
	[AreaID] [int] NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[RoomTypeID] [int] NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SecurityRoleMask] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PortalExits]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PortalExits](
	[ID] [int] NOT NULL,
	[PortalID] [int] NOT NULL,
	[RoomAID] [int] NULL,
	[RoomBID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[ID] [int] NOT NULL,
	[UserName] [nvarchar](45) NOT NULL,
	[Password] [nvarchar](45) NOT NULL,
	[DisplayName] [nvarchar](50) NULL,
	[Suffix] [nvarchar](45) NULL,
	[Prefix] [nvarchar](45) NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](250) NULL,
	[Age] [int] NULL,
	[CreateDate] [nvarchar](50) NULL,
	[CurrentRoomID] [int] NULL,
	[Prompt] [nvarchar](50) NULL,
	[WantAnsi] [bit] NULL,
	[WantMXP] [bit] NULL,
	[WantMCCP] [bit] NULL,
	[LastLogin] [nvarchar](50) NULL,
	[LastLogout] [nvarchar](50) NULL,
	[LastIPAddress] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[HomePage] [nvarchar](4000) NULL,
	[PlanText] [nvarchar](1) NULL,
	[BufferLength] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayerRoles]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerRoles](
	[ID] [int] NOT NULL,
	[PlayerID] [int] NULL,
	[RoleID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayerIPAddress]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerIPAddress](
	[ID] [int] NOT NULL,
	[PlayerID] [int] NOT NULL,
	[IPAddress] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayerChannels]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerChannels](
	[ID] [int] NOT NULL,
	[PlayerID] [int] NOT NULL,
	[ChannelID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MXP]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MXP](
	[ID] [int] NOT NULL,
	[ElementName] [nvarchar](50) NULL,
	[ElementDefinition] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MudChannels]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MudChannels](
	[ID] [int] NOT NULL,
	[MudChannelName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MudChannelRoles]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MudChannelRoles](
	[ID] [int] NOT NULL,
	[MudChannelID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MobTypes]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MobTypes](
	[ID] [int] NOT NULL,
	[MobTypeName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mobs]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mobs](
	[ID] [int] NOT NULL,
	[MobTypeID] [int] NULL,
	[Name] [nvarchar](45) NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](250) NULL,
	[Age] [int] NULL,
	[CurrentRoomID] [int] NULL,
	[Prompt] [nvarchar](50) NULL,
	[CreateDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IAC]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IAC](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[OptionCode] [int] NULL,
	[NegotiateAtConnect] [bit] NOT NULL,
	[RequiresSubNegotiation] [bit] NOT NULL,
	[SubNegAssembly] [nvarchar](50) NULL,
	[NegotiationStartValue] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HelpTopics]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HelpTopics](
	[ID] [int] NOT NULL,
	[HelpTopic] [nvarchar](50) NOT NULL,
	[Usage] [nvarchar](255) NULL,
	[Description] [nvarchar](1000) NULL,
	[Example] [nvarchar](1000) NULL,
	[SeeAlso] [nvarchar](1000) NULL,
	[ViewTemplate] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HelpTopicAliases]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HelpTopicAliases](
	[ID] [int] NOT NULL,
	[HelpTopicAlias] [nvarchar](50) NOT NULL,
	[HelpTopicID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exits]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exits](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExitRoomAID] [int] NULL,
	[DirectionA] [nvarchar](50) NULL,
	[ExitRoomBID] [int] NULL,
	[DirectionB] [nvarchar](50) NULL,
	[DoorID] [int] NULL,
 CONSTRAINT [PK_Exits] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoorSides]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoorSides](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](45) NULL,
	[Description] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doors]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doors](
	[ID] [int] NOT NULL,
	[DoorSideAID] [int] NULL,
	[DoorSideBID] [int] NULL,
	[OpenState] [int] NULL,
	[Name] [nvarchar](45) NULL,
	[Description] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BannedIPAddresses]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BannedIPAddresses](
	[ID] [int] NOT NULL,
	[StartIPAddress] [nvarchar](20) NOT NULL,
	[EndIPAddress] [nvarchar](20) NOT NULL,
	[Note] [nvarchar](255) NOT NULL,
	[BannedByPlayerID] [int] NOT NULL,
	[BannedDateTime] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UID] [nvarchar](50) NULL,
	[Name] [nvarchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ANSI]    Script Date: 05/04/2012 20:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ANSI](
	[ID] [int] NOT NULL,
	[EscapeCode] [nvarchar](50) NULL,
	[Tag] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF__Mobs__CreateDate__34C8D9D1]    Script Date: 05/04/2012 20:11:29 ******/
ALTER TABLE [dbo].[Mobs] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF__Players__BufferL__5441852A]    Script Date: 05/04/2012 20:11:29 ******/
ALTER TABLE [dbo].[Players] ADD  DEFAULT ('40') FOR [BufferLength]
GO
/****** Object:  Default [DF__Typos__Resolved__68487DD7]    Script Date: 05/04/2012 20:11:29 ******/
ALTER TABLE [dbo].[Typos] ADD  DEFAULT ('False') FOR [Resolved]
GO

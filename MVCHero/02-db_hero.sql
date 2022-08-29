CREATE DATABASE [db_hero]
GO

USE [db_hero]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 29/08/2022 06:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Heroes]    Script Date: 29/08/2022 06:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Heroes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[Age] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Heroes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 29/08/2022 06:33:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rate] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[HeroId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Ratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202208290639306_InitialData', N'MVCHero.Migrations.Configuration', 0x1F8B0800000000000400ED59DD6EEB4410BE47E21D2C5F01EA89D3F606A2E41C95B4858893A66ADA8ABB6A634FD215EBB5D95D5789104FC6058FC42B30EBB51D7B6DE7A7692A40A85295AC77BEF9D9F966679CBFFEF8B3FF691932E70584A4111FB8A79DAEEB00F7A380F2C5C04DD4FCC3B7EEA78F5F7ED1BF0AC2A5F398EF3BD7FB5092CB81FBAC54DCF33CE93F43486427A4BE886434571D3F0A3D1244DE59B7FB9D777AEA0142B888E538FDBB842B1A42FA05BF0E23EE43AC12C2C651004C66EBF8649AA23A37240419131F06EEF871F82388A86376BACE05A304AD98029BBB0EE13C5244A18DBD0709532522BE98C6B840D8FD2A06DC37274C42667B6FBD7D5737BA67DA0D6F2D9843F9895451B827E0E9791617CF167F5574DD226E18B92B8CB05A69AFD3E80D5C1D35D7B115F5864CE84D76603BFAF389932D9E14478F19A2FF4E9C61C2542260C0215182B013E7369931EAFF04ABFBE817E0039E305636084DC26795055CBA15510C42ADEE609E99390A5CC7ABCA79B660215692314E8CB83A3F739D1B544E660C8AF32E393C5591801F8083200A825BA21408AE31208D584DBBA54BFFCFB56182214F5C674C969F812FD43346912C5DE79A2E21C857320B1E38455AA19012096C53324C0D39B2925BEAEB137C7B3D37E4852ED2605B1AEF70912F90B477C0D2E7F299C686BB1DF3ECC964E9B588C2BB881522E9F2D33D110B50686F547F368D12E15BA6F4BD35093652C300ED410E23F03F3DEABA3032B04DDB6684CB1282FE7C4F35E1F604791796EAA3DF1EDB5DC96132FF75CCC8B3BF8919396B7661C68594914F53032AD430CAAB8E5CF1C0D9608909FDDA7E8C3F5282C64802543C70BFA945A619B020FD1AD044A20A77EADADC99F04B60A0C0B9F0CD853C24D22741FD443016417505E90642E73B61D89A482430E5AACE4DCA7D1A13D66EB425B223A1B54905B8FDE41262E09A8BEDB1DF456B9EBA75CD85022B48DB62D2F74AC953AFB628A3500244C900BD064BD55077B179CB4AAFCCA868A78AC69C822AA101DE2BEBACAEA44A2DD1AAD2C5B55413CF53D70228796AA364342DED6860B11DF4CD542ACC2D595A3BB7CDE42941E4A1B24950F5A9A1561427B8EECE3DD39EE76DBCD7D2C7F7C7248EB5DD6BC96CC5999AA67EF861BA7FC71B1A0CCF970D8D6F616DA109EF35B200EB29AA464BAFA9900AEF1A3223BA620F83B0B6AD9CAF2DD9946BAAA464FD9CF214CBB7EBCF46A4A1036F207326778DDE84BA0EA417B675C075B17496228C8886DE6018B124E4EDE5A85DDA5CB36579B3B23B82E974CB08C3862E631342D1C696418AC53A4EDFB322582B81B533AADD17D513DF291F72EA1E90105935DA3F25DA048F9314A6052CCB9B95DD112E6B08977B221C9E98F90D59C668BB358F9C54B50A6C6F29B41795D8AAB8FDACFA6D7FBD522B87668BEB60785E68A04BE1742515841DBDA133FD950D19457FD71BC684D3394865E61CF7AC7B7A66BDA5F9E7BC31F1A40CD80EAF4DDE7D50A33AA25B47B1038622FE4284FF4CC45721597E5D46DAF7F5C44140D62B883DB0F69DEDFF1B27589EAE530507CCD6017E5687CED6079D7E757E4EFDA94D02239C459603F7B754A4E78C7E7E325227CE4460B1E9395DE7F72D1EBCEDB06BFAFBF79C46EDD6FE55C3F5AB46DA960EF44843ECBF6370ADCF0BDB47D3D6C1D45CAEC8C599CE2993C12D035AF3D0BA61666DC26E991F8F38D096DD5F8F27DBE7D786B1F738336BBD33C29429FD3C85C92AE9620DA17FACE2E05792A5D833E2F328CF59CBA27C8B5503C7A00856627221149D135FE1631FA44CDD7D242CC12D57E10C82119F242A4E14BA0CE18C5526249DFB9BF4A78379D5E6FE244EDF32BE850B6826D597C9847F9F501614765F3794E216084DAAEC9AD467A9F475B95815483711DF11280B5F510BEE218C1982C9099F9217788D6D0F123EC382F8ABBCC16D07D97E10D5B0F72F29590812CA0C632D8F5F31878370F9F16F14A6833CA51D0000, N'6.4.4')
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202208290809463_AgeField', N'MVCHero.Migrations.Configuration', 0x1F8B0800000000000400ED59CB6EEB3610DD17E83F085AB545AE15279B36B0EF45EA24ADD19B388892A0BB8096C60E518A52492AB051F4CBBAE827F5173A142559A2243F93A02D8A00814D72CE3C3867C8A1FFFAE3CFC1A745C49C171092C67CE8F67BC7AE033C8843CAE7433755B30FDFBA9F3E7EF9C5E0328C16CE63B1EE54AF43492E87EEB352C999E7C9E01922227B110D442CE399EA0571E49130F64E8E8FBFF3FA7D0F10C2452CC719DCA55CD108B22FF87514F300129512761D87C0643E8E337E86EADC900864420218BAD78FA31F41C43DB3D275CE192568850F6CE63A84F3581185369E3D48F09588F9DC4F7080B0FB6502B86E469884DCF6B3D5F26DDD383ED16E782BC1022A48A58AA31D01FBA7795C3C5B7CAFE8BA65DC3072971861B5D45E67D11BBA3A6AAE632B3A1B31A117D981EDE9CF474E3E78546E3D6688FE3B72462953A98021875409C28E9CDB74CA68F0132CEFE35F800F79CA58D5203409E76A0338742BE204845ADEC12C37731CBA8E5797F36CC152AC22639C1873757AE23A37A89C4C1994FB5D71D857B1801F8083200AC25BA21408AE31208B5843BBA54BFF2FB46182214F5CE79A2C3E039FAB678C2259B8CE155D40588CE4163C708AB442212552D8A4E47C0E9B3C5A0F30CA3C79632B6F69A053E0F5F5DC90173ACF76CBD27887837C8EACBF0396CDCB679A18F2F7CCDC9349F32B114777312B45B2E1A77B22E6A0D0DEB839E7C7A9082C5306DE8A456BB9658076609711F89F5F4D5D18990373FFA282A03FDF53CDD81D41DE85E67AEB37C7765B7298CCDF8F1945F6B731A360CD36CC3897320E6866408D1A4679DD914B1E3A6B2C31A15FD98FF1474AD00449808A87EE378DC8B40396A45F019A48D4E1FAAECD9D09BF00060A9CF3C09CE8232203123677046311D647906E2074BE1386771B8904A65C35B949794013C2BA8DB644B624B436A904B7672E2001AEB9D81DFB6DB416A9DBD45C2AB082B4292603AF923CCD6A8B320A2540540CD063B0502D75176F7F79E9953915ED54D1983EA80A1AE0B9B2CAEA5AAA3412AD2E5D1E4B0DF122752D808AA7364A4ED3CA8A1616DB415F4FA5D2DC8AA58D7D5B4F9E0A44112A9B04759F5A6A45B983ABEBBD67EEF7451FE0753402836B9224DAEE95643EE2F8A62B187DF077BF324706C30B64CBCDB9B4B6D484E71A9983358BAAD1D22B2AA4C2B3864C89AED8A3306A2CABE66B4736159A6A29D9DCA722C58AE5FAB31169B9C2B7903997BB426F225D07B203DBDAE0A658D68C114644CBDD6014B334E2DDE5A85BDA1CB3557933B23D427655AE026403DBCB9B9B721560D4724B5987505E83AB20E5601367E0593BD028A18D3D6E9C37F58CD92A9F0AEA1F90507935DB3DA5BA04DF26A9CC15B22A6F46B647B868205CEC8870786217276C15A3EBD47DE3A46A54707B49A9BDACE456C51EE4D573F3FB4EA39C9A25AE83E179A1A12EA5FE522A887A7A41CFFF958D18457F570BAE09A73390CAF449EEC971FFC47A26FAE73CD97852866C8B779B776FF4A88EE8C656EE80A68ABF10113C13F15544165F5791767C1FC90C3DE075E4203BAC17901DB0767D5AF86F2440B5B9DF67E3AAAD7D889FD5A1ADFD41BB5F6FDF337F1A8DC8185BA1C5D0FD2D133973C63F3F19A9236722B0569D39C7CEEF1B3C78DD5EDBB417EFD90CDB9DC55EBDFD5E1D75C705F88D7AE87F47DFDC6C573677C69D7DB1399B918B539D5326833BFAC3F69E794DCBDC86DDD1BEBE613F5D757FD51D6D6E9F5BBAEEB769999B172B4C99CACF6B98AC92CE5710FAC7360E412D59CA35633E8B8B9CB52C2A965835F01A14C14A4CCE85A23312289C0E40CACCDD47C2525C72194D211CF349AA9254A1CB104D59ADC1D2B9BF4E7FF62E50B7793049B247CED77001CDA4FA3099F0EF53CAC2D2EEAB9652DC01A149951F937A2F953E2EE7CB12E926E65B02E5E12B6BC13D4409433039E13E79817D6C7B90F019E6245816F7E36E90CD1B510FFBE08292B92091CC3156F2F81573388C161FFF064A8F4C2A651E0000, N'6.4.4')
GO
SET IDENTITY_INSERT [dbo].[Heroes] ON 
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (1, N'Wonder Woman - 1', N'Themyscira', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png', 220)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (2, N'Green Lantern - 2', N'Coast City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png', 28)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (3, N'Batman - 3', N'Arkham City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png', 32)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (4, N'Batman - 4', N'Arkham City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png', 32)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (5, N'Batman - 5', N'Arkham City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png', 32)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (6, N'Wonder Woman - 6', N'Themyscira', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png', 220)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (7, N'Wonder Woman - 7', N'Themyscira', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png', 220)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (8, N'Flash - 8', N'Central City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749135/heroes/flash_vyldmg.png', 24)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (9, N'Green Lantern - 9', N'Coast City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png', 28)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (10, N'Flash - 10', N'Central City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749135/heroes/flash_vyldmg.png', 24)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (11, N'Superman - 11', N'Metrópolis', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748963/heroes/superman_th3q5d.jpg', 120)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (12, N'Flash - 12', N'Central City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749135/heroes/flash_vyldmg.png', 24)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (13, N'Batman - 13', N'Arkham City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png', 32)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (14, N'Superman - 14', N'Metrópolis', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748963/heroes/superman_th3q5d.jpg', 120)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (15, N'Green Lantern - 15', N'Coast City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png', 28)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (16, N'Green Lantern - 16', N'Coast City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png', 28)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (17, N'Wonder Woman - 17', N'Themyscira', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png', 220)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (18, N'Green Lantern - 18', N'Coast City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png', 28)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (19, N'Wonder Woman - 19', N'Themyscira', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png', 220)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (20, N'Wonder Woman - 20', N'Themyscira', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png', 220)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (21, N'Green Lantern - 21', N'Coast City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png', 28)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (22, N'Wonder Woman - 22', N'Themyscira', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png', 220)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (23, N'Flash - 23', N'Central City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749135/heroes/flash_vyldmg.png', 24)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (24, N'Green Lantern - 24', N'Coast City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png', 28)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (25, N'Wonder Woman - 25', N'Themyscira', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png', 220)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (26, N'Batman - 26', N'Arkham City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png', 32)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (27, N'Superman - 27', N'Metrópolis', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748963/heroes/superman_th3q5d.jpg', 120)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (28, N'Wonder Woman - 28', N'Themyscira', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png', 220)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (29, N'Green Lantern - 29', N'Coast City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png', 28)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (30, N'Wonder Woman - 30', N'Themyscira', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png', 220)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (31, N'Flash - 31', N'Central City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749135/heroes/flash_vyldmg.png', 24)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (32, N'Batman - 32', N'Arkham City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png', 32)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (33, N'Green Lantern - 33', N'Coast City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png', 28)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (34, N'Batman - 34', N'Arkham City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png', 32)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (35, N'Batman - 35', N'Arkham City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png', 32)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (36, N'Wonder Woman - 36', N'Themyscira', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png', 220)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (37, N'Batman - 37', N'Arkham City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png', 32)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (38, N'Superman - 38', N'Metrópolis', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748963/heroes/superman_th3q5d.jpg', 120)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (39, N'Batman - 39', N'Arkham City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png', 32)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (40, N'Wonder Woman - 40', N'Themyscira', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png', 220)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (41, N'Flash - 41', N'Central City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749135/heroes/flash_vyldmg.png', 24)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (42, N'Wonder Woman - 42', N'Themyscira', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png', 220)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (43, N'Superman - 43', N'Metrópolis', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748963/heroes/superman_th3q5d.jpg', 120)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (44, N'Superman - 44', N'Metrópolis', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748963/heroes/superman_th3q5d.jpg', 120)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (45, N'Superman - 45', N'Metrópolis', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748963/heroes/superman_th3q5d.jpg', 120)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (46, N'Batman - 46', N'Arkham City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png', 32)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (47, N'Green Lantern - 47', N'Coast City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png', 28)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (48, N'Superman - 48', N'Metrópolis', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748963/heroes/superman_th3q5d.jpg', 120)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (49, N'Batman - 49', N'Arkham City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png', 32)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (50, N'Superman - 50', N'Metrópolis', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748963/heroes/superman_th3q5d.jpg', 120)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (51, N'Flash - 51', N'Central City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749135/heroes/flash_vyldmg.png', 24)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (52, N'Wonder Woman - 52', N'Themyscira', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png', 220)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (53, N'Wonder Woman - 53', N'Themyscira', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749080/heroes/wonder_woman_xtnelh.png', 220)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (54, N'Flash - 54', N'Central City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749135/heroes/flash_vyldmg.png', 24)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (55, N'Batman - 55', N'Arkham City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png', 32)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (56, N'Flash - 56', N'Central City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749135/heroes/flash_vyldmg.png', 24)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (57, N'Green Lantern - 57', N'Coast City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png', 28)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (58, N'Green Lantern - 58', N'Coast City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png', 28)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (59, N'Green Lantern - 59', N'Coast City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png', 28)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (60, N'Flash - 60', N'Central City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749135/heroes/flash_vyldmg.png', 24)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (61, N'Superman - 61', N'Metrópolis', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748963/heroes/superman_th3q5d.jpg', 120)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (62, N'Batman - 62', N'Arkham City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png', 32)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (63, N'Green Lantern - 63', N'Coast City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png', 28)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (64, N'Flash - 64', N'Central City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749135/heroes/flash_vyldmg.png', 24)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (65, N'Flash - 65', N'Central City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749135/heroes/flash_vyldmg.png', 24)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (66, N'Superman - 66', N'Metrópolis', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748963/heroes/superman_th3q5d.jpg', 120)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (67, N'Green Lantern - 67', N'Coast City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749016/heroes/Green_Lantern_waqxdg.png', 28)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (68, N'Flash - 68', N'Central City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661749135/heroes/flash_vyldmg.png', 24)
GO
INSERT [dbo].[Heroes] ([Id], [Name], [City], [Picture], [Age]) VALUES (69, N'Batman - 69', N'Arkham City', N'https://res.cloudinary.com/debabkluz/image/upload/v1661748787/heroes/batman_hlbeav.png', 32)
GO
SET IDENTITY_INSERT [dbo].[Heroes] OFF
GO
SET IDENTITY_INSERT [dbo].[Ratings] ON 
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (1, 3, CAST(N'2022-08-29T02:53:17.537' AS DateTime), N'Howard', 1)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (2, 1, CAST(N'2022-08-29T02:53:17.570' AS DateTime), N'Stuart', 1)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (3, 3, CAST(N'2022-08-29T02:53:17.573' AS DateTime), N'Leonard', 1)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (4, 3, CAST(N'2022-08-29T02:53:17.573' AS DateTime), N'Howard', 1)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (5, 3, CAST(N'2022-08-29T02:53:17.573' AS DateTime), N'Rajesh', 1)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (6, 4, CAST(N'2022-08-29T02:53:17.573' AS DateTime), N'Stuart', 1)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (7, 1, CAST(N'2022-08-29T02:53:17.573' AS DateTime), N'Stuart', 1)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (8, 2, CAST(N'2022-08-29T02:53:17.573' AS DateTime), N'Leonard', 1)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (9, 1, CAST(N'2022-08-29T02:53:17.573' AS DateTime), N'Howard', 2)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (10, 2, CAST(N'2022-08-29T02:53:17.573' AS DateTime), N'Howard', 2)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (11, 4, CAST(N'2022-08-29T02:53:17.573' AS DateTime), N'Howard', 2)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (12, 4, CAST(N'2022-08-29T02:53:17.573' AS DateTime), N'Rajesh', 3)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (13, 3, CAST(N'2022-08-29T02:53:17.573' AS DateTime), N'Rajesh', 3)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (14, 3, CAST(N'2022-08-29T02:53:17.573' AS DateTime), N'Sheldon', 4)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (15, 2, CAST(N'2022-08-29T02:53:17.577' AS DateTime), N'Stuart', 4)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (16, 4, CAST(N'2022-08-29T02:53:17.577' AS DateTime), N'Howard', 4)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (17, 3, CAST(N'2022-08-29T02:53:17.577' AS DateTime), N'Sheldon', 5)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (18, 2, CAST(N'2022-08-29T02:53:17.577' AS DateTime), N'Rajesh', 5)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (19, 4, CAST(N'2022-08-29T02:53:17.577' AS DateTime), N'Howard', 5)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (20, 4, CAST(N'2022-08-29T02:53:17.577' AS DateTime), N'Howard', 5)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (21, 3, CAST(N'2022-08-29T02:53:17.577' AS DateTime), N'Howard', 6)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (22, 1, CAST(N'2022-08-29T02:53:17.577' AS DateTime), N'Rajesh', 6)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (23, 4, CAST(N'2022-08-29T02:53:17.577' AS DateTime), N'Sheldon', 7)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (24, 3, CAST(N'2022-08-29T02:53:17.577' AS DateTime), N'Will', 7)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (25, 4, CAST(N'2022-08-29T02:53:17.577' AS DateTime), N'Stuart', 7)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (26, 2, CAST(N'2022-08-29T02:53:17.577' AS DateTime), N'Leonard', 7)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (27, 4, CAST(N'2022-08-29T02:53:17.577' AS DateTime), N'Leonard', 7)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (28, 4, CAST(N'2022-08-29T02:53:17.577' AS DateTime), N'Howard', 7)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (29, 4, CAST(N'2022-08-29T02:53:17.577' AS DateTime), N'Rajesh', 8)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (30, 3, CAST(N'2022-08-29T02:53:17.580' AS DateTime), N'Sheldon', 8)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (31, 1, CAST(N'2022-08-29T02:53:17.580' AS DateTime), N'Rajesh', 8)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (32, 2, CAST(N'2022-08-29T02:53:17.580' AS DateTime), N'Howard', 8)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (33, 4, CAST(N'2022-08-29T02:53:17.580' AS DateTime), N'Rajesh', 9)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (34, 2, CAST(N'2022-08-29T02:53:17.580' AS DateTime), N'Will', 9)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (35, 4, CAST(N'2022-08-29T02:53:17.580' AS DateTime), N'Sheldon', 9)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (36, 4, CAST(N'2022-08-29T02:53:17.580' AS DateTime), N'Sheldon', 9)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (37, 1, CAST(N'2022-08-29T02:53:17.580' AS DateTime), N'Howard', 9)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (38, 4, CAST(N'2022-08-29T02:53:17.580' AS DateTime), N'Leonard', 10)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (39, 3, CAST(N'2022-08-29T02:53:17.580' AS DateTime), N'Stuart', 10)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (40, 4, CAST(N'2022-08-29T02:53:17.583' AS DateTime), N'Stuart', 10)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (41, 3, CAST(N'2022-08-29T02:53:17.583' AS DateTime), N'Will', 10)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (42, 1, CAST(N'2022-08-29T02:53:17.583' AS DateTime), N'Leonard', 10)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (43, 3, CAST(N'2022-08-29T02:53:17.583' AS DateTime), N'Will', 11)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (44, 1, CAST(N'2022-08-29T02:53:17.583' AS DateTime), N'Stuart', 11)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (45, 1, CAST(N'2022-08-29T02:53:17.583' AS DateTime), N'Will', 11)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (46, 2, CAST(N'2022-08-29T02:53:17.583' AS DateTime), N'Leonard', 11)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (47, 2, CAST(N'2022-08-29T02:53:17.583' AS DateTime), N'Leonard', 12)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (48, 1, CAST(N'2022-08-29T02:53:17.587' AS DateTime), N'Leonard', 13)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (49, 1, CAST(N'2022-08-29T02:53:17.587' AS DateTime), N'Leonard', 13)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (50, 4, CAST(N'2022-08-29T02:53:17.587' AS DateTime), N'Will', 13)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (51, 4, CAST(N'2022-08-29T02:53:17.587' AS DateTime), N'Rajesh', 13)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (52, 2, CAST(N'2022-08-29T02:53:17.587' AS DateTime), N'Howard', 13)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (53, 3, CAST(N'2022-08-29T02:53:17.587' AS DateTime), N'Howard', 13)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (54, 3, CAST(N'2022-08-29T02:53:17.587' AS DateTime), N'Rajesh', 14)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (55, 2, CAST(N'2022-08-29T02:53:17.587' AS DateTime), N'Sheldon', 14)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (56, 3, CAST(N'2022-08-29T02:53:17.587' AS DateTime), N'Rajesh', 14)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (57, 4, CAST(N'2022-08-29T02:53:17.587' AS DateTime), N'Howard', 15)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (58, 2, CAST(N'2022-08-29T02:53:17.587' AS DateTime), N'Will', 15)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (59, 4, CAST(N'2022-08-29T02:53:17.590' AS DateTime), N'Will', 15)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (60, 4, CAST(N'2022-08-29T02:53:17.590' AS DateTime), N'Sheldon', 15)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (61, 1, CAST(N'2022-08-29T02:53:17.590' AS DateTime), N'Sheldon', 15)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (62, 2, CAST(N'2022-08-29T02:53:17.590' AS DateTime), N'Leonard', 16)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (63, 4, CAST(N'2022-08-29T02:53:17.590' AS DateTime), N'Rajesh', 16)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (64, 4, CAST(N'2022-08-29T02:53:17.590' AS DateTime), N'Howard', 16)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (65, 1, CAST(N'2022-08-29T02:53:17.593' AS DateTime), N'Stuart', 16)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (66, 3, CAST(N'2022-08-29T02:53:17.593' AS DateTime), N'Will', 16)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (67, 4, CAST(N'2022-08-29T02:53:17.597' AS DateTime), N'Rajesh', 16)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (68, 1, CAST(N'2022-08-29T02:53:17.597' AS DateTime), N'Stuart', 16)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (69, 4, CAST(N'2022-08-29T02:53:17.597' AS DateTime), N'Will', 16)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (70, 3, CAST(N'2022-08-29T02:53:17.597' AS DateTime), N'Leonard', 16)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (71, 4, CAST(N'2022-08-29T02:53:17.597' AS DateTime), N'Will', 17)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (72, 4, CAST(N'2022-08-29T02:53:17.597' AS DateTime), N'Sheldon', 17)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (73, 4, CAST(N'2022-08-29T02:53:17.597' AS DateTime), N'Sheldon', 17)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (74, 2, CAST(N'2022-08-29T02:53:17.600' AS DateTime), N'Rajesh', 17)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (75, 4, CAST(N'2022-08-29T02:53:17.600' AS DateTime), N'Rajesh', 17)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (76, 2, CAST(N'2022-08-29T02:53:17.600' AS DateTime), N'Leonard', 17)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (77, 2, CAST(N'2022-08-29T02:53:17.600' AS DateTime), N'Leonard', 17)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (78, 2, CAST(N'2022-08-29T02:53:17.600' AS DateTime), N'Leonard', 18)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (79, 2, CAST(N'2022-08-29T02:53:17.600' AS DateTime), N'Will', 18)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (80, 1, CAST(N'2022-08-29T02:53:17.600' AS DateTime), N'Sheldon', 18)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (81, 1, CAST(N'2022-08-29T02:53:17.600' AS DateTime), N'Leonard', 18)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (82, 2, CAST(N'2022-08-29T02:53:17.603' AS DateTime), N'Will', 19)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (83, 2, CAST(N'2022-08-29T02:53:17.603' AS DateTime), N'Leonard', 19)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (84, 1, CAST(N'2022-08-29T02:53:17.603' AS DateTime), N'Rajesh', 19)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (85, 2, CAST(N'2022-08-29T02:53:17.603' AS DateTime), N'Sheldon', 19)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (86, 2, CAST(N'2022-08-29T02:53:17.603' AS DateTime), N'Howard', 19)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (87, 1, CAST(N'2022-08-29T02:53:17.607' AS DateTime), N'Rajesh', 19)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (88, 2, CAST(N'2022-08-29T02:53:17.607' AS DateTime), N'Leonard', 19)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (89, 4, CAST(N'2022-08-29T02:53:17.607' AS DateTime), N'Rajesh', 19)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (90, 2, CAST(N'2022-08-29T02:53:17.607' AS DateTime), N'Stuart', 20)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (91, 1, CAST(N'2022-08-29T02:53:17.607' AS DateTime), N'Sheldon', 20)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (92, 3, CAST(N'2022-08-29T02:53:17.607' AS DateTime), N'Howard', 21)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (93, 2, CAST(N'2022-08-29T02:53:17.607' AS DateTime), N'Sheldon', 21)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (94, 2, CAST(N'2022-08-29T02:53:17.607' AS DateTime), N'Will', 22)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (95, 3, CAST(N'2022-08-29T02:53:17.610' AS DateTime), N'Howard', 22)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (96, 3, CAST(N'2022-08-29T02:53:17.610' AS DateTime), N'Sheldon', 22)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (97, 4, CAST(N'2022-08-29T02:53:17.610' AS DateTime), N'Rajesh', 22)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (98, 1, CAST(N'2022-08-29T02:53:17.610' AS DateTime), N'Leonard', 22)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (99, 1, CAST(N'2022-08-29T02:53:17.610' AS DateTime), N'Will', 23)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (100, 2, CAST(N'2022-08-29T02:53:17.613' AS DateTime), N'Will', 23)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (101, 2, CAST(N'2022-08-29T02:53:17.613' AS DateTime), N'Will', 23)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (102, 2, CAST(N'2022-08-29T02:53:17.613' AS DateTime), N'Rajesh', 23)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (103, 4, CAST(N'2022-08-29T02:53:17.613' AS DateTime), N'Will', 23)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (104, 2, CAST(N'2022-08-29T02:53:17.613' AS DateTime), N'Leonard', 23)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (105, 3, CAST(N'2022-08-29T02:53:17.617' AS DateTime), N'Will', 23)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (106, 1, CAST(N'2022-08-29T02:53:17.617' AS DateTime), N'Howard', 23)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (107, 4, CAST(N'2022-08-29T02:53:17.617' AS DateTime), N'Leonard', 23)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (108, 1, CAST(N'2022-08-29T02:53:17.617' AS DateTime), N'Rajesh', 24)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (109, 2, CAST(N'2022-08-29T02:53:17.617' AS DateTime), N'Will', 24)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (110, 1, CAST(N'2022-08-29T02:53:17.617' AS DateTime), N'Sheldon', 24)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (111, 4, CAST(N'2022-08-29T02:53:17.620' AS DateTime), N'Will', 24)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (112, 2, CAST(N'2022-08-29T02:53:17.620' AS DateTime), N'Sheldon', 24)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (113, 3, CAST(N'2022-08-29T02:53:17.620' AS DateTime), N'Stuart', 24)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (114, 4, CAST(N'2022-08-29T02:53:17.620' AS DateTime), N'Howard', 24)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (115, 3, CAST(N'2022-08-29T02:53:17.620' AS DateTime), N'Sheldon', 24)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (116, 3, CAST(N'2022-08-29T02:53:17.623' AS DateTime), N'Rajesh', 25)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (117, 1, CAST(N'2022-08-29T02:53:17.623' AS DateTime), N'Rajesh', 25)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (118, 2, CAST(N'2022-08-29T02:53:17.623' AS DateTime), N'Will', 26)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (119, 1, CAST(N'2022-08-29T02:53:17.627' AS DateTime), N'Stuart', 26)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (120, 3, CAST(N'2022-08-29T02:53:17.627' AS DateTime), N'Will', 26)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (121, 3, CAST(N'2022-08-29T02:53:17.627' AS DateTime), N'Will', 26)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (122, 1, CAST(N'2022-08-29T02:53:17.627' AS DateTime), N'Howard', 27)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (123, 4, CAST(N'2022-08-29T02:53:17.627' AS DateTime), N'Will', 27)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (124, 1, CAST(N'2022-08-29T02:53:17.627' AS DateTime), N'Leonard', 27)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (125, 4, CAST(N'2022-08-29T02:53:17.630' AS DateTime), N'Leonard', 27)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (126, 4, CAST(N'2022-08-29T02:53:17.630' AS DateTime), N'Howard', 27)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (127, 1, CAST(N'2022-08-29T02:53:17.630' AS DateTime), N'Howard', 27)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (128, 2, CAST(N'2022-08-29T02:53:17.630' AS DateTime), N'Will', 27)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (129, 3, CAST(N'2022-08-29T02:53:17.630' AS DateTime), N'Howard', 28)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (130, 4, CAST(N'2022-08-29T02:53:17.633' AS DateTime), N'Leonard', 28)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (131, 4, CAST(N'2022-08-29T02:53:17.633' AS DateTime), N'Rajesh', 28)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (132, 3, CAST(N'2022-08-29T02:53:17.633' AS DateTime), N'Will', 28)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (133, 2, CAST(N'2022-08-29T02:53:17.633' AS DateTime), N'Leonard', 29)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (134, 4, CAST(N'2022-08-29T02:53:17.637' AS DateTime), N'Howard', 29)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (135, 1, CAST(N'2022-08-29T02:53:17.637' AS DateTime), N'Sheldon', 29)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (136, 4, CAST(N'2022-08-29T02:53:17.637' AS DateTime), N'Howard', 29)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (137, 3, CAST(N'2022-08-29T02:53:17.637' AS DateTime), N'Howard', 29)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (138, 2, CAST(N'2022-08-29T02:53:17.637' AS DateTime), N'Sheldon', 29)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (139, 2, CAST(N'2022-08-29T02:53:17.637' AS DateTime), N'Will', 30)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (140, 2, CAST(N'2022-08-29T02:53:17.640' AS DateTime), N'Stuart', 30)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (141, 2, CAST(N'2022-08-29T02:53:17.640' AS DateTime), N'Rajesh', 30)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (142, 4, CAST(N'2022-08-29T02:53:17.643' AS DateTime), N'Rajesh', 30)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (143, 1, CAST(N'2022-08-29T02:53:17.643' AS DateTime), N'Will', 31)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (144, 3, CAST(N'2022-08-29T02:53:17.643' AS DateTime), N'Rajesh', 31)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (145, 3, CAST(N'2022-08-29T02:53:17.647' AS DateTime), N'Howard', 31)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (146, 4, CAST(N'2022-08-29T02:53:17.647' AS DateTime), N'Howard', 32)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (147, 3, CAST(N'2022-08-29T02:53:17.647' AS DateTime), N'Stuart', 32)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (148, 1, CAST(N'2022-08-29T02:53:17.647' AS DateTime), N'Howard', 32)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (149, 3, CAST(N'2022-08-29T02:53:17.647' AS DateTime), N'Howard', 32)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (150, 4, CAST(N'2022-08-29T02:53:17.650' AS DateTime), N'Will', 32)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (151, 3, CAST(N'2022-08-29T02:53:17.650' AS DateTime), N'Howard', 32)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (152, 3, CAST(N'2022-08-29T02:53:17.650' AS DateTime), N'Howard', 32)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (153, 2, CAST(N'2022-08-29T02:53:17.650' AS DateTime), N'Sheldon', 32)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (154, 1, CAST(N'2022-08-29T02:53:17.653' AS DateTime), N'Will', 32)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (155, 2, CAST(N'2022-08-29T02:53:17.653' AS DateTime), N'Howard', 33)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (156, 3, CAST(N'2022-08-29T02:53:17.653' AS DateTime), N'Will', 33)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (157, 2, CAST(N'2022-08-29T02:53:17.653' AS DateTime), N'Stuart', 33)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (158, 2, CAST(N'2022-08-29T02:53:17.657' AS DateTime), N'Will', 33)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (159, 2, CAST(N'2022-08-29T02:53:17.657' AS DateTime), N'Howard', 33)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (160, 2, CAST(N'2022-08-29T02:53:17.657' AS DateTime), N'Stuart', 33)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (161, 4, CAST(N'2022-08-29T02:53:17.657' AS DateTime), N'Leonard', 34)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (162, 4, CAST(N'2022-08-29T02:53:17.657' AS DateTime), N'Will', 34)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (163, 4, CAST(N'2022-08-29T02:53:17.660' AS DateTime), N'Stuart', 34)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (164, 4, CAST(N'2022-08-29T02:53:17.660' AS DateTime), N'Sheldon', 34)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (165, 4, CAST(N'2022-08-29T02:53:17.660' AS DateTime), N'Will', 34)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (166, 2, CAST(N'2022-08-29T02:53:17.663' AS DateTime), N'Howard', 34)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (167, 2, CAST(N'2022-08-29T02:53:17.663' AS DateTime), N'Leonard', 35)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (168, 4, CAST(N'2022-08-29T02:53:17.663' AS DateTime), N'Leonard', 36)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (169, 3, CAST(N'2022-08-29T02:53:17.667' AS DateTime), N'Howard', 36)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (170, 2, CAST(N'2022-08-29T02:53:17.667' AS DateTime), N'Will', 36)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (171, 3, CAST(N'2022-08-29T02:53:17.667' AS DateTime), N'Stuart', 36)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (172, 4, CAST(N'2022-08-29T02:53:17.667' AS DateTime), N'Rajesh', 36)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (173, 2, CAST(N'2022-08-29T02:53:17.667' AS DateTime), N'Rajesh', 36)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (174, 1, CAST(N'2022-08-29T02:53:17.670' AS DateTime), N'Stuart', 36)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (175, 2, CAST(N'2022-08-29T02:53:17.670' AS DateTime), N'Rajesh', 37)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (176, 4, CAST(N'2022-08-29T02:53:17.670' AS DateTime), N'Leonard', 37)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (177, 3, CAST(N'2022-08-29T02:53:17.673' AS DateTime), N'Stuart', 37)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (178, 4, CAST(N'2022-08-29T02:53:17.673' AS DateTime), N'Rajesh', 37)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (179, 3, CAST(N'2022-08-29T02:53:17.673' AS DateTime), N'Sheldon', 38)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (180, 2, CAST(N'2022-08-29T02:53:17.677' AS DateTime), N'Howard', 39)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (181, 3, CAST(N'2022-08-29T02:53:17.677' AS DateTime), N'Sheldon', 39)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (182, 3, CAST(N'2022-08-29T02:53:17.677' AS DateTime), N'Stuart', 39)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (183, 3, CAST(N'2022-08-29T02:53:17.677' AS DateTime), N'Leonard', 39)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (184, 4, CAST(N'2022-08-29T02:53:17.680' AS DateTime), N'Rajesh', 40)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (185, 2, CAST(N'2022-08-29T02:53:17.680' AS DateTime), N'Leonard', 40)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (186, 2, CAST(N'2022-08-29T02:53:17.680' AS DateTime), N'Howard', 40)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (187, 3, CAST(N'2022-08-29T02:53:17.680' AS DateTime), N'Stuart', 40)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (188, 3, CAST(N'2022-08-29T02:53:17.683' AS DateTime), N'Leonard', 40)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (189, 3, CAST(N'2022-08-29T02:53:17.683' AS DateTime), N'Will', 41)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (190, 4, CAST(N'2022-08-29T02:53:17.683' AS DateTime), N'Sheldon', 41)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (191, 4, CAST(N'2022-08-29T02:53:17.687' AS DateTime), N'Rajesh', 41)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (192, 4, CAST(N'2022-08-29T02:53:17.687' AS DateTime), N'Leonard', 41)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (193, 2, CAST(N'2022-08-29T02:53:17.687' AS DateTime), N'Will', 42)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (194, 1, CAST(N'2022-08-29T02:53:17.687' AS DateTime), N'Stuart', 42)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (195, 1, CAST(N'2022-08-29T02:53:17.690' AS DateTime), N'Will', 42)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (196, 1, CAST(N'2022-08-29T02:53:17.690' AS DateTime), N'Rajesh', 42)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (197, 3, CAST(N'2022-08-29T02:53:17.690' AS DateTime), N'Howard', 42)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (198, 3, CAST(N'2022-08-29T02:53:17.693' AS DateTime), N'Will', 42)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (199, 1, CAST(N'2022-08-29T02:53:17.693' AS DateTime), N'Leonard', 43)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (200, 4, CAST(N'2022-08-29T02:53:17.693' AS DateTime), N'Leonard', 43)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (201, 1, CAST(N'2022-08-29T02:53:17.697' AS DateTime), N'Howard', 43)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (202, 3, CAST(N'2022-08-29T02:53:17.697' AS DateTime), N'Howard', 43)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (203, 2, CAST(N'2022-08-29T02:53:17.697' AS DateTime), N'Rajesh', 43)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (204, 2, CAST(N'2022-08-29T02:53:17.697' AS DateTime), N'Rajesh', 44)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (205, 1, CAST(N'2022-08-29T02:53:17.700' AS DateTime), N'Will', 44)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (206, 2, CAST(N'2022-08-29T02:53:17.700' AS DateTime), N'Sheldon', 44)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (207, 4, CAST(N'2022-08-29T02:53:17.700' AS DateTime), N'Leonard', 44)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (208, 4, CAST(N'2022-08-29T02:53:17.703' AS DateTime), N'Will', 44)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (209, 2, CAST(N'2022-08-29T02:53:17.703' AS DateTime), N'Will', 45)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (210, 2, CAST(N'2022-08-29T02:53:17.703' AS DateTime), N'Stuart', 45)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (211, 4, CAST(N'2022-08-29T02:53:17.707' AS DateTime), N'Howard', 45)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (212, 1, CAST(N'2022-08-29T02:53:17.707' AS DateTime), N'Rajesh', 45)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (213, 3, CAST(N'2022-08-29T02:53:17.707' AS DateTime), N'Rajesh', 45)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (214, 3, CAST(N'2022-08-29T02:53:17.707' AS DateTime), N'Howard', 46)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (215, 2, CAST(N'2022-08-29T02:53:17.710' AS DateTime), N'Sheldon', 46)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (216, 2, CAST(N'2022-08-29T02:53:17.710' AS DateTime), N'Howard', 46)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (217, 2, CAST(N'2022-08-29T02:53:17.710' AS DateTime), N'Leonard', 46)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (218, 3, CAST(N'2022-08-29T02:53:17.713' AS DateTime), N'Leonard', 46)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (219, 4, CAST(N'2022-08-29T02:53:17.713' AS DateTime), N'Will', 46)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (220, 1, CAST(N'2022-08-29T02:53:17.717' AS DateTime), N'Howard', 47)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (221, 1, CAST(N'2022-08-29T02:53:17.717' AS DateTime), N'Sheldon', 47)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (222, 3, CAST(N'2022-08-29T02:53:17.717' AS DateTime), N'Sheldon', 47)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (223, 4, CAST(N'2022-08-29T02:53:17.717' AS DateTime), N'Sheldon', 47)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (224, 2, CAST(N'2022-08-29T02:53:17.720' AS DateTime), N'Howard', 47)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (225, 2, CAST(N'2022-08-29T02:53:17.720' AS DateTime), N'Rajesh', 47)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (226, 4, CAST(N'2022-08-29T02:53:17.720' AS DateTime), N'Rajesh', 47)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (227, 2, CAST(N'2022-08-29T02:53:17.723' AS DateTime), N'Leonard', 47)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (228, 1, CAST(N'2022-08-29T02:53:17.723' AS DateTime), N'Rajesh', 48)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (229, 3, CAST(N'2022-08-29T02:53:17.723' AS DateTime), N'Will', 48)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (230, 1, CAST(N'2022-08-29T02:53:17.727' AS DateTime), N'Will', 48)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (231, 4, CAST(N'2022-08-29T02:53:17.727' AS DateTime), N'Sheldon', 48)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (232, 1, CAST(N'2022-08-29T02:53:17.727' AS DateTime), N'Howard', 49)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (233, 1, CAST(N'2022-08-29T02:53:17.730' AS DateTime), N'Howard', 49)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (234, 4, CAST(N'2022-08-29T02:53:17.730' AS DateTime), N'Will', 49)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (235, 3, CAST(N'2022-08-29T02:53:17.730' AS DateTime), N'Rajesh', 49)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (236, 1, CAST(N'2022-08-29T02:53:17.733' AS DateTime), N'Sheldon', 49)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (237, 1, CAST(N'2022-08-29T02:53:17.733' AS DateTime), N'Will', 49)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (238, 2, CAST(N'2022-08-29T02:53:17.733' AS DateTime), N'Will', 49)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (239, 4, CAST(N'2022-08-29T02:53:17.737' AS DateTime), N'Howard', 49)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (240, 4, CAST(N'2022-08-29T02:53:17.737' AS DateTime), N'Howard', 50)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (241, 2, CAST(N'2022-08-29T02:53:17.737' AS DateTime), N'Sheldon', 51)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (242, 1, CAST(N'2022-08-29T02:53:17.740' AS DateTime), N'Will', 51)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (243, 2, CAST(N'2022-08-29T02:53:17.740' AS DateTime), N'Howard', 51)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (244, 1, CAST(N'2022-08-29T02:53:17.740' AS DateTime), N'Leonard', 51)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (245, 2, CAST(N'2022-08-29T02:53:17.743' AS DateTime), N'Sheldon', 51)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (246, 1, CAST(N'2022-08-29T02:53:17.743' AS DateTime), N'Sheldon', 51)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (247, 2, CAST(N'2022-08-29T02:53:17.747' AS DateTime), N'Rajesh', 51)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (248, 4, CAST(N'2022-08-29T02:53:17.747' AS DateTime), N'Rajesh', 51)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (249, 2, CAST(N'2022-08-29T02:53:17.747' AS DateTime), N'Howard', 51)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (250, 1, CAST(N'2022-08-29T02:53:17.747' AS DateTime), N'Rajesh', 52)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (251, 4, CAST(N'2022-08-29T02:53:17.750' AS DateTime), N'Stuart', 52)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (252, 3, CAST(N'2022-08-29T02:53:17.750' AS DateTime), N'Stuart', 52)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (253, 2, CAST(N'2022-08-29T02:53:17.753' AS DateTime), N'Rajesh', 52)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (254, 2, CAST(N'2022-08-29T02:53:17.753' AS DateTime), N'Leonard', 52)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (255, 3, CAST(N'2022-08-29T02:53:17.753' AS DateTime), N'Will', 53)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (256, 4, CAST(N'2022-08-29T02:53:17.757' AS DateTime), N'Rajesh', 53)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (257, 1, CAST(N'2022-08-29T02:53:17.757' AS DateTime), N'Leonard', 53)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (258, 2, CAST(N'2022-08-29T02:53:17.757' AS DateTime), N'Rajesh', 53)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (259, 2, CAST(N'2022-08-29T02:53:17.760' AS DateTime), N'Leonard', 53)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (260, 1, CAST(N'2022-08-29T02:53:17.760' AS DateTime), N'Sheldon', 53)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (261, 3, CAST(N'2022-08-29T02:53:17.760' AS DateTime), N'Stuart', 53)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (262, 4, CAST(N'2022-08-29T02:53:17.763' AS DateTime), N'Sheldon', 53)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (263, 3, CAST(N'2022-08-29T02:53:17.763' AS DateTime), N'Will', 53)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (264, 2, CAST(N'2022-08-29T02:53:17.767' AS DateTime), N'Stuart', 54)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (265, 1, CAST(N'2022-08-29T02:53:17.767' AS DateTime), N'Leonard', 54)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (266, 4, CAST(N'2022-08-29T02:53:17.767' AS DateTime), N'Stuart', 54)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (267, 2, CAST(N'2022-08-29T02:53:17.770' AS DateTime), N'Howard', 55)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (268, 1, CAST(N'2022-08-29T02:53:17.770' AS DateTime), N'Howard', 55)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (269, 1, CAST(N'2022-08-29T02:53:17.770' AS DateTime), N'Rajesh', 55)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (270, 1, CAST(N'2022-08-29T02:53:17.773' AS DateTime), N'Leonard', 55)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (271, 2, CAST(N'2022-08-29T02:53:17.773' AS DateTime), N'Stuart', 55)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (272, 2, CAST(N'2022-08-29T02:53:17.777' AS DateTime), N'Rajesh', 56)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (273, 3, CAST(N'2022-08-29T02:53:17.777' AS DateTime), N'Sheldon', 56)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (274, 3, CAST(N'2022-08-29T02:53:17.777' AS DateTime), N'Sheldon', 56)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (275, 1, CAST(N'2022-08-29T02:53:17.780' AS DateTime), N'Sheldon', 56)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (276, 4, CAST(N'2022-08-29T02:53:17.780' AS DateTime), N'Leonard', 56)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (277, 2, CAST(N'2022-08-29T02:53:17.783' AS DateTime), N'Howard', 56)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (278, 2, CAST(N'2022-08-29T02:53:17.783' AS DateTime), N'Leonard', 56)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (279, 4, CAST(N'2022-08-29T02:53:17.783' AS DateTime), N'Howard', 57)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (280, 1, CAST(N'2022-08-29T02:53:17.787' AS DateTime), N'Stuart', 57)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (281, 3, CAST(N'2022-08-29T02:53:17.787' AS DateTime), N'Leonard', 57)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (282, 1, CAST(N'2022-08-29T02:53:17.787' AS DateTime), N'Sheldon', 57)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (283, 4, CAST(N'2022-08-29T02:53:17.790' AS DateTime), N'Leonard', 57)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (284, 3, CAST(N'2022-08-29T02:53:17.790' AS DateTime), N'Will', 57)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (285, 3, CAST(N'2022-08-29T02:53:17.793' AS DateTime), N'Sheldon', 58)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (286, 4, CAST(N'2022-08-29T02:53:17.793' AS DateTime), N'Howard', 58)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (287, 3, CAST(N'2022-08-29T02:53:17.797' AS DateTime), N'Sheldon', 59)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (288, 1, CAST(N'2022-08-29T02:53:17.797' AS DateTime), N'Rajesh', 59)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (289, 2, CAST(N'2022-08-29T02:53:17.797' AS DateTime), N'Leonard', 59)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (290, 4, CAST(N'2022-08-29T02:53:17.800' AS DateTime), N'Rajesh', 59)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (291, 1, CAST(N'2022-08-29T02:53:17.800' AS DateTime), N'Howard', 59)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (292, 4, CAST(N'2022-08-29T02:53:17.803' AS DateTime), N'Stuart', 59)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (293, 3, CAST(N'2022-08-29T02:53:17.803' AS DateTime), N'Leonard', 59)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (294, 3, CAST(N'2022-08-29T02:53:17.807' AS DateTime), N'Leonard', 59)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (295, 3, CAST(N'2022-08-29T02:53:17.807' AS DateTime), N'Leonard', 60)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (296, 3, CAST(N'2022-08-29T02:53:17.807' AS DateTime), N'Howard', 60)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (297, 1, CAST(N'2022-08-29T02:53:17.810' AS DateTime), N'Will', 60)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (298, 2, CAST(N'2022-08-29T02:53:17.810' AS DateTime), N'Rajesh', 60)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (299, 1, CAST(N'2022-08-29T02:53:17.810' AS DateTime), N'Leonard', 60)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (300, 4, CAST(N'2022-08-29T02:53:17.813' AS DateTime), N'Will', 60)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (301, 2, CAST(N'2022-08-29T02:53:17.813' AS DateTime), N'Sheldon', 60)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (302, 3, CAST(N'2022-08-29T02:53:17.817' AS DateTime), N'Stuart', 61)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (303, 3, CAST(N'2022-08-29T02:53:17.817' AS DateTime), N'Stuart', 61)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (304, 2, CAST(N'2022-08-29T02:53:17.820' AS DateTime), N'Howard', 61)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (305, 2, CAST(N'2022-08-29T02:53:17.820' AS DateTime), N'Sheldon', 61)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (306, 4, CAST(N'2022-08-29T02:53:17.823' AS DateTime), N'Will', 61)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (307, 3, CAST(N'2022-08-29T02:53:17.823' AS DateTime), N'Sheldon', 62)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (308, 1, CAST(N'2022-08-29T02:53:17.823' AS DateTime), N'Leonard', 62)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (309, 4, CAST(N'2022-08-29T02:53:17.827' AS DateTime), N'Rajesh', 62)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (310, 4, CAST(N'2022-08-29T02:53:17.827' AS DateTime), N'Rajesh', 63)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (311, 3, CAST(N'2022-08-29T02:53:17.830' AS DateTime), N'Will', 63)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (312, 1, CAST(N'2022-08-29T02:53:17.830' AS DateTime), N'Rajesh', 63)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (313, 4, CAST(N'2022-08-29T02:53:17.830' AS DateTime), N'Stuart', 63)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (314, 4, CAST(N'2022-08-29T02:53:17.833' AS DateTime), N'Leonard', 63)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (315, 4, CAST(N'2022-08-29T02:53:17.837' AS DateTime), N'Rajesh', 64)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (316, 4, CAST(N'2022-08-29T02:53:17.837' AS DateTime), N'Rajesh', 64)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (317, 1, CAST(N'2022-08-29T02:53:17.837' AS DateTime), N'Howard', 65)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (318, 1, CAST(N'2022-08-29T02:53:17.840' AS DateTime), N'Rajesh', 66)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (319, 1, CAST(N'2022-08-29T02:53:17.840' AS DateTime), N'Stuart', 67)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (320, 4, CAST(N'2022-08-29T02:53:17.843' AS DateTime), N'Howard', 67)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (321, 1, CAST(N'2022-08-29T02:53:17.843' AS DateTime), N'Leonard', 67)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (322, 3, CAST(N'2022-08-29T02:53:17.847' AS DateTime), N'Stuart', 67)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (323, 1, CAST(N'2022-08-29T02:53:17.847' AS DateTime), N'Leonard', 68)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (324, 4, CAST(N'2022-08-29T02:53:17.847' AS DateTime), N'Howard', 68)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (325, 3, CAST(N'2022-08-29T02:53:17.850' AS DateTime), N'Stuart', 68)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (326, 3, CAST(N'2022-08-29T02:53:17.850' AS DateTime), N'Will', 68)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (327, 1, CAST(N'2022-08-29T02:53:17.853' AS DateTime), N'Howard', 68)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (328, 3, CAST(N'2022-08-29T02:53:17.853' AS DateTime), N'Howard', 68)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (329, 1, CAST(N'2022-08-29T02:53:17.857' AS DateTime), N'Sheldon', 68)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (330, 1, CAST(N'2022-08-29T02:53:17.857' AS DateTime), N'Leonard', 69)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (331, 3, CAST(N'2022-08-29T02:53:17.860' AS DateTime), N'Rajesh', 69)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (332, 4, CAST(N'2022-08-29T02:53:17.860' AS DateTime), N'Howard', 69)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (333, 3, CAST(N'2022-08-29T02:53:17.860' AS DateTime), N'Rajesh', 69)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (334, 4, CAST(N'2022-08-29T02:53:17.863' AS DateTime), N'Rajesh', 69)
GO
INSERT [dbo].[Ratings] ([Id], [Rate], [Date], [Name], [HeroId]) VALUES (335, 3, CAST(N'2022-08-29T02:53:17.863' AS DateTime), N'Sheldon', 69)
GO
SET IDENTITY_INSERT [dbo].[Ratings] OFF
GO
ALTER TABLE [dbo].[Heroes] ADD  DEFAULT ((0)) FOR [Age]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Ratings_dbo.Heroes_HeroId] FOREIGN KEY([HeroId])
REFERENCES [dbo].[Heroes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_dbo.Ratings_dbo.Heroes_HeroId]
GO


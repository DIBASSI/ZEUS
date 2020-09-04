
CREATE TABLE [dbo].[ListeAbonne](
	[Abonne] [varchar](50) NOT NULL,
	[AbonneCode] [varchar](10) NOT NULL,
	[Email] [varchar](200) NOT NULL,
	[ExtensionDuFichier] [bit] NOT NULL,
	[FormatDuRendu] [varchar](20) NOT NULL,
	[Site] [varchar](50) NOT NULL,
	[SiteCode] [varchar](10) NOT NULL,
	[SiteUniqueName] [varchar](50) NOT NULL
) ON [PRIMARY]

GO




USE [Hub_Banques_Depositaires]
GO
/****** Object:  ForeignKey [FK_DWH_LOGS_CTRL]    Script Date: 01/24/2019 10:17:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_LOGS_CTRL]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOGS_CTRL]'))
ALTER TABLE [dbo].[DWH_LOGS_CTRL] DROP CONSTRAINT [FK_DWH_LOGS_CTRL]
GO
/****** Object:  ForeignKey [FK_DWH_LOGS_CTRL1]    Script Date: 01/24/2019 10:17:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_LOGS_CTRL1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOGS_CTRL]'))
ALTER TABLE [dbo].[DWH_LOGS_CTRL] DROP CONSTRAINT [FK_DWH_LOGS_CTRL1]
GO
/****** Object:  ForeignKey [FK_DWH_LOGS]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_LOGS]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOGS]'))
ALTER TABLE [dbo].[DWH_LOGS] DROP CONSTRAINT [FK_DWH_LOGS]
GO
/****** Object:  ForeignKey [FK_DHW_LOG_FILES_HISTORY]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DHW_LOG_FILES_HISTORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOG_FILES_HISTORY]'))
ALTER TABLE [dbo].[DWH_LOG_FILES_HISTORY] DROP CONSTRAINT [FK_DHW_LOG_FILES_HISTORY]
GO
/****** Object:  ForeignKey [FK_DHW_LOG_FILES_HISTORY1]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DHW_LOG_FILES_HISTORY1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOG_FILES_HISTORY]'))
ALTER TABLE [dbo].[DWH_LOG_FILES_HISTORY] DROP CONSTRAINT [FK_DHW_LOG_FILES_HISTORY1]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_PORTFOLIO]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_PORTFOLIO]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_PORTFOLIO]'))
ALTER TABLE [dbo].[DWH_DATA_PORTFOLIO] DROP CONSTRAINT [FK_DWH_DATA_PORTFOLIO]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_INSTRUMENTS_NOMINAL]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_INSTRUMENTS_NOMINAL]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_INSTRUMENTS_NOMINAL]'))
ALTER TABLE [dbo].[DWH_DATA_INSTRUMENTS_NOMINAL] DROP CONSTRAINT [FK_DWH_DATA_INSTRUMENTS_NOMINAL]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_INSTRUMENTS_NOMINAL1]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_INSTRUMENTS_NOMINAL1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_INSTRUMENTS_NOMINAL]'))
ALTER TABLE [dbo].[DWH_DATA_INSTRUMENTS_NOMINAL] DROP CONSTRAINT [FK_DWH_DATA_INSTRUMENTS_NOMINAL1]
GO
/****** Object:  ForeignKey [FK_PK_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PK_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]') AND parent_object_id = OBJECT_ID(N'[dbo].[EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]'))
ALTER TABLE [dbo].[EXP_DATA_HOLDINGS_TRANSACTIONS_MT940] DROP CONSTRAINT [FK_PK_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_HOLDINGS]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_HOLDINGS]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_HOLDINGS]'))
ALTER TABLE [dbo].[DWH_DATA_HOLDINGS] DROP CONSTRAINT [FK_DWH_DATA_HOLDINGS]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_HOLDINGS1]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_HOLDINGS1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_HOLDINGS]'))
ALTER TABLE [dbo].[DWH_DATA_HOLDINGS] DROP CONSTRAINT [FK_DWH_DATA_HOLDINGS1]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_TRANSACTIONS]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] DROP CONSTRAINT [FK_DWH_DATA_TRANSACTIONS]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_TRANSACTIONS1]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] DROP CONSTRAINT [FK_DWH_DATA_TRANSACTIONS1]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_TRANSACTIONS2]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS2]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] DROP CONSTRAINT [FK_DWH_DATA_TRANSACTIONS2]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_TRANSACTIONS3]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS3]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] DROP CONSTRAINT [FK_DWH_DATA_TRANSACTIONS3]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_TRANSACTIONS4]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS4]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] DROP CONSTRAINT [FK_DWH_DATA_TRANSACTIONS4]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_TRANSACTIONS5]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS5]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] DROP CONSTRAINT [FK_DWH_DATA_TRANSACTIONS5]
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_DATA_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_DATA_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DWH_DATA_HOLDINGS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_DATA_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_DATA_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DWH_DATA_TRANSACTIONS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_DATA_INSTRUMENTS_NOMINAL_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_DATA_INSTRUMENTS_NOMINAL_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DWH_DATA_INSTRUMENTS_NOMINAL_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_DATA_PORTFOLIO_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_DATA_PORTFOLIO_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DWH_DATA_PORTFOLIO_Insert]
GO
/****** Object:  Table [dbo].[DWH_DATA_TRANSACTIONS]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] DROP CONSTRAINT [FK_DWH_DATA_TRANSACTIONS]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] DROP CONSTRAINT [FK_DWH_DATA_TRANSACTIONS1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS2]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] DROP CONSTRAINT [FK_DWH_DATA_TRANSACTIONS2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS3]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] DROP CONSTRAINT [FK_DWH_DATA_TRANSACTIONS3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS4]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] DROP CONSTRAINT [FK_DWH_DATA_TRANSACTIONS4]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS5]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] DROP CONSTRAINT [FK_DWH_DATA_TRANSACTIONS5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]') AND type in (N'U'))
DROP TABLE [dbo].[DWH_DATA_TRANSACTIONS]
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_LOG_FILES_HISTORY_Update]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_LOG_FILES_HISTORY_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DWH_LOG_FILES_HISTORY_Update]
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_LOGS_CTRL_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_LOGS_CTRL_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DWH_LOGS_CTRL_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_LOGS_Insert_Error]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_LOGS_Insert_Error]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DWH_LOGS_Insert_Error]
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_LOGS_Insert_Info]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_LOGS_Insert_Info]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DWH_LOGS_Insert_Info]
GO
/****** Object:  Table [dbo].[DWH_DATA_HOLDINGS]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_HOLDINGS]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_HOLDINGS]'))
ALTER TABLE [dbo].[DWH_DATA_HOLDINGS] DROP CONSTRAINT [FK_DWH_DATA_HOLDINGS]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_HOLDINGS1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_HOLDINGS]'))
ALTER TABLE [dbo].[DWH_DATA_HOLDINGS] DROP CONSTRAINT [FK_DWH_DATA_HOLDINGS1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_DATA_HOLDINGS]') AND type in (N'U'))
DROP TABLE [dbo].[DWH_DATA_HOLDINGS]
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_HOLDINGS_VMOB_TCN_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_HOLDINGS_VMOB_TCN_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_EXP_DATA_HOLDINGS_VMOB_TCN_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_TRANSACTIONS_CHANGE_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_TRANSACTIONS_CHANGE_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_EXP_DATA_TRANSACTIONS_CHANGE_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_TRANSACTIONS_OPTI_FUTU_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_TRANSACTIONS_OPTI_FUTU_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_EXP_DATA_TRANSACTIONS_OPTI_FUTU_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_TRANSACTIONS_VMOB_TCN_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_TRANSACTIONS_VMOB_TCN_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_EXP_DATA_TRANSACTIONS_VMOB_TCN_Insert]
GO
/****** Object:  Table [dbo].[EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PK_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]') AND parent_object_id = OBJECT_ID(N'[dbo].[EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]'))
ALTER TABLE [dbo].[EXP_DATA_HOLDINGS_TRANSACTIONS_MT940] DROP CONSTRAINT [FK_PK_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]') AND type in (N'U'))
DROP TABLE [dbo].[EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]
GO
/****** Object:  Table [dbo].[DWH_DATA_INSTRUMENTS_NOMINAL]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_INSTRUMENTS_NOMINAL]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_INSTRUMENTS_NOMINAL]'))
ALTER TABLE [dbo].[DWH_DATA_INSTRUMENTS_NOMINAL] DROP CONSTRAINT [FK_DWH_DATA_INSTRUMENTS_NOMINAL]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_INSTRUMENTS_NOMINAL1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_INSTRUMENTS_NOMINAL]'))
ALTER TABLE [dbo].[DWH_DATA_INSTRUMENTS_NOMINAL] DROP CONSTRAINT [FK_DWH_DATA_INSTRUMENTS_NOMINAL1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_DATA_INSTRUMENTS_NOMINAL]') AND type in (N'U'))
DROP TABLE [dbo].[DWH_DATA_INSTRUMENTS_NOMINAL]
GO
/****** Object:  Table [dbo].[DWH_DATA_PORTFOLIO]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_PORTFOLIO]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_PORTFOLIO]'))
ALTER TABLE [dbo].[DWH_DATA_PORTFOLIO] DROP CONSTRAINT [FK_DWH_DATA_PORTFOLIO]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_DATA_PORTFOLIO]') AND type in (N'U'))
DROP TABLE [dbo].[DWH_DATA_PORTFOLIO]
GO
/****** Object:  Table [dbo].[DWH_LOG_FILES_HISTORY]    Script Date: 01/24/2019 10:17:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DHW_LOG_FILES_HISTORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOG_FILES_HISTORY]'))
ALTER TABLE [dbo].[DWH_LOG_FILES_HISTORY] DROP CONSTRAINT [FK_DHW_LOG_FILES_HISTORY]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DHW_LOG_FILES_HISTORY1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOG_FILES_HISTORY]'))
ALTER TABLE [dbo].[DWH_LOG_FILES_HISTORY] DROP CONSTRAINT [FK_DHW_LOG_FILES_HISTORY1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_LOG_FILES_HISTORY]') AND type in (N'U'))
DROP TABLE [dbo].[DWH_LOG_FILES_HISTORY]
GO
/****** Object:  Table [dbo].[DWH_LOGS]    Script Date: 01/24/2019 10:17:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_LOGS]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOGS]'))
ALTER TABLE [dbo].[DWH_LOGS] DROP CONSTRAINT [FK_DWH_LOGS]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__DWH_LOGS__TMS__3E48EDC1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DWH_LOGS] DROP CONSTRAINT [DF__DWH_LOGS__TMS__3E48EDC1]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_LOGS]') AND type in (N'U'))
DROP TABLE [dbo].[DWH_LOGS]
GO
/****** Object:  Table [dbo].[DWH_LOGS_CTRL]    Script Date: 01/24/2019 10:17:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_LOGS_CTRL]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOGS_CTRL]'))
ALTER TABLE [dbo].[DWH_LOGS_CTRL] DROP CONSTRAINT [FK_DWH_LOGS_CTRL]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_LOGS_CTRL1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOGS_CTRL]'))
ALTER TABLE [dbo].[DWH_LOGS_CTRL] DROP CONSTRAINT [FK_DWH_LOGS_CTRL1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_LOGS_CTRL]') AND type in (N'U'))
DROP TABLE [dbo].[DWH_LOGS_CTRL]
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_HOLDINGS_CAT_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_HOLDINGS_CAT_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_EXP_DATA_HOLDINGS_CAT_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_HOLDINGS_CAT_SWAP_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_HOLDINGS_CAT_SWAP_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_EXP_DATA_HOLDINGS_CAT_SWAP_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_HOLDINGS_OPTI_FUTU_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_HOLDINGS_OPTI_FUTU_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_EXP_DATA_HOLDINGS_OPTI_FUTU_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_DATA_INSTRUMENTS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_DATA_INSTRUMENTS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DWH_DATA_INSTRUMENTS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_LOG_BATCHS_HISTORY_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_LOG_BATCHS_HISTORY_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DWH_LOG_BATCHS_HISTORY_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_LOG_BATCHS_HISTORY_Update]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_LOG_BATCHS_HISTORY_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DWH_LOG_BATCHS_HISTORY_Update]
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_LOG_FILES_HISTORY_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_LOG_FILES_HISTORY_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DWH_LOG_FILES_HISTORY_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_BANCA_PROFILO_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_BANCA_PROFILO_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_BANCA_PROFILO_HOLDINGS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_BANCA_PROFILO_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_BANCA_PROFILO_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_BANCA_PROFILO_TRANSACTIONS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_BMM_AVIS_OP_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_BMM_AVIS_OP_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_BMM_AVIS_OP_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_BMM_ETBAC_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_BMM_ETBAC_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_BMM_ETBAC_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_BMM_STOCK_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_BMM_STOCK_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_BMM_STOCK_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_CSI_MOVLIQ_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_CSI_MOVLIQ_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_CSI_MOVLIQ_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_CSI_MOVTIT_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_CSI_MOVTIT_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_CSI_MOVTIT_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_CSI_POSIZ_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_CSI_POSIZ_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_CSI_POSIZ_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_DBI_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_DBI_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_DBI_HOLDINGS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_DBI_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_DBI_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_DBI_TRANSACTIONS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_ITALIA_MOVIMENTI_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_ITALIA_MOVIMENTI_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_INTESA_ITALIA_MOVIMENTI_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_ITALIA_SALDI_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_ITALIA_SALDI_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_INTESA_ITALIA_SALDI_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ACCOUNTS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ACCOUNTS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ACCOUNTS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ASSETS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ASSETS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ASSETS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ASSETS_Insert2]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ASSETS_Insert2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ASSETS_Insert2]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_DOC_SECTRX_INSERT]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_DOC_SECTRX_INSERT]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_DOC_SECTRX_INSERT]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_DOC_STEX_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_DOC_STEX_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_DOC_STEX_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_POS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_POS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_POS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_XRATE_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_XRATE_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_XRATE_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_JPM_FX_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_JPM_FX_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_JPM_FX_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_JPM_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_JPM_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_JPM_HOLDINGS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_JPM_INSTRUMENTS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_JPM_INSTRUMENTS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_JPM_INSTRUMENTS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_JPM_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_JPM_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_JPM_TRANSACTIONS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_JULIUS_BAER_LU_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_JULIUS_BAER_LU_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_JULIUS_BAER_LU_TRANSACTIONS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_JULIUS_BAER_LUX_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_JULIUS_BAER_LUX_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_JULIUS_BAER_LUX_HOLDINGS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_LOMBARDA_MVT_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_LOMBARDA_MVT_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_LOMBARDA_MVT_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_LOMBARDA_POSITION_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_LOMBARDA_POSITION_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_LOMBARDA_POSITION_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_MANUEL_CHANGES_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_MANUEL_CHANGES_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_MANUEL_CHANGES_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_MANUEL_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_MANUEL_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_MANUEL_HOLDINGS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_MANUEL_INSTRUMENTS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_MANUEL_INSTRUMENTS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_MANUEL_INSTRUMENTS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_MANUEL_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_MANUEL_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_MANUEL_TRANSACTIONS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_CRC_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_CRC_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_S2I_CRC_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_LVAL_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_LVAL_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_S2I_LVAL_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_MCP_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_MCP_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_S2I_MCP_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_MES_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_MES_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_S2I_MES_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_MTI_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_MTI_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_S2I_MTI_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_MVTS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_MVTS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_S2I_MVTS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_PES_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_PES_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_S2I_PES_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_PRTF_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_PRTF_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_S2I_PRTF_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_VALE_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_VALE_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_S2I_VALE_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_VALO_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_VALO_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_STG_DATA_S2I_VALO_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_TMP_DATA_HOLDINGS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_INSTRUMENTS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_INSTRUMENTS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_TMP_DATA_INSTRUMENTS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_PORTFOLIO_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_PORTFOLIO_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_TMP_DATA_PORTFOLIO_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_S2I_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_S2I_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_TMP_DATA_S2I_HOLDINGS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_S2I_INSTRUMENTS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_S2I_INSTRUMENTS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_TMP_DATA_S2I_INSTRUMENTS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_S2I_PORTFOLIO_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_S2I_PORTFOLIO_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_TMP_DATA_S2I_PORTFOLIO_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_S2I_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_S2I_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_TMP_DATA_S2I_TRANSACTIONS_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_TMP_DATA_TRANSACTIONS_Insert]
GO
/****** Object:  Table [dbo].[STG_DATA_BANCA_PROFILO_HOLDINGS]    Script Date: 01/24/2019 10:17:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_BANCA_PROFILO_HOLDINGS]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_BANCA_PROFILO_HOLDINGS]
GO
/****** Object:  Table [dbo].[STG_DATA_BANCA_PROFILO_TRANSACTIONS]    Script Date: 01/24/2019 10:17:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_BANCA_PROFILO_TRANSACTIONS]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_BANCA_PROFILO_TRANSACTIONS]
GO
/****** Object:  Table [dbo].[STG_DATA_BMM_AVIS_OP]    Script Date: 01/24/2019 10:17:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_BMM_AVIS_OP]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_BMM_AVIS_OP]
GO
/****** Object:  Table [dbo].[STG_DATA_BMM_ETBAC]    Script Date: 01/24/2019 10:17:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_BMM_ETBAC]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_BMM_ETBAC]
GO
/****** Object:  Table [dbo].[STG_DATA_BMM_STOCK]    Script Date: 01/24/2019 10:17:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_BMM_STOCK]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_BMM_STOCK]
GO
/****** Object:  Table [dbo].[STG_DATA_CSI_MOVLIQ]    Script Date: 01/24/2019 10:17:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_CSI_MOVLIQ]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_CSI_MOVLIQ]
GO
/****** Object:  Table [dbo].[STG_DATA_CSI_MOVTIT]    Script Date: 01/24/2019 10:17:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_CSI_MOVTIT]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_CSI_MOVTIT]
GO
/****** Object:  Table [dbo].[STG_DATA_CSI_POSIZ]    Script Date: 01/24/2019 10:17:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_CSI_POSIZ]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_CSI_POSIZ]
GO
/****** Object:  Table [dbo].[STG_DATA_DBI_HOLDINGS]    Script Date: 01/24/2019 10:17:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_DBI_HOLDINGS]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_DBI_HOLDINGS]
GO
/****** Object:  Table [dbo].[STG_DATA_DBI_TRANSACTIONS]    Script Date: 01/24/2019 10:17:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_DBI_TRANSACTIONS]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_DBI_TRANSACTIONS]
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_ITALIA_MOVIMENTI]    Script Date: 01/24/2019 10:17:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_ITALIA_MOVIMENTI]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_INTESA_ITALIA_MOVIMENTI]
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_ITALIA_SALDI]    Script Date: 01/24/2019 10:17:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_ITALIA_SALDI]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_INTESA_ITALIA_SALDI]
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_SUISSE_BSM_ACCOUNTS]    Script Date: 01/24/2019 10:17:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_SUISSE_BSM_ACCOUNTS]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_INTESA_SUISSE_BSM_ACCOUNTS]
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_SUISSE_BSM_ASSETS2]    Script Date: 01/24/2019 10:17:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_SUISSE_BSM_ASSETS2]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_INTESA_SUISSE_BSM_ASSETS2]
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_SUISSE_BSM_DOC_SECTRX]    Script Date: 01/24/2019 10:17:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_SUISSE_BSM_DOC_SECTRX]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_INTESA_SUISSE_BSM_DOC_SECTRX]
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_SUISSE_BSM_DOC_STEX]    Script Date: 01/24/2019 10:17:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_SUISSE_BSM_DOC_STEX]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_INTESA_SUISSE_BSM_DOC_STEX]
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_SUISSE_BSM_POS]    Script Date: 01/24/2019 10:17:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_SUISSE_BSM_POS]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_INTESA_SUISSE_BSM_POS]
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_SUISSE_BSM_XRATE]    Script Date: 01/24/2019 10:17:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_SUISSE_BSM_XRATE]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_INTESA_SUISSE_BSM_XRATE]
GO
/****** Object:  Table [dbo].[STG_DATA_JPM_FX]    Script Date: 01/24/2019 10:17:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_JPM_FX]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_JPM_FX]
GO
/****** Object:  Table [dbo].[STG_DATA_JPM_HOLDINGS]    Script Date: 01/24/2019 10:17:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_JPM_HOLDINGS]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_JPM_HOLDINGS]
GO
/****** Object:  Table [dbo].[STG_DATA_JPM_INSTRUMENTS]    Script Date: 01/24/2019 10:17:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_JPM_INSTRUMENTS]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_JPM_INSTRUMENTS]
GO
/****** Object:  Table [dbo].[STG_DATA_JPM_TRANSACTIONS]    Script Date: 01/24/2019 10:17:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_JPM_TRANSACTIONS]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_JPM_TRANSACTIONS]
GO
/****** Object:  Table [dbo].[STG_DATA_JULIUS_BAER_LU_TRANSACTIONS]    Script Date: 01/24/2019 10:17:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_JULIUS_BAER_LU_TRANSACTIONS]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_JULIUS_BAER_LU_TRANSACTIONS]
GO
/****** Object:  Table [dbo].[STG_DATA_JULIUS_BAER_LUX_POSITION]    Script Date: 01/24/2019 10:17:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_JULIUS_BAER_LUX_POSITION]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_JULIUS_BAER_LUX_POSITION]
GO
/****** Object:  Table [dbo].[STG_DATA_LOMBARDA_MVT_CASH]    Script Date: 01/24/2019 10:17:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_LOMBARDA_MVT_CASH]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_LOMBARDA_MVT_CASH]
GO
/****** Object:  Table [dbo].[STG_DATA_LOMBARDA_POSITION_CASH]    Script Date: 01/24/2019 10:17:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_LOMBARDA_POSITION_CASH]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_LOMBARDA_POSITION_CASH]
GO
/****** Object:  Table [dbo].[STG_DATA_MANUEL_CHANGES]    Script Date: 01/24/2019 10:17:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_MANUEL_CHANGES]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_MANUEL_CHANGES]
GO
/****** Object:  Table [dbo].[STG_DATA_MANUEL_HOLDINGS]    Script Date: 01/24/2019 10:17:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_MANUEL_HOLDINGS]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_MANUEL_HOLDINGS]
GO
/****** Object:  Table [dbo].[STG_DATA_MANUEL_INSTRUMENTS]    Script Date: 01/24/2019 10:17:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_MANUEL_INSTRUMENTS]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_MANUEL_INSTRUMENTS]
GO
/****** Object:  Table [dbo].[STG_DATA_MANUEL_TRANSACTIONS]    Script Date: 01/24/2019 10:17:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_MANUEL_TRANSACTIONS]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_MANUEL_TRANSACTIONS]
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_LVAL]    Script Date: 01/24/2019 10:17:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_LVAL]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_S2I_LVAL]
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_MCP]    Script Date: 01/24/2019 10:17:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_MCP]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_S2I_MCP]
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_MES]    Script Date: 01/24/2019 10:17:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_MES]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_S2I_MES]
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_MTI]    Script Date: 01/24/2019 10:17:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_MTI]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_S2I_MTI]
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_MVTS]    Script Date: 01/24/2019 10:17:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_MVTS]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_S2I_MVTS]
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_PES]    Script Date: 01/24/2019 10:17:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_PES]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_S2I_PES]
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_PRTF]    Script Date: 01/24/2019 10:17:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_PRTF]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_S2I_PRTF]
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_VALE]    Script Date: 01/24/2019 10:17:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_VALE]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_S2I_VALE]
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_VALO]    Script Date: 01/24/2019 10:17:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_VALO]') AND type in (N'U'))
DROP TABLE [dbo].[STG_DATA_S2I_VALO]
GO
/****** Object:  Table [dbo].[TMP_DATA_HOLDINGS]    Script Date: 01/24/2019 10:17:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_HOLDINGS]') AND type in (N'U'))
DROP TABLE [dbo].[TMP_DATA_HOLDINGS]
GO
/****** Object:  Table [dbo].[TMP_DATA_INSTRUMENTS]    Script Date: 01/24/2019 10:17:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_INSTRUMENTS]') AND type in (N'U'))
DROP TABLE [dbo].[TMP_DATA_INSTRUMENTS]
GO
/****** Object:  Table [dbo].[TMP_DATA_PORTFOLIO]    Script Date: 01/24/2019 10:17:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_PORTFOLIO]') AND type in (N'U'))
DROP TABLE [dbo].[TMP_DATA_PORTFOLIO]
GO
/****** Object:  Table [dbo].[TMP_DATA_S2I_HOLDINGS]    Script Date: 01/24/2019 10:17:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_S2I_HOLDINGS]') AND type in (N'U'))
DROP TABLE [dbo].[TMP_DATA_S2I_HOLDINGS]
GO
/****** Object:  Table [dbo].[TMP_DATA_S2I_INSTRUMENTS]    Script Date: 01/24/2019 10:17:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_S2I_INSTRUMENTS]') AND type in (N'U'))
DROP TABLE [dbo].[TMP_DATA_S2I_INSTRUMENTS]
GO
/****** Object:  Table [dbo].[TMP_DATA_S2I_PORTFOLIO]    Script Date: 01/24/2019 10:17:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_S2I_PORTFOLIO]') AND type in (N'U'))
DROP TABLE [dbo].[TMP_DATA_S2I_PORTFOLIO]
GO
/****** Object:  Table [dbo].[TMP_DATA_S2I_TRANSACTIONS]    Script Date: 01/24/2019 10:17:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_S2I_TRANSACTIONS]') AND type in (N'U'))
DROP TABLE [dbo].[TMP_DATA_S2I_TRANSACTIONS]
GO
/****** Object:  Table [dbo].[TMP_DATA_TRANSACTIONS]    Script Date: 01/24/2019 10:17:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_TRANSACTIONS]') AND type in (N'U'))
DROP TABLE [dbo].[TMP_DATA_TRANSACTIONS]
GO
/****** Object:  Table [dbo].[DWH_LOG_BATCHS_HISTORY]    Script Date: 01/24/2019 10:17:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_LOG_BATCHS_HISTORY]') AND type in (N'U'))
DROP TABLE [dbo].[DWH_LOG_BATCHS_HISTORY]
GO
/****** Object:  Table [dbo].[DWH_PARAM_BANK]    Script Date: 01/24/2019 10:17:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_PARAM_BANK]') AND type in (N'U'))
DROP TABLE [dbo].[DWH_PARAM_BANK]
GO
/****** Object:  Table [dbo].[DWH_PARAM_CTRL]    Script Date: 01/24/2019 10:17:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_PARAM_CTRL]') AND type in (N'U'))
DROP TABLE [dbo].[DWH_PARAM_CTRL]
GO
/****** Object:  Table [dbo].[DWH_PARAM_CURRENCY]    Script Date: 01/24/2019 10:17:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_PARAM_CURRENCY]') AND type in (N'U'))
DROP TABLE [dbo].[DWH_PARAM_CURRENCY]
GO
/****** Object:  Table [dbo].[DWH_PARAM_FILE]    Script Date: 01/24/2019 10:17:39 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__DWH_PARAM__IS_OB__4A58F394]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DWH_PARAM_FILE] DROP CONSTRAINT [DF__DWH_PARAM__IS_OB__4A58F394]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_PARAM_FILE]') AND type in (N'U'))
DROP TABLE [dbo].[DWH_PARAM_FILE]
GO
/****** Object:  Table [dbo].[EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940]    Script Date: 01/24/2019 10:17:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940]') AND type in (N'U'))
DROP TABLE [dbo].[EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940]
GO
/****** Object:  Table [dbo].[EXP_DATA_HOLDINGS_CAT_SWAP]    Script Date: 01/24/2019 10:17:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_HOLDINGS_CAT_SWAP]') AND type in (N'U'))
DROP TABLE [dbo].[EXP_DATA_HOLDINGS_CAT_SWAP]
GO
/****** Object:  Table [dbo].[EXP_DATA_HOLDINGS_OPTI_FUTU]    Script Date: 01/24/2019 10:17:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_HOLDINGS_OPTI_FUTU]') AND type in (N'U'))
DROP TABLE [dbo].[EXP_DATA_HOLDINGS_OPTI_FUTU]
GO
/****** Object:  Table [dbo].[DWH_DATA_INSTRUMENTS]    Script Date: 01/24/2019 10:17:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_DATA_INSTRUMENTS]') AND type in (N'U'))
DROP TABLE [dbo].[DWH_DATA_INSTRUMENTS]
GO
/****** Object:  Table [dbo].[EXP_DATA_HOLDINGS_VMOB_TCN]    Script Date: 01/24/2019 10:17:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_HOLDINGS_VMOB_TCN]') AND type in (N'U'))
DROP TABLE [dbo].[EXP_DATA_HOLDINGS_VMOB_TCN]
GO
/****** Object:  Table [dbo].[EXP_DATA_TRANSACTIONS_CHANGE]    Script Date: 01/24/2019 10:17:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_TRANSACTIONS_CHANGE]') AND type in (N'U'))
DROP TABLE [dbo].[EXP_DATA_TRANSACTIONS_CHANGE]
GO
/****** Object:  Table [dbo].[EXP_DATA_TRANSACTIONS_OPTI_FUTU]    Script Date: 01/24/2019 10:17:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_TRANSACTIONS_OPTI_FUTU]') AND type in (N'U'))
DROP TABLE [dbo].[EXP_DATA_TRANSACTIONS_OPTI_FUTU]
GO
/****** Object:  Table [dbo].[EXP_DATA_TRANSACTIONS_VMOB_TCN]    Script Date: 01/24/2019 10:17:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_TRANSACTIONS_VMOB_TCN]') AND type in (N'U'))
DROP TABLE [dbo].[EXP_DATA_TRANSACTIONS_VMOB_TCN]
GO
/****** Object:  StoredProcedure [dbo].[SP_AUDIT_Table_Insert]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_AUDIT_Table_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_AUDIT_Table_Insert]
GO
/****** Object:  StoredProcedure [dbo].[SP_Max_ID]    Script Date: 01/24/2019 10:17:35 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Max_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Max_ID]
GO
/****** Object:  StoredProcedure [dbo].[SP_Max_ID]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Max_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_Max_ID]
	@Source_TableName VARCHAR(50) -- Nom de la table

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @SQLString VARCHAR(2000) 
	DECLARE @RESULT_TABLE TABLE (id NUMERIC(9))
	DECLARE @RESULT NUMERIC(9)

	
	-- On retourne l''ID de la derniere valuer créée
	SET @SQLString = ''SELECT Max(ID) as RECORD_ID from '' + @Source_TableName

	-- Stocke duj resultat dans une table d''un seul record
	insert into @RESULT_TABLE execute (@SQLString)

	-- Renvoi du résultat de la query
	set @RESULT= (select Top 1 * from @RESULT_TABLE)
	RETURN @RESULT

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_AUDIT_Table_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_AUDIT_Table_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_AUDIT_Table_Insert]
	@Record_ID NUMERIC(9), -- ID du record de données qui a été modifié
	@Audit_TableName VARCHAR(50), -- Nom de la table	
	@Version_id NUMERIC(9), -- Version de l''ETL
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100), -- nom de la task
	@Comment 	varchar(200) -- Commentaire
	

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @SQLString VARCHAR(2000) 
	DECLARE @Error VARCHAR(50)
	
	-- On insère un record dans la table d''AUDIT des Batchs History
		BEGIN TRANSACTION 

			-- Insert une ligne dans la table DWH_LOG_BATCHS_HISTORY
			SET @SQLString = ''INSERT INTO '' + @Audit_TableName + ''(VERSION_ID, MACHINE, PACKAGE, TASK, USERNAME, RECORD_ID, COMMENT) VALUES ( ''
			 + CAST(@Version_id as  VARCHAR(10)) 
			 + '','' + char(39) + @MachineName + char(39) 
			 + '','' + char(39) + @PackageName + char(39) 
			 + '','' + char(39) + @TaskName + char(39) 
			 + '','' + char(39) + @UserName + char(39) 
			 + '','' + CAST(@Record_ID as  VARCHAR(10)) 
			 + '','' + char(39)  + @Comment + char(39) + '')''
				
			EXEC (@SQLString)
							
		COMMIT
		


-- renvoi de l''id du batch	
--RETURN @Record_ID
	
END
' 
END
GO
/****** Object:  Table [dbo].[EXP_DATA_TRANSACTIONS_VMOB_TCN]    Script Date: 01/24/2019 10:17:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_TRANSACTIONS_VMOB_TCN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXP_DATA_TRANSACTIONS_VMOB_TCN](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[OPE_EXT_REF] [varchar](16) NOT NULL,
	[BLOCK_EXT_REF] [varchar](16) NULL,
	[LINKED_REF] [varchar](16) NULL,
	[OPE_TYPE] [varchar](1) NOT NULL,
	[CANCEL_REF] [varchar](16) NULL,
	[NEG_DT] [varchar](8) NOT NULL,
	[SETT_DT] [varchar](8) NOT NULL,
	[SENSE] [varchar](5) NOT NULL,
	[ACT_CODE] [varchar](12) NOT NULL,
	[ACT_TYPE_CODE] [varchar](12) NOT NULL,
	[ACT_CAT] [varchar](4) NOT NULL,
	[QUOT_CURR] [varchar](3) NULL,
	[SETT_CURR] [varchar](3) NOT NULL,
	[FEES_CURR] [varchar](3) NULL,
	[NEGO_CURR] [varchar](3) NOT NULL,
	[UNIT] [varchar](23) NOT NULL,
	[UNIT_EXPRESSION] [varchar](1) NOT NULL,
	[CURR_CROSS] [varchar](23) NOT NULL,
	[NEGO_PRICE] [varchar](23) NOT NULL,
	[PRICE_EXPRESSION] [varchar](1) NOT NULL,
	[GROSS_NEGOCIATION_AMOUNT] [varchar](23) NOT NULL,
	[BROCKER_FEES] [varchar](23) NULL,
	[VARIOUS_FEES] [varchar](23) NULL,
	[TVA_FEES] [varchar](23) NULL,
	[TOTAL_FEES] [varchar](23) NULL,
	[TTF_FEES] [varchar](23) NULL,
	[CMVT_FEES] [varchar](23) NULL,
	[RTO_FEES] [varchar](23) NULL,
	[NET_SETTLEMENT_AMOUNT] [varchar](23) NOT NULL,
	[ACCRUED_INTEREST_AMOUNT] [varchar](23) NULL,
	[PORTFOLIO] [varchar](40) NOT NULL,
	[CMVT_FEES_CURR] [varchar](3) NULL,
	[BROCKER_SEARCH_FEES] [varchar](23) NULL,
	[SDG_SEARCH_FEES] [varchar](23) NULL,
	[SDG_SEARCH_FEES_CURR] [varchar](3) NULL,
	[BATCH_EXP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
	[FILE_EXTRACTED_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_EXP_DATA_TRANSACTIONS_VMOB_TCN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EXP_DATA_TRANSACTIONS_OPTI_FUTU]    Script Date: 01/24/2019 10:17:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_TRANSACTIONS_OPTI_FUTU]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXP_DATA_TRANSACTIONS_OPTI_FUTU](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[PORTFOLIO] [varchar](40) NOT NULL,
	[NATURE_CONTRACT_CODE] [varchar](12) NULL,
	[VALUE_CODE] [varchar](30) NOT NULL,
	[TRANSAC_SENS] [varchar](5) NOT NULL,
	[TRANSAC_TYPE] [varchar](1) NOT NULL,
	[BLOCK_EXT_REF] [varchar](16) NULL,
	[REF_OPE_ALLOC] [varchar](16) NULL,
	[CANCEL_REF_OPE] [varchar](16) NULL,
	[NEG_DT] [varchar](8) NOT NULL,
	[SETT_DT] [varchar](8) NOT NULL,
	[NEGO_CURR] [varchar](3) NOT NULL,
	[SETT_CURR] [varchar](3) NOT NULL,
	[CURR_CROSS] [numeric](20, 12) NOT NULL,
	[UNIT] [varchar](23) NOT NULL,
	[NEGO_PRICE] [varchar](23) NOT NULL,
	[PRICE_EXPRESSION] [varchar](1) NOT NULL,
	[GROSS_NEGOCIATION_AMOUNT] [varchar](23) NOT NULL,
	[NET_SETTLEMENT_AMOUNT] [varchar](23) NOT NULL,
	[BROCKER_FEES] [varchar](23) NULL,
	[CMVT_FEES] [varchar](23) NULL,
	[OPTION_SENSE] [varchar](1) NULL,
	[EXERCICE_PRICE] [varchar](23) NULL,
	[ISSUE_DT] [varchar](8) NULL,
	[ACT_CAT] [varchar](4) NOT NULL,
	[UNDERLYING_NATURE] [varchar](1) NULL,
	[BROCKER_BIC] [varchar](16) NULL,
	[BATCH_EXP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
	[FILE_EXTRACTED_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_EXP_DATA_TRANSACTIONS_OPTI_FUTU] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EXP_DATA_TRANSACTIONS_CHANGE]    Script Date: 01/24/2019 10:17:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_TRANSACTIONS_CHANGE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXP_DATA_TRANSACTIONS_CHANGE](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[OPE_EXT_REF] [varchar](16) NOT NULL,
	[PORTFOLIO] [varchar](40) NOT NULL,
	[CANCEL_REF_OPE] [varchar](16) NULL,
	[CANCEL_FLAG] [varchar](4) NULL,
	[TRANSAC_SENS] [varchar](5) NOT NULL,
	[TRANSAC_TYPE] [varchar](3) NOT NULL,
	[NEG_DT] [varchar](8) NOT NULL,
	[SETT_DT] [varchar](8) NOT NULL,
	[ISSUE_DT] [varchar](8) NULL,
	[COUNTERPARTY] [varchar](11) NULL,
	[CURRENCY_IN] [varchar](3) NOT NULL,
	[CURRENCY_OUT] [varchar](3) NOT NULL,
	[NET_SETTLEMENT_AMOUNT_IN] [varchar](23) NOT NULL,
	[NET_SETTLEMENT_AMOUNT_OUT] [varchar](23) NOT NULL,
	[SPOT_RATE] [varchar](23) NULL,
	[FORWARD_RATE] [varchar](23) NULL,
	[FIXING_SWAP_DATE] [varchar](8) NULL,
	[COMMON_REF_SWAP] [varchar](16) NULL,
	[BATCH_EXP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
	[FILE_EXTRACTED_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_EXP_DATA_TRANSACTIONS_CHANGE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EXP_DATA_HOLDINGS_VMOB_TCN]    Script Date: 01/24/2019 10:17:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_HOLDINGS_VMOB_TCN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXP_DATA_HOLDINGS_VMOB_TCN](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[DEPOSITORY_CODE] [varchar](20) NOT NULL,
	[INSTRUMENT_TYPE] [varchar](20) NOT NULL,
	[DATE] [varchar](8) NOT NULL,
	[ISIN_CODE] [varchar](20) NOT NULL,
	[DESCRIPTION] [varchar](250) NULL,
	[CURRENCY] [varchar](3) NULL,
	[UNIT] [varchar](23) NOT NULL,
	[UNIT_EXPRESSION] [varchar](1) NULL,
	[NOMINAL] [varchar](23) NULL,
	[BATCH_EXP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
	[FILE_EXTRACTED_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_EXP_DATA_HOLDINGS_VMOB_TCN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DWH_DATA_INSTRUMENTS]    Script Date: 01/24/2019 10:17:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_DATA_INSTRUMENTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DWH_DATA_INSTRUMENTS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[CODE] [varchar](20) NOT NULL,
	[ISIN_CODE] [varchar](12) NULL,
	[DESCRIPTION] [varchar](250) NOT NULL,
	[REF_TYPE_ID] [numeric](9, 0) NOT NULL,
	[REF_ASSET_TYPE_ID] [numeric](9, 0) NOT NULL,
	[CURRENCY_ID] [numeric](9, 0) NOT NULL,
	[ISSUER] [varchar](30) NULL,
	[STATE] [varchar](3) NULL,
	[ISSUE_DATE] [datetime] NULL,
	[MATURITY_DATE] [datetime] NULL,
	[BLOOMBERG_TICKER] [varchar](6) NULL,
	[FX_NOMINAL_IN] [numeric](22, 10) NULL,
	[FX_CURRENCY_ID_OUT] [numeric](9, 0) NULL,
	[FX_NOMINAL_OUT] [numeric](22, 10) NULL,
	[FX_RATE] [numeric](22, 10) NULL,
	[COUNTERPART] [varchar](50) NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[BATCH_TMP_ID] [numeric](9, 0) NOT NULL,
	[BATCH_DWH_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_DWH_DATA_INSTRUMENTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EXP_DATA_HOLDINGS_OPTI_FUTU]    Script Date: 01/24/2019 10:17:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_HOLDINGS_OPTI_FUTU]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXP_DATA_HOLDINGS_OPTI_FUTU](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[DEPOSITORY_CODE] [varchar](20) NOT NULL,
	[INSTRUMENT_TYPE] [varchar](8) NOT NULL,
	[INSTRUMENT_CODE] [varchar](12) NOT NULL,
	[INSTRUMENT_DESCRIPTION] [varchar](250) NULL,
	[ACCOUNTING_DATE] [varchar](10) NULL,
	[VALUE_DATE] [varchar](10) NULL,
	[UNIT] [varchar](23) NOT NULL,
	[MATURITY_DATE] [varchar](10) NOT NULL,
	[FLAG_PUT_CALL] [varchar](1) NULL,
	[MARKET_PRICE] [varchar](23) NOT NULL,
	[ISSUER] [varchar](30) NOT NULL,
	[BATCH_EXP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
	[FILE_EXTRACTED_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_EXP_DATA_HOLDINGS_OPTI_FUTU] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EXP_DATA_HOLDINGS_CAT_SWAP]    Script Date: 01/24/2019 10:17:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_HOLDINGS_CAT_SWAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXP_DATA_HOLDINGS_CAT_SWAP](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[DEPOSITORY_CODE] [varchar](20) NOT NULL,
	[POSITION_DATE] [varchar](8) NOT NULL,
	[VALUE_DATE] [varchar](8) NULL,
	[REFERENCE] [varchar](250) NULL,
	[MATURITY_DATE] [varchar](8) NOT NULL,
	[BUY_CURRENCY] [varchar](3) NOT NULL,
	[BUY_NOMINAL] [varchar](23) NOT NULL,
	[SALE_CURRENCY] [varchar](3) NOT NULL,
	[SALE_NOMINAL] [varchar](23) NOT NULL,
	[TRANSACTION_TYPE] [varchar](5) NULL,
	[BATCH_EXP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
	[FILE_EXTRACTED_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_EXP_DATA_HOLDINGS_CAT_SWAP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940]    Script Date: 01/24/2019 10:17:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[PORTFOLIO_ID] [numeric](9, 0) NOT NULL,
	[INSTRUMENT_ID] [numeric](9, 0) NOT NULL,
	[BEGIN_DATE] [datetime] NULL,
	[BEGIN_BALANCE] [numeric](22, 10) NULL,
	[END_DATE] [datetime] NULL,
	[END_BALANCE] [numeric](22, 10) NULL,
	[TRANSACTIONS_SUM] [numeric](22, 10) NULL,
	[TOTAL] [numeric](22, 10) NULL,
	[BATCH_EXP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DWH_PARAM_FILE]    Script Date: 01/24/2019 10:17:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_PARAM_FILE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DWH_PARAM_FILE](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [varchar](50) NOT NULL,
	[LOADING_FREQUENCY] [varchar](1) NOT NULL,
	[WORKING_DAY_FLAG] [bit] NOT NULL,
	[WEEK_DAY_FLAG] [bit] NOT NULL,
	[BANK_ID] [numeric](9, 0) NOT NULL,
	[PREFIX] [varchar](12) NOT NULL,
	[IS_OBLIG] [bit] NOT NULL DEFAULT ((1)),
	[IS_OBLIG_CACEIS] [bit] NULL,
 CONSTRAINT [PK_DWH_PARAM_FILE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DWH_PARAM_CURRENCY]    Script Date: 01/24/2019 10:17:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_PARAM_CURRENCY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DWH_PARAM_CURRENCY](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [varchar](50) NOT NULL,
	[ISO_CODE] [varchar](3) NOT NULL,
	[DECIMAL] [numeric](2, 0) NOT NULL,
 CONSTRAINT [PK_DWH_PARAM_CURRENCY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DWH_PARAM_CTRL]    Script Date: 01/24/2019 10:17:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_PARAM_CTRL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DWH_PARAM_CTRL](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[CODE] [varchar](50) NOT NULL,
	[DESCRIPTION] [varchar](50) NOT NULL,
	[SEVERITY] [numeric](1, 0) NULL,
 CONSTRAINT [PK_DWH_PARAM_CTRL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DWH_PARAM_BANK]    Script Date: 01/24/2019 10:17:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_PARAM_BANK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DWH_PARAM_BANK](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [varchar](50) NULL,
	[INTERNAL_CODE] [varchar](20) NOT NULL,
	[EXTERNAL_CODE] [varchar](20) NOT NULL,
	[SOURCE_FOLDER] [varchar](500) NULL,
	[DATE_VALID_FROM] [datetime] NOT NULL,
	[DATE_VALID_TO] [datetime] NOT NULL,
	[CALENDAR_ID] [numeric](9, 0) NOT NULL,
	[BIC_CODE] [varchar](20) NULL,
	[EXPORT_FOLDER] [varchar](500) NULL,
	[FLAG_EXPORT_POSITION] [numeric](1, 0) NULL,
	[FLAG_EXPORT_TRANSACTION] [numeric](1, 0) NULL,
	[WORK_FOLDER] [varchar](500) NULL,
	[ARCHIVE_FOLDER] [varchar](500) NULL,
	[GROUP_ID] [numeric](9, 0) NULL,
	[TYPE_TRAITEMENT] [varchar](50) NULL,
	[INTERFACE_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_DWH_PARAM_BANK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DWH_LOG_BATCHS_HISTORY]    Script Date: 01/24/2019 10:17:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_LOG_BATCHS_HISTORY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DWH_LOG_BATCHS_HISTORY](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[START_DATE] [datetime] NOT NULL,
	[END_DATE] [datetime] NULL,
	[TYPE_BATCH] [varchar](10) NOT NULL,
	[STATUS] [varchar](50) NOT NULL,
	[BANK_ID] [numeric](9, 0) NULL,
	[INTERFACE_ID] [varchar](20) NULL,
 CONSTRAINT [PK_DWH_LOG_BATCHS_HISTORY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_DATA_TRANSACTIONS]    Script Date: 01/24/2019 10:17:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_TRANSACTIONS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_DATA_TRANSACTIONS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[PORTFOLIO_CODE] [varchar](50) NOT NULL,
	[INSTRUMENT_CODE] [varchar](20) NOT NULL,
	[EXTERNAL_REF_OPE] [varchar](16) NOT NULL,
	[DESCRIPTION] [varchar](500) NOT NULL,
	[TYPE_OPE] [varchar](30) NOT NULL,
	[EXTERNAL_REF_ANNULATION] [varchar](16) NULL,
	[NEGOCIATION_DATE] [datetime] NOT NULL,
	[SETTLEMENT_DATE] [datetime] NOT NULL,
	[CURRENCY_QUOT] [varchar](3) NOT NULL,
	[CURRENCY_SETT] [varchar](3) NOT NULL,
	[CURRENCY_FEES] [varchar](3) NOT NULL,
	[CURRENCY_NEGO] [varchar](3) NOT NULL,
	[UNIT] [numeric](22, 10) NULL,
	[FX_RATE_CURRENCY_SETTLEMENT_NEGOCIATION] [numeric](22, 10) NOT NULL,
	[NEGOCIATION_PRICE] [numeric](22, 10) NULL,
	[SPOT_PRICE] [numeric](22, 10) NULL,
	[GROSS_NEGOCIATION_AMOUNT] [numeric](22, 10) NOT NULL,
	[ACCRUED_INTEREST_NEGOCIATION_AMOUNT] [numeric](22, 10) NOT NULL,
	[NET_SETTLEMENT_AMOUNT] [numeric](22, 10) NOT NULL,
	[BROCKER_FEES] [numeric](22, 10) NOT NULL,
	[OTHER_FEES] [numeric](22, 10) NOT NULL,
	[TAXES_FEES] [numeric](22, 10) NOT NULL,
	[COMMISSIONS_FEES] [numeric](22, 10) NOT NULL,
	[COMMISSIONS_FEES_CURRENCY] [varchar](3) NOT NULL,
	[TTF_FEES] [numeric](22, 10) NOT NULL,
	[RTO_FEES] [numeric](22, 10) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[BATCH_TMP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_TMP_DATA_TRANSACTIONS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_DATA_S2I_TRANSACTIONS]    Script Date: 01/24/2019 10:17:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_S2I_TRANSACTIONS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_DATA_S2I_TRANSACTIONS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[PORTFOLIO_CODE] [varchar](50) NOT NULL,
	[INSTRUMENT_CODE] [varchar](20) NOT NULL,
	[EXTERNAL_REF_OPE] [varchar](16) NOT NULL,
	[DESCRIPTION] [varchar](500) NOT NULL,
	[TYPE_OPE] [varchar](30) NOT NULL,
	[EXTERNAL_REF_ANNULATION] [varchar](16) NULL,
	[NEGOCIATION_DATE] [datetime] NOT NULL,
	[SETTLEMENT_DATE] [datetime] NOT NULL,
	[CURRENCY_QUOT] [varchar](3) NOT NULL,
	[CURRENCY_SETT] [varchar](3) NOT NULL,
	[CURRENCY_FEES] [varchar](3) NOT NULL,
	[CURRENCY_NEGO] [varchar](3) NOT NULL,
	[UNIT] [numeric](22, 10) NULL,
	[FX_RATE_CURRENCY_SETTLEMENT_NEGOCIATION] [numeric](22, 10) NOT NULL,
	[NEGOCIATION_PRICE] [numeric](22, 10) NULL,
	[SPOT_PRICE] [numeric](22, 10) NULL,
	[GROSS_NEGOCIATION_AMOUNT] [numeric](22, 10) NOT NULL,
	[ACCRUED_INTEREST_NEGOCIATION_AMOUNT] [numeric](22, 10) NOT NULL,
	[NET_SETTLEMENT_AMOUNT] [numeric](22, 10) NOT NULL,
	[BROCKER_FEES] [numeric](22, 10) NOT NULL,
	[OTHER_FEES] [numeric](22, 10) NOT NULL,
	[TAXES_FEES] [numeric](22, 10) NOT NULL,
	[COMMISSIONS_FEES] [numeric](22, 10) NOT NULL,
	[COMMISSIONS_FEES_CURRENCY] [varchar](3) NOT NULL,
	[TTF_FEES] [numeric](22, 10) NOT NULL,
	[RTO_FEES] [numeric](22, 10) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[BATCH_TMP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_TMP_DATA_S2I_TRANSACTIONS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_DATA_S2I_PORTFOLIO]    Script Date: 01/24/2019 10:17:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_S2I_PORTFOLIO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_DATA_S2I_PORTFOLIO](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[DEPOSITORY_CODE] [varchar](50) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[BATCH_TMP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_TMP_DATA_S2I_PORTFOLIO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_DATA_S2I_INSTRUMENTS]    Script Date: 01/24/2019 10:17:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_S2I_INSTRUMENTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_DATA_S2I_INSTRUMENTS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[CODE] [varchar](20) NULL,
	[TYPE_CODE] [varchar](10) NULL,
	[DESCRIPTION] [varchar](250) NULL,
	[CURRENCY] [varchar](3) NULL,
	[TYPE] [varchar](16) NULL,
	[ASSET_TYPE] [varchar](16) NULL,
	[ISSUER] [varchar](30) NULL,
	[STATE] [varchar](3) NULL,
	[ISSUE_DATE] [datetime] NULL,
	[MATURITY_DATE] [datetime] NULL,
	[BLOOMBERG_TICKER] [varchar](6) NULL,
	[EXPRESSION_UNIT] [varchar](1) NULL,
	[EXPRESSION_PRICE] [varchar](1) NULL,
	[NOMINAL] [numeric](22, 10) NULL,
	[FX_NOMINAL_IN] [numeric](22, 10) NULL,
	[FX_CURRENCY_OUT] [varchar](3) NULL,
	[FX_NOMINAL_OUT] [numeric](22, 10) NULL,
	[FX_RATE] [numeric](22, 10) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[BATCH_TMP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_TMP_DATA_S2I_INSTRUMENTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_DATA_S2I_HOLDINGS]    Script Date: 01/24/2019 10:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_S2I_HOLDINGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_DATA_S2I_HOLDINGS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[PORTFOLIO_CODE] [varchar](20) NOT NULL,
	[INSTRUMENT_CODE] [varchar](20) NULL,
	[CURRENCY] [varchar](3) NOT NULL,
	[UNIT] [numeric](22, 10) NULL,
	[MARKET_PRICE] [numeric](22, 10) NULL,
	[MARKET_PRICE_DATE] [datetime] NULL,
	[AMOUNT] [numeric](22, 10) NOT NULL,
	[ACCRUED_INTEREST] [numeric](22, 10) NULL,
	[STATEMENT_DATE] [datetime] NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[BATCH_TMP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_TMP_DATA_S2I_HOLDINGS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_DATA_PORTFOLIO]    Script Date: 01/24/2019 10:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_PORTFOLIO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_DATA_PORTFOLIO](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[DEPOSITORY_CODE] [varchar](50) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[BATCH_TMP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_TMP_DATA_PORTFOLIO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_DATA_INSTRUMENTS]    Script Date: 01/24/2019 10:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_INSTRUMENTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_DATA_INSTRUMENTS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[CODE] [varchar](20) NULL,
	[TYPE_CODE] [varchar](10) NULL,
	[DESCRIPTION] [varchar](250) NOT NULL,
	[CURRENCY] [varchar](3) NOT NULL,
	[TYPE] [varchar](16) NOT NULL,
	[ASSET_TYPE] [varchar](16) NOT NULL,
	[ISSUER] [varchar](30) NULL,
	[STATE] [varchar](3) NULL,
	[ISSUE_DATE] [datetime] NULL,
	[MATURITY_DATE] [datetime] NULL,
	[BLOOMBERG_TICKER] [varchar](6) NULL,
	[EXPRESSION_UNIT] [varchar](1) NULL,
	[EXPRESSION_PRICE] [varchar](1) NULL,
	[NOMINAL] [numeric](22, 10) NULL,
	[FX_NOMINAL_IN] [numeric](22, 10) NULL,
	[FX_CURRENCY_OUT] [varchar](3) NULL,
	[FX_NOMINAL_OUT] [numeric](22, 10) NULL,
	[FX_RATE] [numeric](22, 10) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[BATCH_TMP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_TMP_DATA_INSTRUMENTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_DATA_HOLDINGS]    Script Date: 01/24/2019 10:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TMP_DATA_HOLDINGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TMP_DATA_HOLDINGS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[PORTFOLIO_CODE] [varchar](20) NOT NULL,
	[INSTRUMENT_CODE] [varchar](20) NULL,
	[CURRENCY] [varchar](3) NOT NULL,
	[UNIT] [numeric](22, 10) NULL,
	[MARKET_PRICE] [numeric](22, 10) NULL,
	[MARKET_PRICE_DATE] [datetime] NULL,
	[AMOUNT] [numeric](22, 10) NOT NULL,
	[ACCRUED_INTEREST] [numeric](22, 10) NULL,
	[STATEMENT_DATE] [datetime] NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[BATCH_TMP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_TMP_DATA_HOLDINGS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_VALO]    Script Date: 01/24/2019 10:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_VALO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_S2I_VALO](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[RELATION_CLIENT] [varchar](7) NOT NULL,
	[CODE_VALEUR_INTERNE] [varchar](20) NOT NULL,
	[DEVISE_VALEUR] [varchar](3) NULL,
	[FILLER1] [varchar](1) NULL,
	[COURS_BOURSE] [numeric](22, 10) NULL,
	[INTERETS_COURUS] [numeric](22, 10) NULL,
	[FILLER2] [varchar](1) NULL,
	[DATE_COURS] [datetime] NULL,
	[VALORISATION] [numeric](22, 10) NULL,
	[QUANTITE] [numeric](22, 10) NULL,
	[FILE_DATE] [datetime] NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_S2I_VALO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_VALE]    Script Date: 01/24/2019 10:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_VALE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_S2I_VALE](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[CODE_VALEUR_INTERNE] [varchar](20) NOT NULL,
	[CODE_ISIN] [varchar](12) NULL,
	[CODE_TLK] [varchar](12) NULL,
	[LIB_VALEUR] [varchar](40) NULL,
	[PLACE_COTATION] [varchar](3) NULL,
	[TYPE_ACTIF] [varchar](3) NULL,
	[DEV_COTATION] [varchar](3) NULL,
	[PAYS_EMETTEUR] [varchar](3) NULL,
	[SECTEUR_ECO] [varchar](3) NULL,
	[DATE_EMISSION] [datetime] NULL,
	[DATE_ECHEANCE] [datetime] NULL,
	[TAUX_INT_COURUS] [numeric](22, 10) NULL,
	[DEV_COUPON] [varchar](3) NULL,
	[STATUT_COTATION] [varchar](1) NULL,
	[FORME_JURIDIQUE] [varchar](1) NULL,
	[DATE_1ER_COUPON] [datetime] NULL,
	[RYTHME_VALEUR] [varchar](2) NULL,
	[CODE_EMETTEUR] [varchar](7) NULL,
	[LIBELLE_TYPE_ACTIF] [varchar](30) NULL,
	[FILLER1] [varchar](15) NULL,
	[FILLER2] [varchar](17) NULL,
	[FILLER3] [varchar](17) NULL,
	[FILE_DATE] [datetime] NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_S2I_VALE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_PRTF]    Script Date: 01/24/2019 10:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_PRTF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_S2I_PRTF](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[TYPE_POSITION] [varchar](1) NOT NULL,
	[TYPE_COMPTE] [varchar](4) NOT NULL,
	[INTERVENANT] [varchar](7) NOT NULL,
	[NUM_ORDRE_COMPTE] [varchar](4) NULL,
	[NUM_EVT_EN_COURS] [varchar](9) NULL,
	[NUM_SEQ_EN_COURS] [varchar](3) NULL,
	[DEVISE_ESTIM] [varchar](3) NULL,
	[CODE_DEVISE_DIR] [varchar](3) NULL,
	[CODE_DEVISE_CPT] [varchar](3) NULL,
	[DATE_VALEUR] [datetime] NULL,
	[DATE_ECHEANCE_OPE] [datetime] NULL,
	[INT_COURUS_DEV_ESTIM] [numeric](22, 10) NULL,
	[MONTANT_DEV_DIR] [numeric](22, 10) NULL,
	[MONTANT_CONTREPARTIE] [numeric](22, 10) NULL,
	[MONTANT_ACTUEL_DEV_EST] [numeric](22, 10) NULL,
	[RESULTAT_ESTIME] [numeric](22, 10) NULL,
	[MON_CPT] [varchar](3) NULL,
	[SOLDE_CPT] [numeric](22, 10) NULL,
	[TX_CHANGE_DEV_CPT_DEC_POS] [numeric](22, 10) NULL,
	[TX_CHANGE_DEV_ESTIM_DEC_POS] [numeric](22, 10) NULL,
	[TX_CHANGE_DEV_DIR_DEC_POS] [numeric](22, 10) NULL,
	[FILE_DATE] [datetime] NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_S2I_PRTF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_PES]    Script Date: 01/24/2019 10:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_PES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_S2I_PES](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[NUM_PTF] [varchar](12) NULL,
	[NUM_ORDRE] [varchar](4) NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[DEV_CPT] [varchar](3) NULL,
	[PONDERATION] [numeric](22, 10) NULL,
	[MONTANT_DEVISE_POSITION] [numeric](22, 10) NULL,
	[MONTANT_DEVISE_PERF] [numeric](22, 10) NULL,
	[INTERETS_COURUS_DEVISE_POSITION] [numeric](22, 10) NULL,
	[IBAN] [varchar](20) NULL,
	[MONTANT_POSITION_CAT] [numeric](22, 10) NULL,
	[DEVISE_POSITION_CAT] [varchar](3) NULL,
	[DATE] [datetime] NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_S2I_PES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_MVTS]    Script Date: 01/24/2019 10:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_MVTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_S2I_MVTS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[NUM_RELATION] [varchar](7) NULL,
	[NUM_CPT] [varchar](16) NULL,
	[REF_OPE] [varchar](12) NULL,
	[DEV_OPE] [varchar](3) NULL,
	[DATE_COMPTA] [datetime] NULL,
	[MONTANT_NET] [numeric](22, 10) NULL,
	[SENS] [varchar](1) NULL,
	[CODE_APPLICATION] [varchar](3) NULL,
	[DESCRIPTION_COURTE] [varchar](24) NULL,
	[DESCRIPTION_LONGUE] [varchar](120) NULL,
	[NUM_RELATION2] [varchar](7) NULL,
	[NUM_ID_FLUX] [varchar](12) NULL,
	[NUM_ID_FLUX2] [varchar](1) NULL,
	[TYPE_FLUX] [varchar](3) NULL,
	[TYPE_OPE] [varchar](3) NULL,
	[EXT_TYPE_OPE] [varchar](4) NULL,
	[DEV_COTATION] [varchar](3) NULL,
	[DEV_EXECUTION] [varchar](3) NULL,
	[DEV_CLIENT] [varchar](3) NULL,
	[DEV_EVALUATION] [varchar](3) NULL,
	[TX_CHANGE_DEV_COT_DEV_EXEC] [numeric](22, 10) NULL,
	[TX_CHANGE_DEV_COT_DEV_CLIENT] [numeric](22, 10) NULL,
	[TX_CHANGE_DEV_COT_DEV_EVAL] [numeric](22, 10) NULL,
	[DATE_EXECUTION] [datetime] NULL,
	[DATE_VALEUR] [datetime] NULL,
	[DATE_COMPTA2] [datetime] NULL,
	[MONTANT_NET_DEV_CLIENT] [numeric](22, 10) NULL,
	[MONTANT_NET_DEV_COTATION] [numeric](22, 10) NULL,
	[MONTANT_FRAIS_DEV_CLIENT] [numeric](22, 10) NULL,
	[QUANTITE] [numeric](22, 10) NULL,
	[COMPTE_ESPECE_CODE_REGROUP] [varchar](16) NULL,
	[INT_COURUS_DEV_CLIENT] [numeric](22, 10) NULL,
	[DATE_TRAITEMENT] [datetime] NULL,
	[REF_OPE2] [varchar](12) NULL,
	[MONTANT_BRUT_DEV_COTATION] [numeric](22, 10) NULL,
	[COURS] [numeric](22, 10) NULL,
	[FILLER1] [varchar](4) NULL,
	[FILLER2] [varchar](4) NULL,
	[FILLER3] [varchar](1) NULL,
	[FILLER4] [varchar](35) NULL,
	[FILLER5] [varchar](1) NULL,
	[FILLER6] [varchar](12) NULL,
	[FILLER7] [varchar](15) NULL,
	[FILLER8] [varchar](9) NULL,
	[FILE_DATE] [datetime] NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_S2I_MVTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_MTI]    Script Date: 01/24/2019 10:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_MTI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_S2I_MTI](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[EXTERNAL_REF_OPE] [varchar](16) NULL,
	[NUM_PTF] [varchar](12) NULL,
	[NUM_DOSSIER] [varchar](1) NULL,
	[NUM_VALEUR] [varchar](20) NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[DEV_NEGO] [varchar](3) NULL,
	[DEV_SETT] [varchar](3) NULL,
	[DATE_NEGO] [datetime] NULL,
	[DATE_SETT] [datetime] NULL,
	[DATE_COMPTA] [datetime] NULL,
	[QUANTITE] [numeric](22, 10) NULL,
	[DEV_QUOT] [varchar](3) NULL,
	[COURS_UNITAIRE] [numeric](22, 10) NULL,
	[MONTANT_BRUT] [numeric](22, 10) NULL,
	[INTERETS_COURUS] [numeric](22, 10) NULL,
	[FRAIS] [numeric](22, 10) NULL,
	[COMMISSIONS] [numeric](22, 10) NULL,
	[TAXES] [numeric](22, 10) NULL,
	[MONTANT_NET] [numeric](22, 10) NULL,
	[COURS_ACHAT] [numeric](22, 10) NULL,
	[ANNULATION] [varchar](1) NULL,
	[ANNULATION_REF_OPE] [varchar](16) NULL,
	[ISIN] [varchar](12) NULL,
	[TYPE_VALEUR] [varchar](3) NULL,
	[TYPE_OPE] [varchar](1) NULL,
	[TAXES_BROCKER] [numeric](22, 10) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_S2I_MTI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_MES]    Script Date: 01/24/2019 10:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_MES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_S2I_MES](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[EXTERNAL_REF_OPE] [varchar](16) NULL,
	[NUM_PTF] [varchar](12) NULL,
	[NUM_ORDRE] [varchar](3) NULL,
	[DEV_CPT] [varchar](3) NULL,
	[IBAN] [varchar](20) NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[TYPE_OPE] [varchar](1) NULL,
	[DESCRIPTION1] [varchar](100) NULL,
	[DEV_NEGO] [varchar](3) NULL,
	[DEV_SETT] [varchar](3) NULL,
	[DATE_NEGO] [datetime] NULL,
	[DATE_SETT] [datetime] NULL,
	[DATE_COMPTA] [datetime] NULL,
	[MONTANT_NET] [numeric](22, 10) NULL,
	[FRAIS] [numeric](22, 10) NULL,
	[MONTANT_BRUT] [numeric](22, 10) NULL,
	[DESCRIPTION2] [varchar](100) NULL,
	[ANNULATION] [varchar](1) NULL,
	[ANNULATION_REF_OPE] [varchar](16) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_S2I_MES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_MCP]    Script Date: 01/24/2019 10:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_MCP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_S2I_MCP](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[EXTERNAL_REF_OPE] [varchar](16) NULL,
	[REF_PTF] [varchar](12) NULL,
	[NUM_ORDRE] [varchar](4) NULL,
	[DEVISE] [varchar](3) NULL,
	[NUM_VALEUR] [varchar](20) NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[NUM_COUPON] [varchar](10) NULL,
	[DEVISE_NEGO] [varchar](3) NULL,
	[DEVISE_SETT] [varchar](3) NULL,
	[DATE_NEGO] [datetime] NULL,
	[DATE_SETT] [datetime] NULL,
	[DATE_COMPTA] [datetime] NULL,
	[QUANTITE] [numeric](22, 10) NULL,
	[TAUX] [numeric](22, 10) NULL,
	[MONTANT_BRUT] [numeric](22, 10) NULL,
	[FRAIS] [numeric](22, 10) NULL,
	[TAXES_IMPOTS_ANTICIPES] [numeric](22, 10) NULL,
	[IMPOTS_RECUPERABLES] [numeric](22, 10) NULL,
	[MONTANT_NET] [numeric](22, 10) NULL,
	[DESCRIPTION1] [varchar](100) NULL,
	[ANNULATION] [varchar](1) NULL,
	[ANNULATION_REF_OPE] [varchar](16) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_S2I_MCP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_S2I_LVAL]    Script Date: 01/24/2019 10:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_S2I_LVAL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_S2I_LVAL](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[NUM_VALEUR] [varchar](20) NULL,
	[QUANTITE_TOTALE] [numeric](22, 10) NULL,
	[COURS_ESTIMATION] [numeric](22, 10) NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[DESCRIPTION1] [varchar](100) NULL,
	[DESCRIPTION2] [varchar](100) NULL,
	[NO_STE_EMETTRICE] [varchar](10) NULL,
	[DT_ECH_FINALE] [datetime] NULL,
	[ISIN] [varchar](12) NULL,
	[MON_REG] [varchar](3) NULL,
	[MON_NOMI] [varchar](3) NULL,
	[TYPE_COURS] [varchar](1) NULL,
	[TYPE_QTE] [varchar](3) NULL,
	[BLOC_ESTIM_CAA] [varchar](3) NULL,
	[PAYS_DOMICILE_EMTR] [varchar](3) NULL,
	[CODE_DEBITEUR] [varchar](3) NULL,
	[CAT_FISC_FRA] [varchar](3) NULL,
	[EMETTEUR_PRINCIPAL] [varchar](10) NULL,
	[CAT_FISC_INSTR_BEL] [varchar](3) NULL,
	[TYPE_TAUX_INTERET] [varchar](1) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_S2I_LVAL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_MANUEL_TRANSACTIONS]    Script Date: 01/24/2019 10:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_MANUEL_TRANSACTIONS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_MANUEL_TRANSACTIONS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[PORTFOLIO_CODE] [varchar](20) NOT NULL,
	[INSTRUMENT_CODE] [varchar](12) NOT NULL,
	[EXTERNAL_REF_OPERATION] [varchar](25) NOT NULL,
	[DESCRIPTION] [varchar](250) NULL,
	[TYPE_OPE] [varchar](20) NOT NULL,
	[EXTERNAL_REF_ANNULATION] [varchar](25) NULL,
	[NEGOCIATION_DATE] [datetime] NOT NULL,
	[SETTLEMENT_DATE] [datetime] NOT NULL,
	[CURRENCY_QUOT] [varchar](3) NOT NULL,
	[CURRENCY_NEGO] [varchar](3) NOT NULL,
	[CURRENCY_FEES] [varchar](3) NOT NULL,
	[CURRENCY_SETT] [varchar](3) NOT NULL,
	[UNIT] [numeric](22, 10) NULL,
	[FX_RATE] [numeric](22, 10) NOT NULL,
	[NEGOCIATION_PRICE] [numeric](22, 10) NULL,
	[SPOT_PRICE] [numeric](22, 10) NULL,
	[GROSS_NEGOCIATION_PRICE] [numeric](22, 10) NOT NULL,
	[ACCRUED_INTEREST] [numeric](22, 10) NOT NULL,
	[NET_SETTLEMENT_PRICE] [numeric](22, 10) NOT NULL,
	[BROCKER_FEES] [numeric](22, 10) NOT NULL,
	[TAXES_FEES] [numeric](22, 10) NOT NULL,
	[OTHER_FEES] [numeric](22, 10) NOT NULL,
	[COMMISSION_FEES] [numeric](22, 10) NOT NULL,
	[CURRENCY_COMMISSION_FEES] [varchar](3) NULL,
	[TFO_FEES] [numeric](22, 10) NULL,
	[TTF_FEES] [numeric](22, 10) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_MANUEL_TRANSACTIONS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_MANUEL_INSTRUMENTS]    Script Date: 01/24/2019 10:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_MANUEL_INSTRUMENTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_MANUEL_INSTRUMENTS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[CODE] [varchar](20) NOT NULL,
	[TYPE_CODE] [varchar](10) NULL,
	[DESCRIPTION] [varchar](250) NULL,
	[CURRENCY] [varchar](3) NOT NULL,
	[TYPE] [varchar](16) NOT NULL,
	[ASSET_TYPE] [varchar](16) NOT NULL,
	[ISSUER] [varchar](30) NULL,
	[STATE] [varchar](3) NULL,
	[ISSUE_DATE] [datetime] NULL,
	[MATURITY_DATE] [datetime] NULL,
	[BLOOMBERG_TICKER] [varchar](6) NULL,
	[EXPRESSION_UNIT] [varchar](1) NULL,
	[EXPRESSION_PRICE] [varchar](1) NOT NULL,
	[NOMINAL] [numeric](22, 10) NULL,
	[FX_NOMINAL_IN] [numeric](22, 10) NULL,
	[FX_NOMINAL_OUT] [numeric](22, 10) NULL,
	[FX_RATE] [numeric](22, 10) NULL,
	[FX_CURRENCY_OUT] [varchar](3) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_STG_DATA_MANUEL_INSTRUMENTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_MANUEL_HOLDINGS]    Script Date: 01/24/2019 10:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_MANUEL_HOLDINGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_MANUEL_HOLDINGS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[PORTFOLIO_CODE] [varchar](20) NOT NULL,
	[INSTRUMENT_CODE] [varchar](12) NOT NULL,
	[CURRENCY] [varchar](3) NOT NULL,
	[UNIT] [numeric](22, 10) NULL,
	[PRICE] [numeric](22, 10) NULL,
	[PRICE_DATE] [datetime] NULL,
	[ACCRUED_INTEREST] [numeric](22, 10) NULL,
	[AMOUNT] [numeric](22, 10) NOT NULL,
	[AMOUNT_DATE] [datetime] NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_MANUEL_HOLDINGS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_MANUEL_CHANGES]    Script Date: 01/24/2019 10:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_MANUEL_CHANGES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_MANUEL_CHANGES](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[PORTFOLIO_CODE] [varchar](20) NOT NULL,
	[EXTERNAL_REF_OPERATION] [varchar](25) NOT NULL,
	[SENS_OPE] [varchar](10) NOT NULL,
	[TYPE_OPE] [varchar](20) NOT NULL,
	[EXTERNAL_REF_ANNULATION] [varchar](25) NULL,
	[NEGOCIATION_DATE] [datetime] NOT NULL,
	[STATEMENT_DATE] [datetime] NOT NULL,
	[MATURITY_DATE] [datetime] NULL,
	[CONTREPARTIE] [varchar](25) NULL,
	[DEV_VENDUE] [varchar](3) NOT NULL,
	[DEV_ACHETEE] [varchar](3) NOT NULL,
	[MNT_DEV_VENDUE] [numeric](22, 10) NOT NULL,
	[MNT_DEV_ACHETEE] [numeric](22, 10) NOT NULL,
	[TAUX_SPOT] [numeric](22, 10) NULL,
	[TAUX_FORWARD] [numeric](22, 10) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_MANUEL_CHANGES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_LOMBARDA_POSITION_CASH]    Script Date: 01/24/2019 10:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_LOMBARDA_POSITION_CASH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_LOMBARDA_POSITION_CASH](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[ACCOUNT_ID] [varchar](20) NOT NULL,
	[ACCOUNT_CCY] [varchar](3) NULL,
	[AMOUNT] [numeric](22, 10) NULL,
	[STATEMENT_DATE] [datetime] NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_LOMBARDA_MVT_CASH]    Script Date: 01/24/2019 10:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_LOMBARDA_MVT_CASH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_LOMBARDA_MVT_CASH](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[TRX_REF_NUMBER] [varchar](20) NOT NULL,
	[STAT_REF_NUMBER] [varchar](20) NULL,
	[ACCOUNT_ID] [varchar](20) NOT NULL,
	[ACCOUNT_CCY] [varchar](3) NOT NULL,
	[OPENING_STAT_BAL] [numeric](22, 10) NULL,
	[DATE_OPENING_STAT_BAL] [datetime] NULL,
	[MVT_DESC] [varchar](100) NOT NULL,
	[MVT_AMOUNT] [numeric](22, 10) NULL,
	[MVT_VALUE_DATE] [datetime] NOT NULL,
	[CLOSING_STAT_BAL] [numeric](22, 10) NULL,
	[DATE_CLOSING_STAT_BAL] [varchar](20) NULL,
	[MVT_ACC_DATE] [datetime] NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_JULIUS_BAER_LUX_POSITION]    Script Date: 01/24/2019 10:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_JULIUS_BAER_LUX_POSITION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_JULIUS_BAER_LUX_POSITION](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[PORTFOLIO_CODE] [varchar](20) NOT NULL,
	[INSTRUMENT_CODE] [varchar](20) NULL,
	[CURRENCY] [varchar](3) NOT NULL,
	[UNIT] [numeric](22, 10) NULL,
	[MARKET_PRICE] [numeric](22, 10) NULL,
	[MARKET_PRICE_DATE] [datetime] NULL,
	[AMOUNT] [numeric](22, 10) NOT NULL,
	[ACCRUED_INTEREST] [numeric](22, 10) NULL,
	[INSTR_NATURE] [nvarchar](20) NULL,
	[INSTR_CODE] [nvarchar](20) NULL,
	[INSTR_SAT_NAME] [nvarchar](20) NULL,
	[ACCOUNTING_CODE] [varchar](20) NULL,
	[FX_OPER_CODE] [varchar](20) NULL,
	[FWD_CTR_NAME] [varchar](20) NULL,
	[FWD_AMOUNT1] [numeric](22, 10) NULL,
	[FWD_AMT1_CUR] [varchar](3) NULL,
	[FWD_AMOUNT2] [numeric](22, 10) NULL,
	[FWD_AMT2_CUR] [varchar](3) NULL,
	[FWD_OPENDATE] [datetime] NULL,
	[FWD_EXPDATE] [datetime] NULL,
	[FWD_SPOT_P] [numeric](22, 10) NULL,
	[FWD_FORW_P] [numeric](22, 10) NULL,
	[FWD_CURR_P] [numeric](22, 10) NULL,
	[FWD_PL_AMOUNT] [numeric](22, 10) NULL,
	[POS_EXCH_RATE] [numeric](22, 10) NULL,
	[CONTRACT_SIZE] [numeric](22, 10) NULL,
	[STRIKE_PRICE] [numeric](22, 10) NULL,
	[OPTION_STYLE] [varchar](20) NULL,
	[OPTION_TYPE] [varchar](20) NULL,
	[STATEMENT_DATE] [datetime] NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_JULIUS_BAER_LU_TRANSACTIONS]    Script Date: 01/24/2019 10:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_JULIUS_BAER_LU_TRANSACTIONS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_JULIUS_BAER_LU_TRANSACTIONS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[INPUT_DATE] [datetime] NOT NULL,
	[OPER_DATE] [datetime] NOT NULL,
	[VALUE_DATE] [datetime] NOT NULL,
	[PORTFOLIO] [varchar](60) NOT NULL,
	[PORTF_CCY] [varchar](60) NOT NULL,
	[INSTR_NAT_CODE] [numeric](9, 0) NOT NULL,
	[INSTR_NATURE] [varchar](60) NULL,
	[INSTR_CODE] [varchar](60) NULL,
	[INSTR_CCY] [varchar](60) NULL,
	[INSTR_WKN] [varchar](60) NULL,
	[INSTR_ISIN] [varchar](60) NULL,
	[INSTR_NAME] [varchar](60) NULL,
	[INSTR_DENOM] [varchar](80) NULL,
	[OPER_NAT_CODE] [numeric](9, 0) NULL,
	[OPER_NATURE] [varchar](60) NULL,
	[TYPE_CODE] [varchar](60) NULL,
	[TYPE_NAME] [varchar](60) NULL,
	[SUB_TYPE_CODE] [varchar](60) NULL,
	[SUB_TYPE_NAME] [varchar](60) NULL,
	[REV_OPER_NAT_E] [varchar](60) NULL,
	[QUANTITY] [numeric](22, 10) NULL,
	[INSTR_U_CCY] [varchar](60) NULL,
	[QUOTE] [numeric](22, 10) NULL,
	[POS_CUR] [varchar](60) NULL,
	[AI] [numeric](22, 10) NULL,
	[BANK_COMMISSION] [numeric](22, 10) NULL,
	[BROKER_FEE] [numeric](22, 10) NULL,
	[TAX] [numeric](22, 10) NULL,
	[OTHER_FEE] [numeric](22, 10) NULL,
	[GROSS_AMOUNT] [numeric](22, 10) NULL,
	[OP_NET_AMNT] [numeric](22, 10) NULL,
	[ACC_EXCH_RATE] [numeric](22, 10) NULL,
	[DEBIT_CREDIT] [numeric](22, 10) NULL,
	[NET_CURR] [varchar](60) NULL,
	[ACCOUNT] [varchar](60) NULL,
	[REMARK2] [varchar](80) NULL,
	[INSTR_EXCH_RATE] [numeric](22, 10) NULL,
	[ACC_CODE] [varchar](60) NULL,
	[OPER_CODE] [varchar](60) NULL,
	[REF_NAT_E] [varchar](60) NULL,
	[REF_OPER_CODE] [varchar](60) NULL,
	[COUNTERPARTY] [varchar](60) NULL,
	[MARKET] [varchar](60) NULL,
	[SYS_NET_AMOUNT] [numeric](22, 10) NULL,
	[ADJ_QUANTITY] [numeric](22, 10) NULL,
	[DEPOSIT] [varchar](60) NULL,
	[ADJ_DEPOSIT] [varchar](60) NULL,
	[ADJ_INSTR_CODE] [varchar](60) NULL,
	[ADJ_INSTR_WKN] [varchar](60) NULL,
	[ADJ_INSTR_ISIN] [varchar](60) NULL,
	[ADJ_INSTR_NAME] [varchar](60) NULL,
	[ADJ_INSTR_DENOM] [varchar](80) NULL,
	[ADJ_POS_CUR] [varchar](60) NULL,
	[ADJ_POS_NAT] [numeric](9, 0) NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_JULIUS_BAER_LU_TRANSACTIONS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_JPM_TRANSACTIONS]    Script Date: 01/24/2019 10:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_JPM_TRANSACTIONS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_JPM_TRANSACTIONS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[FROM_DATE] [datetime] NULL,
	[TO_DATE] [datetime] NULL,
	[ACCOUNT_NUMBER] [varchar](12) NOT NULL,
	[FULL_ACCOUNT_NUMBER] [varchar](24) NULL,
	[IBAN] [varchar](16) NULL,
	[ACCOUNT_NAME] [varchar](50) NULL,
	[TYPE_OF_TRANSACTION] [varchar](8) NOT NULL,
	[INSTRUMENT_TYPE_CODE] [numeric](9, 0) NULL,
	[INSTRUMENT_TYPE_DESCRIPTION] [varchar](250) NULL,
	[TRANSACTION_NUMBER] [numeric](9, 0) NOT NULL,
	[OLYMPIC_TRANSACTION_CODE] [numeric](9, 0) NULL,
	[TRANSACTION_DESCRIPTION] [varchar](250) NULL,
	[INSTRUMENT_SHORT_NAME] [varchar](25) NULL,
	[INSTRUMENT_LONG_NAME] [varchar](50) NULL,
	[VALOREN] [numeric](9, 0) NULL,
	[ISIN] [varchar](16) NULL,
	[TICKER] [varchar](25) NULL,
	[PRICING_CURRENCY] [char](3) NULL,
	[BASE_CURRENCY] [char](3) NULL,
	[TRANSACTION_CURRENCY] [char](3) NULL,
	[QUANTITY] [numeric](9, 0) NULL,
	[TRADE_DATE] [datetime] NOT NULL,
	[VALUE_DATE] [datetime] NOT NULL,
	[SYSTEM_DATE] [datetime] NOT NULL,
	[TRANSACTION_PRICE] [numeric](22, 10) NULL,
	[TRANSACTION_TO_BASE_FX_RATE] [numeric](22, 10) NULL,
	[PRICE_IN_BASE_CURRENCY] [char](3) NULL,
	[NET_TRANSACTION_AMOUNT] [numeric](22, 10) NULL,
	[NET_TRANSACTION_AMOUNT_IN_BASE] [numeric](22, 10) NULL,
	[ACCRUED_INTEREST] [numeric](22, 10) NULL,
	[ACCRUED_INTEREST_IN_BASE] [numeric](22, 10) NULL,
	[INTEREST_RATE] [numeric](22, 10) NULL,
	[GROSS_TRANSACTION_AMOUNT] [numeric](22, 10) NULL,
	[BROKERAGE_FEES] [numeric](22, 10) NULL,
	[COUNTERPARTY_FEES] [numeric](22, 10) NULL,
	[JPM_BROKERAGE_FEES] [numeric](22, 10) NULL,
	[JPM_FEES] [numeric](22, 10) NULL,
	[SWISS_TAX] [numeric](22, 10) NULL,
	[WITHHOLDING_TAX] [numeric](22, 10) NULL,
	[CASH_CURRENCY] [char](3) NULL,
	[CASH_AMOUNT] [numeric](22, 10) NULL,
	[COUNTERPARTY_NAME] [varchar](50) NULL,
	[REVERSAL_FLAG] [numeric](9, 0) NULL,
	[REVERSAL_REFERENCE] [numeric](9, 0) NULL,
	[MARKETPLACE] [varchar](50) NULL,
	[ASSET_CLASSIFICATION_1] [varchar](25) NULL,
	[ASSET_CLASSIFICATION_2] [varchar](25) NULL,
	[ASSET_CLASSIFICATION_3] [varchar](25) NULL,
	[CURRENT_FACE] [varchar](25) NULL,
	[FACTOR] [varchar](25) NULL,
	[MATURITY_DATE] [datetime] NULL,
	[EX_DATE] [datetime] NULL,
	[PAYABLE_DATE] [datetime] NULL,
	[DIVIDEND_COUPON_RATE] [varchar](25) NULL,
	[CONTRACT_ID] [numeric](9, 0) NULL,
	[FX_RATE_PLATFORM_CURRENCY] [char](3) NULL,
	[FILE_LOAD_ID] [numeric](9, 0) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_STG_DATA_JPM_TRANSACTIONS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_JPM_INSTRUMENTS]    Script Date: 01/24/2019 10:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_JPM_INSTRUMENTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_JPM_INSTRUMENTS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[REFERENCE_DATE] [datetime] NULL,
	[TYPE_OF_HOLDING] [varchar](8) NULL,
	[INSTRUMENT_TYPE_CODE] [varchar](9) NULL,
	[INSTRUMENT_TYPE_DESCRIPTION] [varchar](250) NULL,
	[INSTRUMENT_SHORT_NAME] [varchar](50) NULL,
	[INSTRUMENT_LONG_NAME] [varchar](100) NULL,
	[VALOREN] [numeric](9, 0) NULL,
	[ISIN] [varchar](16) NULL,
	[RIC] [numeric](9, 0) NULL,
	[TICKER] [varchar](25) NULL,
	[INSTRUMENT_CURRENCY] [char](3) NULL,
	[PRICE] [numeric](22, 10) NULL,
	[POS_TO_BASE_FX_RATE] [numeric](22, 10) NULL,
	[BASE_PRICE] [numeric](22, 10) NULL,
	[DATE_OF_PRICE] [datetime] NULL,
	[ISSUE_DATE] [datetime] NULL,
	[MATURITY_DATE] [datetime] NULL,
	[ACCRUED_INTEREST] [numeric](22, 10) NULL,
	[INTEREST_RATE] [numeric](22, 10) NULL,
	[INCOME_CURRENCY] [char](3) NULL,
	[INCOME_FREQUENCY] [numeric](9, 0) NULL,
	[PAYEMENT_DATE_OF_LAST_INCOME] [datetime] NULL,
	[EX_DATE_OF_LAST_DIVIDEND] [datetime] NULL,
	[PAYEMENT_DATE_OF_NEXT_INCOME] [datetime] NULL,
	[VALUE_DATE_OF_NEXT_COUPON] [datetime] NULL,
	[EX_DATE_OF_NEXT_DIVIDEND] [datetime] NULL,
	[INTEREST_BASE] [varchar](20) NULL,
	[COUNTRY_OF_INSTRUMENT] [varchar](25) NULL,
	[MARKET_PLACE] [varchar](25) NULL,
	[ASSET_CLASSIFICATION1] [varchar](50) NULL,
	[ASSET_CLASSIFICATION2] [varchar](50) NULL,
	[ASSET_CLASSIFICATION3] [varchar](50) NULL,
	[FACTOR] [numeric](9, 0) NULL,
	[DEBTOR_NAME] [varchar](50) NULL,
	[DEBTOR_LOCATION] [varchar](50) NULL,
	[INDUSTRY_GROUP] [varchar](50) NULL,
	[ISSUER_NAME] [varchar](50) NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_STG_DATA_JPM_INSTRUMENTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_JPM_HOLDINGS]    Script Date: 01/24/2019 10:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_JPM_HOLDINGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_JPM_HOLDINGS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[REFERENCE_DATE] [datetime] NULL,
	[ACCOUNT_NUMBER] [varchar](12) NOT NULL,
	[ACCOUNT_NAME] [varchar](25) NOT NULL,
	[IBAN] [varchar](16) NULL,
	[BASE_CURRENCY] [char](3) NULL,
	[FULL_ACCOUNT_NUMBER] [varchar](24) NULL,
	[TYPE_OF_HOLDING] [varchar](8) NOT NULL,
	[INSTRUMENT_TYPE_CODE] [numeric](9, 0) NULL,
	[INSTRUMENT_TYPE_DESCRIPTION] [varchar](250) NULL,
	[INSTRUMENT_SHORT_NAME] [varchar](25) NULL,
	[INSTRUMENT_LONG_NAME] [varchar](50) NULL,
	[VALOREN] [numeric](9, 0) NULL,
	[ISIN] [varchar](16) NULL,
	[TICKER] [varchar](25) NULL,
	[CURRENCY_OF_INSTRUMENT] [char](3) NULL,
	[FX_BUYING_CURRENCY] [char](3) NULL,
	[FX_SELLING_CURRENCY] [char](3) NULL,
	[QUANTITY] [numeric](9, 0) NULL,
	[PRICE] [numeric](22, 10) NULL,
	[POSITION_TO_BASE_FX_RATE] [numeric](22, 10) NULL,
	[BUY_TO_BASE_FX_RATE] [numeric](22, 10) NULL,
	[SELL_TO_BASE_FX_RATE] [numeric](22, 10) NULL,
	[BASE_PRICE] [numeric](22, 10) NULL,
	[DATE_OF_PRICE] [datetime] NULL,
	[MARKET_VALUE] [numeric](22, 10) NULL,
	[BASE_MARKET_VALUE] [numeric](22, 10) NULL,
	[FX_BUY_AMOUNT] [numeric](22, 10) NULL,
	[FX_SELL_AMOUNT] [numeric](22, 10) NULL,
	[FX_BUY_AMOUNT_IN_BASE] [numeric](22, 10) NULL,
	[FX_SELL_AMOUNT_IN_BASE] [numeric](22, 10) NULL,
	[ACCRUED_INTEREST] [numeric](22, 10) NULL,
	[BASE_ACCRUED_INTEREST] [numeric](22, 10) NULL,
	[AVERAGE_COST_MARKET_VALUE] [numeric](22, 10) NULL,
	[AVERAGE_COST_PRICE] [numeric](22, 10) NULL,
	[AVERAGE_COST_MARKET_VALUE_IN_BASE] [numeric](22, 10) NULL,
	[AVERAGE_COST_PRICE_IN_BASE] [numeric](22, 10) NULL,
	[AVERAGE_BOUGHT_MARKET_VALUE] [numeric](22, 10) NULL,
	[AVERAGE_BOUGHT_PRICE] [numeric](22, 10) NULL,
	[AVERAGE_BOUGHT_MARKET_VALUE_IN_BASE] [numeric](22, 10) NULL,
	[AVERAGE_BOUGHT_PRICE_IN_BASE] [numeric](22, 10) NULL,
	[MATURITY_DATE] [datetime] NULL,
	[START_DATE] [datetime] NULL,
	[INTEREST_RATE] [numeric](22, 10) NULL,
	[COUNTRY_OF_INSTRUMENT] [varchar](25) NULL,
	[EXCHANGE_RATE_DATE] [datetime] NULL,
	[INCOME_CURRENCY] [char](3) NULL,
	[INCOME_FREQUENCY] [numeric](9, 0) NULL,
	[DATE_OF_LAST_INCOME] [datetime] NULL,
	[MARKET_PLACE] [varchar](25) NULL,
	[ASSET_CLASSIFICATION_1] [varchar](50) NULL,
	[ASSET_CLASSIFICATION_2] [varchar](50) NULL,
	[ASSET_CLASSIFICATION_3] [varchar](50) NULL,
	[CURRENT_FACE] [varchar](25) NULL,
	[FACTOR] [varchar](25) NULL,
	[FX_DEAL_RATE] [numeric](22, 10) NULL,
	[LAST_FX_RATE] [numeric](22, 10) NULL,
	[CUSTODIAN_ID] [numeric](9, 0) NULL,
	[CUSTODIAN_NAME] [varchar](50) NULL,
	[FX_RATE_PLATFORM_CURRENCY] [char](3) NULL,
	[FILE_LOAD_ID] [numeric](9, 0) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_STG_DATA_JPM_HOLDINGS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_JPM_FX]    Script Date: 01/24/2019 10:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_JPM_FX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_JPM_FX](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[REFERENCE_DATE] [datetime] NULL,
	[ACCOUNT_NUMBER] [varchar](12) NOT NULL,
	[ACCOUNT_NAME] [varchar](25) NOT NULL,
	[BASE_CURRENCY] [char](3) NULL,
	[FULL_ACCOUNT_NUMBER] [varchar](24) NULL,
	[INSTRUMENT_TYPE_CODE] [numeric](9, 0) NULL,
	[INSTRUMENT_TYPE_DESCRIPTION] [varchar](250) NULL,
	[BUYING_CURRENCY] [char](3) NULL,
	[SELLING_CURRENCY] [char](3) NULL,
	[BUY_TO_BASE_FX_RATE] [numeric](22, 10) NULL,
	[SELL_TO_BASE_FX_RATE] [numeric](22, 10) NULL,
	[BUY_AMOUNT] [numeric](22, 10) NULL,
	[SELL_AMOUNT] [numeric](22, 10) NULL,
	[BUY_AMOUNT_IN_BASE] [numeric](22, 10) NULL,
	[SELL_AMOUNT_IN_BASE] [numeric](22, 10) NULL,
	[MATURITY_DATE] [datetime] NULL,
	[SPOT_DATE] [datetime] NULL,
	[EXCHANGE_RATE_DATE] [datetime] NULL,
	[ASSET_CLASSIFICATION_1] [varchar](50) NULL,
	[ASSET_CLASSIFICATION_2] [varchar](50) NULL,
	[ASSET_CLASSIFICATION_3] [varchar](50) NULL,
	[DEAL_RATE] [numeric](22, 10) NULL,
	[LAST_AVAILABLE_RATE] [numeric](22, 10) NULL,
	[FILE_LOAD_ID] [numeric](9, 0) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_STG_DATA_JPM_FX] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_SUISSE_BSM_XRATE]    Script Date: 01/24/2019 10:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_SUISSE_BSM_XRATE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_INTESA_SUISSE_BSM_XRATE](
	[ID] [numeric](9, 0) NOT NULL,
	[CURRY_NAME] [varchar](255) NULL,
	[DESCRIPTION] [varchar](255) NULL,
	[TERMIN] [numeric](9, 0) NULL,
	[UNIT] [numeric](22, 10) NULL,
	[XRATE_FACTOR] [numeric](22, 10) NULL,
	[XRATE_DATE] [datetime] NULL,
	[FACTOR] [numeric](9, 0) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NULL,
	[TMS] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_SUISSE_BSM_POS]    Script Date: 01/24/2019 10:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_SUISSE_BSM_POS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_INTESA_SUISSE_BSM_POS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[POS_ID] [bigint] NOT NULL,
	[POS_TYP] [varchar](255) NULL,
	[POS_TYP_ID] [tinyint] NULL,
	[NAME] [varchar](255) NULL,
	[SORT_NR] [varchar](255) NULL,
	[SORT_ALPHA] [varchar](255) NULL,
	[STRIKE] [varchar](255) NULL,
	[REF_DATE] [datetime] NULL,
	[CURR_PRICE] [varchar](255) NULL,
	[CURR_PRICE_CURRY] [varchar](255) NULL,
	[CURR_PRICE_QUOTE_TYPE] [varchar](255) NULL,
	[CURR_VAL_POS] [numeric](28, 10) NULL,
	[CURR_POS_REF_CURRY] [varchar](255) NULL,
	[CURR_VAL_REF] [numeric](28, 10) NULL,
	[CURR_VAL_REF_CURRY] [varchar](255) NULL,
	[CURR_VAL_BU] [numeric](28, 10) NULL,
	[ACCR_POS] [numeric](28, 10) NULL,
	[ACCR_COMM_POS] [numeric](28, 10) NULL,
	[ACCR_REF] [numeric](28, 10) NULL,
	[ACCR_COMM_REF] [numeric](28, 10) NULL,
	[ACCR_BU] [numeric](28, 10) NULL,
	[ACCR_COMM_BU] [numeric](28, 10) NULL,
	[CURR_PRICE_XRATE] [numeric](28, 10) NULL,
	[CURR_XRATE] [varchar](255) NULL,
	[EXTRACT_DATE] [datetime] NULL,
	[QTY] [numeric](28, 10) NULL,
	[BUY_QTY] [varchar](255) NULL,
	[SELL_QTY] [varchar](255) NULL,
	[MATURITY] [datetime] NULL,
	[OPEN_DATE] [datetime] NULL,
	[CLOSE_DATE] [datetime] NULL,
	[ASSET_ID] [bigint] NULL,
	[ASSET_ISIN] [varchar](255) NULL,
	[ASSET_TKN] [varchar](255) NULL,
	[ASSET_NAME] [varchar](255) NULL,
	[ASSET_TYPE_ID] [varchar](255) NULL,
	[ASSET_TYPE] [varchar](255) NULL,
	[ASSET_OPTION_TYPE_ID] [varchar](255) NULL,
	[ASSET_OPTION_TYPE] [varchar](255) NULL,
	[ASSET_PRICE] [varchar](255) NULL,
	[ASSET_EVAL_DATE] [datetime] NULL,
	[ASS_GROUP] [varchar](255) NULL,
	[ASS_GROUP_INTL_ID] [varchar](255) NULL,
	[CONTR_SIZE] [varchar](255) NULL,
	[CONT_ID] [bigint] NULL,
	[ASSET_INTR_RATE] [varchar](255) NULL,
	[BP_ID] [bigint] NULL,
	[BP_NAME] [varchar](255) NULL,
	[BP_SORT_NR] [bigint] NULL,
	[BP_SORT_ALPHA] [bigint] NULL,
	[BU_ID] [tinyint] NULL,
	[BU_NAME] [varchar](255) NULL,
	[BU_SORT_ALPHA] [varchar](255) NULL,
	[BU_SORT_NR] [varchar](255) NULL,
	[CONT_NAME] [varchar](255) NULL,
	[CONT_SORT_NR] [numeric](28, 10) NULL,
	[CONT_SORT_ALPHA] [numeric](28, 10) NULL,
	[UNDRLY_ID] [varchar](255) NULL,
	[POS_TWRR_PERF] [varchar](255) NULL,
	[HIST_VAL_POS] [numeric](28, 10) NULL,
	[HIST_VAL_REF] [numeric](28, 10) NULL,
	[HIST_PRICE_POS] [varchar](255) NULL,
	[HIST_PRICE_REF] [varchar](255) NULL,
	[HIST_XRATE] [varchar](255) NULL,
	[ISSUE_PRICE] [varchar](255) NULL,
	[INTR_DAY_CNT] [varchar](255) NULL,
	[OPTION_CONTRACT_SIZE] [varchar](255) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NULL,
	[FILE_LOAD_ID] [numeric](9, 0) NULL,
	[TMS] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_SUISSE_BSM_DOC_STEX]    Script Date: 01/24/2019 10:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_SUISSE_BSM_DOC_STEX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_INTESA_SUISSE_BSM_DOC_STEX](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[BPID] [bigint] NULL,
	[CUSTOMER_NO] [bigint] NULL,
	[BP_NAME] [nvarchar](255) NULL,
	[BP_REF_CURRY_ID] [int] NULL,
	[BPREF_CURRY_ID] [nvarchar](255) NULL,
	[BUID] [tinyint] NULL,
	[CONTID] [bigint] NULL,
	[DFLT_CONT_NR] [numeric](28, 10) NULL,
	[PORTFOLIO_NO] [numeric](28, 10) NULL,
	[PORTFOLIO_ID] [nvarchar](255) NULL,
	[POSID] [bigint] NULL,
	[ACCOUNT_NO] [numeric](28, 10) NULL,
	[ACCOUNT_ID] [nvarchar](255) NULL,
	[POS_REF_CURRY_ID] [int] NULL,
	[ACCOUNT_CURRY_ID] [nvarchar](255) NULL,
	[ACCOUNT_SALDO] [numeric](28, 10) NULL,
	[ACCOUNT_ACCRUED_INTEREST] [tinyint] NULL,
	[BANK] [nvarchar](255) NULL,
	[EXCH_RATE] [tinyint] NULL,
	[POS_IBAN] [nvarchar](255) NULL,
	[EXTRACT_DATE] [datetime] NULL,
	[BATCH_STG_ID] [numeric](9, 0) NULL,
	[FILE_LOAD_ID] [numeric](9, 0) NULL,
	[TMS] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_SUISSE_BSM_DOC_SECTRX]    Script Date: 01/24/2019 10:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_SUISSE_BSM_DOC_SECTRX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_INTESA_SUISSE_BSM_DOC_SECTRX](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[BU_ID] [numeric](22, 10) NULL,
	[SECEVT_ID] [numeric](22, 10) NULL,
	[SECTRX2_ID] [numeric](22, 10) NULL,
	[META_TYP_ID] [numeric](22, 10) NULL,
	[META_TYP_NAME] [varchar](100) NULL,
	[ORDER_TYPE_ID] [numeric](22, 10) NULL,
	[ORDER_TYPE_NAME] [varchar](100) NULL,
	[WFC_STATUS_ID] [numeric](22, 10) NULL,
	[WFC_STATUS_NAME] [varchar](100) NULL,
	[ORDERED_BY] [varchar](100) NULL,
	[MEDIUM_ID] [numeric](22, 10) NULL,
	[MEDIUM_NAME] [varchar](100) NULL,
	[TRX_DATE] [datetime] NULL,
	[VAL_DATE] [datetime] NULL,
	[EXTL_REF_NR] [varchar](100) NULL,
	[INTL_REF_NR] [varchar](100) NULL,
	[BP_ID] [numeric](22, 10) NULL,
	[CONT_ID] [numeric](22, 10) NULL,
	[CUST_CONT_ID] [numeric](22, 10) NULL,
	[POS_ID] [numeric](22, 10) NULL,
	[ASSET_ID] [numeric](22, 10) NULL,
	[MACC_ID] [numeric](22, 10) NULL,
	[EX_DATE] [datetime] NULL,
	[QTY] [numeric](22, 10) NULL,
	[QTY_DFLT] [numeric](22, 10) NULL,
	[BOOK_TEXT] [varchar](100) NULL,
	[GROSS_BASE] [numeric](22, 10) NULL,
	[CURRY_ID] [numeric](22, 10) NULL,
	[COST] [numeric](22, 10) NULL,
	[COST_BASE] [numeric](22, 10) NULL,
	[COST_ASSET_ID] [numeric](22, 10) NULL,
	[COST2] [numeric](22, 10) NULL,
	[COST_BASE2] [numeric](22, 10) NULL,
	[COST_ASSET2_ID] [numeric](22, 10) NULL,
	[NET] [numeric](22, 10) NULL,
	[NET_MACC] [numeric](22, 10) NULL,
	[XRATE] [numeric](22, 10) NULL,
	[TMS] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_SUISSE_BSM_ASSETS2]    Script Date: 01/24/2019 10:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_SUISSE_BSM_ASSETS2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_INTESA_SUISSE_BSM_ASSETS2](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[ASS_FIRE_CONTPRTY] [varchar](255) NULL,
	[ASS_FIRE_CONTPRTY_ID] [varchar](255) NULL,
	[ASS_GROUP] [varchar](255) NULL,
	[ASS_GROUP_INTL_ID] [varchar](255) NULL,
	[ASS_MSC_IND] [varchar](255) NULL,
	[ASS_MSC_IND_NAME] [varchar](255) NULL,
	[ASS_POS_CNT] [numeric](22, 10) NULL,
	[ASS_SORT_ALPHA] [varchar](255) NULL,
	[ASS_SORT_NR] [numeric](9, 0) NULL,
	[ASS_TYPE] [varchar](255) NULL,
	[ASS_TYPE_INTL_ID] [varchar](255) NULL,
	[ASSET_ID] [bigint] NULL,
	[ASSET_NAME] [varchar](255) NULL,
	[CLOSE_DATE] [datetime] NULL,
	[CONTR_SIZE] [numeric](9, 0) NULL,
	[COUNTRY_ID] [numeric](9, 0) NULL,
	[COUNTRY_CODE] [varchar](255) NULL,
	[COUNTRY_NAME] [varchar](255) NULL,
	[CURRY] [varchar](255) NULL,
	[CUSIP] [varchar](255) NULL,
	[CUST_CONT_NAME] [varchar](255) NULL,
	[CUST_CONT_SORTALPHA] [varchar](255) NULL,
	[DFLT_MKT_NAME] [varchar](255) NULL,
	[EXTRACT_DATE] [datetime] NULL,
	[FITCH_RATING] [varchar](255) NULL,
	[INSTR_CAT_ID] [varchar](255) NULL,
	[INSTR_CAT_NAME] [varchar](255) NULL,
	[INTR_CALC_METHOD_CODE] [varchar](255) NULL,
	[INTR_CALC_METHOD_NAME] [varchar](255) NULL,
	[INTR_RATE] [numeric](22, 10) NULL,
	[ISIN] [varchar](255) NULL,
	[ISSUE_DATE] [datetime] NULL,
	[ISSUER] [varchar](255) NULL,
	[ISSUER_ID] [numeric](9, 0) NULL,
	[MOODY_RATING] [varchar](255) NULL,
	[OPTION_TYPE] [varchar](255) NULL,
	[OUTSTANDING] [varchar](255) NULL,
	[PRICE] [numeric](22, 10) NULL,
	[PRICE_DATE] [datetime] NULL,
	[SP_RATING] [varchar](255) NULL,
	[TELEKURS] [varchar](255) NULL,
	[COUPON_FREQUENCY] [varchar](255) NULL,
	[COUPON_PERIOD] [varchar](255) NULL,
	[COUPON_NEXT_DATE] [datetime] NULL,
	[MATURITY_PRICE] [numeric](22, 10) NULL,
	[INTERNAL_RATING] [varchar](255) NULL,
	[FITCH_RATING_SHORT] [varchar](255) NULL,
	[SP_RATING_SHORT] [varchar](255) NULL,
	[MOODY_RATING_SHORT] [varchar](255) NULL,
	[REPO_RATING] [varchar](255) NULL,
	[PERIODIC_REVALUATION] [varchar](255) NULL,
	[CUST_PLEDGE_RATE] [varchar](255) NULL,
	[C524_LISTED] [varchar](255) NULL,
	[ISSUE_PRICE] [varchar](255) NULL,
	[OPTION_CONTRACT_SIZE] [varchar](255) NULL,
	[FILE_LOAD_ID] [numeric](9, 0) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NULL,
	[TMS] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_SUISSE_BSM_ACCOUNTS]    Script Date: 01/24/2019 10:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_SUISSE_BSM_ACCOUNTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_INTESA_SUISSE_BSM_ACCOUNTS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[BPID] [numeric](9, 0) NULL,
	[CUSTOMER_NO] [varchar](50) NULL,
	[BP_NAME] [varchar](20) NULL,
	[BP_REF_CURRY_ID] [numeric](9, 0) NULL,
	[BPREF_CURRY_ID] [varchar](3) NULL,
	[BUID] [numeric](9, 0) NULL,
	[CONTID] [numeric](9, 0) NULL,
	[DFLT_CONT_NR] [numeric](9, 0) NULL,
	[PORTFOLIO_NO] [varchar](50) NULL,
	[PORTFOLIO_ID] [varchar](20) NULL,
	[POSID] [numeric](9, 0) NULL,
	[ACCOUNT_NO] [varchar](50) NULL,
	[ACCOUNT_ID] [varchar](20) NULL,
	[POS_REF_CURRY_ID] [numeric](9, 0) NULL,
	[ACCOUNT_CURRY_ID] [varchar](3) NULL,
	[ACCOUNT_SALDO] [numeric](22, 10) NULL,
	[ACCOUNT_ACCRUED_INTEREST] [numeric](22, 10) NULL,
	[BANK] [varchar](50) NULL,
	[EXCH_RATE] [numeric](22, 10) NULL,
	[EXTRACT_DATE] [datetime] NULL,
	[FILE_LOAD_ID] [numeric](9, 0) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NULL,
	[TMS] [datetime] NULL,
 CONSTRAINT [PK_STG_DATA_INTESA_SUISSE_ACCOUNTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_ITALIA_SALDI]    Script Date: 01/24/2019 10:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_ITALIA_SALDI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_INTESA_ITALIA_SALDI](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[RECORD_TYPE_CODE] [varchar](3) NOT NULL,
	[DSIM_CONTRACT_CODE] [numeric](8, 0) NOT NULL,
	[DSIM_CONTRACT_ACRONYM] [varchar](8) NOT NULL,
	[BANK_CONTRACT_CODE] [varchar](25) NOT NULL,
	[CLIENT_CONTRACT_CODE] [varchar](25) NOT NULL,
	[CONTRACT_DESCRIPTION] [varchar](40) NOT NULL,
	[DATE_EXECUTION_CONTRACT] [datetime] NOT NULL,
	[DATE_WITHDRAWAL] [datetime] NULL,
	[TYPE_REDEMPTION] [varchar](5) NULL,
	[REFERENCE_DATE] [datetime] NOT NULL,
	[CURRENCY_CODE] [varchar](3) NOT NULL,
	[TYPE_BALANCE] [varchar](3) NOT NULL,
	[REPO_MATURITY] [datetime] NULL,
	[REPO_RATE] [numeric](22, 10) NULL,
	[DSIM_SECURITY_CODE] [varchar](14) NOT NULL,
	[DSIM_SECURITY_ACRONYM] [varchar](12) NOT NULL,
	[HOST_SECURITY_CODE] [varchar](25) NULL,
	[CLIENT_SECURITY_CODE] [varchar](25) NULL,
	[ISIN_CODE] [varchar](12) NULL,
	[SHORT_DESCRIPTION_SECU] [varchar](26) NOT NULL,
	[FULL_DESCRIPTION_SECU] [varchar](80) NULL,
	[REFERENCE_PRICE_DATE] [datetime] NULL,
	[REFERENCE_PRICE] [numeric](22, 10) NOT NULL,
	[AVERAGE_LOAD_PRICE] [numeric](22, 10) NOT NULL,
	[ACCRUAL] [numeric](22, 10) NOT NULL,
	[RECORDERED_BALANCE] [numeric](22, 10) NOT NULL,
	[EXECUTED_BALANCE] [numeric](22, 10) NOT NULL,
	[COMMITTED_BALANCE] [numeric](22, 10) NOT NULL,
	[TOTAL_BALANCE] [numeric](22, 10) NOT NULL,
	[EXCHANGE_RATE] [numeric](22, 10) NOT NULL,
	[TOTAL_VALUE] [numeric](22, 10) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_INTESA_ITALIA_SALDI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_INTESA_ITALIA_MOVIMENTI]    Script Date: 01/24/2019 10:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_INTESA_ITALIA_MOVIMENTI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_INTESA_ITALIA_MOVIMENTI](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[RECORD_TYPE_CODE] [varchar](3) NOT NULL,
	[TRANSACTION_STATUS] [varchar](2) NOT NULL,
	[DSIM_CONTRACT_CODE] [numeric](8, 0) NOT NULL,
	[DSIM_CONTRACT_ACRONYM] [varchar](8) NOT NULL,
	[BANK_CONTRAT_CODE] [varchar](25) NOT NULL,
	[CLIENT_CONTRACT_CODE] [varchar](25) NULL,
	[CONTRACT_DESCRIPTION] [varchar](40) NULL,
	[DATE_EXECUTION_CONTRACT] [datetime] NOT NULL,
	[DATE_WITHDRAWAL] [datetime] NULL,
	[TYPE_REDEMPTION] [varchar](5) NULL,
	[EXECUTED_NUMBER] [numeric](10, 0) NOT NULL,
	[REVERSED_ORIGINAL_EXECUTED_NUMBER] [numeric](10, 0) NOT NULL,
	[LIQUIDATED_NUMBER] [numeric](10, 0) NULL,
	[ORDER_NUMBER] [numeric](10, 0) NULL,
	[CUMULATIVE_ORDER_NUMBER] [numeric](10, 0) NULL,
	[DATE_EXECUTED_ORDER] [datetime] NOT NULL,
	[TIME_EXECUTED_ORDER] [varchar](8) NOT NULL,
	[VALUE_DATE] [datetime] NOT NULL,
	[FLAG] [varchar](1) NOT NULL,
	[DSIM_SECURITY_CODE] [varchar](14) NULL,
	[DSIM_SECURITY_ACRONYM] [varchar](12) NULL,
	[HOST_SECURITY_CODE] [varchar](25) NULL,
	[CLIENT_SECURITY_CODE] [varchar](25) NULL,
	[ISIN_CODE] [varchar](12) NULL,
	[SHORT_DESCRITION_SECURITY] [varchar](26) NULL,
	[FULL_DESCRIPTION_SECURITY] [varchar](80) NULL,
	[NATURE_DSIM_TRANSACTION_CODE] [varchar](3) NOT NULL,
	[OBJECT_MOVEMENT] [varchar](2) NULL,
	[CONTRIBUTION_WITHDRAWAL] [varchar](1) NOT NULL,
	[TRANSACTION_TYPE_FLAG] [varchar](1) NOT NULL,
	[NUMBER_EXECUTED_ORDER] [varchar](10) NULL,
	[REPO_RATE] [numeric](22, 10) NULL,
	[REPO_MATURITY] [datetime] NULL,
	[COMMENT_TRANSACTION] [varchar](150) NULL,
	[NOTES_TRANSACTION] [varchar](150) NULL,
	[MARKET_CODE] [varchar](19) NOT NULL,
	[TRADING_VENUE_CODE] [varchar](3) NOT NULL,
	[SIGN] [varchar](1) NOT NULL,
	[TRANSACTION_CURRENCY] [varchar](3) NOT NULL,
	[QUANTITY_SECURITIES_EXECUTED] [numeric](22, 10) NULL,
	[PRICE] [numeric](22, 10) NULL,
	[ACCRUAL] [numeric](22, 10) NULL,
	[PRINCIPAL_AMOUNT] [numeric](22, 10) NULL,
	[PRINCIPAL_AMOUNT_FLAG] [varchar](1) NOT NULL,
	[INTEREST_AMOUNT] [numeric](22, 10) NULL,
	[AMOUNT_TO_BE_PAID] [numeric](22, 10) NULL,
	[INTEREST_WITHHOLDING] [varchar](1) NOT NULL,
	[TRADING_FEES_AMOUNT] [numeric](22, 10) NULL,
	[FEES_AMOUNT_FLAG] [varchar](1) NOT NULL,
	[OTHER_TRADERS_TRADING_FEES_AMOUNT] [numeric](22, 10) NULL,
	[OTHER_TRADERS_FEES_AMOUNT_FLAG] [varchar](1) NOT NULL,
	[TRADING_COSTS_AMOUNT] [numeric](22, 10) NULL,
	[COSTS_AMOUNT_FLAG] [varchar](1) NOT NULL,
	[OTHER_TRADERS_TRADING_COST_AMOUNT] [numeric](22, 10) NULL,
	[OTHER_TRADERS_COSTS_AMOUNT_FLAG] [varchar](1) NOT NULL,
	[STAMP_DUTY_AMOUNT] [numeric](22, 10) NULL,
	[STAMP_DUTY_AMOUNT_FLAG] [varchar](1) NOT NULL,
	[VAT_AMOUNT] [numeric](22, 10) NULL,
	[ROUNDING_OFF_AMOUNT] [numeric](22, 10) NULL,
	[TRANSACTION_EXCHANGE_RATE] [numeric](22, 10) NOT NULL,
	[SETTLEMENT_CURRENCY] [varchar](3) NOT NULL,
	[TOTAL_AMOUNT_SETTLED_1] [numeric](22, 10) NOT NULL,
	[TOTAL_AMOUNT_SETTLED_2] [numeric](22, 10) NOT NULL,
	[TOTAL_AMOUNT_SETTLED_3] [numeric](22, 10) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_INTESA_ITALIA_MOVIMENTI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_DBI_TRANSACTIONS]    Script Date: 01/24/2019 10:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_DBI_TRANSACTIONS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_DBI_TRANSACTIONS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[CUSTODY_ACCOUNT] [varchar](16) NOT NULL,
	[ORDER_TYPE] [varchar](10) NOT NULL,
	[SEME_CODE] [varchar](16) NOT NULL,
	[PREV_CODE] [varchar](16) NULL,
	[DIRECTION] [varchar](10) NOT NULL,
	[TRADE_DATE] [datetime] NOT NULL,
	[SETTLE_DATE] [datetime] NOT NULL,
	[ASSET_ID_TYP] [varchar](10) NULL,
	[ASSET_CODE] [varchar](12) NULL,
	[ASSET_DESC] [varchar](100) NULL,
	[ASSET_CCY] [varchar](3) NOT NULL,
	[ASSET_QTY_TYP] [varchar](10) NOT NULL,
	[QUANTITY] [numeric](22, 10) NOT NULL,
	[ASSET_PRI_TYP] [varchar](10) NOT NULL,
	[PRICE] [numeric](22, 10) NOT NULL,
	[GROSS_AMOUNT] [numeric](22, 10) NOT NULL,
	[ACC_INT] [numeric](22, 10) NOT NULL,
	[FEES] [numeric](22, 10) NOT NULL,
	[COMMISSION] [numeric](22, 10) NOT NULL,
	[TAX] [numeric](22, 10) NOT NULL,
	[NET_AMOUNT] [numeric](22, 10) NOT NULL,
	[CASH_AMOUNT] [numeric](22, 10) NOT NULL,
	[CASH_CCY] [varchar](3) NOT NULL,
	[CCY_EXCHANGE] [numeric](22, 10) NOT NULL,
	[CASH_DESC] [varchar](100) NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_DBI_TRANSACTIONS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_DBI_HOLDINGS]    Script Date: 01/24/2019 10:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_DBI_HOLDINGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_DBI_HOLDINGS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[VALUATION_DATE] [datetime] NOT NULL,
	[NUM_COMPTE] [varchar](16) NOT NULL,
	[LIBELLE] [varchar](50) NOT NULL,
	[CODE_ISIN] [varchar](12) NULL,
	[TYPE_INSTRUMENT] [char](1) NOT NULL,
	[DEVISE] [char](3) NOT NULL,
	[TYPE_EXP_QTE] [char](4) NOT NULL,
	[QUANTITE] [numeric](22, 10) NOT NULL,
	[INTERET_COURU] [numeric](29, 22) NULL,
	[TYPE_COURS] [char](4) NOT NULL,
	[COURS] [numeric](22, 10) NOT NULL,
	[DATE_COURS] [datetime] NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_DBI_HOLDINGS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_CSI_POSIZ]    Script Date: 01/24/2019 10:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_CSI_POSIZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_CSI_POSIZ](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[ARCHIV] [varchar](10) NOT NULL,
	[CLIBCA] [varchar](10) NOT NULL,
	[CLIRCS] [varchar](10) NOT NULL,
	[CNCBCA] [varchar](10) NOT NULL,
	[DEPBCA] [varchar](10) NOT NULL,
	[AMNRMA] [numeric](22, 10) NOT NULL,
	[FAMIGL] [varchar](2) NOT NULL,
	[PRODOT] [varchar](2) NOT NULL,
	[PROMOT] [varchar](5) NOT NULL,
	[AREA] [varchar](20) NULL,
	[ZONA] [varchar](3) NULL,
	[AGENZI] [varchar](2) NOT NULL,
	[DATOPE] [datetime] NOT NULL,
	[MTCTIT] [varchar](10) NULL,
	[MTDTIT] [varchar](250) NULL,
	[DIVPRE] [varchar](5) NOT NULL,
	[MTQTAV] [numeric](22, 10) NOT NULL,
	[CODDIV] [varchar](3) NOT NULL,
	[PRZMDC] [numeric](22, 10) NOT NULL,
	[CAMMDC] [numeric](22, 10) NOT NULL,
	[PRWUNM] [numeric](22, 10) NOT NULL,
	[CAMUNM] [numeric](22, 10) NOT NULL,
	[DATPUM] [datetime] NOT NULL,
	[NOTE] [varchar](20) NULL,
	[RENLOR] [numeric](22, 10) NOT NULL,
	[DATCUM] [datetime] NOT NULL,
	[DIVTIT] [varchar](3) NOT NULL,
	[TIPTIT] [varchar](3) NOT NULL,
	[EMIPAE] [varchar](3) NULL,
	[EMISET] [varchar](3) NULL,
	[RATING] [varchar](5) NULL,
	[MATURI] [varchar](20) NULL,
	[MATUGG] [numeric](22, 10) NOT NULL,
	[DATSCA] [datetime] NULL,
	[CTVMDCEU] [numeric](22, 10) NOT NULL,
	[CTVPUMEU] [numeric](22, 10) NOT NULL,
	[CTVOLTEU] [numeric](22, 10) NOT NULL,
	[DURATI] [numeric](22, 10) NOT NULL,
	[DATSCAPRM] [datetime] NULL,
	[VOLATI] [numeric](22, 10) NOT NULL,
	[VALBASE] [numeric](22, 10) NOT NULL,
	[DURDAT] [varchar](1) NOT NULL,
	[VOLDAT] [varchar](1) NOT NULL,
	[PAETIT] [varchar](3) NULL,
	[MERCRF] [varchar](3) NULL,
	[ATCOD2] [varchar](12) NULL,
	[EMITTENTE] [varchar](20) NULL,
	[RATINN00001] [varchar](5) NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_CSI_POSIZ] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_CSI_MOVTIT]    Script Date: 01/24/2019 10:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_CSI_MOVTIT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_CSI_MOVTIT](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[ARCHIV] [varchar](10) NOT NULL,
	[CLIBCA] [varchar](10) NOT NULL,
	[CLIRCS] [varchar](10) NOT NULL,
	[CNCBCA] [varchar](10) NOT NULL,
	[DEPBCA] [varchar](10) NOT NULL,
	[AMNRMA] [numeric](22, 10) NOT NULL,
	[FAMIGL] [varchar](2) NOT NULL,
	[PRODOT] [varchar](2) NOT NULL,
	[PROMOT] [varchar](5) NOT NULL,
	[AREA] [varchar](20) NULL,
	[ZONA] [varchar](3) NULL,
	[DATREG] [datetime] NOT NULL,
	[DATOPE] [datetime] NOT NULL,
	[DATVAL] [datetime] NOT NULL,
	[CAUSA] [varchar](3) NOT NULL,
	[DCAUSA] [varchar](50) NOT NULL,
	[NOTE] [varchar](20) NULL,
	[CODDIV] [varchar](3) NOT NULL,
	[CAMBIO] [numeric](22, 10) NOT NULL,
	[CTVDIV] [numeric](22, 10) NOT NULL,
	[SEGNO] [varchar](1) NOT NULL,
	[MTCTIT] [varchar](10) NULL,
	[MTDTIT] [varchar](250) NULL,
	[MTQTAV] [numeric](22, 10) NOT NULL,
	[MTPRZT] [numeric](22, 10) NOT NULL,
	[MTPRBP] [numeric](22, 10) NOT NULL,
	[MTDTSC] [varchar](4) NOT NULL,
	[DIVPRE] [varchar](5) NOT NULL,
	[MTDSTO] [varchar](1) NOT NULL,
	[MTNSTO] [varchar](1) NOT NULL,
	[PRODEF] [varchar](2) NOT NULL,
	[TITISI] [varchar](12) NOT NULL,
	[DIVTIT] [varchar](3) NOT NULL,
	[LORNET] [varchar](1) NOT NULL,
	[MTPUM] [numeric](22, 10) NOT NULL,
	[MTCUM] [numeric](22, 10) NOT NULL,
	[CTVLITEU] [numeric](22, 10) NOT NULL,
	[CTVNETEU] [numeric](22, 10) NOT NULL,
	[MTRAINEU] [numeric](22, 10) NOT NULL,
	[MTCOCLEU] [numeric](22, 10) NOT NULL,
	[MTSPCLEU] [numeric](22, 10) NOT NULL,
	[MTCOCSEU] [numeric](22, 10) NOT NULL,
	[MTRITFEU] [numeric](22, 10) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_CSI_MOVTIT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_CSI_MOVLIQ]    Script Date: 01/24/2019 10:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_CSI_MOVLIQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_CSI_MOVLIQ](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[ARCHIV] [varchar](10) NOT NULL,
	[CLIBCA] [varchar](10) NOT NULL,
	[CLIRCS] [varchar](10) NOT NULL,
	[CNCBCA] [varchar](10) NOT NULL,
	[DEPLIQ] [varchar](10) NOT NULL,
	[AMNRMA] [varchar](10) NOT NULL,
	[PROGR] [varchar](10) NOT NULL,
	[FAMIGL] [varchar](2) NOT NULL,
	[PRODOT] [varchar](2) NOT NULL,
	[PROMOT] [varchar](5) NOT NULL,
	[PROOLD] [varchar](10) NOT NULL,
	[AREA] [varchar](20) NULL,
	[ZONA] [varchar](3) NULL,
	[DATREG] [datetime] NOT NULL,
	[DATOPE] [datetime] NOT NULL,
	[DATVAL] [datetime] NOT NULL,
	[CAUSA] [varchar](3) NOT NULL,
	[DCAUSA] [varchar](50) NOT NULL,
	[NOTE] [varchar](20) NULL,
	[CODDIV] [varchar](3) NOT NULL,
	[CAMBIO] [numeric](22, 10) NOT NULL,
	[CTVDIV] [numeric](22, 10) NOT NULL,
	[SEGNO] [varchar](1) NOT NULL,
	[STORNO] [varchar](1) NULL,
	[PRODEF] [varchar](1) NOT NULL,
	[CAMCAR] [numeric](22, 10) NOT NULL,
	[NUMOPE] [varchar](10) NOT NULL,
	[CTVLITEU] [numeric](22, 10) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_CSI_MOVLIQ] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_BMM_STOCK]    Script Date: 01/24/2019 10:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_BMM_STOCK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_BMM_STOCK](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[CODE_ENREGISTREMENT] [varchar](2) NOT NULL,
	[SEQUENCE] [numeric](6, 0) NOT NULL,
	[COMPTE_SUPPORT] [varchar](11) NOT NULL,
	[CODE_ISIN] [varchar](15) NOT NULL,
	[TYPE_VALEUR] [varchar](12) NOT NULL,
	[DESCRIPTION] [varchar](32) NOT NULL,
	[DEVISE_VALEUR] [varchar](3) NOT NULL,
	[QUANTITE_TOTALE] [numeric](22, 10) NOT NULL,
	[QUANTITE_FERME] [numeric](22, 10) NOT NULL,
	[MONTANT_EUR] [numeric](22, 10) NOT NULL,
	[DATE_COURS] [datetime] NOT NULL,
	[DEVISE_COTATION] [varchar](3) NOT NULL,
	[COURS] [numeric](22, 10) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NULL,
	[COURS_EUR] [numeric](22, 10) NULL,
 CONSTRAINT [PK_STG_DATA_BMM_STOCK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_BMM_ETBAC]    Script Date: 01/24/2019 10:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_BMM_ETBAC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_BMM_ETBAC](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[BANK_CODE] [numeric](5, 0) NOT NULL,
	[INTERNAL_REF_OPE] [varchar](4) NULL,
	[GUICHET_CODE] [varchar](5) NOT NULL,
	[PORTFOLIO_CODE] [varchar](11) NOT NULL,
	[DESCRIPTION] [varchar](250) NULL,
	[INTERBANK_CODE] [numeric](2, 0) NULL,
	[NEGOCIATION_DATE] [datetime] NOT NULL,
	[SETTLEMENT_DATE] [datetime] NULL,
	[WRITTING_NUMBER] [varchar](7) NULL,
	[CURRENCY] [varchar](3) NOT NULL,
	[DECIMAL_NUMBER] [numeric](1, 0) NOT NULL,
	[AMOUNT] [numeric](22, 10) NOT NULL,
	[EXONERATION_INDEX] [varchar](1) NULL,
	[UNAVAILABILITY_INDEX] [varchar](1) NULL,
	[CUSTOMER_ZONE] [varchar](16) NULL,
	[OG_MONEY] [varchar](1) NULL,
	[ANNULATION_REF_OPE] [varchar](2) NULL,
	[RECORDING_CODE] [varchar](2) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_STG_DATA_BMM] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_BMM_AVIS_OP]    Script Date: 01/24/2019 10:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_BMM_AVIS_OP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_BMM_AVIS_OP](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[CODE_ENREGISTREMENT] [varchar](2) NOT NULL,
	[SEQUENCE] [numeric](4, 0) NOT NULL,
	[COMPTE_SUPPORT] [varchar](11) NOT NULL,
	[CODE_OPERATION] [varchar](3) NOT NULL,
	[DATE_NEGO] [datetime] NOT NULL,
	[DATE_VALO] [datetime] NOT NULL,
	[QUANTITE] [numeric](22, 10) NOT NULL,
	[COURS] [numeric](22, 10) NOT NULL,
	[DEVISE_BRUT] [varchar](3) NOT NULL,
	[BRUT] [numeric](22, 10) NOT NULL,
	[DEVISE_FRAIS] [varchar](3) NOT NULL,
	[FRAIS] [numeric](22, 10) NOT NULL,
	[DEVISE_NET] [varchar](3) NOT NULL,
	[NET] [numeric](22, 10) NOT NULL,
	[ORIGINE] [varchar](2) NULL,
	[CODE_ISIN] [varchar](12) NOT NULL,
	[NB_DECIMALES_QUANTITE] [numeric](1, 0) NOT NULL,
	[TX_CHANGE] [numeric](22, 10) NOT NULL,
	[PLACE_COTATION] [varchar](3) NOT NULL,
	[COUPON] [numeric](22, 10) NOT NULL,
	[CODE_ANNULATION] [varchar](1) NULL,
	[UNITE_QUANTITE] [varchar](3) NOT NULL,
	[DESCRIPTION] [varchar](60) NOT NULL,
	[REF_OPERATION] [varchar](9) NOT NULL,
	[CONTROLE_MONTANT] [varchar](2) NULL,
	[COURTAGE] [numeric](22, 10) NOT NULL,
	[IMPOT] [numeric](22, 10) NOT NULL,
	[TVA] [numeric](22, 10) NOT NULL,
	[COMMISSIONS] [numeric](22, 10) NOT NULL,
	[REF_ANNULATION_OPERATION] [varchar](9) NULL,
	[MONTANT_ESD] [numeric](22, 10) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_STG_DATA_BMM_AVIS_OP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_BANCA_PROFILO_TRANSACTIONS]    Script Date: 01/24/2019 10:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_BANCA_PROFILO_TRANSACTIONS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_BANCA_PROFILO_TRANSACTIONS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[TRADE_NUMBER] [varchar](16) NOT NULL,
	[ISIN_CODE] [varchar](12) NOT NULL,
	[DESCRIPTION] [varchar](50) NOT NULL,
	[TYPE] [varchar](25) NOT NULL,
	[CURRENCY] [varchar](3) NOT NULL,
	[ACCOUNT_NUMBER] [varchar](10) NOT NULL,
	[POLICY_NUMBER] [varchar](10) NOT NULL,
	[CLIENT_NUMBER] [varchar](5) NOT NULL,
	[CLIENT_DESCRIPTION] [varchar](50) NOT NULL,
	[TRADE_DATE] [datetime] NOT NULL,
	[VALUE_DATE] [datetime] NOT NULL,
	[SIGN] [varchar](5) NOT NULL,
	[AMOUNT] [numeric](22, 10) NOT NULL,
	[PRICE] [numeric](22, 10) NOT NULL,
	[ACCRUED_INTEREST] [numeric](22, 10) NOT NULL,
	[EXCHANGE_RATE] [numeric](22, 10) NOT NULL,
	[COMMISSION] [numeric](22, 10) NOT NULL,
	[EXPENSE] [numeric](22, 10) NOT NULL,
	[OTHER_EXPENSE] [numeric](22, 10) NOT NULL,
	[TOTAL_CT_VALUE_EUR] [numeric](22, 10) NOT NULL,
	[FISCAL_PRICE] [numeric](22, 10) NOT NULL,
	[COUNTER_VALUE_EUR] [numeric](22, 10) NOT NULL,
	[COUNTER_VALUE_CURRENCY] [numeric](22, 10) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_BANCA_PROFILO_TRANSACTIONS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_DATA_BANCA_PROFILO_HOLDINGS]    Script Date: 01/24/2019 10:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STG_DATA_BANCA_PROFILO_HOLDINGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STG_DATA_BANCA_PROFILO_HOLDINGS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[REFERENCE_DATE] [datetime] NOT NULL,
	[ACCOUNT_NUMBER] [varchar](15) NOT NULL,
	[CLIENT_NUMBER] [varchar](5) NOT NULL,
	[CLIENT_NAME] [varchar](8) NOT NULL,
	[POLICY_NUMBER] [varchar](10) NOT NULL,
	[ISIN_CODE] [varchar](12) NOT NULL,
	[DESCRIPTION] [varchar](40) NOT NULL,
	[CURRENCY] [varchar](3) NOT NULL,
	[AMOUNT] [numeric](22, 10) NOT NULL,
	[ACQUISITION_PRICE] [numeric](22, 10) NOT NULL,
	[ACQUISITION_EXCHANGE_RATE] [numeric](22, 10) NOT NULL,
	[PRICE] [numeric](22, 10) NOT NULL,
	[EXCHANGE_RATE] [numeric](22, 10) NOT NULL,
	[VALUE_EUR] [numeric](22, 10) NOT NULL,
	[ACCRUED_INTEREST] [numeric](22, 10) NOT NULL,
	[EXCHANGE_RATE_DATE] [datetime] NOT NULL,
	[LAST_PRICE_DATE] [datetime] NULL,
	[PRIVATE_BANKER_CODE] [varchar](5) NOT NULL,
	[PRIVATE_BANKER_NAME] [varchar](50) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_STG_DATA_BANCA_PROFILO_HOLDINGS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_TMP_DATA_TRANSACTIONS_Insert]
	@Portfolio_Code				VARCHAR(20), 
	@Instrument_Code			VARCHAR(20), 
	@ExternalRefOpe				VARCHAR(16),
	@Description				VARCHAR(500),
	@TypeOpe					VARCHAR(30),
	@ExternalRefAnnul			VARCHAR(16),
	@NegociationDate			DATETIME,
	@SettlementDate				DATETIME,
	@CurrencyQuot				VARCHAR(3),
	@CurrencySett				VARCHAR(3),
	@CurrencyFees				VARCHAR(3),
	@CurrencyNego				VARCHAR(3),	
	@Unit						NUMERIC(22,10),
	@FxRate						NUMERIC(22,10), 	
	@NegociationPrice			NUMERIC(22,10), 
	@SpotPrice					NUMERIC(22,10),
	@GrossNegoAmount			NUMERIC(22,10),
	@Accrued					NUMERIC(22,10),
	@NetSettAmount				NUMERIC(22, 10),	
	@BrockerFees				NUMERIC(22,10),
	@OtherFees					NUMERIC(22,10),
	@TaxesFees					NUMERIC(22,10),
	@CommissionFees				NUMERIC(22,10),
	@CurrencyCommissionFees		VARCHAR(3),
	@RTOFees					NUMERIC(22,10),
	@TTFFees					NUMERIC(22,10),
	@Batch_Stg_Id				NUMERIC(9),
	@Batch_Tmp_Id				NUMERIC(9),
	@File_Loaded_Id				NUMERIC(9),		
	@Version_id					NUMERIC(9),
	@UserName					VARCHAR(100) , -- nom de l''utilisateur
	@MachineName				VARCHAR(100) , -- nom de la machine
	@PackageName				VARCHAR(100), -- nom du package
	@TaskName					VARCHAR(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans TMP_DATA_TRANSACTIONS
	BEGIN TRANSACTION 
		
		BEGIN 
			INSERT INTO TMP_DATA_TRANSACTIONS (PORTFOLIO_CODE,INSTRUMENT_CODE,EXTERNAL_REF_OPE,DESCRIPTION,TYPE_OPE,EXTERNAL_REF_ANNULATION,NEGOCIATION_DATE,SETTLEMENT_DATE,CURRENCY_QUOT,CURRENCY_SETT,CURRENCY_FEES
			,CURRENCY_NEGO,UNIT,FX_RATE_CURRENCY_SETTLEMENT_NEGOCIATION,NEGOCIATION_PRICE,SPOT_PRICE,GROSS_NEGOCIATION_AMOUNT,ACCRUED_INTEREST_NEGOCIATION_AMOUNT,NET_SETTLEMENT_AMOUNT
			,BROCKER_FEES,OTHER_FEES,TAXES_FEES,COMMISSIONS_FEES,COMMISSIONS_FEES_CURRENCY,TTF_FEES,RTO_FEES,BATCH_STG_ID,BATCH_TMP_ID,FILE_LOADED_ID)

VALUES (@Portfolio_Code, 
				@Instrument_Code, 
				@ExternalRefOpe,
				@Description,
				@TypeOpe,
				@ExternalRefAnnul,
				@NegociationDate,
				@SettlementDate,
				@CurrencyQuot,
				@CurrencySett,
				@CurrencyFees,
				@CurrencyNego,	
				@Unit,
				@FxRate	, 	
				@NegociationPrice, 
				@SpotPrice,
				@GrossNegoAmount,
				@Accrued,
				@NetSettAmount,	
				@BrockerFees,
				@OtherFees,
				@TaxesFees,
				@CommissionFees,		
				@CurrencyCommissionFees,						
				@RTOFees,
				@TTFFees,
				@Batch_Stg_Id,
				@Batch_Tmp_Id,
				@File_Loaded_Id)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = dbo.SP_Max_ID TMP_DATA_TRANSACTIONS;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,TMP_AUDIT_TRANSACTIONS,@Version_id, @UserName,	@MachineName, @PackageName,	@TaskName, ''INSERT''
				
	COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_S2I_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_S2I_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_TMP_DATA_S2I_TRANSACTIONS_Insert]
	@Portfolio_Code				VARCHAR(20), 
	@Instrument_Code			VARCHAR(20), 
	@ExternalRefOpe				VARCHAR(16),
	@Description				VARCHAR(500),
	@TypeOpe					VARCHAR(30),
	@ExternalRefAnnul			VARCHAR(16),
	@NegociationDate			DATETIME,
	@SettlementDate				DATETIME,
	@CurrencyQuot				VARCHAR(3),
	@CurrencySett				VARCHAR(3),
	@CurrencyFees				VARCHAR(3),
	@CurrencyNego				VARCHAR(3),	
	@Unit						NUMERIC(22,10),
	@FxRate						NUMERIC(22,10), 	
	@NegociationPrice			NUMERIC(22,10), 
	@SpotPrice					NUMERIC(22,10),
	@GrossNegoAmount			NUMERIC(22,10),
	@Accrued					NUMERIC(22,10),
	@NetSettAmount				NUMERIC(22, 10),	
	@BrockerFees				NUMERIC(22,10),
	@OtherFees					NUMERIC(22,10),
	@TaxesFees					NUMERIC(22,10),
	@CommissionFees				NUMERIC(22,10),
	@CurrencyCommissionFees		VARCHAR(3),
	@RTOFees					NUMERIC(22,10),
	@TTFFees					NUMERIC(22,10),
	@Batch_Stg_Id				NUMERIC(9),
	@Batch_Tmp_Id				NUMERIC(9),
	@File_Loaded_Id				NUMERIC(9),		
	@Version_id					NUMERIC(9),
	@UserName					VARCHAR(100) , -- nom de l''utilisateur
	@MachineName				VARCHAR(100) , -- nom de la machine
	@PackageName				VARCHAR(100), -- nom du package
	@TaskName					VARCHAR(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans TMP_DATA_S2I_TRANSACTIONS
	BEGIN TRANSACTION 
		
		BEGIN 
			INSERT INTO TMP_DATA_S2I_TRANSACTIONS (PORTFOLIO_CODE,INSTRUMENT_CODE,EXTERNAL_REF_OPE,DESCRIPTION,TYPE_OPE,EXTERNAL_REF_ANNULATION,NEGOCIATION_DATE,SETTLEMENT_DATE,CURRENCY_QUOT,CURRENCY_SETT,CURRENCY_FEES
			,CURRENCY_NEGO,UNIT,FX_RATE_CURRENCY_SETTLEMENT_NEGOCIATION,NEGOCIATION_PRICE,SPOT_PRICE,GROSS_NEGOCIATION_AMOUNT,ACCRUED_INTEREST_NEGOCIATION_AMOUNT,NET_SETTLEMENT_AMOUNT
			,BROCKER_FEES,OTHER_FEES,TAXES_FEES,COMMISSIONS_FEES,COMMISSIONS_FEES_CURRENCY,TTF_FEES,RTO_FEES,BATCH_STG_ID,BATCH_TMP_ID,FILE_LOADED_ID)

VALUES (@Portfolio_Code, 
				@Instrument_Code, 
				@ExternalRefOpe,
				@Description,
				@TypeOpe,
				@ExternalRefAnnul,
				@NegociationDate,
				@SettlementDate,
				@CurrencyQuot,
				@CurrencySett,
				@CurrencyFees,
				@CurrencyNego,	
				@Unit,
				@FxRate	, 	
				@NegociationPrice, 
				@SpotPrice,
				@GrossNegoAmount,
				@Accrued,
				@NetSettAmount,	
				@BrockerFees,
				@OtherFees,
				@TaxesFees,
				@CommissionFees,		
				@CurrencyCommissionFees,						
				@RTOFees,
				@TTFFees,
				@Batch_Stg_Id,
				@Batch_Tmp_Id,
				@File_Loaded_Id)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = dbo.SP_Max_ID TMP_DATA_S2I_TRANSACTIONS;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,TMP_AUDIT_S2I_TRANSACTIONS,@Version_id, @UserName,	@MachineName, @PackageName,	@TaskName, ''INSERT''
				
	COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_S2I_PORTFOLIO_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_S2I_PORTFOLIO_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[SP_TMP_DATA_S2I_PORTFOLIO_Insert]
	@Num_Compte		VARCHAR(16), 
	@Batch_Stg_Id	NUMERIC(9),
	@Batch_Tmp_Id	NUMERIC(9),
	@File_Load_Id	NUMERIC(9),	
	@Version_id		NUMERIC(9),
	@UserName		VARCHAR(100) , -- nom de l''utilisateur
	@MachineName	VARCHAR(100) , -- nom de la machine
	@PackageName	VARCHAR(100), -- nom du package
	@TaskName		VARCHAR(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans TMP_DATA_S2I_PORTFOLIO
	
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.TMP_DATA_S2I_PORTFOLIO (DEPOSITORY_CODE  ,BATCH_STG_ID ,BATCH_TMP_ID,FILE_LOADED_ID) 
					VALUES (@Num_Compte,  @Batch_Stg_Id, @Batch_Tmp_Id,  @File_Load_Id)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] TMP_DATA_S2I_PORTFOLIO;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID, TMP_AUDIT_S2I_PORTFOLIO, @Version_id, @UserName, @MachineName, @PackageName, @TaskName, ''INSERT''		

		COMMIT

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_S2I_INSTRUMENTS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_S2I_INSTRUMENTS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_TMP_DATA_S2I_INSTRUMENTS_Insert]
	@Code				VARCHAR(20), 
	@Type_Code			VARCHAR(10),	
	@Description		VARCHAR(250),
	@Currency			VARCHAR(3),
	@Type				VARCHAR(16),
	@Asset_Type			VARCHAR(16),
	@Expression_Unit	VARCHAR(1),
	@Expression_price	VARCHAR(1),
	@Nominal			NUMERIC(22, 10),
	@MaturityDate		DATETIME,	
	@FxNominalIn		NUMERIC(22,10),
	@FxNominalOut		NUMERIC(22,10),
	@FxRate				NUMERIC(22,10),
	@FxCurrencyOut		VARCHAR(3),
	@Batch_Stg_Id		NUMERIC(9),
	@Batch_Tmp_Id		NUMERIC(9),
	@File_Loaded_Id		NUMERIC(9),	
	@Version_id			NUMERIC(9),
	@UserName			VARCHAR(100) , -- nom de l''utilisateur
	@MachineName		VARCHAR(100) , -- nom de la machine
	@PackageName		VARCHAR(100), -- nom du package
	@TaskName			VARCHAR(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans TMP_DATA_S2I_INSTRUMENTS
	BEGIN TRANSACTION 
			
		BEGIN 
			INSERT INTO dbo.TMP_DATA_S2I_INSTRUMENTS (CODE ,TYPE_CODE,DESCRIPTION,CURRENCY,TYPE,ASSET_TYPE,ISSUER,STATE,ISSUE_DATE,MATURITY_DATE,BLOOMBERG_TICKER,EXPRESSION_UNIT,EXPRESSION_PRICE
			,NOMINAL,FX_NOMINAL_IN,FX_CURRENCY_OUT,FX_NOMINAL_OUT,FX_RATE,BATCH_STG_ID,BATCH_TMP_ID,FILE_LOADED_ID)
			VALUES (@Code, @Type_Code, @Description, @Currency, @Type, @Asset_Type, NULL, NULL, @MaturityDate, NULL, NULL, @Expression_Unit, @Expression_price, @Nominal, 
			 @FxNominalIn, @FxCurrencyOut, @FxNominalOut, @FxRate,  @Batch_Stg_Id, @Batch_Tmp_Id,  @File_Loaded_Id)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = [dbo].[SP_Max_ID] TMP_DATA_S2I_INSTRUMENTS;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,TMP_AUDIT_S2I_INSTRUMENTS, @Version_id, @UserName, @MachineName, @PackageName, @TaskName, ''INSERT''		

	COMMIT

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_S2I_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_S2I_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_TMP_DATA_S2I_HOLDINGS_Insert]
	@Portfolio_Code		VARCHAR(20), 
	@Instrument_Code	VARCHAR(20), 
	@Currency			VARCHAR(3),	
	@Unit				NUMERIC(22,10), 	
	@Market_Price		NUMERIC(22,10), 
	@Market_Price_Date	DATETIME,	
	@Amount				NUMERIC(22, 10),		
	@Accrued_Interest	NUMERIC(22, 10),
	@Statement_Date		DATETIME,		
	@Batch_Stg_Id		NUMERIC(9),
	@Batch_Tmp_Id		NUMERIC(9),
	@File_Loaded_Id		NUMERIC(9),		
	@Version_id			NUMERIC(9),
	@UserName			VARCHAR(100) , -- nom de l''utilisateur
	@MachineName		VARCHAR(100) , -- nom de la machine
	@PackageName		VARCHAR(100), -- nom du package
	@TaskName			VARCHAR(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans TMP_DATA_S2I_HOLDINGS
	BEGIN TRANSACTION 
		
		BEGIN 
			INSERT INTO TMP_DATA_S2I_HOLDINGS  (PORTFOLIO_CODE   ,INSTRUMENT_CODE  ,CURRENCY ,UNIT   ,MARKET_PRICE
           ,MARKET_PRICE_DATE  ,AMOUNT ,ACCRUED_INTEREST ,STATEMENT_DATE ,BATCH_STG_ID  ,BATCH_TMP_ID, FILE_LOADED_ID) 
		   VALUES (@Portfolio_Code, @Instrument_Code, @Currency, @Unit, @Market_Price
			, @Market_Price_Date, @Amount, @Accrued_Interest, @Statement_Date, @Batch_Stg_Id, @Batch_Tmp_Id, @File_Loaded_Id)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = dbo.SP_Max_ID TMP_DATA_S2I_HOLDINGS;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,TMP_AUDIT_S2I_HOLDINGS,@Version_id, @UserName,	@MachineName, @PackageName,	@TaskName, ''INSERT''
				
	COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_PORTFOLIO_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_PORTFOLIO_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[SP_TMP_DATA_PORTFOLIO_Insert]
	@Num_Compte		VARCHAR(16), 
	@Batch_Stg_Id	NUMERIC(9),
	@Batch_Tmp_Id	NUMERIC(9),
	@File_Load_Id	NUMERIC(9),	
	@Version_id		NUMERIC(9),
	@UserName		VARCHAR(100) , -- nom de l''utilisateur
	@MachineName	VARCHAR(100) , -- nom de la machine
	@PackageName	VARCHAR(100), -- nom du package
	@TaskName		VARCHAR(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans TMP_DATA_PORTFOLIO
	
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.TMP_DATA_PORTFOLIO (DEPOSITORY_CODE  ,BATCH_STG_ID ,BATCH_TMP_ID,FILE_LOADED_ID) 
					VALUES (@Num_Compte,  @Batch_Stg_Id, @Batch_Tmp_Id,  @File_Load_Id)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] TMP_DATA_PORTFOLIO;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID, TMP_AUDIT_PORTFOLIO, @Version_id, @UserName, @MachineName, @PackageName, @TaskName, ''INSERT''		

		COMMIT

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_INSTRUMENTS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_INSTRUMENTS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_TMP_DATA_INSTRUMENTS_Insert]
	@Code				VARCHAR(20), 
	@Type_Code			VARCHAR(10),	
	@Description		VARCHAR(250),
	@Currency			VARCHAR(3),
	@Type				VARCHAR(16),
	@Asset_Type			VARCHAR(16),
	@Expression_Unit	VARCHAR(1),
	@Expression_price	VARCHAR(1),
	@Nominal			NUMERIC(22, 10),
	@MaturityDate		DATETIME,	
	@FxNominalIn		NUMERIC(22,10),
	@FxNominalOut		NUMERIC(22,10),
	@FxRate				NUMERIC(22,10),
	@FxCurrencyOut		VARCHAR(3),
	@Batch_Stg_Id		NUMERIC(9),
	@Batch_Tmp_Id		NUMERIC(9),
	@File_Loaded_Id		NUMERIC(9),	
	@Version_id			NUMERIC(9),
	@UserName			VARCHAR(100) , -- nom de l''utilisateur
	@MachineName		VARCHAR(100) , -- nom de la machine
	@PackageName		VARCHAR(100), -- nom du package
	@TaskName			VARCHAR(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans TMP_DATA_INSTRUMENTS
	BEGIN TRANSACTION 
			
		BEGIN 
			INSERT INTO dbo.TMP_DATA_INSTRUMENTS (CODE ,TYPE_CODE,DESCRIPTION,CURRENCY,TYPE,ASSET_TYPE,ISSUER,STATE,ISSUE_DATE,MATURITY_DATE,BLOOMBERG_TICKER,EXPRESSION_UNIT,EXPRESSION_PRICE
			,NOMINAL,FX_NOMINAL_IN,FX_CURRENCY_OUT,FX_NOMINAL_OUT,FX_RATE,BATCH_STG_ID,BATCH_TMP_ID,FILE_LOADED_ID)
			VALUES (@Code, @Type_Code, @Description, @Currency, @Type, @Asset_Type, NULL, NULL, NULL, @MaturityDate, NULL, @Expression_Unit, @Expression_price, @Nominal, 
			 @FxNominalIn, @FxCurrencyOut, @FxNominalOut, @FxRate,  @Batch_Stg_Id, @Batch_Tmp_Id,  @File_Loaded_Id)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = [dbo].[SP_Max_ID] TMP_DATA_INSTRUMENTS;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,TMP_AUDIT_INSTRUMENTS, @Version_id, @UserName, @MachineName, @PackageName, @TaskName, ''INSERT''		

	COMMIT

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TMP_DATA_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_TMP_DATA_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_TMP_DATA_HOLDINGS_Insert]
	@Portfolio_Code		VARCHAR(20), 
	@Instrument_Code	VARCHAR(20), 
	@Currency			VARCHAR(3),	
	@Unit				NUMERIC(22,10), 	
	@Market_Price		NUMERIC(22,10), 
	@Market_Price_Date	DATETIME,	
	@Amount				NUMERIC(22, 10),		
	@Accrued_Interest	NUMERIC(22, 10),
	@Statement_Date		DATETIME,		
	@Batch_Stg_Id		NUMERIC(9),
	@Batch_Tmp_Id		NUMERIC(9),
	@File_Loaded_Id		NUMERIC(9),		
	@Version_id			NUMERIC(9),
	@UserName			VARCHAR(100) , -- nom de l''utilisateur
	@MachineName		VARCHAR(100) , -- nom de la machine
	@PackageName		VARCHAR(100), -- nom du package
	@TaskName			VARCHAR(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans TMP_DATA_HOLDINGS
	BEGIN TRANSACTION 
		
		BEGIN 
			INSERT INTO TMP_DATA_HOLDINGS  (PORTFOLIO_CODE   ,INSTRUMENT_CODE  ,CURRENCY ,UNIT   ,MARKET_PRICE
           ,MARKET_PRICE_DATE  ,AMOUNT ,ACCRUED_INTEREST ,STATEMENT_DATE ,BATCH_STG_ID  ,BATCH_TMP_ID, FILE_LOADED_ID) 
		   VALUES (@Portfolio_Code, @Instrument_Code, @Currency, @Unit, @Market_Price
			, @Market_Price_Date, @Amount, @Accrued_Interest, @Statement_Date, @Batch_Stg_Id, @Batch_Tmp_Id, @File_Loaded_Id)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = dbo.SP_Max_ID TMP_DATA_HOLDINGS;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,TMP_AUDIT_HOLDINGS,@Version_id, @UserName,	@MachineName, @PackageName,	@TaskName, ''INSERT''
				
	COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_VALO_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_VALO_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_S2I_VALO_Insert]
	@RELATION_CLIENT VARCHAR(7),
    @CODE_VALEUR_INTERNE VARCHAR(20),
    @DEVISE_VALEUR VARCHAR(3),
    @FILLER1 VARCHAR(1),
    @COURS_BOURSE NUMERIC(22,10),
    @INTERETS_COURUS NUMERIC(22,10),
    @FILLER2 VARCHAR(1),
    @DATE_COURS DATETIME,
    @VALORISATION NUMERIC(22,10),
    @QUANTITE NUMERIC(22,10),
	@FILE_DATE	DATETIME,
	@Batch_Stg_Id NUMERIC(9),
	@File_Loaded_Id NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans STG_DATA_S2I_VALO
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_S2I_VALO ( RELATION_CLIENT ,CODE_VALEUR_INTERNE ,DEVISE_VALEUR  ,FILLER1  ,COURS_BOURSE  ,INTERETS_COURUS  ,FILLER2  ,DATE_COURS  ,VALORISATION  ,QUANTITE, FILE_DATE, BATCH_STG_ID , FILE_LOADED_ID)
					VALUES  (@RELATION_CLIENT,@CODE_VALEUR_INTERNE, @DEVISE_VALEUR, @FILLER1, @COURS_BOURSE, @INTERETS_COURUS, @FILLER2, @DATE_COURS, @VALORISATION, @QUANTITE, @FILE_DATE, @Batch_Stg_Id,@File_Loaded_Id)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_S2I_VALO;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_S2I_VALO,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_VALE_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_VALE_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_S2I_VALE_Insert]
    @CODE_VALEUR_INTERNE VARCHAR(20),
    @CODE_ISIN VARCHAR(12),
    @CODE_TLK VARCHAR(12),
    @LIB_VALEUR VARCHAR(40),
    @PLACE_COTATION VARCHAR(3),
    @TYPE_ACTIF VARCHAR(3),
    @DEV_COTATION VARCHAR(3),
    @PAYS_EMETTEUR VARCHAR(3),
    @SECTEUR_ECO VARCHAR(3),
    @DATE_EMISSION DATETIME,
    @DATE_ECHEANCE DATETIME,
    @TAUX_INT_COURUS NUMERIC(22,10),
    @DEV_COUPON VARCHAR(3),
    @STATUT_COTATION VARCHAR(1),
    @FORME_JURIDIQUE VARCHAR(1),
	@DATE_1ER_COUPON DATETIME,
    @RYTHME_VALEUR VARCHAR(2),
    @CODE_EMETTEUR VARCHAR(7),
    @LIBELLE_TYPE_ACTIF VARCHAR(30),
    @FILLER1 VARCHAR(15),
    @FILLER2 VARCHAR(17),
    @FILLER3 VARCHAR(17),
	@FILE_DATE	DATETIME,
	@Batch_Stg_Id NUMERIC(9),
	@File_Loaded_Id NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans STG_DATA_S2I_VALO
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_S2I_VALE (CODE_VALEUR_INTERNE,CODE_ISIN,CODE_TLK,LIB_VALEUR,PLACE_COTATION,TYPE_ACTIF,DEV_COTATION,PAYS_EMETTEUR,SECTEUR_ECO,DATE_EMISSION,DATE_ECHEANCE,TAUX_INT_COURUS,
					DEV_COUPON,STATUT_COTATION,FORME_JURIDIQUE,DATE_1ER_COUPON, RYTHME_VALEUR,CODE_EMETTEUR,LIBELLE_TYPE_ACTIF,FILLER1,FILLER2,FILLER3, FILE_DATE, BATCH_STG_ID,FILE_LOADED_ID)
					VALUES  (@CODE_VALEUR_INTERNE,@CODE_ISIN,@CODE_TLK,@LIB_VALEUR,@PLACE_COTATION,@TYPE_ACTIF,@DEV_COTATION,@PAYS_EMETTEUR,@SECTEUR_ECO,@DATE_EMISSION,@DATE_ECHEANCE,@TAUX_INT_COURUS,
							@DEV_COUPON,@STATUT_COTATION,@FORME_JURIDIQUE,@DATE_1ER_COUPON, @RYTHME_VALEUR,@CODE_EMETTEUR,@LIBELLE_TYPE_ACTIF,@FILLER1,@FILLER2,@FILLER3,@FILE_DATE, @BATCH_STG_ID,@FILE_LOADED_ID)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_S2I_VALE;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_S2I_VALE,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_PRTF_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_PRTF_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_S2I_PRTF_Insert]
	@TYPE_POSITION VARCHAR(1),
    @TYPE_COMPTE  VARCHAR(4),
    @INTERVENANT VARCHAR(7),
    @NUM_ORDRE_COMPTE VARCHAR(4),
    @NUM_EVT_EN_COURS VARCHAR(9),
    @NUM_SEQ_EN_COURS VARCHAR(3),
    @DEVISE_ESTIM  VARCHAR(3),
    @CODE_DEVISE_DIR  VARCHAR(3),
    @CODE_DEVISE_CPT  VARCHAR(3),
    @DATE_VALEUR DATETIME,
    @DATE_ECHEANCE_OPE DATETIME,
    @INT_COURUS_DEV_ESTIM NUMERIC(22,10),
    @MONTANT_DEV_DIR NUMERIC(22,10),
    @MONTANT_CONTREPARTIE NUMERIC(22,10),
    @MONTANT_ACTUEL_DEV_EST NUMERIC(22,10),
    @RESULTAT_ESTIME NUMERIC(22,10),
    @MON_CPT VARCHAR(3),
    @SOLDE_CPT NUMERIC(22,10),
    @TX_CHANGE_DEV_CPT_DEC_POS NUMERIC(22,10),
    @TX_CHANGE_DEV_ESTIM_DEC_POS NUMERIC(22,10),
    @TX_CHANGE_DEV_DIR_DEC_POS NUMERIC(22,10),
	@FILE_DATE	DATETIME,	
    @BATCH_STG_ID NUMERIC(9),
    @FILE_LOADED_ID NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans STG_DATA_S2I_VALO
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_S2I_PRTF (TYPE_POSITION,  TYPE_COMPTE,INTERVENANT,NUM_ORDRE_COMPTE,NUM_EVT_EN_COURS,NUM_SEQ_EN_COURS,DEVISE_ESTIM,CODE_DEVISE_DIR,CODE_DEVISE_CPT,DATE_VALEUR,DATE_ECHEANCE_OPE,INT_COURUS_DEV_ESTIM,
						MONTANT_DEV_DIR,MONTANT_CONTREPARTIE,MONTANT_ACTUEL_DEV_EST,RESULTAT_ESTIME,MON_CPT,SOLDE_CPT,TX_CHANGE_DEV_CPT_DEC_POS,TX_CHANGE_DEV_ESTIM_DEC_POS, TX_CHANGE_DEV_DIR_DEC_POS, FILE_DATE, BATCH_STG_ID,FILE_LOADED_ID)
					VALUES  (@TYPE_POSITION,  @TYPE_COMPTE,@INTERVENANT,@NUM_ORDRE_COMPTE,@NUM_EVT_EN_COURS,@NUM_SEQ_EN_COURS,@DEVISE_ESTIM,@CODE_DEVISE_DIR,@CODE_DEVISE_CPT,@DATE_VALEUR,@DATE_ECHEANCE_OPE,@INT_COURUS_DEV_ESTIM,
						@MONTANT_DEV_DIR,@MONTANT_CONTREPARTIE,@MONTANT_ACTUEL_DEV_EST,@RESULTAT_ESTIME,@MON_CPT,@SOLDE_CPT,@TX_CHANGE_DEV_CPT_DEC_POS,@TX_CHANGE_DEV_ESTIM_DEC_POS, @TX_CHANGE_DEV_DIR_DEC_POS, @FILE_DATE, @BATCH_STG_ID,@FILE_LOADED_ID)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_S2I_PRTF;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_S2I_PRTF,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_PES_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_PES_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_S2I_PES_Insert]
    @NUM_PTF VARCHAR(12),
    @NUM_ORDRE VARCHAR(4),
	@DESCRIPTION VARCHAR(100),
	@DEV_CPT VARCHAR(3),
	@PONDERATION NUMERIC(22,10),
	@MONTANT_DEVISE_POSITION NUMERIC(22,10),
	@MONTANT_DEVISE_PERF NUMERIC(22,10),
	@INTERETS_COURUS_DEVISE_POSITION NUMERIC(22,10),
	@IBAN VARCHAR(20),
	@MONTANT_POSITION_CAT NUMERIC(22,10),
	@DEVISE_POSITION_CAT VARCHAR(3),
	@DATE DATETIME,
	@BATCH_STG_ID NUMERIC(9),
	@FILE_LOADED_ID NUMERIC(9),
	@VERSION_ID	NUMERIC(9),
	@USERNAME VARCHAR(100), 
	@MACHINE_NAME VARCHAR(100),
	@PACKAGE_NAME VARCHAR(100),
	@TASK_NAME VARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans SP_STG_DATA_S2I_PES_Insert
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO STG_DATA_S2I_PES ([NUM_PTF],
					[NUM_ORDRE],
					[DESCRIPTION],
					[DEV_CPT],
					[PONDERATION],
					[MONTANT_DEVISE_POSITION],
					[MONTANT_DEVISE_PERF],
					[INTERETS_COURUS_DEVISE_POSITION],
					[IBAN],
					[MONTANT_POSITION_CAT],
					[DEVISE_POSITION_CAT],
					[DATE],				
					[BATCH_STG_ID],
					[FILE_LOADED_ID])

					VALUES (@NUM_PTF, @NUM_ORDRE, @DESCRIPTION, @DEV_CPT, @PONDERATION, @MONTANT_DEVISE_POSITION, @MONTANT_DEVISE_PERF,
					@INTERETS_COURUS_DEVISE_POSITION, @IBAN, @MONTANT_POSITION_CAT, @DEVISE_POSITION_CAT, @DATE,  @BATCH_STG_ID, 
					@FILE_LOADED_ID)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_S2I_PES;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID, STG_AUDIT_S2I_PES, @VERSION_ID, @USERNAME, @MACHINE_NAME,	@PACKAGE_NAME, @TASK_NAME, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_MVTS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_MVTS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_S2I_MVTS_Insert]
	@NUM_RELATION VARCHAR(7),
    @NUM_CPT VARCHAR(16),
    @REF_OPE VARCHAR(12),
    @DEV_OPE VARCHAR(3),
    @DATE_COMPTA DATETIME,
    @MONTANT_NET  NUMERIC(22,10),
    @SENS VARCHAR(1),
    @CODE_APPLICATION VARCHAR(3),
    @DESCRIPTION_COURTE VARCHAR(24),
    @DESCRIPTION_LONGUE VARCHAR(120),
    @NUM_RELATION2 VARCHAR(7),
    @NUM_ID_FLUX VARCHAR(12),
    @NUM_ID_FLUX2 VARCHAR(1),
    @TYPE_FLUX VARCHAR(3),
    @TYPE_OPE VARCHAR(3),
	@EXT_TYPE_OPE VARCHAR(4),
    @DEV_COTATION VARCHAR(3),
    @DEV_EXECUTION VARCHAR(3),
    @DEV_CLIENT VARCHAR(3),
    @DEV_EVALUATION VARCHAR(3),
    @TX_CHANGE_DEV_COT_DEV_EXEC NUMERIC(22,10),
    @TX_CHANGE_DEV_COT_DEV_CLIENT NUMERIC(22,10),
    @TX_CHANGE_DEV_COT_DEV_EVAL NUMERIC(22,10),
    @DATE_EXECUTION DATETIME,
    @DATE_VALEUR DATETIME,
    @DATE_COMPTA2 DATETIME,
    @MONTANT_NET_DEV_CLIENT NUMERIC(22,10),
    @MONTANT_NET_DEV_COTATION NUMERIC(22,10),
    @MONTANT_FRAIS_DEV_CLIENT NUMERIC(22,10),
    @QUANTITE NUMERIC(22,10),
    @COMPTE_ESPECE_CODE_REGROUP  VARCHAR(16),
    @INT_COURUS_DEV_CLIENT NUMERIC(22,10),
    @DATE_TRAITEMENT DATETIME,
    @REF_OPE2  VARCHAR(12),
    @COURS NUMERIC(22,10),
    @MONTANT_BRUT_DEV_COTATION NUMERIC(22,10),
    @FILLER1 VARCHAR(4),
    @FILLER2 VARCHAR(4),
    @FILLER3 VARCHAR(1),
    @FILLER4 VARCHAR(35),
    @FILLER5 VARCHAR(1),
    @FILLER6 VARCHAR(12),
    @FILLER7 VARCHAR(15),
    @FILLER8 VARCHAR(9),
	@FILE_DATE	DATETIME,
    @BATCH_STG_ID  NUMERIC(9),
    @FILE_LOADED_ID NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans STG_DATA_S2I_MVTS
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_S2I_MVTS (NUM_RELATION,NUM_CPT,REF_OPE,DEV_OPE,DATE_COMPTA,MONTANT_NET,SENS,CODE_APPLICATION,DESCRIPTION_COURTE,DESCRIPTION_LONGUE,NUM_RELATION2,
						NUM_ID_FLUX,NUM_ID_FLUX2,TYPE_FLUX,TYPE_OPE,EXT_TYPE_OPE, DEV_COTATION,DEV_EXECUTION,DEV_CLIENT,DEV_EVALUATION,TX_CHANGE_DEV_COT_DEV_EXEC, TX_CHANGE_DEV_COT_DEV_CLIENT,TX_CHANGE_DEV_COT_DEV_EVAL, 
						DATE_EXECUTION,DATE_VALEUR,DATE_COMPTA2,MONTANT_NET_DEV_CLIENT,MONTANT_NET_DEV_COTATION,MONTANT_FRAIS_DEV_CLIENT, QUANTITE,COMPTE_ESPECE_CODE_REGROUP,INT_COURUS_DEV_CLIENT,
						DATE_TRAITEMENT,REF_OPE2,COURS,MONTANT_BRUT_DEV_COTATION,FILLER1,FILLER2,FILLER3,FILLER4,FILLER5,FILLER6,FILLER7,FILLER8, FILE_DATE, BATCH_STG_ID,FILE_LOADED_ID)
					VALUES  (@NUM_RELATION,@NUM_CPT,@REF_OPE,@DEV_OPE,@DATE_COMPTA,@MONTANT_NET,@SENS,@CODE_APPLICATION,@DESCRIPTION_COURTE,@DESCRIPTION_LONGUE,@NUM_RELATION2,
						@NUM_ID_FLUX,@NUM_ID_FLUX2,@TYPE_FLUX,@TYPE_OPE,@EXT_TYPE_OPE, @DEV_COTATION,@DEV_EXECUTION,@DEV_CLIENT,@DEV_EVALUATION,@TX_CHANGE_DEV_COT_DEV_EXEC, @TX_CHANGE_DEV_COT_DEV_CLIENT,@TX_CHANGE_DEV_COT_DEV_EVAL, 
						@DATE_EXECUTION,@DATE_VALEUR,@DATE_COMPTA2,@MONTANT_NET_DEV_CLIENT,@MONTANT_NET_DEV_COTATION,@MONTANT_FRAIS_DEV_CLIENT, @QUANTITE,@COMPTE_ESPECE_CODE_REGROUP,@INT_COURUS_DEV_CLIENT,
						@DATE_TRAITEMENT,@REF_OPE2,@COURS,@MONTANT_BRUT_DEV_COTATION,@FILLER1,@FILLER2,@FILLER3,@FILLER4,@FILLER5,@FILLER6,@FILLER7,@FILLER8,@FILE_DATE, @BATCH_STG_ID,@FILE_LOADED_ID)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_S2I_MVTS;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_S2I_MVTS,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_MTI_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_MTI_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_S2I_MTI_Insert]
	@EXTERNAL_REF_OPE VARCHAR(16),
    @NUM_PTF VARCHAR(12),
    @NUM_DOSSIER VARCHAR(1),
	@NUM_VALEUR VARCHAR(20),
	@DESCRIPTION VARCHAR(100),
	@DEV_NEGO VARCHAR(3),
	@DEV_SETT VARCHAR(3),
	@DATE_NEGO DATETIME,
	@DATE_SETT DATETIME,
	@DATE_COMPTA DATETIME,
	@QUANTITE NUMERIC(22,10),
	@DEV_QUOT VARCHAR(3),
	@COURS_UNITAIRE NUMERIC(22,10),
	@MONTANT_BRUT NUMERIC(22,10),
	@INTERETS_COURUS NUMERIC(22,10),
	@FRAIS NUMERIC(22,10),
	@COMMISSIONS NUMERIC(22,10),
	@TAXES NUMERIC(22,10),
	@MONTANT_NET NUMERIC(22,10),
	@COURS_ACHAT NUMERIC(22,10),
	@ANNULATION VARCHAR(1),
	@ANNULATION_REF_OPE VARCHAR(16),
	@ISIN VARCHAR(12),
	@TYPE_VALEUR VARCHAR(1),
	@TYPE_OPE VARCHAR(1),
	@TAXES_BROCKER NUMERIC(22,10),
	@BATCH_STG_ID NUMERIC(9),
	@FILE_LOADED_ID NUMERIC(9),
	@VERSION_ID	NUMERIC(9),
	@USERNAME VARCHAR(100), 
	@MACHINE_NAME VARCHAR(100),
	@PACKAGE_NAME VARCHAR(100),
	@TASK_NAME VARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans SP_STG_DATA_S2I_MTI_Insert
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO STG_DATA_S2I_MTI ([EXTERNAL_REF_OPE],
					[NUM_PTF],
					[NUM_DOSSIER],
					[NUM_VALEUR],
					[DESCRIPTION],
					[DEV_NEGO],
					[DEV_SETT],
					[DATE_NEGO],
					[DATE_SETT],
					[DATE_COMPTA],
					[QUANTITE],
					[DEV_QUOT],
					[COURS_UNITAIRE],
					[MONTANT_BRUT],
					[INTERETS_COURUS],
					[FRAIS],
					[COMMISSIONS],
					[TAXES],
					[MONTANT_NET],
					[COURS_ACHAT],
					[ANNULATION],
					[ANNULATION_REF_OPE],
					[ISIN],
					[TYPE_VALEUR],
					[TYPE_OPE],
					[TAXES_BROCKER],
					[BATCH_STG_ID],
					[FILE_LOADED_ID])

					VALUES (@EXTERNAL_REF_OPE,  @NUM_PTF, @NUM_DOSSIER, @NUM_VALEUR, @DESCRIPTION, @DEV_NEGO, @DEV_SETT, @DATE_NEGO, @DATE_SETT, @DATE_COMPTA,
					@QUANTITE, @DEV_QUOT, @COURS_UNITAIRE, @MONTANT_BRUT, @INTERETS_COURUS, @FRAIS, @COMMISSIONS, @TAXES, @MONTANT_NET, @COURS_ACHAT, @ANNULATION,
					@ANNULATION_REF_OPE, @ISIN, @TYPE_VALEUR, @TYPE_OPE, @TAXES_BROCKER, @BATCH_STG_ID, @FILE_LOADED_ID)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_S2I_MTI;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID, STG_AUDIT_S2I_MTI, @VERSION_ID, @USERNAME, @MACHINE_NAME,	@PACKAGE_NAME, @TASK_NAME, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_MES_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_MES_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_S2I_MES_Insert]
	@EXTERNAL_REF_OPE VARCHAR(16),
    @NUM_PTF VARCHAR(16),
    @NUM_ORDRE VARCHAR(3),
	@DEV_CPT VARCHAR(3),
	@IBAN VARCHAR(20),
	@DESCRIPTION VARCHAR(100),
	@TYPE_OPE VARCHAR(1),
	@DESCRIPTION1 VARCHAR(100),
	@DEV_NEGO VARCHAR(3),
	@DEV_SETT VARCHAR(3),
	@DATE_NEGO DATETIME,
	@DATE_SETT DATETIME,
	@DATE_COMPTA DATETIME,
	@MONTANT_NET NUMERIC(22,10),
	@FRAIS NUMERIC(22,10),
	@MONTANT_BRUT NUMERIC(22,10),
	@DESCRIPTION2 VARCHAR(100),
	@ANNULATION VARCHAR(1),
	@ANNULATION_REF_OPE VARCHAR(16),
	@BATCH_STG_ID NUMERIC(9),
	@FILE_LOADED_ID NUMERIC(9),
	@VERSION_ID	NUMERIC(9),
	@USERNAME VARCHAR(100), 
	@MACHINE_NAME VARCHAR(100),
	@PACKAGE_NAME VARCHAR(100),
	@TASK_NAME VARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans SP_STG_DATA_S2I_MES_Insert
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO STG_DATA_S2I_MES ([EXTERNAL_REF_OPE],
					[NUM_PTF],
					[NUM_ORDRE],
					[DEV_CPT],
					[IBAN],
					[DESCRIPTION],
					[TYPE_OPE],
					[DESCRIPTION1],
					[DEV_NEGO],
					[DEV_SETT],
					[DATE_NEGO],
					[DATE_SETT],
					[DATE_COMPTA],
					[MONTANT_NET],
					[FRAIS],
					[MONTANT_BRUT],
					[DESCRIPTION2],			
					[ANNULATION],
					[ANNULATION_REF_OPE],
					[BATCH_STG_ID],
					[FILE_LOADED_ID])

					VALUES (@EXTERNAL_REF_OPE,  @NUM_PTF, @NUM_ORDRE, @DEV_CPT, @IBAN, @DESCRIPTION, @TYPE_OPE, @DESCRIPTION1, @DEV_NEGO, @DEV_SETT, 
					@DATE_NEGO, @DATE_SETT, @DATE_COMPTA, @MONTANT_NET, @FRAIS, @MONTANT_BRUT, @DESCRIPTION2, @ANNULATION, @ANNULATION_REF_OPE, 
					@BATCH_STG_ID, @FILE_LOADED_ID)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_S2I_MES;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID, STG_AUDIT_S2I_MES, @VERSION_ID, @USERNAME, @MACHINE_NAME,	@PACKAGE_NAME, @TASK_NAME, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_MCP_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_MCP_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_S2I_MCP_Insert]
    
	@EXTERNAL_REF_OPE VARCHAR(16),
	@REF_PTF VARCHAR(12),
	@NUM_ORDRE VARCHAR(4),
	@DEVISE VARCHAR(3),
	@NUM_VALEUR VARCHAR(20),
	@DESCRIPTION VARCHAR(100),
	@NUM_COUPON VARCHAR(10),
	@DEVISE_NEGO VARCHAR(3),
	@DEVISE_SETT VARCHAR(3),
	@DATE_NEGO DATETIME,
	@DATE_SETT DATETIME,
	@DATE_COMPTA DATETIME,
	@QUANTITE NUMERIC(22,10),
	@TAUX NUMERIC(22,10),
	@MONTANT_BRUT NUMERIC(22,10),
	@FRAIS NUMERIC(22,10),
	@TAXES_IMPOTS_ANTICIPES NUMERIC(22,10),
	@IMPOTS_RECUPERABLES NUMERIC(22,10),
	@MONTANT_NET NUMERIC(22,10),
	@DESCRIPTION1 VARCHAR(100),
	@ANNULATION VARCHAR(1),
	@ANNULATION_REF_OPE VARCHAR(16),
	@BATCH_STG_ID NUMERIC(9),
	@FILE_LOADED_ID NUMERIC(9),
	@VERSION_ID	NUMERIC(9),
	@USERNAME VARCHAR(100), 
	@MACHINE_NAME VARCHAR(100),
	@PACKAGE_NAME VARCHAR(100),
	@TASK_NAME VARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans SP_STG_DATA_S2I_MCP_Insert
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO STG_DATA_S2I_MCP (
					[EXTERNAL_REF_OPE],
					[REF_PTF],
					[NUM_ORDRE],
					[DEVISE],
					[NUM_VALEUR],
					[DESCRIPTION],
					[NUM_COUPON],
					[DEVISE_NEGO],
					[DEVISE_SETT],
					[DATE_NEGO],
					[DATE_SETT],
					[DATE_COMPTA],
					[QUANTITE],
					[TAUX],
					[MONTANT_BRUT],
					[FRAIS],
					[TAXES_IMPOTS_ANTICIPES],
					[IMPOTS_RECUPERABLES],
					[MONTANT_NET],
					[DESCRIPTION1],
					[ANNULATION],
					[ANNULATION_REF_OPE],
					[BATCH_STG_ID],
					[FILE_LOADED_ID])

					VALUES (@EXTERNAL_REF_OPE, @REF_PTF, @NUM_ORDRE, @DEVISE, @NUM_VALEUR, @DESCRIPTION, @NUM_COUPON, @DEVISE_NEGO,
					@DEVISE_SETT, @DATE_NEGO, @DATE_SETT, @DATE_COMPTA, @QUANTITE, @TAUX, @MONTANT_BRUT, @FRAIS, @TAXES_IMPOTS_ANTICIPES,
					@IMPOTS_RECUPERABLES, @MONTANT_NET, @DESCRIPTION1, @ANNULATION, @ANNULATION_REF_OPE, @BATCH_STG_ID, @FILE_LOADED_ID)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_S2I_MCP;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID, STG_AUDIT_S2I_MCP, @VERSION_ID, @USERNAME, @MACHINE_NAME,	@PACKAGE_NAME, @TASK_NAME, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_LVAL_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_LVAL_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_S2I_LVAL_Insert]
    @NUM_VALEUR	VARCHAR(20),
	@QUANTITE_TOTALE NUMERIC(22,10),
	@COURS_ESTIMATION NUMERIC(22,10),
	@DESCRIPTION VARCHAR(100),
	@DESCRIPTION1 VARCHAR(100),
	@DESCRIPTION2 VARCHAR(100),
	@NO_STE_EMETTRICE VARCHAR(100),
	@DT_ECH_FINALE DATETIME,
	@ISIN VARCHAR(12),
	@MON_REG VARCHAR(3),
	@MON_NOMI VARCHAR(3),
	@TYPE_COURS VARCHAR(1),
	@TYPE_QTE VARCHAR(1),
	@BLOC_ESTIM_CAA VARCHAR(3),
	@PAYS_DOMICILE_EMTR VARCHAR(3),
	@CODE_DEBITEUR VARCHAR(3),
	@CAT_FISC_FRA VARCHAR(3),
	@EMETTEUR_PRINCIPAL VARCHAR(10),
	@CAT_FISC_INSTR_BEL VARCHAR(3),
	@TYPE_TAUX_INTERET VARCHAR(1),
	@BATCH_STG_ID NUMERIC(9),
	@FILE_LOADED_ID NUMERIC(9),
	@VERSION_ID	NUMERIC(9),
	@USERNAME VARCHAR(100), 
	@MACHINE_NAME VARCHAR(100),
	@PACKAGE_NAME VARCHAR(100),
	@TASK_NAME VARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans SP_STG_DATA_S2I_LVAL_Insert
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO STG_DATA_S2I_LVAL ([NUM_VALEUR],
					[QUANTITE_TOTALE],
					[COURS_ESTIMATION],
					[DESCRIPTION],
					[DESCRIPTION1],
					[DESCRIPTION2],
					[NO_STE_EMETTRICE],
					[DT_ECH_FINALE],
					[ISIN],
					[MON_REG],
					[MON_NOMI],
					[TYPE_COURS],
					[TYPE_QTE],
					[BLOC_ESTIM_CAA],
					[PAYS_DOMICILE_EMTR],
					[CODE_DEBITEUR],
					[CAT_FISC_FRA],
					[EMETTEUR_PRINCIPAL],
					[CAT_FISC_INSTR_BEL],
					[TYPE_TAUX_INTERET],
					[BATCH_STG_ID],
					[FILE_LOADED_ID])

					VALUES (@NUM_VALEUR, @QUANTITE_TOTALE, @COURS_ESTIMATION, @DESCRIPTION, @DESCRIPTION1, @DESCRIPTION2, @NO_STE_EMETTRICE,
					@DT_ECH_FINALE, @ISIN, @MON_REG, @MON_NOMI, @TYPE_COURS, @TYPE_QTE, @BLOC_ESTIM_CAA, @PAYS_DOMICILE_EMTR, @CODE_DEBITEUR, 
					@CAT_FISC_FRA, @EMETTEUR_PRINCIPAL, @CAT_FISC_INSTR_BEL, @TYPE_TAUX_INTERET, @BATCH_STG_ID, @FILE_LOADED_ID)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_S2I_LVAL;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID, STG_AUDIT_S2I_LVAL, @VERSION_ID, @USERNAME, @MACHINE_NAME,	@PACKAGE_NAME, @TASK_NAME, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_S2I_CRC_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_S2I_CRC_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_S2I_CRC_Insert]
    
	@DEVISE VARCHAR(3),
	@DATE DATETIME,
	@COURS NUMERIC(22,10),
	@BATCH_STG_ID NUMERIC(9),
	@FILE_LOADED_ID NUMERIC(9),
	@VERSION_ID	NUMERIC(9),
	@USERNAME VARCHAR(100), 
	@MACHINE_NAME VARCHAR(100),
	@PACKAGE_NAME VARCHAR(100),
	@TASK_NAME VARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans SP_STG_DATA_S2I_CRC_Insert
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO STG_DATA_S2I_CRC (
					[DEVISE],
					[DATE],
					[COURS],
					[BATCH_STG_ID],
					[FILE_LOADED_ID])

					VALUES (@DEVISE, @DATE, @COURS, @BATCH_STG_ID, @FILE_LOADED_ID)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_S2I_CRC;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID, STG_AUDIT_S2I_CRC, @VERSION_ID, @USERNAME, @MACHINE_NAME,	@PACKAGE_NAME, @TASK_NAME, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_MANUEL_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_MANUEL_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_MANUEL_TRANSACTIONS_Insert]
	@Portfolio_Code VARCHAR(20),
	@Instrument_Code VARCHAR(12),
	@Ref_Operation VARCHAR(25),
	@Description VARCHAR(250),
	@Type_Operation VARCHAR(20),
	@Ref_Annulation VARCHAR(25),
	@Negociation_Date DATETIME,
	@Settlement_Date DATETIME,
	@Quotation_Currency VARCHAR(3),
	@Negociation_Currency VARCHAR(3),
	@Fees_Currency VARCHAR(3),
	@Settlement_Currency VARCHAR(3),	
	@Unit NUMERIC(22,10),
	@Fx_Rate NUMERIC(22,10),
	@Negociation_Price NUMERIC(22,10),
	@Spot_Price NUMERIC(22,10),
	@Gross_Negociation_Amount NUMERIC(22,10),
	@Accrued_Interest NUMERIC(22,10),
	@Net_Settlement_Amount NUMERIC(22,10),
	@Brocker_Fees NUMERIC(22,10),
	@Taxes_Fees NUMERIC(22,10),
	@Other_Fees NUMERIC(22,10),
	@Commission_Fees NUMERIC(22,10),
	@Currency_Commission_Fees VARCHAR(3),
	@Tfo_Fees NUMERIC(22,10),
	@TTF_Fees NUMERIC(22,10),
	@Batch_Stg_Id NUMERIC(9),
	@FileLoadedId NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans SP_STG_DATA_MANUEL_TRANSACTIONS
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_MANUEL_TRANSACTIONS VALUES  (@Portfolio_Code,
						@Instrument_Code,
						@Ref_Operation,
						@Description,
						@Type_Operation,
						@Ref_Annulation,
						@Negociation_Date,
						@Settlement_Date,
						@Quotation_Currency,
						@Negociation_Currency,
						@Fees_Currency,
						@Settlement_Currency,
						@Unit,
						@Fx_Rate,
						@Negociation_Price,
						@Spot_Price,
						@Gross_Negociation_Amount,
						@Accrued_Interest,
						@Net_Settlement_Amount,
						@Brocker_Fees,
						@Taxes_Fees,
						@Other_Fees,
						@Commission_Fees,
						@Currency_Commission_Fees,
						@Tfo_Fees,
						@TTF_Fees,
						@Batch_Stg_Id,
						@FileLoadedId)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_MANUEL_TRANSACTIONS;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_MANUEL_TRANSACTIONS,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_MANUEL_INSTRUMENTS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_MANUEL_INSTRUMENTS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_STG_DATA_MANUEL_INSTRUMENTS_Insert]
	@Code VARCHAR(20),
	@Type_Code VARCHAR(10),
	@Description VARCHAR(250),
	@Currency VARCHAR(3),
	@Type VARCHAR(16),
	@Asset_Type VARCHAR(16),
	@Issuer VARCHAR(30),
	@State VARCHAR(30),
	@Issue_Date DATETIME,
	@Maturity_Date DATETIME,
	@Bloomberg_Ticker VARCHAR(6),
	@Expression_Unit VARCHAR(1),
	@Expression_Price VARCHAR(1),
	@Nominal NUMERIC(22,10),
	@Fx_Nominal_In NUMERIC(22,10),
	@Fx_Nominal_Out NUMERIC(22,10),
	@Fx_Rate NUMERIC(22,10),
	@Fx_Currency_Out VARCHAR(3),
	@Batch_Stg_Id NUMERIC(9),
	@FileLoadedId NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans STG_DATA_INTESA_ITALIE_SALDI
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_MANUEL_INSTRUMENTS VALUES(@Code,
						@Type_Code,
						@Description,
						@Currency,
						@Type,
						@Asset_Type,
						@Issuer,
						@State,
						@Issue_Date,
						@Maturity_Date,
						@Bloomberg_Ticker,
						@Expression_Unit,
						@Expression_Price,
						@Nominal,
						@Fx_Nominal_In,
						@Fx_Nominal_Out,
						@Fx_Rate,
						@Fx_Currency_Out,
						@Batch_Stg_Id,
						@FileLoadedId)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_MANUEL_INSTRUMENTS;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_MANUEL_INSTRUMENTS,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_MANUEL_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_MANUEL_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_STG_DATA_MANUEL_HOLDINGS_Insert]
	@Portfolio_Code VARCHAR(20),
	@Instrument_Code VARCHAR(12),
	@Currency VARCHAR(3),
	@Unit NUMERIC(22,10),
	@Price NUMERIC(22,10),
	@Price_Date DATETIME,
	@Accrued_Interest NUMERIC(22,10),
	@Amount NUMERIC(22,10),
	@Amount_Date DATE,
	@Batch_Stg_Id NUMERIC(9),
	@FileLoadedId NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans STG_DATA_INTESA_ITALIE_SALDI
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_MANUEL_HOLDINGS VALUES  (@Portfolio_Code,
					@Instrument_Code,
					@Currency,
					@Unit,
					@Price,
					@Price_Date,
					@Accrued_Interest,
					@Amount,
					@Amount_Date,
					@Batch_Stg_Id,
					@FileLoadedId)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_MANUEL_HOLDINGS;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_MANUEL_HOLDINGS,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_MANUEL_CHANGES_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_MANUEL_CHANGES_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_STG_DATA_MANUEL_CHANGES_Insert]
	@Portfolio_Code VARCHAR(20),
	@Ref_Operation VARCHAR(25),
	@Sens_Operation VARCHAR(10),
	@Type_Operation VARCHAR(20),
	@Ref_Annulation VARCHAR(25),
	@Negociation_Date DATE,
	@Statement_Date DATE,
	@Maturity_Date DATE,
	@Contrepartie VARCHAR(25),
	@Dev_Vendue VARCHAR(3),
	@Dev_Achetee VARCHAR(3),
	@Mnt_Dev_Vendue NUMERIC(22,10),	
	@Mnt_Dev_Achetee NUMERIC(22,10),
	@Taux_Spot NUMERIC(22,10),
	@Taux_Forward NUMERIC(22,10),
	@Batch_Stg_Id NUMERIC(9),
	@FileLoadedId NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans SP_STG_DATA_MANUEL_CHANGES
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_MANUEL_CHANGES VALUES  (@Portfolio_Code,
						@Ref_Operation,
						@Sens_Operation,
						@Type_Operation,
						@Ref_Annulation,
						@Negociation_Date,
						@Statement_Date,
						@Maturity_Date,
						@Contrepartie,
						@Dev_Vendue,
						@Dev_Achetee,
						@Mnt_Dev_Vendue,
						@Mnt_Dev_Achetee,
						@Taux_Spot,
						@Taux_Forward,
						@Batch_Stg_Id,
						@FileLoadedId)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_MANUEL_CHANGES;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_MANUEL_CHANGES,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_LOMBARDA_POSITION_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_LOMBARDA_POSITION_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE PROCEDURE [dbo].[SP_STG_DATA_LOMBARDA_POSITION_Insert]
  	@ACCOUNT_ID [varchar](20)  ,
	@ACCOUNT_CCY [varchar](3) ,
	@AMOUNT [numeric](22, 10) ,
	@STATEMENT_DATE VARCHAR(20) ,
	@BATCH_STG_ID [numeric](9, 0) ,
	@FILE_LOADED_ID [numeric](9, 0),
		
	@Version_id			NUMERIC(9),
	@UserName			VARCHAR(100) , -- nom de l''utilisateur
	@MachineName		VARCHAR(100) , -- nom de la machine
	@PackageName		VARCHAR(100), -- nom du package
	@TaskName			VARCHAR(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans TMP_DATA_S2I_HOLDINGS
	BEGIN TRANSACTION 
		
		BEGIN 
			INSERT INTO STG_DATA_LOMBARDA_POSITION_CASH  (
	 ACCOUNT_ID ,
	ACCOUNT_CCY,
	AMOUNT,
	STATEMENT_DATE,
	BATCH_STG_ID,
	FILE_LOADED_ID 
		    ) 
		   VALUES ( 	   
@ACCOUNT_ID ,
	@ACCOUNT_CCY,
	@AMOUNT,
	Convert(datetime,@STATEMENT_DATE),
	@BATCH_STG_ID,
	@FILE_LOADED_ID)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = dbo.SP_Max_ID STG_AUDIT_LOMBARDA_POSITION_CASH;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_LOMBARDA_POSITION_CASH,@Version_id, @UserName,	@MachineName, @PackageName,	@TaskName, ''INSERT''
				
	COMMIT
	
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_LOMBARDA_MVT_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_LOMBARDA_MVT_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'





CREATE PROCEDURE [dbo].[SP_STG_DATA_LOMBARDA_MVT_Insert]
	@TRX_REF_NUMBER [varchar](20) ,
	@STAT_REF_NUMBER [varchar](20) ,
	@ACCOUNT_ID [varchar](20)  ,
	@ACCOUNT_CCY [varchar](3)  ,
	@OPENING_STAT_BAL [numeric](22, 10) ,
	@DATE_OPENING_STAT_BAL  VARCHAR(20)  ,
	@MVT_DESC  VARCHAR(100)  ,
	@MVT_AMOUNT [numeric](22, 10) ,
	@MVT_VALUE_DATE  VARCHAR(20)  ,
	@CLOSING_STAT_BAL [numeric](22, 10) ,
	@DATE_CLOSING_STAT_BAL VARCHAR(20) ,
	@MVT_ACC_DATE  VARCHAR(20) ,
	@BATCH_STG_ID [numeric](9, 0)  ,
	@FILE_LOADED_ID [numeric](9, 0)  ,
		
	@Version_id			NUMERIC(9),
	@UserName			VARCHAR(100) , -- nom de l''utilisateur
	@MachineName		VARCHAR(100) , -- nom de la machine
	@PackageName		VARCHAR(100), -- nom du package
	@TaskName			VARCHAR(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans TMP_DATA_S2I_HOLDINGS
	BEGIN TRANSACTION 
		
		BEGIN 
			INSERT INTO STG_DATA_LOMBARDA_MVT_CASH  (
	  [TRX_REF_NUMBER]
      ,[STAT_REF_NUMBER]
      ,[ACCOUNT_ID]
      ,[ACCOUNT_CCY]
      ,[OPENING_STAT_BAL]
      ,[DATE_OPENING_STAT_BAL]
      ,[MVT_DESC]
      ,[MVT_AMOUNT]
      ,[MVT_VALUE_DATE]
      ,[CLOSING_STAT_BAL]
      ,[DATE_CLOSING_STAT_BAL]
      ,[MVT_ACC_DATE]
      ,[BATCH_STG_ID]
      ,[FILE_LOADED_ID]
		    ) 
		   VALUES ( 
		   
    @TRX_REF_NUMBER  ,
	@STAT_REF_NUMBER  ,
	@ACCOUNT_ID   ,
	@ACCOUNT_CCY  ,
	@OPENING_STAT_BAL  ,
	Convert(datetime,@DATE_OPENING_STAT_BAL)   ,
	@MVT_DESC   ,
	@MVT_AMOUNT  ,
	Convert(datetime,@MVT_VALUE_DATE)   ,
	@CLOSING_STAT_BAL  ,
	@DATE_CLOSING_STAT_BAL  ,
	Convert(datetime,@MVT_ACC_DATE)  ,
	@BATCH_STG_ID  ,
	@FILE_LOADED_ID   

	
	)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = dbo.SP_Max_ID STG_AUDIT_LOMBARDA_MVT_CASH;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_LOMBARDA_MVT_CASH,@Version_id, @UserName,	@MachineName, @PackageName,	@TaskName, ''INSERT''
				
	COMMIT
	
END




' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_JULIUS_BAER_LUX_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_JULIUS_BAER_LUX_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[SP_STG_DATA_JULIUS_BAER_LUX_HOLDINGS_Insert]
    @PORTFOLIO_CODE [varchar](20) ,
	@INSTRUMENT_CODE [varchar](20) ,
	@CURRENCY [varchar](3)  ,
	@UNIT [numeric](22, 10) ,
	@MARKET_PRICE [numeric](22, 10) ,
	@MARKET_PRICE_DATE [nvarchar](20) ,
	@AMOUNT [numeric](22, 10)  ,
	@ACCRUED_INTEREST [numeric](22, 10) ,
	@INSTR_NATURE [nvarchar](20) ,
	@INSTR_CODE [nvarchar](20) ,
	@INSTR_SAT_NAME [nvarchar](20) ,
	@ACCOUNTING_CODE	[varchar](20) ,
	@FX_OPER_CODE	[varchar](20) ,
	 @FWD_CTR_NAME	 [varchar](20) ,
	 @FWD_AMOUNT1 numeric (22,10) ,
	 @FWD_AMT1_CUR [varchar](3) ,
	 @FWD_AMOUNT2	numeric (22,10) ,
	 @FWD_AMT2_CUR	[varchar](3) ,
	 @FWD_OPENDATE	[nvarchar](20) ,
	 @FWD_EXPDATE	[nvarchar](20) ,
	 @FWD_SPOT_P	numeric (22,10) ,
	 @FWD_FORW_P	numeric (22,10) ,
	 @FWD_CURR_P	numeric (22,10) ,
	 @FWD_PL_AMOUNT	numeric (22,10) ,
	 @POS_EXCH_RATE	numeric (22,10) ,
	 @CONTRACT_SIZE	numeric (22,10) ,
	 @STRIKE_PRICE	numeric (22,10) ,
	 @OPTION_STYLE	 [varchar](20) ,
	 @OPTION_TYPE    [varchar](20) ,

	@STATEMENT_DATE [nvarchar](20) ,
	@BATCH_STG_ID [numeric](9, 0) ,
	@FILE_LOADED_ID [numeric](9, 0),
		
	@Version_id			NUMERIC(9),
	@UserName			VARCHAR(100) , -- nom de l''utilisateur
	@MachineName		VARCHAR(100) , -- nom de la machine
	@PackageName		VARCHAR(100), -- nom du package
	@TaskName			VARCHAR(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans TMP_DATA_S2I_HOLDINGS
	BEGIN TRANSACTION 
		
		BEGIN 
			INSERT INTO STG_DATA_JULIUS_BAER_LUX_POSITION  (
	   [PORTFOLIO_CODE]
      ,[INSTRUMENT_CODE]
      ,[CURRENCY]
      ,[UNIT]
      ,[MARKET_PRICE]
      ,[MARKET_PRICE_DATE]
      ,[AMOUNT]
      ,[ACCRUED_INTEREST]
      ,INSTR_NATURE 
	  ,INSTR_CODE 
	  ,INSTR_SAT_NAME 
      ,[ACCOUNTING_CODE]
      ,[FX_OPER_CODE]
      ,[FWD_CTR_NAME]
      ,[FWD_AMOUNT1]
      ,[FWD_AMT1_CUR]
      ,[FWD_AMOUNT2]
      ,[FWD_AMT2_CUR]
      ,[FWD_OPENDATE]
      ,[FWD_EXPDATE]
      ,[FWD_SPOT_P]
      ,[FWD_FORW_P]
      ,[FWD_CURR_P]
      ,[FWD_PL_AMOUNT]
      ,[POS_EXCH_RATE]
      ,[CONTRACT_SIZE]
      ,[STRIKE_PRICE]
      ,[OPTION_STYLE]
      ,[OPTION_TYPE]
      ,[STATEMENT_DATE]
      ,[BATCH_STG_ID]
      ,[FILE_LOADED_ID]
      ) 
		   VALUES ( @PORTFOLIO_CODE
      ,@INSTRUMENT_CODE
      ,@CURRENCY
      ,abs(@UNIT)
      ,@MARKET_PRICE
      ,Convert(datetime,@MARKET_PRICE_DATE) 
      ,abs(@AMOUNT)
      ,abs(@ACCRUED_INTEREST)
      ,@INSTR_NATURE 
	,@INSTR_CODE 
	,@INSTR_SAT_NAME 
      ,@ACCOUNTING_CODE
      ,@FX_OPER_CODE
      ,@FWD_CTR_NAME
      ,abs(@FWD_AMOUNT1)
      ,@FWD_AMT1_CUR
      ,abs(@FWD_AMOUNT2)
      ,@FWD_AMT2_CUR
      , Convert(datetime,@FWD_OPENDATE) 
      , Convert(datetime,@FWD_EXPDATE)
      ,@FWD_SPOT_P
      ,@FWD_FORW_P
      ,@FWD_CURR_P
      ,abs(@FWD_PL_AMOUNT)
      ,@POS_EXCH_RATE
      ,@CONTRACT_SIZE
      ,@STRIKE_PRICE
      ,@OPTION_STYLE
      ,@OPTION_TYPE
      ,  Convert(datetime,@STATEMENT_DATE)
      ,@BATCH_STG_ID
      ,@FILE_LOADED_ID)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = dbo.SP_Max_ID STG_DATA_JULIUS_BAER_LUX_POSITION;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_JULIUS_BAER_LU_POSITION,@Version_id, @UserName,	@MachineName, @PackageName,	@TaskName, ''INSERT''
				
	COMMIT
	
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_JULIUS_BAER_LU_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_JULIUS_BAER_LU_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_STG_DATA_JULIUS_BAER_LU_TRANSACTIONS_Insert]
	@INPUT_DATE	DATETIME ,
	@OPER_DATE	DATETIME ,
	@VALUE_DATE	DATETIME ,
	@PORTFOLIO	nvarchar(60)	 ,
	@PORTF_CCY	nvarchar(60)	 ,
	@INSTR_NAT_CODE	NUMERIC(9)	 ,
	@INSTR_NATURE	nvarchar(60)	,
	@INSTR_CODE	nvarchar(60)	,
	@INSTR_CCY	[nvarchar](60)	,
	@INSTR_WKN	[nvarchar](60)	,
	@INSTR_ISIN	[nvarchar](60)	,
	@INSTR_NAME	[nvarchar](60)	,
	@INSTR_DENOM	[nvarchar](80)	,
	@OPER_NAT_CODE	NUMERIC(9)	,
	@OPER_NATURE	[nvarchar](60)	,
	@TYPE_CODE	[nvarchar](60)	,
	@TYPE_NAME	[nvarchar](60)	,
	@SUB_TYPE_CODE	[nvarchar](60)	,
	@SUB_TYPE_NAME	[nvarchar](60)	,
	@REV_OPER_NAT_E	[nvarchar](60)	,
	@QUANTITY	numeric(22,10)	,
	@INSTR_U_CCY	[nvarchar](60)	,
	@QUOTE	numeric(22,10)	,
	@POS_CUR	[nvarchar](60)	,
	@AI	numeric(16,2)	,
	@BANK_COMMISSION	numeric(22,10)	,
	@BROKER_FEE	numeric(22,10)	,
	@TAX	numeric(22,10)	,
	@OTHER_FEE	numeric(22,10)	,
	@GROSS_AMOUNT	numeric(22,10)	,
	@OP_NET_AMNT	numeric(22,10)	,
	@ACC_EXCH_RATE	numeric(22,10)	,
	@DEBIT_CREDIT	numeric(22,10)	,
	@NET_CURR	[nvarchar](60)	,
	@ACCOUNT	[nvarchar](60)	,
	@REMARK2	[nvarchar](80)	,
	@INSTR_EXCH_RATE	numeric(22,10)	,
	@ACC_CODE	[nvarchar](60)	,
	@OPER_CODE	[nvarchar](60)	,
	@REF_NAT_E	[nvarchar](60)	,
	@REF_OPER_CODE	[nvarchar](60)	,
	@COUNTERPARTY	[nvarchar](60)	,
	@MARKET	[nvarchar](60)	,
	@SYS_NET_AMOUNT	numeric(22,10)	,
	@ADJ_QUANTITY	numeric(22,10)	,
	@DEPOSIT	[nvarchar](60)	,
	@ADJ_DEPOSIT	[nvarchar](60)	,
	@ADJ_INSTR_CODE	[nvarchar](60)	,
	@ADJ_INSTR_WKN	[nvarchar](60)	,
	@ADJ_INSTR_ISIN	[nvarchar](60)	,
	@ADJ_INSTR_NAME	[nvarchar](60)	,
	@ADJ_INSTR_DENOM	[nvarchar](80)	,
	@ADJ_POS_CUR	[nvarchar](60)	,
	@ADJ_POS_NAT	NUMERIC(9)	,
	@File_Loaded_Id NUMERIC(9),
	@Batch_Stg_Id NUMERIC(9),	
	@Version_id	NUMERIC(9),
	@UserName  [nvarchar](100) , -- nom de l''utilisateur
	@MachineName  [nvarchar](100) , -- nom de la machine
	@PackageName	[nvarchar](100), -- nom du package
	@TaskName	[nvarchar](100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE	@Record_ID NUMERIC(9)
	
	-- Création de la ligne de début dans STG_DATA_JULIUS_BAER_LU_TRANSACTIONS
	BEGIN TRANSACTION 
			
		BEGIN 
			INSERT INTO dbo.STG_DATA_JULIUS_BAER_LU_TRANSACTIONS (INPUT_DATE ,OPER_DATE  ,VALUE_DATE  ,PORTFOLIO  ,PORTF_CCY  ,INSTR_NAT_CODE  ,INSTR_NATURE  
			,INSTR_CODE  ,INSTR_CCY ,INSTR_WKN  ,INSTR_ISIN ,INSTR_NAME ,INSTR_DENOM  ,OPER_NAT_CODE  ,OPER_NATURE   ,TYPE_CODE
			 ,TYPE_NAME ,SUB_TYPE_CODE ,SUB_TYPE_NAME   ,REV_OPER_NAT_E ,QUANTITY ,INSTR_U_CCY ,QUOTE ,POS_CUR ,AI ,BANK_COMMISSION 
			 ,BROKER_FEE ,TAX ,OTHER_FEE ,GROSS_AMOUNT ,OP_NET_AMNT ,ACC_EXCH_RATE ,DEBIT_CREDIT
			 ,NET_CURR ,ACCOUNT ,REMARK2 ,INSTR_EXCH_RATE ,ACC_CODE ,OPER_CODE ,REF_NAT_E ,REF_OPER_CODE ,COUNTERPARTY ,MARKET 
			 ,SYS_NET_AMOUNT ,ADJ_QUANTITY ,DEPOSIT ,ADJ_DEPOSIT ,ADJ_INSTR_CODE ,ADJ_INSTR_WKN
			 ,ADJ_INSTR_ISIN ,ADJ_INSTR_NAME ,ADJ_INSTR_DENOM ,ADJ_POS_CUR ,ADJ_POS_NAT ,FILE_LOADED_ID ,BATCH_STG_ID
			)
		 VALUES  (@INPUT_DATE ,@OPER_DATE  ,@VALUE_DATE  ,@PORTFOLIO  ,@PORTF_CCY  ,@INSTR_NAT_CODE  ,@INSTR_NATURE  
		,@INSTR_CODE  ,@INSTR_CCY ,@INSTR_WKN  ,@INSTR_ISIN ,@INSTR_NAME ,@INSTR_DENOM  ,@OPER_NAT_CODE  ,@OPER_NATURE   ,@TYPE_CODE
		,@TYPE_NAME ,@SUB_TYPE_CODE ,@SUB_TYPE_NAME   ,@REV_OPER_NAT_E ,@QUANTITY ,@INSTR_U_CCY ,@QUOTE ,@POS_CUR ,@AI ,@BANK_COMMISSION 
		,@BROKER_FEE ,@TAX ,@OTHER_FEE ,@GROSS_AMOUNT ,@OP_NET_AMNT ,@ACC_EXCH_RATE ,@DEBIT_CREDIT
		,@NET_CURR ,@ACCOUNT ,@REMARK2 ,@INSTR_EXCH_RATE ,@ACC_CODE ,@OPER_CODE ,@REF_NAT_E ,@REF_OPER_CODE ,@COUNTERPARTY ,@MARKET 
		,@SYS_NET_AMOUNT ,@ADJ_QUANTITY ,@DEPOSIT ,@ADJ_DEPOSIT ,@ADJ_INSTR_CODE ,@ADJ_INSTR_WKN
		,@ADJ_INSTR_ISIN ,@ADJ_INSTR_NAME ,@ADJ_INSTR_DENOM ,@ADJ_POS_CUR ,@ADJ_POS_NAT ,@FILE_LOADED_ID ,@BATCH_STG_ID)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_JULIUS_BAER_LU_TRANSACTIONS;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_JULIUS_BAER_LU_TRANSACTIONS, @Version_id, @UserName, @MachineName, @PackageName, @TaskName, ''INSERT''		

	COMMIT

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_JPM_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_JPM_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_JPM_TRANSACTIONS_Insert]
	@From_Date								DATETIME,
	@To_Date								DATETIME,
	@Account_Number							VARCHAR(12),
	@Full_Account_Number					VARCHAR(24),
	@Iban									VARCHAR(16),
	@Account_Name							VARCHAR(50),
	@Type_Of_Transaction					VARCHAR(8),		-- SECURITY, CASH, FX
	@Instrument_Type_Code					NUMERIC(9),				
	@Instrument_Type_Description			VARCHAR(250),
	@Transaction_Number						NUMERIC(9) ,
	@Olympic_Transaction_Code				NUMERIC(9),				
	@Transaction_Description				VARCHAR(250),
	@Instrument_Short_Name					VARCHAR(25),					
	@Instrument_Long_Name					VARCHAR(50),
	@Valoren								NUMERIC(9),
	@Isin									VARCHAR(16),
	@Ticker									VARCHAR(25),
	@Pricing_Currency						CHAR(3),
	@Base_Currency							CHAR(3),							
	@Transaction_Currency					CHAR(3),
	@Quantity								NUMERIC(9),
	@Trade_Date								DATETIME,
	@Value_Date								DATETIME,
	@System_Date							DATETIME,
	@Transaction_Price						NUMERIC(22,10),
	@Transaction_To_Base_Fx_Rate			NUMERIC(22,10),
	@Price_In_Base_Currency					CHAR(3),
	@Net_Transaction_Amount					NUMERIC(22,10),
	@Net_Transaction_Amount_In_Base			NUMERIC(22,10),
	@Accrued_Interest						NUMERIC(22,10),
	@Accrued_Interest_In_Base				NUMERIC(22,10),
	@Interest_Rate							NUMERIC(22,10),
	@Gross_Transaction_Amount				NUMERIC(22,10),
	@Brokerage_Fees							NUMERIC(22,10),
	@Counterparty_Fees						NUMERIC(22,10),
	@Jpm_Brokerage_Fees						NUMERIC(22,10),
	@Jpm_Fees								NUMERIC(22,10),
	@Swiss_Tax								NUMERIC(22,10),
	@With_Holding_Tax						NUMERIC(22,10) ,
	@Cash_Currency							CHAR(3),
	@Cash_Amount							NUMERIC(22,10),
	@Counterparty_Name						VARCHAR(50),
	@Reversal_Flag							NUMERIC(9),
	@Reversal_Reference						NUMERIC(9),
	@Marketplace							VARCHAR(50),
	@Asset_Classification_1					VARCHAR(25),					
	@Asset_Classification_2					VARCHAR(25),
	@Asset_Classification_3					VARCHAR(25),
	@Current_Face							VARCHAR(25),
	@Factor									VARCHAR(25),									
	@Maturity_Date							DATETIME,
	@Ex_Date								DATETIME,
	@Payable_Date							DATETIME,
	@Dividend_Coupon_Rate					VARCHAR(25),
	@Conctract_Id							NUMERIC(9),
	@Fx_Rate_Platform_Currency				CHAR(3),	
	@File_Loaded_Id							NUMERIC(9),
	@Batch_Stg_Id							NUMERIC(9),		
	@Version_id								NUMERIC(9),
	@UserName								VARCHAR(100) , -- nom de l''utilisateur
	@MachineName							VARCHAR(100) , -- nom de la machine
	@PackageName							VARCHAR(100), -- nom du package
	@TaskName								VARCHAR(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE	@Record_ID NUMERIC(9)
	
	-- Création de la ligne de début dans STG_DATA_JPM_TRANSACTIONS
	BEGIN TRANSACTION 
			
		BEGIN 
			INSERT INTO dbo.STG_DATA_JPM_TRANSACTIONS 
			VALUES  (@From_Date, @To_Date, @Account_Number, @Full_Account_Number, @Iban, @Account_Name, @Type_Of_Transaction, @Instrument_Type_Code,
					 @Instrument_Type_Description, @Transaction_Number, @Olympic_Transaction_Code, @Transaction_Description, @Instrument_Short_Name,
					 @Instrument_Long_Name, @Valoren, @Isin, @Ticker, @Pricing_Currency, @Base_Currency, @Transaction_Currency, @Quantity, @Trade_Date,
					 @Value_Date, @System_Date, @Transaction_Price, @Transaction_To_Base_Fx_Rate, @Price_In_Base_Currency, @Net_Transaction_Amount,
					 @Net_Transaction_Amount_In_Base, @Accrued_Interest, @Accrued_Interest_In_Base, @Interest_Rate, @Gross_Transaction_Amount,
					 @Brokerage_Fees, @Counterparty_Fees, @Jpm_Brokerage_Fees, @Jpm_Fees, @Swiss_Tax, @With_Holding_Tax, @Cash_Currency, @Cash_Amount,
					 @Counterparty_Name, @Reversal_Flag, @Reversal_Reference, @Marketplace, @Asset_Classification_1, @Asset_Classification_2, @Asset_Classification_3,
					 @Current_Face, @Factor, @Maturity_Date, @Ex_Date, @Payable_Date, @Dividend_Coupon_Rate, @Conctract_Id, @Fx_Rate_Platform_Currency,
					 @File_Loaded_Id, @Batch_Stg_Id)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_JPM_TRANSACTIONS;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_JPM_TRANSACTIONS, @Version_id, @UserName, @MachineName, @PackageName, @TaskName, ''INSERT''		

	COMMIT

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_JPM_INSTRUMENTS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_JPM_INSTRUMENTS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_JPM_INSTRUMENTS_Insert]
	@Reference_Date							DATETIME ,
	@Type_Of_Holding						VARCHAR(8),		-- SECURITY, CASH, FX
	@Instrument_Type_Code					NUMERIC(9),
	@Instrument_Type_Description			VARCHAR(250),
	@Instrument_Short_Name					VARCHAR(50),
	@Instrument_Long_Name					VARCHAR(100),
	@Valoren								NUMERIC(9),
	@Isin									VARCHAR(16),
	@Ric									NUMERIC(9),
	@Ticker									VARCHAR(25),
	@Instrument_Currency 					CHAR(3),
	@Price									NUMERIC(22,10),
	@Pos_To_Base_Fx_Rate					NUMERIC(22,10),
	@Base_Price								NUMERIC(22,10),
	@Date_Of_Price							DATETIME,
	@Issue_Date  							DATETIME,
	@Maturity_Date							DATETIME,
	@Accrued_Interest						NUMERIC(22,10),
	@Interest_Rate							NUMERIC(22,10),
	@Income_Currency						CHAR(3),
	@Income_Frequency						NUMERIC(9),
	@Payement_Date_Of_Last_Income			DATETIME,
	@Ex_Date_Of_Last_Dividend				DATETIME,
	@Payement_Date_Of_Next_Income			DATETIME,
	@Value_Date_Of_Next_Coupon    			DATETIME,
	@Ex_Date_Of_Next_Dividend				DATETIME,
	@Interest_Base							VARCHAR(20),
	@Country_Of_Instrument					VARCHAR(25),
	@Market_Place							VARCHAR(25),
	@Asset_Classification1					VARCHAR(50),					
	@Asset_Classification2					VARCHAR(50),
	@Asset_Classification3					VARCHAR(50),
	@Factor									NUMERIC(9) ,
	@Debtor_Name							VARCHAR(50),
	@DebTor_Location						VARCHAR(50),
	@Industry_Group							VARCHAR(50),
	@Issuer_Name							VARCHAR(50),
	@File_Loaded_Id							NUMERIC(9),
	@Batch_Stg_Id							NUMERIC(9),	
	@Version_id								NUMERIC(9),
	@UserName								VARCHAR(100) , -- nom de l''utilisateur
	@MachineName							VARCHAR(100) , -- nom de la machine
	@PackageName							VARCHAR(100), -- nom du package
	@TaskName								VARCHAR(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE	@Record_ID NUMERIC(9)
	
	-- Création de la ligne de début dans STG_DATA_JPM_HOLDINGS
	BEGIN TRANSACTION 
			
		BEGIN 
			INSERT INTO dbo.STG_DATA_JPM_INSTRUMENTS 
			VALUES  (@Reference_Date, @Type_Of_Holding, @Instrument_Type_Code, @Instrument_Type_Description, @Instrument_Short_Name, @Instrument_Long_Name, @Valoren, @Isin,								
					 @Ric, @Ticker, @Instrument_Currency, @Price, @Pos_To_Base_Fx_Rate, @Base_Price, @Date_Of_Price, @Issue_Date, @Maturity_Date, @Accrued_Interest, @Interest_Rate,						
					 @Income_Currency, @Income_Frequency, @Payement_Date_Of_Last_Income, @Ex_Date_Of_Last_Dividend, @Payement_Date_Of_Next_Income, @Value_Date_Of_Next_Coupon, @Ex_Date_Of_Next_Dividend,			
					 @Interest_Base, @Country_Of_Instrument, @Market_Place, @Asset_Classification1, @Asset_Classification2, @Asset_Classification3, @Factor, @Debtor_Name, @DebTor_Location, @Industry_Group,						
					 @Issuer_Name, @File_Loaded_Id, @Batch_Stg_Id)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_JPM_INSTRUMENTS;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_JPM_INSTRUMENTS, @Version_id, @UserName, @MachineName, @PackageName, @TaskName, ''INSERT''		

	COMMIT

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_JPM_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_JPM_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_JPM_HOLDINGS_Insert]
	@Reference_Date							DATETIME,
	@Account_Number							VARCHAR(12),
	@Base_Currency							CHAR(3),
	@Type_Of_Holding						VARCHAR(8),		-- SECURITY, CASH, FX
	@Instrument_Type_Description			VARCHAR(250),
	@Instrument_Short_Name					VARCHAR(25),
	@Isin									VARCHAR(16),
	@Currency_Of_InStrument					CHAR(3),
	@Fx_Buying_Currency						CHAR(3),
	@Fx_Selling_Currency					CHAR(3),
	@Quantity								NUMERIC(9),
	@Price									NUMERIC(22,10),
	@Position_To_Base_Fx_Rate				NUMERIC(22,10),
	@Buy_To_Base_Fx_Rate					NUMERIC(22,10),
	@Sell_To_Base_Fx_Rate					NUMERIC(22,10),
	@Market_Value							NUMERIC(22,10),
	@Base_Market_Value						NUMERIC(22,10),
	@Fx_Buy_Amount							NUMERIC(22,10),
	@Fx_Sell_Amount							NUMERIC(22,10),
	@Fx_Buy_Amount_In_Base					NUMERIC(22,10),
	@Fx_Sell_Amount_In_Base					NUMERIC(22,10),
	@Accrued_Interest						NUMERIC(22,10),
	@Maturity_Date							DATETIME,
	@Start_Date								DATETIME,
	@Interest_Rate							NUMERIC(22,10),
	@Fx_Deal_Rate							NUMERIC(22,10),
	@Last_Fx_Rate							NUMERIC(22,10),
	@Account_Name							VARCHAR(25),
	@Iban									VARCHAR(16),
	@FullAccountNumber  					VARCHAR(24),
	@Instrument_Type_Code					NUMERIC(9),
	@Instrument_Long_Name					VARCHAR(50),
	@Valoren								NUMERIC(9),
	@Ticker									VARCHAR(25),
	@Base_Price								NUMERIC(22,10),
	@Date_Of_Price							DATETIME,
	@Base_Accrued_Interest					NUMERIC(22,10),
	@Average_Cost_Market_Value    			NUMERIC(22,10),
	@Average_Cost_Price						NUMERIC(22,10),
	@Average_Cost_Market_Value_In_Base		NUMERIC(22,10),
	@Average_Cost_Price_In_Base				NUMERIC(22,10),
	@Average_Bought_Market_Value			NUMERIC(22,10),
	@Average_Bought_Price					NUMERIC(22,10),
	@Average_Bought_Market_Value_In_Base	NUMERIC(22,10),
	@Average_Bought_Price_In_Base			NUMERIC(22,10),
	@Country_Of_Instrument					VARCHAR(25),
	@Exchange_Rate_Date						DATETIME,
	@Income_Currency						CHAR(3),
	@Income_Frequency						NUMERIC(9),
	@Date_Of_Last_Income					DATETIME,
	@Market_Place							VARCHAR(25),
	@Asset_Classification1					VARCHAR(50),					
	@Asset_Classification2					VARCHAR(50),
	@Asset_Classification3					VARCHAR(50),
	@Current_Face							VARCHAR(25),
	@Factor									VARCHAR(25),
	@Custodian_ID							NUMERIC(9),	
	@Custodian_Name							VARCHAR(50),
	@Fx_Rate_Platform_Currency				CHAR(3),
	@File_Loaded_Id							NUMERIC(9),
	@Batch_Stg_Id							NUMERIC(9),		
	@Version_id								NUMERIC(9),
	@UserName								VARCHAR(100) , -- nom de l''utilisateur
	@MachineName							VARCHAR(100) , -- nom de la machine
	@PackageName							VARCHAR(100), -- nom du package
	@TaskName								VARCHAR(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE	@Record_ID NUMERIC(9)
	
	-- Création de la ligne de début dans STG_DATA_JPM_HOLDINGS
	BEGIN TRANSACTION 
			
		BEGIN 
			INSERT INTO dbo.STG_DATA_JPM_HOLDINGS 
			VALUES  (@Reference_Date, @Account_Number, @Account_Name, @Iban, @Base_Currency, @FullAccountNumber, @Type_Of_Holding, @Instrument_Type_Code,
					 @Instrument_Type_Description, @Instrument_Short_Name, @Instrument_Long_Name, @Valoren, @Isin, @Ticker, @Currency_Of_InStrument,
					 @Fx_Buying_Currency, @Fx_Selling_Currency, @Quantity, @Price, @Position_To_Base_Fx_Rate, @Buy_To_Base_Fx_Rate, @Sell_To_Base_Fx_Rate, 
					 @Base_Price, @Date_Of_Price, @Market_Value, @Base_Market_Value, @Fx_Buy_Amount, @Fx_Sell_Amount, @Fx_Buy_Amount_In_Base, 
					 @Fx_Sell_Amount_In_Base, @Accrued_Interest, @Base_Accrued_Interest, @Average_Cost_Market_Value, @Average_Cost_Price, 
					 @Average_Cost_Market_Value_In_Base, @Average_Cost_Price_In_Base, @Average_Bought_Market_Value, @Average_Bought_Price,
					 @Average_Bought_Market_Value_In_Base, @Average_Bought_Price_In_Base, @Maturity_Date, @Start_Date, @Interest_Rate, @Country_Of_Instrument, 
					 @Exchange_Rate_Date, @Income_Currency, @Income_Frequency, @Date_Of_Last_Income, @Market_Place, @Asset_Classification1, @Asset_Classification2, 
					 @Asset_Classification3, @Current_Face, @Factor, @Fx_Deal_Rate, @Last_Fx_Rate, @Custodian_ID, @Custodian_Name, @Fx_Rate_Platform_Currency, @File_Loaded_Id, @Batch_Stg_Id)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_JPM_HOLDINGS;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_JPM_HOLDINGS, @Version_id, @UserName, @MachineName, @PackageName, @TaskName, ''INSERT''		

	COMMIT
	
	END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_JPM_FX_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_JPM_FX_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[SP_STG_DATA_JPM_FX_Insert]
	@Reference_Date							DATETIME,
	@Account_Number							VARCHAR(12),
	@Account_Name							VARCHAR(25),
	@Base_Currency							CHAR(3),
	@Full_Account_Number					VARCHAR(24),
	@Instrument_Type_Code					NUMERIC(9),
	@Instrument_Type_Description			VARCHAR(250),
	@Buying_Currency						CHAR(3),
	@Selling_Currency						CHAR(3),
	@Buy_To_Base_Fx_Rate					NUMERIC(22,10),
	@Sell_To_Base_Fx_Rate					NUMERIC(22,10),
	@Buy_Amount								NUMERIC(22,10),
	@Sell_Amount    						NUMERIC(22,10),
	@Buy_Amount_In_Base						NUMERIC(22,10),
	@Sell_Amount_In_Base					NUMERIC(22,10),
	@Maturity_Date							DATETIME,
	@Spot_Date							    DATETIME,
	@Exchange_Rate_Date						DATETIME,
	@Asset_Classification1					VARCHAR(50),					
	@Asset_Classification2					VARCHAR(50),
	@Asset_Classification3					VARCHAR(50),
	@Deal_Rate								NUMERIC(22,10),
	@Last_Available_Rate					NUMERIC(22,10),
	@File_Loaded_Id							NUMERIC(9),
	@Batch_Stg_Id							NUMERIC(9),		
	@Version_id							    NUMERIC(9),
	@UserName								VARCHAR(100) , -- nom de l''utilisateur
	@MachineName							VARCHAR(100) , -- nom de la machine
	@PackageName							VARCHAR(100), -- nom du package
	@TaskName								VARCHAR(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE	@Record_ID NUMERIC(9)
	
	-- Création de la ligne de début dans STG_DATA_JPM_FX
	BEGIN TRANSACTION 
			
		BEGIN 
			INSERT INTO dbo.STG_DATA_JPM_FX 
			VALUES  (@Reference_Date, @Account_Number, @Account_Name, @Base_Currency, @Full_Account_Number, @Instrument_Type_Code, @Instrument_Type_Description,			
					 @Buying_Currency, @Selling_Currency, @Buy_To_Base_Fx_Rate, @Sell_To_Base_Fx_Rate, @Buy_Amount, @Sell_Amount, @Buy_Amount_In_Base, @Sell_Amount_In_Base,					
					 @Maturity_Date, @Spot_Date, @Exchange_Rate_Date, @Asset_Classification1, @Asset_Classification2, @Asset_Classification3,					
					 @Deal_Rate, @Last_Available_Rate, @File_Loaded_Id, @Batch_Stg_Id)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_JPM_FX;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_JPM_FX, @Version_id, @UserName, @MachineName, @PackageName, @TaskName, ''INSERT''		

	COMMIT

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_XRATE_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_XRATE_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_XRATE_Insert]
	@CURRY_ID				NUMERIC(9),
	@CURRY_NAME				NVARCHAR(255),
	@DESCRIPTION			NVARCHAR(255),
	@TERMIN					NUMERIC(9),
	@UNIT					NUMERIC(22,10),
	@XRATE_FACTOR			NUMERIC(22,10),
	@XRATE_DATE				NVARCHAR(255),
	@FACTOR					NUMERIC(9),
	@FILE_LOAD_ID			NUMERIC(9),
	@BATCH_STG_ID			NUMERIC(9),
	@VERSION_ID				NUMERIC(9),
	@USER_NAME				NVARCHAR(100), 
	@MACHINE_NAME			NVARCHAR(100), 
	@PACKAGE_NAME			NVARCHAR(100), 
	@TASK_NAME				NVARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans STG_DATA_INTESA_SUISSE_BSM_ASSETS
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_INTESA_SUISSE_BSM_XRATE VALUES  (@CURRY_ID,
						@CURRY_NAME,	
						@DESCRIPTION,
						@TERMIN,
						@UNIT,
						@XRATE_FACTOR,
						CONVERT(DATETIME, @XRATE_DATE),
						@FACTOR,
						@FILE_LOAD_ID,
						@BATCH_STG_ID,
						GETDATE())
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_INTESA_SUISSE_BSM_XRATE;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_INTESA_SUISSE_BSM_XRATE, @VERSION_ID,	@USER_NAME, @MACHINE_NAME, @PACKAGE_NAME, @TASK_NAME, ''INSERT''
						
		COMMIT
	
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_POS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_POS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'





CREATE PROCEDURE [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_POS_Insert]
@POS_ID   bigint NULL,
@POS_TYP 	nvarchar(255) NULL,
@POS_TYP_ID 	tinyint NULL,
@NAME 	nvarchar(255) NULL,
@SORT_NR 	nvarchar(255) NULL,
@SORT_ALPHA 	nvarchar(255) NULL,
@STRIKE 	nvarchar(255) NULL,
@REF_DATE 	nvarchar(255) NULL,
@CURR_PRICE 	nvarchar(255) NULL,
@CURR_PRICE_CURRY 	nvarchar(255) NULL,
@CURR_PRICE_QUOTE_TYPE 	nvarchar(255) NULL,
@CURR_VAL_POS 	decimal(28, 10) NULL,
@CURR_POS_REF_CURRY 	nvarchar(255) NULL,
@CURR_VAL_REF 	decimal(28, 10) NULL,
@CURR_VAL_REF_CURRY 	nvarchar(255) NULL,
@CURR_VAL_BU 	decimal(28, 10) NULL,
@ACCR_POS 	decimal(28, 10) NULL,
@ACCR_COMM_POS 	decimal(28, 10) NULL,
@ACCR_REF 	decimal(28, 10) NULL,
@ACCR_COMM_REF 	decimal(28, 10) NULL,
@ACCR_BU 	decimal(28, 10) NULL,
@ACCR_COMM_BU 	decimal(28, 10) NULL,
@CURR_PRICE_XRATE 	decimal(28, 10) NULL,
@CURR_XRATE 	nvarchar(255) NULL,
@EXTRACT_DATE 	nvarchar(255) NULL,
@QTY 	decimal(28, 10) NULL,
@BUY_QTY 	nvarchar(255) NULL,
@SELL_QTY 	nvarchar(255) NULL,
@MATURITY 	nvarchar(255) NULL,
@OPEN_DATE 	nvarchar(255) NULL,
@CLOSE_DATE 	nvarchar(255) NULL,
@ASSET_ID 	bigint NULL,
@ASSET_ISIN 	nvarchar(255) NULL,
@ASSET_TKN 	nvarchar(255) NULL,
@ASSET_NAME 	nvarchar(255) NULL,
@ASSET_TYPE_ID 	nvarchar(255) NULL,
@ASSET_TYPE 	nvarchar(255) NULL,
@ASSET_OPTION_TYPE_ID 	nvarchar(255) NULL,
@ASSET_OPTION_TYPE 	nvarchar(255) NULL,
@ASSET_PRICE 	nvarchar(255) NULL,
@ASSET_EVAL_DATE 	nvarchar(255) NULL,
@ASS_GROUP 	nvarchar(255) NULL,
@ASS_GROUP_INTL_ID 	nvarchar(255) NULL,
@CONTR_SIZE 	nvarchar(255) NULL,
@CONT_ID 	bigint NULL,
@ASSET_INTR_RATE 	nvarchar(255) NULL,
@BP_ID 	bigint NULL,
@BP_NAME 	nvarchar(255) NULL,
@BP_SORT_NR 	bigint NULL,
@BP_SORT_ALPHA 	bigint NULL,
@BU_ID 	tinyint NULL,
@BU_NAME 	nvarchar(255) NULL,
@BU_SORT_ALPHA 	nvarchar(255) NULL,
@BU_SORT_NR 	nvarchar(255) NULL,
@CONT_NAME 	nvarchar(255) NULL,
@CONT_SORT_NR 	decimal(28, 10) NULL,
@CONT_SORT_ALPHA 	decimal(28, 10) NULL,
@UNDRLY_ID 	nvarchar(255) NULL,
@POS_TWRR_PERF 	nvarchar(255) NULL,
@HIST_VAL_POS 	decimal(28, 10) NULL,
@HIST_VAL_REF 	decimal(28, 10) NULL,
@HIST_PRICE_POS 	nvarchar(255) NULL,
@HIST_PRICE_REF 	nvarchar(255) NULL,
@HIST_XRATE 	nvarchar(255) NULL,
@ISSUE_PRICE 	nvarchar(255) NULL,
@INTR_DAY_CNT 	nvarchar(255) NULL,
@OPTION_CONTRACT_SIZE 	nvarchar(255) NULL,

@FileLoadedId NUMERIC(9),-----
@Version_id	NUMERIC(9),
@UserName  VARCHAR(100) , -- nom de l''utilisateur
@MachineName  VARCHAR(100) , -- nom de la machine
@PackageName	VARCHAR(100), -- nom du package
@TaskName	VARCHAR(100), -- nom de la task
@BATCH_STG_ID			NUMERIC(9)
AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 	
	-- Création de la ligne de début dans STG_DATA_INTESA_ITALIE_SALDI
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_INTESA_SUISSE_BSM_POS 
					VALUES  
					(	
       @POS_ID
      ,@POS_TYP
      ,@POS_TYP_ID
      ,@NAME
      ,@SORT_NR
      ,@SORT_ALPHA
      ,@STRIKE
      ,CONVERT(DATE,@REF_DATE)
      ,@CURR_PRICE
      ,@CURR_PRICE_CURRY
      ,@CURR_PRICE_QUOTE_TYPE
      ,@CURR_VAL_POS
      ,@CURR_POS_REF_CURRY
      ,@CURR_VAL_REF
      ,@CURR_VAL_REF_CURRY
      ,@CURR_VAL_BU
      ,@ACCR_POS
      ,@ACCR_COMM_POS
      ,@ACCR_REF
      ,@ACCR_COMM_REF
      ,@ACCR_BU
      ,@ACCR_COMM_BU
      ,@CURR_PRICE_XRATE
      ,@CURR_XRATE
      ,CONVERT(DATE,@EXTRACT_DATE)
      ,@QTY
      ,@BUY_QTY
      ,@SELL_QTY
      ,CONVERT(DATE,@MATURITY)
      ,CONVERT(DATE,@OPEN_DATE)
      ,CONVERT(DATE,@CLOSE_DATE)
      ,@ASSET_ID
      ,@ASSET_ISIN
      ,@ASSET_TKN
      ,@ASSET_NAME
      ,@ASSET_TYPE_ID
      ,@ASSET_TYPE
      ,@ASSET_OPTION_TYPE_ID
      ,@ASSET_OPTION_TYPE
      ,@ASSET_PRICE
      ,CONVERT(DATE,@ASSET_EVAL_DATE)
      ,@ASS_GROUP
      ,@ASS_GROUP_INTL_ID
      ,@CONTR_SIZE
      ,@CONT_ID
      ,@ASSET_INTR_RATE
      ,@BP_ID
      ,@BP_NAME
      ,@BP_SORT_NR
      ,@BP_SORT_ALPHA
      ,@BU_ID
      ,@BU_NAME
      ,@BU_SORT_ALPHA
      ,@BU_SORT_NR
      ,@CONT_NAME
      ,@CONT_SORT_NR
      ,@CONT_SORT_ALPHA
      ,@UNDRLY_ID
      ,@POS_TWRR_PERF
      ,@HIST_VAL_POS
      ,@HIST_VAL_REF
      ,@HIST_PRICE_POS
      ,@HIST_PRICE_REF
      ,@HIST_XRATE
      ,@ISSUE_PRICE
      ,@INTR_DAY_CNT
      ,@OPTION_CONTRACT_SIZE
      ,@FileLoadedId
      ,@BATCH_STG_ID
      ,GETDATE()      
					)
				end
			
				---- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_INTESA_SUISSE_BSM_POS;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_INTESA_SUISSE_BSM_POS,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END




' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_DOC_STEX_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_DOC_STEX_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'







CREATE PROCEDURE [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_DOC_STEX_Insert]
						@BPID [bigint] NULL,
						@CUSTOMER_NO [bigint] NULL,
						@BP_NAME [nvarchar](255) NULL,
						@BP_REF_CURRY_ID [int] NULL,
						@BPREF_CURRY_ID [nvarchar](255) NULL,
						@BUID [tinyint] NULL,
						@CONTID [bigint] NULL,
						@DFLT_CONT_NR [decimal](28, 10) NULL,
						@PORTFOLIO_NO [decimal](28, 10) NULL,
						@PORTFOLIO_ID [nvarchar](255) NULL,
						@POSID [bigint] NULL,
						@ACCOUNT_NO [decimal](28, 10) NULL,
						@ACCOUNT_ID [nvarchar](255) NULL,
						@POS_REF_CURRY_ID [int] NULL,
						@ACCOUNT_CURRY_ID [nvarchar](255) NULL,
						@ACCOUNT_SALDO [decimal](28, 10) NULL,
						@ACCOUNT_ACCRUED_INTEREST [tinyint] NULL,
						@BANK [nvarchar](255) NULL,
						@EXCH_RATE [tinyint] NULL,
						@POS_IBAN [nvarchar](255) NULL,
						@EXTRACT_DATE [nvarchar](255) NULL,

@FILE_LOAD_ID NUMERIC(9),-----
@Version_id	NUMERIC(9),
@UserName  VARCHAR(100) , -- nom de l''utilisateur
@MachineName  VARCHAR(100) , -- nom de la machine
@PackageName	VARCHAR(100), -- nom du package
@TaskName	VARCHAR(100), -- nom de la task
@BATCH_STG_ID			NUMERIC(9)
AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 	
	-- Création de la ligne de début dans STG_DATA_INTESA_ITALIE_SALDI
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_INTESA_SUISSE_BSM_DOC_STEX 
					VALUES  
					(	
       @BPID
      ,@CUSTOMER_NO
      ,@BP_NAME
      ,@BP_REF_CURRY_ID
      ,@BPREF_CURRY_ID
      ,@BUID
      ,@CONTID
      ,@DFLT_CONT_NR
      ,@PORTFOLIO_NO
      ,@PORTFOLIO_ID
      ,@POSID
      ,@ACCOUNT_NO
      ,@ACCOUNT_ID
      ,@POS_REF_CURRY_ID
      ,@ACCOUNT_CURRY_ID
      ,@ACCOUNT_SALDO
      ,@ACCOUNT_ACCRUED_INTEREST
      ,@BANK
      ,@EXCH_RATE
      ,@POS_IBAN
      ,CONVERT(DATE,@EXTRACT_DATE)
      ,@BATCH_STG_ID
      ,@FILE_LOAD_ID
      ,GETDATE()      
					)
				end
			
				---- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_INTESA_SUISSE_BSM_DOC_STEX;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_INTESA_SUISSE_BSM_DOC_STEX,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END






' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_DOC_SECTRX_INSERT]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_DOC_SECTRX_INSERT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


create PROCEDURE [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_DOC_SECTRX_INSERT]
	@BU_ID 	[numeric](22, 10) ,
	@SECEVT_ID 	[numeric](22, 10) ,
	@SECTRX2_ID 	[numeric](22, 10) ,
	@META_TYP_ID [numeric](22, 10) ,
	@META_TYP_NAME [varchar](100) ,
	@ORDER_TYPE_ID [numeric](22, 10) ,
	@ORDER_TYPE_NAME [varchar](100) ,
	@WFC_STATUS_ID [numeric](22, 10) ,
	@WFC_STATUS_NAME [varchar](100) ,
	@ORDERED_BY [varchar](100) ,
	@MEDIUM_ID [numeric](22, 10) ,
	@MEDIUM_NAME [varchar](100) ,
	@TRX_DATE [datetime] ,
	@VAL_DATE [datetime] ,
	@EXTL_REF_NR [varchar](100) ,
	@INTL_REF_NR [varchar](100) ,
	@BP_ID [numeric](22, 10) ,
	@CONT_ID [numeric](22, 10) ,
	@CUST_CONT_ID [numeric](22, 10) ,
	@POS_ID [numeric](22, 10) ,
	@ASSET_ID [numeric](22, 10) ,
	@MACC_ID [numeric](22, 10) ,
	@EX_DATE [datetime] ,
	@QTY [numeric](22, 10) ,
	@QTY_DFLT [numeric](22, 10) ,
	@BOOK_TEXT [varchar](100) ,
	@GROSS_BASE [numeric](22, 10) ,
	@CURRY_ID [numeric](22, 10) ,
	@COST [numeric](22, 10) ,
	@COST_BASE [numeric](22, 10) ,
	@COST_ASSET_ID [numeric](22, 10) ,
	@COST2 [numeric](22, 10) ,
	@COST_BASE2 [numeric](22, 10) ,
	@COST_ASSET2_ID [numeric](22, 10) ,
	@NET [numeric](22, 10) ,
	@NET_MACC [numeric](22, 10) ,
	@XRATE [numeric](22, 10) ,
	@VERSION_ID				[numeric](22, 10),
	@USER_NAME				NVARCHAR(100), 
	@MACHINE_NAME			NVARCHAR(100), 
	@PACKAGE_NAME			NVARCHAR(100), 
	@TASK_NAME				NVARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans STG_DATA_INTESA_SUISSE_BSM_ASSETS
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_INTESA_SUISSE_BSM_DOC_SECTRX VALUES  (
			@BU_ID  ,
	@SECEVT_ID  ,
	@SECTRX2_ID  ,
	@META_TYP_ID  ,
	@META_TYP_NAME  ,
	@ORDER_TYPE_ID  ,
	@ORDER_TYPE_NAME  ,
	@WFC_STATUS_ID  ,
	@WFC_STATUS_NAME  ,
	@ORDERED_BY ,
	@MEDIUM_ID  ,
	@MEDIUM_NAME  ,
	@TRX_DATE  ,
	@VAL_DATE  ,
	@EXTL_REF_NR  ,
	@INTL_REF_NR  ,
	@BP_ID  ,
	@CONT_ID  ,
	@CUST_CONT_ID  ,
	@POS_ID  ,
	@ASSET_ID  ,
	@MACC_ID  ,
	@EX_DATE  ,
	@QTY  ,
	@QTY_DFLT ,
	@BOOK_TEXT  ,
	@GROSS_BASE  ,
	@CURRY_ID ,
	@COST ,
	@COST_BASE  ,
	@COST_ASSET_ID  ,
	@COST2  ,
	@COST_BASE2 ,
	@COST_ASSET2_ID  ,
	@NET  ,
	@NET_MACC  ,
	@XRATE ,
	GETDATE()
	)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_AUDIT_INTESA_SUISSE_SECTRX;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_INTESA_SUISSE_SECTRX, @VERSION_ID,	@USER_NAME, @MACHINE_NAME, @PACKAGE_NAME, @TASK_NAME, ''INSERT''
						
		COMMIT
	
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ASSETS_Insert2]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ASSETS_Insert2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'








CREATE PROCEDURE [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ASSETS_Insert2]

@ASS_FIRE_CONTPRTY nvarchar (255) NULL,
@ASS_FIRE_CONTPRTY_ID nvarchar (255) NULL,
@ASS_GROUP nvarchar (255) NULL,
@ASS_GROUP_INTL_ID nvarchar (255) NULL,
@ASS_MSC_IND nvarchar (255) NULL,
@ASS_MSC_IND_NAME nvarchar (255) NULL,
@ASS_POS_CNT nvarchar (255) NULL,
@ASS_SORT_ALPHA nvarchar (255) NULL,
@ASS_SORT_NR nvarchar (255) NULL,
@ASS_TYPE nvarchar (255) NULL,
@ASS_TYPE_INTL_ID nvarchar (255) NULL,
@ASSET_ID bigint  NULL,
@ASSET_NAME nvarchar (255) NULL,
@CLOSE_DATE nvarchar (255) NULL,
@CONTR_SIZE nvarchar (255) NULL,
@COUNTRY_ID nvarchar (255) NULL,
@COUNTRY_CODE nvarchar (255) NULL,
@COUNTRY_NAME nvarchar (255) NULL,
@CURRY nvarchar (255) NULL,
@CUSIP nvarchar (255) NULL,
@CUST_CONT_NAME nvarchar (255) NULL,
@CUST_CONT_SORTALPHA nvarchar (255) NULL,
@DFLT_MKT_NAME nvarchar (255) NULL,
@EXTRACT_DATE nvarchar (255) NULL,
@FITCH_RATING nvarchar (255) NULL,
@INSTR_CAT_ID nvarchar (255) NULL,
@INSTR_CAT_NAME nvarchar (255) NULL,
@INTR_CALC_METHOD_CODE nvarchar (255) NULL,
@INTR_CALC_METHOD_NAME nvarchar (255) NULL,
@INTR_RATE nvarchar (255) NULL,
@ISIN nvarchar (255) NULL,
@ISSUE_DATE nvarchar (255) NULL,
@ISSUER nvarchar (255) NULL,
@ISSUER_ID nvarchar (255) NULL,
@MOODY_RATING nvarchar (255) NULL,
@OPTION_TYPE nvarchar (255) NULL,
@OUTSTANDING nvarchar (255) NULL,
@PRICE nvarchar (255) NULL,
@PRICE_DATE nvarchar (255) NULL,
@SP_RATING nvarchar (255) NULL,
@TELEKURS nvarchar (255) NULL,
@COUPON_FREQUENCY nvarchar (255) NULL,
@COUPON_PERIOD nvarchar (255) NULL,
@COUPON_NEXT_DATE nvarchar (255) NULL,
@MATURITY_PRICE nvarchar (255) NULL,
@INTERNAL_RATING nvarchar (255) NULL,
@FITCH_RATING_SHORT nvarchar (255) NULL,
@SP_RATING_SHORT nvarchar (255) NULL,
@MOODY_RATING_SHORT nvarchar (255) NULL,
@REPO_RATING nvarchar (255) NULL,
@PERIODIC_REVALUATION nvarchar (255) NULL,
@CUST_PLEDGE_RATE nvarchar (255) NULL,
@C524_LISTED nvarchar (255) NULL,
@ISSUE_PRICE nvarchar (255) NULL,
@OPTION_CONTRACT_SIZE nvarchar (255) NULL,


	
	@FILE_LOAD_ID			NUMERIC(9),--
	@BATCH_STG_ID			NUMERIC(9),
	@VERSION_ID				NUMERIC(9),
	@USER_NAME				VARCHAR(100), 
	@MACHINE_NAME			VARCHAR(100), 
	@PACKAGE_NAME			VARCHAR(100), 
	@TASK_NAME				VARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans STG_DATA_INTESA_SUISSE_BSM_ASSETS
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_INTESA_SUISSE_BSM_ASSETS2 VALUES  (


@ASS_FIRE_CONTPRTY,
@ASS_FIRE_CONTPRTY_ID,
@ASS_GROUP,
@ASS_GROUP_INTL_ID,
@ASS_MSC_IND,
@ASS_MSC_IND_NAME,
CONVERT( [numeric](22, 10),@ASS_POS_CNT),
@ASS_SORT_ALPHA,
	CONVERT( [numeric](9, 0),@ASS_SORT_NR),
@ASS_TYPE,
@ASS_TYPE_INTL_ID,
CONVERT( [numeric](9, 0),@ASSET_ID),
@ASSET_NAME,
CONVERT(DATETIME,@CLOSE_DATE),
CONVERT( [numeric](9, 0),@CONTR_SIZE),
CONVERT([numeric](9, 0),@COUNTRY_ID),
@COUNTRY_CODE,
@COUNTRY_NAME,
@CURRY,
@CUSIP,
@CUST_CONT_NAME,
@CUST_CONT_SORTALPHA,
@DFLT_MKT_NAME,
CONVERT(DATETIME,@EXTRACT_DATE),
@FITCH_RATING,
@INSTR_CAT_ID,
@INSTR_CAT_NAME,
@INTR_CALC_METHOD_CODE,
@INTR_CALC_METHOD_NAME,
CONVERT( [numeric](22, 10),@INTR_RATE),
@ISIN,
CONVERT(DATETIME,@ISSUE_DATE),
@ISSUER,
CONVERT([numeric](9, 0),@ISSUER_ID),
@MOODY_RATING,
@OPTION_TYPE,
@OUTSTANDING,
CONVERT( [numeric](22, 10),ROUND(@PRICE,22,28)),--CONVERT( [numeric](22, 10),@PRICE),
CONVERT(DATETIME,@PRICE_DATE),
@SP_RATING,
@TELEKURS,
@COUPON_FREQUENCY,
@COUPON_PERIOD,
CONVERT(DATETIME,@COUPON_NEXT_DATE),
CONVERT([numeric](22, 10),@MATURITY_PRICE),
@INTERNAL_RATING,
@FITCH_RATING_SHORT,
@SP_RATING_SHORT,
@MOODY_RATING_SHORT,
@REPO_RATING,
@PERIODIC_REVALUATION,
@CUST_PLEDGE_RATE,
@C524_LISTED,
@ISSUE_PRICE,
@OPTION_CONTRACT_SIZE,
@FILE_LOAD_ID,
@BATCH_STG_ID
			  ,GETDATE())
				end
			
				---- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_INTESA_SUISSE_BSM_ASSETS2;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_INTESA_SUISSE_BSM_ASSETS2, @VERSION_ID,	@USER_NAME, @MACHINE_NAME, @PACKAGE_NAME, @TASK_NAME, ''INSERT''
						
		COMMIT
	
END




' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ASSETS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ASSETS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ASSETS_Insert]
	@EXTRACT_DATE			NVARCHAR(20),
	@ASSET_NAME				NVARCHAR(50),
	@ASSET_ID				NUMERIC(9),
	@ASS_SORT_NR			NUMERIC(9),
	@ASS_SORT_ALPHA			NVARCHAR(20),
	@ASS_POS_CNT			NUMERIC(22,10),
	@ISIN					NVARCHAR(12),
	@TELEKURS				NVARCHAR(20),
	@INSTR_CAT_ID			NVARCHAR(20),
	@INSTR_CAT_NAME			NVARCHAR(20),
	@ASS_TYPE_INTL_ID		NVARCHAR(20),
	@ASS_TYPE				NVARCHAR(20),
	@ASS_GROUP_INTL_ID		NVARCHAR(20),
	@ASS_GROUP				NVARCHAR(20),
	@CURRY					NVARCHAR(3),
	@CUSIP					NVARCHAR(20),
	@CONTR_SIZE				NUMERIC(9),
	@PRICE					NUMERIC(22,10),
	@PRICE_DATE				NVARCHAR(20),
	@CLOSE_DATE				NVARCHAR(20),
	@ISSUE_DATE				NVARCHAR(20),
	@INTR_RATE				NUMERIC(22,10),
	@INTR_CALC_METHOD_CODE	NVARCHAR(20),
	@INTR_CALC_METHOD_NAME	NVARCHAR(20),
	@OPTION_TYPE			NVARCHAR(20),
	@CUST_CONT_SORTALPHA	NVARCHAR(20),
	@CUST_CONT_NAME			NVARCHAR(20),
	@SP_RATING				NVARCHAR(20),
	@MOODY_RATING			NVARCHAR(20),
	@FITCH_RATING			NVARCHAR(20),
	@COUNTRY_ID				NUMERIC(9),
	@COUNTRY_CODE			NVARCHAR(20),
	@COUNTRY_NAME			NVARCHAR(20),
	@DFLT_MKT_NAME			NVARCHAR(20),
	@OUTSTANDING			NUMERIC(9),
	@ISSUER_ID				NUMERIC(9),
	@ISSUER					NVARCHAR(20),
	@ASS_MSC_IND			NVARCHAR(20),
	@ASS_MSC_IND_NAME		NVARCHAR(20),
	@ASS_FIRE_CONTPRTY_ID	NVARCHAR(20),
	@ASS_FIRE_CONTPRTY		NVARCHAR(20),
	@INTERNAL_RATING		NVARCHAR(20),
	@FITCH_RATING_SHORT		NVARCHAR(20),
	@SP_RATING_SHORT		NVARCHAR(20),
	@MOODY_RATING_SHORT		NVARCHAR(20),
	@REPO_RATING			NVARCHAR(20),
	@PERIODIC_REVALUATION	NVARCHAR(20),
	@C524_LISTED			NVARCHAR(20),
	@CUST_PLEDGE_RATE		NVARCHAR(20),
	@ASS_OPT_TYPE			NVARCHAR(20),
	@CONTRACT				NVARCHAR(20),
	@MATURITY_DATE			NVARCHAR(20),
	@IS_SEC					NVARCHAR(1),
	@COUPON_FREQUENCY		NVARCHAR(20),
	@COUPON_PERIOD			NVARCHAR(20),
	@COUPON_NEXT_DATE		NVARCHAR(20),
	@MATURITY_PRICE			NUMERIC(22,10),
	@FILE_LOAD_ID			NUMERIC(9),
	@BATCH_STG_ID			NUMERIC(9),
	@VERSION_ID				NUMERIC(9),
	@USER_NAME				NVARCHAR(100), 
	@MACHINE_NAME			NVARCHAR(100), 
	@PACKAGE_NAME			NVARCHAR(100), 
	@TASK_NAME				NVARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans STG_DATA_INTESA_SUISSE_BSM_ASSETS
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_INTESA_SUISSE_BSM_ASSETS VALUES  (CONVERT(DATETIME,@EXTRACT_DATE),
						@ASSET_NAME,
						@ASSET_ID,
						@ASS_SORT_NR	,
						@ASS_SORT_ALPHA,
						@ASS_POS_CNT,
						@ISIN,
						@TELEKURS,
						@INSTR_CAT_ID,
						@INSTR_CAT_NAME,
						@ASS_TYPE_INTL_ID,
						@ASS_TYPE,
						@ASS_GROUP_INTL_ID,
						@ASS_GROUP,
						@CURRY,
						@CUSIP,
						@CONTR_SIZE,
						@PRICE,
						CONVERT(DATETIME,@PRICE_DATE),
						CONVERT(DATETIME,@CLOSE_DATE),
						CONVERT(DATETIME,@ISSUE_DATE),
						@INTR_RATE,
						@INTR_CALC_METHOD_CODE,
						@INTR_CALC_METHOD_NAME,
						@OPTION_TYPE	,
						@CUST_CONT_SORTALPHA,
						@CUST_CONT_NAME,
						@SP_RATING,
						@MOODY_RATING,
						@FITCH_RATING,
						@COUNTRY_ID,
						@COUNTRY_CODE,
						@COUNTRY_NAME,
						@DFLT_MKT_NAME,
						@OUTSTANDING,
						@ISSUER_ID,
						@ISSUER,
						@ASS_MSC_IND,
						@ASS_MSC_IND_NAME,
						@ASS_FIRE_CONTPRTY_ID,
						@ASS_FIRE_CONTPRTY,
						@INTERNAL_RATING,
						@FITCH_RATING_SHORT,
						@SP_RATING_SHORT,
						@MOODY_RATING_SHORT,
						@REPO_RATING,
						@PERIODIC_REVALUATION,
						@C524_LISTED,
						@CUST_PLEDGE_RATE,
						@ASS_OPT_TYPE,
						@CONTRACT,
						CONVERT(DATETIME,@MATURITY_DATE),
						@IS_SEC,
						@COUPON_FREQUENCY,
						@COUPON_PERIOD,
						CONVERT(DATETIME,@COUPON_NEXT_DATE),
						@MATURITY_PRICE,
						@FILE_LOAD_ID,
						@BATCH_STG_ID,
						GETDATE())
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_INTESA_SUISSE_BSM_ASSETS;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_INTESA_SUISSE_BSM_ASSETS, @VERSION_ID,	@USER_NAME, @MACHINE_NAME, @PACKAGE_NAME, @TASK_NAME, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ACCOUNTS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ACCOUNTS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_INTESA_SUISSE_BSM_ACCOUNTS_Insert]
	@BPID						NUMERIC(9),
	@CUSTOMER_NO				NVARCHAR(50),
	@BP_NAME					NVARCHAR(20),
	@BP_REF_CURRY_ID			NUMERIC(9),
	@BPREF_CURRY_ID				NVARCHAR(3),
	@BUID						NUMERIC(9),
	@CONTID						NUMERIC(9),
	@DFLT_CONT_NR				NUMERIC(9),
	@PORTFOLIO_NO				NVARCHAR(50),
	@PORTFOLIO_ID				NVARCHAR(20),
	@POSID						NUMERIC(9),
	@ACCOUNT_NO					NVARCHAR(50),
	@ACCOUNT_ID					NVARCHAR(20),
	@POS_REF_CURRY_ID			NUMERIC(9),
	@ACCOUNT_CURRY_ID			NVARCHAR(3),
	@ACCOUNT_SALDO				NUMERIC(22,10),
	@ACCOUNT_ACCRUED_INTEREST	NUMERIC(22,10),
	@BANK						NVARCHAR(50),
	@EXCH_RATE					NUMERIC(22,10),
	@EXTRACT_DATE				NVARCHAR(20),
	@FILE_LOAD_ID				NUMERIC(9),
	@BATCH_STG_ID				NUMERIC(9),
	@VERSION_ID					NUMERIC(9),
	@USER_NAME					NVARCHAR(100), 
	@MACHINE_NAME				NVARCHAR(100), 
	@PACKAGE_NAME				NVARCHAR(100), 
	@TASK_NAME					NVARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	-- Création de la ligne de début dans STG_DATA_INTESA_SUISSE_BSM_ACCOUNTS
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_INTESA_SUISSE_BSM_ACCOUNTS VALUES  (@BPID,
						@CUSTOMER_NO,
						@BP_NAME,
						@BP_REF_CURRY_ID,
						@BPREF_CURRY_ID,
						@BUID,
						@CONTID,
						@DFLT_CONT_NR,
						@PORTFOLIO_NO,
						@PORTFOLIO_ID,
						@POSID,
						@ACCOUNT_NO,
						@ACCOUNT_ID,
						@POS_REF_CURRY_ID,
						@ACCOUNT_CURRY_ID,
						@ACCOUNT_SALDO,
						@ACCOUNT_ACCRUED_INTEREST,
						@BANK,
						@EXCH_RATE,
						CONVERT(DATETIME,@EXTRACT_DATE),
						@FILE_LOAD_ID,
						@BATCH_STG_ID,
						GETDATE())
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_INTESA_SUISSE_BSM_ACCOUNTS;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_INTESA_SUISSE_BSM_ACCOUNTS, @VERSION_ID,	@USER_NAME, @MACHINE_NAME, @PACKAGE_NAME, @TASK_NAME, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_ITALIA_SALDI_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_ITALIA_SALDI_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_STG_DATA_INTESA_ITALIA_SALDI_Insert]
	@RecordTypeCode VARCHAR(3),
	@DSIMContractCode NUMERIC(8),
	@DSIMContractAcronym VARCHAR(8),
	@BankContractCode VARCHAR(25),
	@ClientContractCode VARCHAR(25),
	@ContratDescription VARCHAR(40),
	@DateExecutionContract DATETIME,
	@DateWithdrawal DATETIME,
	@TypeRedemption VARCHAR(5),
	@ReferenceDate DATETIME,
	@CurrencyCode VARCHAR(3),
	@TypeBalance VARCHAR(3),
	@RepoMaturity DATETIME,
	@RepoRate NUMERIC(22,10),
	@DSIMSecurityCode VARCHAR(14),
	@DSIMSecurityAcronym VARCHAR(12),
	@HOSTSecurityCode VARCHAR(25),
	@ClientSecurityCode VARCHAR(25),
	@ISINCode VARCHAR(12),
	@ShortDescriptionSecu VARCHAR(26),
	@FullDescriptionSecu VARCHAR(80),
	@ReferencePriceDate DATETIME,
	@ReferencePrice NUMERIC(22,10),
	@AverageLoadPrice NUMERIC(22,10),
	@Accrual NUMERIC(22,10),
	@RecorderedBalance NUMERIC(22,10),
	@ExecutedBalance NUMERIC(22,10),
	@CommitedBalance NUMERIC(22,10),
	@TotalBalance NUMERIC(22,10),
	@ExchangeRate NUMERIC(22,10),
	@TotalValue NUMERIC(22,10),
	@BatchStgId NUMERIC(9),
	@FileLoadedId NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans STG_DATA_INTESA_ITALIE_SALDI
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_INTESA_ITALIA_SALDI VALUES  (@RecordTypeCode,
					@DSIMContractCode,
					@DSIMContractAcronym,
					@BankContractCode,
					@ClientContractCode,
					@ContratDescription,
					@DateExecutionContract,
					@DateWithdrawal,
					@TypeRedemption,
					@ReferenceDate,
					@CurrencyCode,
					@TypeBalance,
					@RepoMaturity,
					@RepoRate,
					@DSIMSecurityCode,
					@DSIMSecurityAcronym,
					@HOSTSecurityCode,
					@ClientSecurityCode,
					@ISINCode,
					@ShortDescriptionSecu,
					@FullDescriptionSecu,
					@ReferencePriceDate,
					@ReferencePrice,
					@AverageLoadPrice,
					@Accrual,
					@RecorderedBalance,
					@ExecutedBalance,
					@CommitedBalance,
					@TotalBalance,
					@ExchangeRate,
					@TotalValue,
					@BatchStgId,
					@FileLoadedId)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_INTESA_ITALIA_SALDI;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_INTESA_ITALIA_SALDI,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_INTESA_ITALIA_MOVIMENTI_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_INTESA_ITALIA_MOVIMENTI_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[SP_STG_DATA_INTESA_ITALIA_MOVIMENTI_Insert]
	@RecordTypeCode VARCHAR(3),
	@TransactionStatus VARCHAR(2),
	@DSIMContractCode NUMERIC(8),
	@DSIMContractAcronym VARCHAR(8),
	@BankContractCode VARCHAR(25),
	@ClientContractCode VARCHAR(25),
	@ContratDescription VARCHAR(40),
	@DateExecutionContract DATE,
	@DateWithdrawal DATETIME,
	@TypeRedemption VARCHAR(5),
	@ExecutedNumber NUMERIC(10),
	@ReversedOriginalExecutedNumber NUMERIC(10),
	@LiquidatedNumber NUMERIC(10),
	@OrderNumber NUMERIC(10),
	@CumulativeOrderNumber NUMERIC(10),
	@DateExecutedOrder DATE,
	@TimeExecutedOrder VARCHAR(8),
	@ValueDate VARCHAR(10),
	@Flag VARCHAR(1),
	@DSIMSecurityCode VARCHAR(14),
	@DSIMSecurityAcronym VARCHAR(12),
	@HOSTSecurityCode VARCHAR(25),
	@ClientSecurityCode VARCHAR(25),
	@ISINCode VARCHAR(12),
	@ShortDescriptionSecurity VARCHAR(26),
	@FullDescriptionSecurity VARCHAR(80),
	@NatureDSIMTransactionCode VARCHAR(3),
	@ObjectMovement VARCHAR(2),
	@ContributionWithdrawal VARCHAR(1),
	@TransactionTypeFlag VARCHAR(1),
	@NumberExecutedOrder VARCHAR(10),
	@RepoRate NUMERIC(22,10),
	@RepoMaturity DATETIME,
	@CommentTransaction VARCHAR(150),
	@NotesTransaction VARCHAR(150),
	@MarketCode VARCHAR(19),
	@TradingVenueCode VARCHAR(3),
	@Sign VARCHAR(1),
	@TransactionCurrency VARCHAR(3),
	@QuantitySecuritiesExecuted NUMERIC(22,10),
	@Price NUMERIC(22,10),
	@Accrual NUMERIC(22,10),
	@PrincipalAmount NUMERIC(22,10),
	@PrincipalAmountFlag VARCHAR(1),
	@InterestAmount NUMERIC(22,10),
	@AmountToBePaid NUMERIC(22,10),
	@InterestWithholding VARCHAR(1),
	@TradingFeesAmount NUMERIC(22,10),
	@FeesAmountFlag VARCHAR(1),
	@OtherTradersTradingFeesAmount NUMERIC(22,10),
	@OtherTradersFeesAmountFlag VARCHAR(1),
	@TradingCostsAmount NUMERIC(22,10),
	@CostsAmountFlag VARCHAR(1),
	@OtherTradersTradingCostAmount NUMERIC(22,10),
	@OtherTradersCostsAmountFlag VARCHAR(1),
	@StampDutyAmount NUMERIC(22,10),
	@StampDutyAmountFlag VARCHAR(1),
	@VATAmount NUMERIC(22,10),
	@RoundingOffAmount NUMERIC(22,10),
	@TransactionExchangeRate NUMERIC(22,10),
	@SettlementCurrency VARCHAR(3),
	@TotalAmountSettled1 NUMERIC(22,10),
	@TotalAmountSettled2 NUMERIC(22,10),
	@TotalAmountSettled3 NUMERIC(22,10),
	@BatchStgId NUMERIC(9),
	@FileLoadedId NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans STG_DATA_INTESA_ITALIA_MOVIMENTE
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_INTESA_ITALIA_MOVIMENTI VALUES  (@RecordTypeCode,
						@TransactionStatus,
						@DSIMContractCode,
						@DSIMContractAcronym,
						@BankContractCode,
						@ClientContractCode,
						@ContratDescription,
						@DateExecutionContract,
						@DateWithdrawal,
						@TypeRedemption,
						@ExecutedNumber,
						@ReversedOriginalExecutedNumber,
						@LiquidatedNumber,
						@OrderNumber,
						@CumulativeOrderNumber,
						@DateExecutedOrder,
						@TimeExecutedOrder,
						CONVERT(DATETIME,@ValueDate),
						@Flag,
						@DSIMSecurityCode,
						@DSIMSecurityAcronym,
						@HOSTSecurityCode,
						@ClientSecurityCode,
						@ISINCode,
						@ShortDescriptionSecurity,
						@FullDescriptionSecurity,
						@NatureDSIMTransactionCode,
						@ObjectMovement,
						@ContributionWithdrawal,
						@TransactionTypeFlag,
						@NumberExecutedOrder,
						@RepoRate,
						@RepoMaturity,
						@CommentTransaction,
						@NotesTransaction,
						@MarketCode,
						@TradingVenueCode,
						@Sign,
						@TransactionCurrency,
						@QuantitySecuritiesExecuted,
						@Price,
						@Accrual,
						@PrincipalAmount,
						@PrincipalAmountFlag,
						@InterestAmount,
						@AmountToBePaid,
						@InterestWithholding,
						@TradingFeesAmount,
						@FeesAmountFlag,
						@OtherTradersTradingFeesAmount,
						@OtherTradersFeesAmountFlag,
						@TradingCostsAmount,
						@CostsAmountFlag,
						@OtherTradersTradingCostAmount,
						@OtherTradersCostsAmountFlag,
						@StampDutyAmount,
						@StampDutyAmountFlag,
						@VATAmount,
						@RoundingOffAmount,
						@TransactionExchangeRate,
						@SettlementCurrency,
						@TotalAmountSettled1,
						@TotalAmountSettled2,
						@TotalAmountSettled3,
						@BatchStgId,
						@FileLoadedId
					)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_INTESA_ITALIA_MOVIMENTI;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_INTESA_ITALIA_MOVIMENTI,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_DBI_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_DBI_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_STG_DATA_DBI_TRANSACTIONS_Insert]
	@Custody_Account	VARCHAR(16), 
	@Order_Type			VARCHAR(10),
	@Seme_Code			VARCHAR(16),
	@Prev_Code			VARCHAR(16),
	@Direction			VARCHAR(10),
	@Trade_Date			DATETIME,
	@Settle_Date		DATETIME,
	@Asset_ID_Type		VARCHAR(10),
	@Asset_Code			VARCHAR(12),
	@Asset_Desc			VARCHAR(100),
	@Asset_Ccy			VARCHAR(3),
	@Asset_Qty_Typ		VARCHAR(10),
	@Quantity			NUMERIC(22,10),
	@Asset_Pri_Typ		VARCHAR(10),
	@Price				NUMERIC(22,10),
	@Gross_Amount		NUMERIC(22,10),
	@Acc_Int			NUMERIC(22,10),
	@Fees				NUMERIC(22,10),
	@Commission			NUMERIC(22,10),
	@Tax				NUMERIC(22,10),
	@Net_Amount			NUMERIC(22,10),
	@Cash_Amount		NUMERIC(22,10),
	@Cash_Ccy			VARCHAR(3),
	@Ccy_Exchange		NUMERIC(22,10),
	@Cash_Desc			VARCHAR(100),
	@File_Loaded_Id		NUMERIC(9),
	@Batch_Stg_Id		NUMERIC(9),		
	@Version_id			NUMERIC(9),
	@UserName			VARCHAR(100), 
	@MachineName		VARCHAR(100), 
	@PackageName		VARCHAR(100), 
	@TaskName			VARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE	@Record_ID NUMERIC(9)
	
	-- Création de la ligne de début dans STG_DATA_DB_TRANSACTIONS
	BEGIN TRANSACTION 
			
		BEGIN 
			INSERT INTO dbo.STG_DATA_DBI_TRANSACTIONS VALUES  (@Custody_Account, @Order_Type, @Seme_Code, @Prev_Code, @Direction, @Trade_Date,
	@Settle_Date, @Asset_ID_Type, @Asset_Code, @Asset_Desc, @Asset_Ccy, @Asset_Qty_Typ, @Quantity, @Asset_Pri_Typ, @Price, @Gross_Amount,
	@Acc_Int, @Fees, @Commission, @Tax, @Net_Amount, @Cash_Amount, @Cash_Ccy, @Ccy_Exchange, @Cash_Desc, @File_Loaded_Id, @Batch_Stg_Id)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_DBI_TRANSACTIONS;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_DBI_TRANSACTIONS, @Version_id, @UserName, @MachineName, @PackageName, @TaskName, ''INSERT''		

	COMMIT

END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_DBI_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_DBI_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_STG_DATA_DBI_HOLDINGS_Insert]
	@Valuation_Date DATETIME, 
	@Num_Compte VARCHAR(16), 
	@Libelle VARCHAR(50), 
	@Code_ISIN VARCHAR(12),	
	@Type_Instrument CHAR(1), 
	@Devise CHAR(3),	
	@Type_Exp_Qte CHAR(4),		
	@Quantite NUMERIC(22, 10),
	@Interet_Couru NUMERIC(29, 22),
	@Type_Cours CHAR(4),
	@Cours NUMERIC(22, 10),
	@Date_Cours DATETIME,
	@File_Loaded_Id NUMERIC(9),
	@Batch_Stg_Id NUMERIC(9),	
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	DECLARE	@Record_ID NUMERIC(9)
	
	-- Création de la ligne de début dans STG_DATA_DB_HOLDINGS
	BEGIN TRANSACTION 
			
		BEGIN 
			INSERT INTO dbo.STG_DATA_DBI_HOLDINGS VALUES  (@Valuation_Date,@Num_Compte,@Libelle, @Code_ISIN,
			@Type_Instrument, @Devise, @Type_Exp_Qte, @Quantite, @Interet_Couru, @Type_Cours, @Cours, @Date_Cours, @File_Loaded_Id, @Batch_Stg_Id)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_DBI_HOLDINGS;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_DBI_HOLDINGS, @Version_id, @UserName, @MachineName, @PackageName, @TaskName, ''INSERT''		

	COMMIT

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_CSI_POSIZ_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_CSI_POSIZ_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_STG_DATA_CSI_POSIZ_Insert]
	@Archiv					VARCHAR(10),
	@Clibca					VARCHAR(10),
	@Clircs					VARCHAR(10),
	@Cncbca					VARCHAR(10),
	@Depcba					VARCHAR(10),
	@Amnrma					NUMERIC(22,10),
	@Famigl					VARCHAR(2),
	@Prodot					VARCHAR(2),
	@Promot					VARCHAR(5),
	@Area					VARCHAR(20),
	@Zona					VARCHAR(3),
	@Agenzi					VARCHAR(2),
	@Datope					DATETIME,
	@Mtctit					VARCHAR(10),
	@Mtdtit					VARCHAR(250),
	@Divpre					VARCHAR(5),
	@Mtqtav					NUMERIC(22,10),
	@Coddiv					VARCHAR(3),
	@Prwmdc					NUMERIC(22,10),
	@Cammdc					NUMERIC(22,10),
	@Prwunm					NUMERIC(22,10),
	@Camunm					NUMERIC(22,10),
	@Datpum					DATETIME,
	@Note					VARCHAR(20),
	@Renlor					NUMERIC(22,10),
	@Datcum					DATETIME,
	@Divtit					VARCHAR(3),
	@Tiptit					VARCHAR(3),
	@Emipae					VARCHAR(3),
	@Emiset					VARCHAR(3),
	@Rating					VARCHAR(5),
	@Maturi					VARCHAR(20),
	@Matugg					NUMERIC(22,10),
	@Datsca					DATETIME,
	@Ctvmdceu				NUMERIC(22,10),
	@Ctvpumeu				NUMERIC(22,10),
	@Ctvolteu				NUMERIC(22,10),
	@Durati					NUMERIC(22,10),
	@Datescaprm				DATETIME,
	@Volati					NUMERIC(22,10),
	@Valbase				NUMERIC(22,10),
	@Durdat					VARCHAR(1),
	@Voldat					VARCHAR(1),
	@Paetit					VARCHAR(3),
	@Mercrf					VARCHAR(3),
	@Atcod2					VARCHAR(12),
	@Emittente				VARCHAR(20),
	@Ratinn00001			VARCHAR(5),
	@BatchSTGId				NUMERIC(9),
	@FileLoadedId			NUMERIC(9),
	@VersionId				NUMERIC(9),
	@UserName				VARCHAR(100) , 
	@MachineName			VARCHAR(100) , 
	@PackageName			VARCHAR(100),
	@TaskName				VARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans STG_DATA_CSI_POSIZ
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_CSI_POSIZ VALUES  (@Archiv, @Clibca, @Clircs, @Cncbca,
					@Depcba, @Amnrma, @Famigl, @Prodot, @Promot, @Area, @Zona, @Agenzi, @Datope,
					@Mtctit, @Mtdtit, @Divpre, @Mtqtav, @Coddiv, @Prwmdc, @Cammdc, @Prwunm, 
					@Camunm, @Datpum, @Note, @Renlor, @Datcum, @Divtit, @Tiptit, @Emipae,
					@Emiset, @Rating, @Maturi, @Matugg, @Datsca, @Ctvmdceu, @Ctvpumeu,
					@Ctvolteu, @Durati, @Datescaprm, @Volati, @Valbase, @Durdat, 
					@Voldat, @Paetit, @Mercrf, @Atcod2, @Emittente, 
					@Ratinn00001, @BatchStgId, @FileLoadedId)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_CSI_POSIZ;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_CSI_POSIZ, @VersionId, @UserName, @MachineName, @PackageName, @TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_CSI_MOVTIT_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_CSI_MOVTIT_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_STG_DATA_CSI_MOVTIT_Insert]
	@Archiv					VARCHAR(10),
	@Clibca					VARCHAR(10),
	@Clircs					VARCHAR(10),
	@Cncbca					VARCHAR(10),
	@Depcba					VARCHAR(10),
	@Amnrma					NUMERIC(22,10),
	@Famigl					VARCHAR(2),
	@Prodot					VARCHAR(2),
	@Promot					VARCHAR(5),
	@Area					VARCHAR(20),
	@Zona					VARCHAR(3),
	@Datreg					DATETIME,
	@Datope					DATETIME,
	@Datval					DATETIME,
	@Causa					VARCHAR(3),
	@Dcausa					VARCHAR(50),
	@Note					VARCHAR(20),					
	@Coddiv					VARCHAR(3),
	@Cambio					NUMERIC(22,10),
	@Ctvdiv					NUMERIC(22,10),
	@Segno					VARCHAR(1),
	@Mtctit					VARCHAR(10),
	@Mtdtit					VARCHAR(250),
	@Mtqtav					NUMERIC(22,10),
	@Mtprzt					NUMERIC(22,10),
	@Mtprbp					NUMERIC(22,10),
	@Mtdtsc					VARCHAR(4),
	@Divpre					VARCHAR(5),
	@Mtdsto					VARCHAR(1),
	@Mtnsto					VARCHAR(1),
	@Prodef					VARCHAR(2),
	@Titisi					VARCHAR(12),	
	@Divtit					VARCHAR(3),
	@Lornet 				VARCHAR(1),
	@Mtpum					NUMERIC(22,10),
	@Mtcum					NUMERIC(22,10),
	@Ctvliteu				NUMERIC(22,10),
	@Ctvmeteu				NUMERIC(22,10),
	@Mtraineu				NUMERIC(22,10),
	@Mtcocleu				NUMERIC(22,10),
	@Mtspcleu				NUMERIC(22,10),
	@Mtcocseu				NUMERIC(22,10),
	@Mtritfeu				NUMERIC(22,10),
	@BatchStgId				NUMERIC(9),
	@FileLoadedId			NUMERIC(9),
	@VersionId				NUMERIC(9),
	@UserName				VARCHAR(100),
	@MachineName			VARCHAR(100), 
	@PackageName			VARCHAR(100), 
	@TaskName				VARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans SP_STG_DATA_CSI_MOVTIT_Insert
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_CSI_MOVTIT VALUES(@Archiv, @Clibca, @Clircs,
					@Cncbca, @Depcba, @Amnrma, @Famigl, @Prodot, @Promot, @Area, @Zona, 
					@Datreg, @Datope,@Datval, @Causa, @Dcausa, @Note, @Coddiv, @Cambio,
					@Ctvdiv,@Segno, @Mtctit, @Mtdtit, @Mtqtav, @Mtprzt, @Mtprbp, @Mtdtsc, 
					@Divpre, @Mtdsto, @Mtnsto, @Prodef, @Titisi, @Divtit, @Lornet,
					@Mtpum, @Mtcum, @Ctvliteu, @Ctvmeteu, @Mtraineu, @Mtcocleu, 
					@Mtspcleu, @Mtcocseu, @Mtritfeu, @BatchStgId, @FileLoadedId)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_CSI_MOVTIT;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_CSI_MOVTIT,@VersionId,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_CSI_MOVLIQ_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_CSI_MOVLIQ_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_CSI_MOVLIQ_Insert]
	@Archiv					VARCHAR(10),
	@Clibca					VARCHAR(10),
	@Clircs					VARCHAR(10),
	@Cncbca					VARCHAR(10),
	@Depliq					VARCHAR(10),
	@Amnrma					VARCHAR(10),
	@Progr					VARCHAR(10),
	@Famigl					VARCHAR(2),
	@Prodot					VARCHAR(2),
	@Promot					VARCHAR(5),
	@Prodold				VARCHAR(10),
	@Area					VARCHAR(20),
	@Zona					VARCHAR(3),
	@Datreg					DATETIME,
	@Datope					DATETIME,
	@Datval					DATETIME,
	@Causa					VARCHAR(3),
	@Dcausa					VARCHAR(50),
	@Note					VARCHAR(20),		
	@Coddiv					VARCHAR(3),
	@Cambio					NUMERIC(22,10),
	@Ctvdiv					NUMERIC(22,10),
	@Segno					VARCHAR(1),
	@Storno					VARCHAR(1),
	@Prodef					VARCHAR(1),
	@Camcar					NUMERIC(22,10),
	@Numope					VARCHAR(10),
	@Ctvliteu				NUMERIC(22,10),	
	@BatchStgId				NUMERIC(9),
	@FileLoadedId			NUMERIC(9),
	@VersionId				NUMERIC(9),
	@UserName				VARCHAR(100),
	@MachineName			VARCHAR(100),
	@PackageName			VARCHAR(100),
	@TaskName				VARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans SP_STG_DATA_CSI_MOVLIQ_Insert
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_CSI_MOVLIQ VALUES  (@Archiv, @Clibca, @Clircs, @Cncbca, 
					@Depliq, @Amnrma, @Progr, @Famigl, @Prodot, @Promot, @Prodold, @Area, @Zona, 
					@Datreg, @Datope, @Datval, @Causa, @Dcausa, @Note, @Coddiv, @Cambio, @Ctvdiv, 
					@Segno, @Storno, @Prodef, @Camcar, @Numope, @Ctvliteu, @BatchStgId,
					@FileLoadedId)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_CSI_MOVLIQ;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_CSI_MOVLIQ,@VersionId,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_BMM_STOCK_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_BMM_STOCK_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE PROCEDURE [dbo].[SP_STG_DATA_BMM_STOCK_Insert]
	@CodeEnregistrement VARCHAR(2),
	@Sequence NUMERIC(6,0),
	@CompteSupport VARCHAR(11),
	@CodeISIN VARCHAR(12),
	@TypeValeur VARCHAR(12),
	@Description VARCHAR(32),
	@DeviseValeur VARCHAR(3),
	@QteTotale NUMERIC(22,10),
	@QteFerme NUMERIC(22,10),
	@MontantEur NUMERIC(22,10),
	@DateCours DATETIME,
	@DeviseCotation VARCHAR(3),
	@Cours NUMERIC(22,10),
	@BatchStgId NUMERIC(9),
	@FileLoadedId NUMERIC(9),
	@CoursEur NUMERIC(22,10),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans DWH_DATA_PORTFOLIO
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_BMM_STOCK VALUES  (@CodeEnregistrement,
						@Sequence,
						@CompteSupport,
						@CodeISIN,
						@TypeValeur,
						@Description,
						@DeviseValeur,
						@QteTotale,
						@QteFerme,
						@MontantEur,
						@DateCours,
						@DeviseCotation,
						@Cours,
						@BatchStgId,
						@FileLoadedId,
						@CoursEur)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_BMM_STOCK;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_BMM_STOCK,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_BMM_ETBAC_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_BMM_ETBAC_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE PROCEDURE [dbo].[SP_STG_DATA_BMM_ETBAC_Insert]
	@RecordingCode VARCHAR(2),
	@BankId NUMERIC(9,0),
	@InteralRefOpe VARCHAR(4),
	@GuichetCode NUMERIC(5,0),
	@PortfolioCode VARCHAR(11),
	@Description VARCHAR(1000),
	@InterbkCode NUMERIC(2,0),
	@AnnulationCode VARCHAR(2),
	@NegoDate DATETIME,
	@SettDate DATETIME,
	@WrittingNb NUMERIC(7),
	@Currency VARCHAR(3),
	@DecimalNb NUMERIC(1,0),
	@Amount NUMERIC(22,10),
	@ExonerationIndex VARCHAR(1),
	@UnavailabilityIndex VARCHAR(1),
	@CustomerZone VARCHAR(16),
	@OgMoney VARCHAR(1),	
	@BatchStgId NUMERIC(9),
	@FileLoadedId NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans DWH_DATA_PORTFOLIO
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_BMM_ETBAC VALUES  (@BankId, @InteralRefOpe, @GuichetCode,
					@PortfolioCode, @Description, @InterbkCode, @NegoDate, @SettDate,
					@WrittingNb, @Currency, @DecimalNb, @Amount, @ExonerationIndex, @UnavailabilityIndex, @CustomerZone,
				    @OgMoney, @AnnulationCode, @RecordingCode, @BatchStgId, @FileLoadedId)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_BMM_ETBAC;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_BMM_ETBAC,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_BMM_AVIS_OP_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_BMM_AVIS_OP_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[SP_STG_DATA_BMM_AVIS_OP_Insert]
	@CodeEnregistrement VARCHAR(2),
	@Sequence NUMERIC(4),
	@CompteSupport VARCHAR(11),
	@CodeOpe VARCHAR(3),
	@DateNego DATETIME,
	@DateValo DATETIME,
	@Quantite NUMERIC(22,10),
	@Cours NUMERIC(22,10),
	@DeviseBrut VARCHAR(3),
	@Brut NUMERIC(22,10),
	@DeviseFrais VARCHAR(3),
	@Frais NUMERIC(22,10),
	@DeviseNet VARCHAR(3),
	@Net NUMERIC(22,10),
	@Origine VARCHAR(2),
	@CodeISIN VARCHAR(12),
	@NbDecimalesQte NUMERIC(1),
	@TxChange NUMERIC(22,10),
	@PlaceQuotation VARCHAR(3),
	@Coupon NUMERIC(22,10),
	@CodeAnnulation VARCHAR(1),
	@UniteQte VARCHAR(3),
	@Description VARCHAR(60),
	@RefOperation VARCHAR(9),
	@ControleMontant VARCHAR(2),
	@Courtage NUMERIC(22,10),
	@Impot NUMERIC(22,10),
	@Tva NUMERIC(22,10),
	@Commission NUMERIC(22,10),
	@RefAnnulationOpe VARCHAR(9),
	@Esd NUMERIC(22,10),
	@BatchStgId NUMERIC(9),
	@FileLoadedId NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans DWH_DATA_PORTFOLIO
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_BMM_AVIS_OP VALUES  (@CodeEnregistrement,
						@Sequence,
						@CompteSupport,
						@CodeOpe,
						@DateNego,
						@DateValo,
						@Quantite,
						@Cours,
						@DeviseBrut,
						@Brut,
						@DeviseFrais,
						@Frais,
						@DeviseNet,
						@Net,
						@Origine,
						@CodeISIN,
						@NbDecimalesQte,
						@TxChange,
						@PlaceQuotation,
						@Coupon,
						@CodeAnnulation,
						@UniteQte,
						@Description,
						@RefOperation,
						@ControleMontant,
						@Courtage,
						@Impot,
						@Tva,
						@Commission,
						@RefAnnulationOpe,
						@Esd,
						@BatchStgId,
						@FileLoadedId)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_BMM_AVIS_OP;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_BMM_AVIS_OP,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_BANCA_PROFILO_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_BANCA_PROFILO_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_BANCA_PROFILO_TRANSACTIONS_Insert]
	@Trade_Number VARCHAR(7),
	@Isin_Code VARCHAR(12),
	@Description VARCHAR(50),
	@Type VARCHAR(25),
	@Currency VARCHAR(3),
	@Account_Number	VARCHAR(10),
	@Policy_Number VARCHAR(10),
	@Client_Number VARCHAR(5),
	@Client_Description VARCHAR(50),
	@Trade_Date DATETIME,
	@Value_Date DATETIME,
	@Sign VARCHAR(5),	
	@Amount NUMERIC(22,10),
	@Price NUMERIC(22,10),
	@Accrued_Interest NUMERIC(22,10),
	@Exchange_Rate NUMERIC(22,10),
	@Commission NUMERIC(22,10),
	@Expense NUMERIC(22,10),
	@Other_Expense NUMERIC(22,10),
	@Total_Ct_Value_Eur NUMERIC(22,10),
	@Fiscal_Price NUMERIC(22,10),
	@Counter_Value_Eur NUMERIC(22,10),
	@Counter_Value_Currency NUMERIC(22,10),
	@Batch_Stg_Id NUMERIC(9),
	@File_Loaded_Id NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans STG_DATA_BANCA_PROFILO_TRANSACTIONS
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_BANCA_PROFILO_TRANSACTIONS VALUES  (@Trade_Number,
						@Isin_Code,
						@Description,
						@Type,
						@Currency,
						@Account_Number,
						@Policy_Number,
						@Client_Number,
						@Client_Description,
						@Trade_Date,
						@Value_Date,
						@Sign,	
						@Amount,
						@Price,
						@Accrued_Interest,
						@Exchange_Rate,
						@Commission,
						@Expense,
						@Other_Expense,
						@Total_Ct_Value_Eur,
						@Fiscal_Price,
						@Counter_Value_Eur,
						@Counter_Value_Currency,
						@Batch_Stg_Id,
						@File_Loaded_Id)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_BANCA_PROFILO_TRANSACTIONS;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_BANCA_PROFILO_TRANSACTIONS,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STG_DATA_BANCA_PROFILO_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_STG_DATA_BANCA_PROFILO_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_STG_DATA_BANCA_PROFILO_HOLDINGS_Insert]
	@Reference_Date	DATETIME,
	@Account_Number	VARCHAR(15),
	@Client_Number VARCHAR(5),
	@Client_Name VARCHAR(8),
	@Policy_Number VARCHAR(10),
	@Isin_Code VARCHAR(12),
	@Description VARCHAR(40),
	@Currency VARCHAR(3),
	@Amount NUMERIC(22,10),
	@Acquisition_Price NUMERIC(22,10),
	@Acquisition_Exchange_Rate NUMERIC(22,10),
	@Price NUMERIC(22,10),
	@Exchange_Rate NUMERIC(22,10),
	@Value_Eur NUMERIC(22,10),
	@Accrued_Interest NUMERIC(22,10),
	@Exchange_Rate_Date DATETIME,
	@Last_Price_Date DATETIME,
	@Private_Banker_Code VARCHAR(5),
	@Private_Banker_Name VARCHAR(50),
	@Batch_Stg_Id NUMERIC(9),
	@File_Loaded_Id NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans STG_DATA_BANCA_PROFILO_HOLDINGS
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO dbo.STG_DATA_BANCA_PROFILO_HOLDINGS VALUES  (@Reference_Date,
						@Account_Number,
						@Client_Number,
						@Client_Name,
						@Policy_Number,
						@Isin_Code,
						@Description,
						@Currency,
						@Amount,
						@Acquisition_Price,
						@Acquisition_Exchange_Rate,
						@Price,
						@Exchange_Rate,
						@Value_Eur,
						@Accrued_Interest,
						@Exchange_Rate_Date,
						@Last_Price_Date,
						@Private_Banker_Code,
						@Private_Banker_Name,
						@Batch_Stg_Id,
						@File_Loaded_Id)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] STG_DATA_BANCA_PROFILO_HOLDINGS;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,STG_AUDIT_BANCA_PROFILO_HOLDINGS,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						
		COMMIT
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_LOG_FILES_HISTORY_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_LOG_FILES_HISTORY_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_DWH_LOG_FILES_HISTORY_Insert]
	@Folder VARCHAR(500), -- Folder
	@Int_Out VARCHAR(3), -- Sens du fichier
	@FileName VARCHAR(100), -- nom du fichier
	@Size VARCHAR(10), -- taille du fichier
	@Batch_id NUMERIC(9), -- Id du batch de traitement
	@File_ID NUMERIC(9), -- ID du paramètre fichier
	@Version_id NUMERIC(9), -- Version de l''ETL
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare @dateStart datetime
	declare	@Record_ID NUMERIC(9) 
	declare @SQLString VARCHAR(2000) 
	declare @SQLString2 VARCHAR(2000) 

	set @dateStart = GETDATE()
		
	-- Création de la ligne de début dans DWH_LOG_FILES_HISTORY

		BEGIN TRANSACTION 
			
		if exists(select 1 from DWH_LOG_BATCHS_HISTORY where ID=@Batch_id) -- On vérifie si il y a bien un batch pour ce fichier
			begin 
			
				if @Int_Out = ''IN'' 
					SET @SQLString = ''INSERT INTO DWH_LOG_FILES_HISTORY (START_DATE, FOLDER,  IN_OUT, FILENAME, STATUS, SIZE, BATCH_ID, FILE_ID) VALUES  ( ''
					 + char(39) + CAST(CONVERT(VARCHAR(30), @dateStart,127) as VARCHAR(30)) + char(39) 
					 + '','' + char(39) + @Folder + char(39) 
					 + '','' + char(39) + @Int_Out + char(39) 
					 + '','' + char(39) + @FileName + char(39) 
					 + '','' + char(39) + ''INIT'' + char(39) 
					 + '','' + case when @Size IS NULL then null else char(39) + @Size + CHAR(39) end
					 + '','' + CAST(@Batch_id as  VARCHAR(10)) 
					 + '','' + CAST(@File_ID as  VARCHAR(10)) + '')''
					 
				else if @Int_Out = ''OUT'' 
					SET @SQLString = ''INSERT INTO DWH_LOG_FILES_HISTORY (START_DATE, FOLDER,  IN_OUT, FILENAME, STATUS, BATCH_ID) VALUES  ( ''
					 + char(39) + CAST(CONVERT(VARCHAR(30), @dateStart,127) as VARCHAR(30)) + char(39) 
					 + '','' + char(39) + @Folder + char(39) 
					 + '','' + char(39) + @Int_Out + char(39) 
					 + '','' + char(39) + @FileName + char(39) 
					 + '','' + char(39) + ''INIT'' + char(39) 
					 + '','' + CAST(@Batch_id as  VARCHAR(10)) + '')''
				
				
				EXEC (@SQLString)


				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] DWH_LOG_FILES_HISTORY;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,''DWH_AUDIT_FILES_HISTORY'',@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
				
				
				-- renvoi des données
				SET @SQLString2 = ''SELECT * from  DWH_LOG_FILES_HISTORY  where ID ='' + CAST(@Record_ID as VARCHAR(9)) 
				EXEC (@SQLString2)
			end
			
		else -- Si la banque n''existe pas
					begin
						raiserror(''BATCH_ID row does not exists.'',-1,-1)
					end
				

		COMMIT
		

	
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_LOG_BATCHS_HISTORY_Update]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_LOG_BATCHS_HISTORY_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_DWH_LOG_BATCHS_HISTORY_Update]
	@BatchId int,		-- identifiant du batch
	@Status VARCHAR(30),	-- Statut
	@Version_id NUMERIC(9), -- Version de l''ETL
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task	
AS
BEGIN


	declare @dateEnd datetime
	declare @Source_TableName VARCHAR(50)
	declare @Audit_TableName VARCHAR(50)
	declare @SQLString VARCHAR(2000) 
	
	set @dateEnd=GETDATE()
	Set @Source_TableName = ''DWH_LOG_BATCHS_HISTORY''
	Set @Audit_TableName = ''DWH_AUDIT_BATCHS_HISTORY''

	-- définition du type d''update
	declare @Update_final NUMERIC(1)
	if 	@Status = ''SUCCES'' or @Status = ''ECHEC''
		SET @Update_final = 1
	else
		SET @Update_final = 0
	End
	
		BEGIN TRANSACTION 

			if exists(select 1 from DWH_LOG_BATCHS_HISTORY where ID=@BatchId)	-- On verifie que le batch existe 
				begin 
					if @Update_final = 1 -- Si on est sur un update final on met la date de fin du batch
						update DWH_LOG_BATCHS_HISTORY
						set STATUS= @Status,
						END_DATE = @dateEnd
						where ID=@BatchId


					else
						update DWH_LOG_BATCHS_HISTORY -- sinon on update juste le statut
						set STATUS= @Status
						where ID=@BatchId
			
		
					-- Lancement de l''insert dans la table d''AUDIT
					execute SP_AUDIT_Table_Insert @BatchId,@Audit_TableName,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''UPDATE''
				end	
				
			else -- Si le batch n''existe pas

					begin
						raiserror(''DWH_LOG_BATCHS_HISTORY row does not exists.'',-1,-1)
					end
			
		COMMIT


	-- renvoi des données
	SET @SQLString = ''SELECT * from '' + @Source_TableName + '' where ID ='' + CAST(@BatchId as VARCHAR(9)) 
	EXEC (@SQLString)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_LOG_BATCHS_HISTORY_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_LOG_BATCHS_HISTORY_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_DWH_LOG_BATCHS_HISTORY_Insert]
	@Bank_Id NUMERIC(9), -- Id de la banque+
	@Interface NUMERIC(9),
	@Type_Batch VARCHAR(10), -- type de batch
	@Version_id NUMERIC(9), -- Version de l''ETL
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare @dateStart datetime
	declare @Batch_ID NUMERIC(9)
	declare @Source_TableName VARCHAR(50)
	declare @Audit_TableName VARCHAR(50)
	declare	@Record_ID NUMERIC(9) 
	declare @SQLString VARCHAR(2000) 
	declare @SQLString2 VARCHAR(2000) 

	set @dateStart = GETDATE()
	Set @Source_TableName = ''DWH_LOG_BATCHS_HISTORY''
	Set @Audit_TableName = ''DWH_AUDIT_BATCHS_HISTORY''
	
		
	-- Création de la ligne de début dans DWH_LOG_BATCHS_HISTORY
		BEGIN TRANSACTION 
			
			if @Type_Batch in (''COPY'', ''DWH'') 
			
				begin 
					SET @SQLString = ''INSERT INTO '' + @Source_TableName + ''(START_DATE, END_DATE, TYPE_BATCH, STATUS, BANK_ID) VALUES  ( ''
					 + char(39) + CAST(CONVERT(VARCHAR(30), @dateStart,127) as VARCHAR(30)) + char(39) 
					 + '', NULL ''
					 + '','' + char(39) + @Type_Batch + char(39) 
					 + '','' + char(39) + ''INIT'' + char(39) 
					 + '','' + CAST(@Bank_Id as  VARCHAR(10)) + '')''
				end
				
			else if @Type_Batch in (''STG'',''TMP'',''SPC_LOMB'')
			
				begin 
					SET @SQLString = ''INSERT INTO '' + @Source_TableName + ''(START_DATE, END_DATE, TYPE_BATCH, STATUS, BANK_ID, INTERFACE_ID) VALUES  ( ''
					 + char(39) + CAST(CONVERT(VARCHAR(30), @dateStart,127) as VARCHAR(30)) + char(39) 
					 + '', NULL ''
					 + '','' + char(39) + @Type_Batch + char(39) 
					 + '','' + char(39) + ''INIT'' + char(39) 
					 + '','' + CAST(@Bank_Id as  VARCHAR(10))
					 + '','' + CAST(@Interface as varchar(10)) + '')''
				end
				
			else if @Type_Batch in (''EXPORT'')
			
				begin 
					SET @SQLString = ''INSERT INTO '' + @Source_TableName + ''(START_DATE, END_DATE, TYPE_BATCH, STATUS) VALUES  ( ''
					 + char(39) + CAST(CONVERT(VARCHAR(30), @dateStart,127) as VARCHAR(30)) + char(39) 
					 + '', NULL ''
					 + '','' + char(39) + @Type_Batch + char(39) 
					 + '','' + char(39) + ''INIT'' + char(39) + '')''
				end
			
			
			    -- Execution de la query
				EXEC (@SQLString)


				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = [dbo].[SP_Max_ID] @Source_TableName;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,@Audit_TableName,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
			
				

		COMMIT
		

	-- renvoi des données
	SET @SQLString2 = ''SELECT * from '' + @Source_TableName + '' where ID ='' + CAST(@Record_ID as VARCHAR(9))
	EXEC (@SQLString2)
	
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_DATA_INSTRUMENTS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_DATA_INSTRUMENTS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_DWH_DATA_INSTRUMENTS_Insert]
	@Code VARCHAR(20), 
	@Isin_Code VARCHAR(12), 
	@Description VARCHAR(200), 
	@Ref_Type_Id NUMERIC(9),
	@Ref_Asset_Type_Id NUMERIC(9),
	@Currency_Id NUMERIC(9),	
	@Issuer VARCHAR(30), 	
	@State VARCHAR(3), 	
	@Issue_Date DATETIME, 		
	@Maturity_Date DATETIME, 	
	@Bloomberg_Ticker VARCHAR(12), 
	@Fx_Nominal_In NUMERIC(22,10),
	@Fx_Currency_Id_out NUMERIC(9),
	@Fx_Nominal_Out NUMERIC(22,10),
	@Fx_Rate NUMERIC(22,10),
	@CounterPart VARCHAR(50),
	@File_Loaded_Id NUMERIC(9),		
	@Batch_STG_Id NUMERIC(9),
	@Batch_TMP_Id NUMERIC(9),
	@Batch_DWH_Id NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare @dateStart datetime
	declare	@Record_ID NUMERIC(9) 

	set @dateStart = GETDATE()
	
	
	-- Création de la ligne de début dans DWH_DATA_INSTRUMENTS

		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO DWH_DATA_INSTRUMENTS (CODE,ISIN_CODE,DESCRIPTION,REF_TYPE_ID,REF_ASSET_TYPE_ID,CURRENCY_ID,ISSUER,STATE,ISSUE_DATE,MATURITY_DATE
					   ,BLOOMBERG_TICKER, FX_NOMINAL_IN, FX_CURRENCY_ID_OUT, FX_NOMINAL_OUT, FX_RATE, FILE_LOADED_ID,BATCH_STG_ID, BATCH_TMP_ID,  BATCH_DWH_ID, COUNTERPART) 
					VALUES  (@Code,@Isin_Code,@Description, @Ref_Type_Id,@Ref_Asset_Type_Id, @Currency_Id, @Issuer, @State, @Issue_Date, @Maturity_Date, 
						@Bloomberg_Ticker,@Fx_Nominal_In, @Fx_Currency_Id_out, @Fx_Nominal_Out, @Fx_Rate,  @File_Loaded_Id, @Batch_STG_Id, @Batch_TMP_Id, @Batch_DWH_Id, @CounterPart)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = dbo.SP_Max_ID DWH_DATA_INSTRUMENTS;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,DWH_AUDIT_INSTRUMENTS,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						

		COMMIT
		
	
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_HOLDINGS_OPTI_FUTU_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_HOLDINGS_OPTI_FUTU_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_EXP_DATA_HOLDINGS_OPTI_FUTU_Insert]
	@Depository_Code VARCHAR(20), 
	@Instrument_Type VARCHAR(8), 
	@Instrument_Code VARCHAR(12), 
	@Instrument_Description VARCHAR(250), 
	@Accounting_Date VARCHAR(10), 		
	@Value_Date VARCHAR(10), 
	@Unit VARCHAR(23),	
	@Maturity_Date VARCHAR(10), 	
	@Flag_Put_Call VARCHAR(1),
	@Market_Price VARCHAR(23),	
	@Issuer	 VARCHAR(30),
	@BATCH_EXP_ID NUMERIC(9),	
	@File_Loaded_Id NUMERIC(9),		
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare @dateStart datetime
	declare	@Record_ID NUMERIC(9) 

	set @dateStart = GETDATE()
	
	-- Création de la ligne de début dans EXP_DATA_HOLDINGS_CAT
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO EXP_DATA_HOLDINGS_OPTI_FUTU (DEPOSITORY_CODE ,INSTRUMENT_TYPE,INSTRUMENT_CODE,INSTRUMENT_DESCRIPTION,ACCOUNTING_DATE,VALUE_DATE,UNIT,MATURITY_DATE
						,FLAG_PUT_CALL,MARKET_PRICE, ISSUER, BATCH_EXP_ID,FILE_LOADED_ID,FILE_EXTRACTED_ID)				   
					VALUES  (@Depository_Code,@Instrument_Type,@Instrument_Code, @Instrument_Description, @Accounting_Date, @Value_Date, @Unit,@Maturity_Date
								,@Flag_Put_Call, @Market_Price,@Issuer,  @BATCH_EXP_ID,@File_Loaded_Id, NULL)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = dbo.SP_Max_ID EXP_DATA_HOLDINGS_OPTI_FUTU;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,EXP_AUDIT_HOLDINGS_OPTI_FUTU,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						

		COMMIT
			
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_HOLDINGS_CAT_SWAP_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_HOLDINGS_CAT_SWAP_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_EXP_DATA_HOLDINGS_CAT_SWAP_Insert]
	@Depository_Code VARCHAR(20), 
	@Position_Date VARCHAR(8), 
	@Value_Date VARCHAR(8), 
	@Reference VARCHAR(250),
	@Maturity_Date VARCHAR(8), 	
	@Buy_Currency VARCHAR(3),
	@Buy_Nominal VARCHAR(23),	
	@Sale_Currency VARCHAR(3),
	@Sale_Nominal VARCHAR(23),	
	@Transaction_Type VARCHAR(5),	
	@BATCH_EXP_ID NUMERIC(9),	
	@File_Loaded_Id NUMERIC(9),		
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare @dateStart datetime
	declare	@Record_ID NUMERIC(9) 

	set @dateStart = GETDATE()
	
	-- Création de la ligne de début dans EXP_DATA_HOLDINGS_CAT_SWAP
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO EXP_DATA_HOLDINGS_CAT_SWAP (DEPOSITORY_CODE,POSITION_DATE,VALUE_DATE,REFERENCE,MATURITY_DATE,BUY_CURRENCY,BUY_NOMINAL
						,SALE_CURRENCY,SALE_NOMINAL,TRANSACTION_TYPE,BATCH_EXP_ID,FILE_LOADED_ID,FILE_EXTRACTED_ID)				   
					VALUES  (@Depository_Code,@Position_Date,@Value_Date, @Reference, @Maturity_Date, @Buy_Currency, @Buy_Nominal,
								@Sale_Currency, @Sale_Nominal, @BATCH_EXP_ID, @BATCH_EXP_ID,@File_Loaded_Id, NULL)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = dbo.SP_Max_ID EXP_DATA_HOLDINGS_CAT_SWAP;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,EXP_AUDIT_HOLDINGS_CAT_SWAP,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						

		COMMIT
			
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_HOLDINGS_CAT_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_HOLDINGS_CAT_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_EXP_DATA_HOLDINGS_CAT_Insert]
	@Depository_Code VARCHAR(20), 
	@Position_Date VARCHAR(8), 
	@Value_Date VARCHAR(8), 
	@Reference VARCHAR(250),
	@Maturity_Date VARCHAR(8), 	
	@Buy_Currency VARCHAR(3),
	@Buy_Nominal VARCHAR(23),	
	@Sale_Currency VARCHAR(3),
	@Sale_Nominal VARCHAR(23),	
	@Transaction_Type VARCHAR(5),	
	@BATCH_EXP_ID NUMERIC(9),	
	@File_Loaded_Id NUMERIC(9),		
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare @dateStart datetime
	declare	@Record_ID NUMERIC(9) 

	set @dateStart = GETDATE()
	
	-- Création de la ligne de début dans EXP_DATA_HOLDINGS_CAT
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO EXP_DATA_HOLDINGS_CAT (DEPOSITORY_CODE,POSITION_DATE,VALUE_DATE,REFERENCE,MATURITY_DATE,BUY_CURRENCY,BUY_NOMINAL
						,SALE_CURRENCY,SALE_NOMINAL,TRANSACTION_TYPE,BATCH_EXP_ID,FILE_LOADED_ID,FILE_EXTRACTED_ID)				   
					VALUES  (@Depository_Code,@Position_Date,@Value_Date, @Reference, @Maturity_Date, @Buy_Currency, @Buy_Nominal,
								@Sale_Currency, @Sale_Nominal, @BATCH_EXP_ID, @BATCH_EXP_ID,@File_Loaded_Id, NULL)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = dbo.SP_Max_ID EXP_DATA_HOLDINGS_CAT;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,EXP_AUDIT_HOLDINGS_CAT_Insert,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						

		COMMIT
			
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[SP_EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940_Insert]
	@Portfolio_Id NUMERIC(9), 
	@Instrument_Id NUMERIC(9),
	@End_Date  Datetime,
	@BATCH_EXP_ID NUMERIC(9),	
	@File_Loaded_Id NUMERIC(9),		
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare @dateStart datetime
	declare	@Record_ID NUMERIC(9) 

	set @dateStart = GETDATE()
	
	-- Création de la ligne de début dans EXP_DATA_HOLDINGS_TRANSACTIONS_MT940
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940  (PORTFOLIO_ID,INSTRUMENT_ID,BEGIN_DATE,BEGIN_BALANCE,END_DATE,
					END_BALANCE,TRANSACTIONS_SUM,BATCH_EXP_ID,FILE_LOADED_ID)
					   
					VALUES  (@Portfolio_Id,@Instrument_Id,Null, Null, @End_Date, 
								Null, Null, @BATCH_EXP_ID,	@File_Loaded_Id)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = dbo.SP_Max_ID EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,EXP_AUDIT_CTRL_HOLDINGS_TRANSACTIONS_MT940,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						

		COMMIT
			
END
' 
END
GO
/****** Object:  Table [dbo].[DWH_LOGS_CTRL]    Script Date: 01/24/2019 10:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_LOGS_CTRL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DWH_LOGS_CTRL](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[BATCH_ID] [numeric](9, 0) NOT NULL,
	[CTRL_ID] [numeric](9, 0) NOT NULL,
	[TABLE_NAME] [varchar](50) NOT NULL,
	[RECORD_ID] [numeric](9, 0) NOT NULL,
	[TYPE_FIELD] [varchar](20) NOT NULL,
	[VALUE] [varchar](20) NOT NULL,
	[COMMENT] [varchar](200) NOT NULL,
 CONSTRAINT [PK_DWH_LOGS_CTRL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DWH_LOGS]    Script Date: 01/24/2019 10:17:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_LOGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DWH_LOGS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[VERSION_ID] [numeric](9, 0) NOT NULL,
	[MACHINE] [varchar](100) NOT NULL,
	[USERNAME] [varchar](100) NOT NULL,
	[PACKAGE] [varchar](100) NOT NULL,
	[TASK] [varchar](100) NOT NULL,
	[COMMENT] [varchar](200) NOT NULL,
	[TMS] [datetime] NOT NULL DEFAULT (getdate()),
	[BATCH_ID] [numeric](9, 0) NOT NULL,
	[FILE_ID] [numeric](9, 0) NULL,
	[TYPE] [varchar](10) NOT NULL,
 CONSTRAINT [PK_DWH_LOGS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DWH_LOG_FILES_HISTORY]    Script Date: 01/24/2019 10:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_LOG_FILES_HISTORY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DWH_LOG_FILES_HISTORY](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[START_DATE] [datetime] NOT NULL,
	[END_DATE] [datetime] NULL,
	[FOLDER] [varchar](500) NULL,
	[IN_OUT] [varchar](3) NOT NULL,
	[FILENAME] [varchar](100) NOT NULL,
	[STATUS] [varchar](50) NOT NULL,
	[SIZE] [varchar](10) NULL,
	[BATCH_ID] [numeric](9, 0) NOT NULL,
	[FILE_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_DHW_LOG_FILES_HISTORY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DWH_DATA_PORTFOLIO]    Script Date: 01/24/2019 10:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_DATA_PORTFOLIO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DWH_DATA_PORTFOLIO](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[DEPOSITORY_CODE] [varchar](50) NOT NULL,
	[INTERNAL_CODE] [varchar](50) NOT NULL,
	[EXPORT_FLAG] [bit] NOT NULL,
	[BANK_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[BATCH_TMP_ID] [numeric](9, 0) NOT NULL,
	[BATCH_DWH_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_DWH_DATA_PORTFOLIO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DWH_DATA_INSTRUMENTS_NOMINAL]    Script Date: 01/24/2019 10:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_DATA_INSTRUMENTS_NOMINAL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DWH_DATA_INSTRUMENTS_NOMINAL](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[UNIT_EXPRESSION] [varchar](1) NOT NULL,
	[PRICING_EXPRESSION] [varchar](1) NOT NULL,
	[NOMINAL] [numeric](22, 10) NULL,
	[INSTRUMENT_ID] [numeric](9, 0) NOT NULL,
	[BANK_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[BATCH_TMP_ID] [numeric](9, 0) NOT NULL,
	[BATCH_DWH_ID] [numeric](9, 0) NOT NULL,
 CONSTRAINT [PK_DWH_DATA_INSTRUMENTS_NOMINAL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]    Script Date: 01/24/2019 10:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXP_DATA_HOLDINGS_TRANSACTIONS_MT940](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[CTRL_ID] [numeric](9, 0) NOT NULL,
	[TEXT] [varchar](200) NULL,
	[BATCH_EXP_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
	[FILE_EXTRACTED_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_TRANSACTIONS_VMOB_TCN_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_TRANSACTIONS_VMOB_TCN_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_EXP_DATA_TRANSACTIONS_VMOB_TCN_Insert]
	@Ope_Ext_Ref VARCHAR(16), 
	@Block_Ext_Ref VARCHAR(16), 
	@Linked_Ref VARCHAR(16), 
	@Ope_Type VARCHAR(1),
	@Cancel_Ref VARCHAR(16),
	@Neg_Dt VARCHAR(8),	
	@Sett_Dt VARCHAR(8),
	@Sense VARCHAR(5),
	@Act_Code VARCHAR(12),
	@Act_Type_Code VARCHAR(12),
	@Act_Cat VARCHAR(4),
	@Quot_Curr VARCHAR(3),
	@Sett_Curr VARCHAR(3),
	@Fees_Curr VARCHAR(3),
	@Nego_Curr VARCHAR(3),
	@Unit VARCHAR(23),
	@Unit_Expression VARCHAR(1),
	@Curr_Cross VARCHAR(23) ,
	@Nego_Price as VARCHAR(23),
	@Price_Expression VARCHAR(1),
	@Gross_Negociation_Amout VARCHAR(23) ,
	@Brocker_Fees VARCHAR(23),	
	@Various_Fees VARCHAR(23),	
	@TVA_Fees VARCHAR(23),
	@Total_Fees VARCHAR(23),
	@TTF_Fees VARCHAR(23),
	@CMVT_Fees VARCHAR(23),	
	@Rto_Fees VARCHAR(23),		
	@Net_Settlement_Amount VARCHAR(23),		
	@Accrued_Interest_Amount VARCHAR(23),
	@Portfolio VARCHAR(40),
	@CMVT_Fees_Curr VARCHAR(3),
	@Brocker_Search_Fees VARCHAR(23),
	@SDG_Search_Fees VARCHAR(23),
	@SDG_Search_Fees_Curr VARCHAR(3),
	@BATCH_EXP_ID NUMERIC(9),	
	@File_Loaded_Id NUMERIC(9),		
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare @dateStart datetime
	declare	@Record_ID NUMERIC(9) 

	set @dateStart = GETDATE()
	
	-- Création de la ligne de début dans EXP_DATA_TRANSACTIONS_VMOB_TCN
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO EXP_DATA_TRANSACTIONS_VMOB_TCN   (OPE_EXT_REF,BLOCK_EXT_REF,LINKED_REF,OPE_TYPE,CANCEL_REF,NEG_DT,SETT_DT,SENSE,ACT_CODE,ACT_TYPE_CODE,ACT_CAT
						   ,QUOT_CURR,SETT_CURR,FEES_CURR,NEGO_CURR,UNIT,UNIT_EXPRESSION,CURR_CROSS,NEGO_PRICE,PRICE_EXPRESSION,GROSS_NEGOCIATION_AMOUNT,BROCKER_FEES,VARIOUS_FEES,TVA_FEES
						   ,TOTAL_FEES,TTF_FEES,CMVT_FEES,RTO_FEES,NET_SETTLEMENT_AMOUNT,ACCRUED_INTEREST_AMOUNT,PORTFOLIO,CMVT_FEES_CURR,BROCKER_SEARCH_FEES,SDG_SEARCH_FEES
						   ,SDG_SEARCH_FEES_CURR,BATCH_EXP_ID,FILE_LOADED_ID,FILE_EXTRACTED_ID)
					   
					VALUES  (@Ope_Ext_Ref, @Block_Ext_Ref, @Linked_Ref, @Ope_Type, @Cancel_Ref, @Neg_Dt , @Sett_Dt, @Sense, @Act_Code, @Act_Type_Code, @Act_Cat,
							@Quot_Curr, @Sett_Curr, @Fees_Curr, @Nego_Curr, @Unit, @Unit_Expression, @Curr_Cross, @Nego_Price, @Price_Expression, @Gross_Negociation_Amout, @Brocker_Fees, @Various_Fees, @TVA_Fees,
							@Total_Fees, @TTF_Fees, @CMVT_Fees, @Rto_Fees, @Net_Settlement_Amount, @Accrued_Interest_Amount, @Portfolio, @CMVT_Fees_Curr, @Brocker_Search_Fees, @SDG_Search_Fees,
							@SDG_Search_Fees_Curr, @BATCH_EXP_ID, @File_Loaded_Id, NULL	)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = dbo.SP_Max_ID EXP_DATA_TRANSACTIONS_VMOB_TCN;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,EXP_AUDIT_TRANSACTIONS_VMOB_TCN,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						

		COMMIT
			
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_TRANSACTIONS_OPTI_FUTU_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_TRANSACTIONS_OPTI_FUTU_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_EXP_DATA_TRANSACTIONS_OPTI_FUTU_Insert]
	@Portfolio VARCHAR(40),
	@Nature_Contract_Code VARCHAR(12),
	@Value_Code VARCHAR(30),
	@Transac_Sense VARCHAR(5),
	@Transac_Type VARCHAR(1),
	@Block_Ext_Ref VARCHAR(16),
	@Ref_Ope_Alloc VARCHAR(16),
	@Cancel_Ref VARCHAR(16),
	@Neg_Dt VARCHAR(8),	
	@Sett_Dt VARCHAR(8),
	@Nego_Curr VARCHAR(3),
	@Sett_Curr VARCHAR(3),
	@Curr_Cross NUMERIC(22,10),	
	@Unit VARCHAR(23),
	@Nego_Price as VARCHAR(23),
	@Price_Expression VARCHAR(1),
	@Gross_Negociation_Amout VARCHAR(23) ,
	@Net_Settlement_Amount VARCHAR(23),		
	@Brocker_Fees VARCHAR(23),	
	@CMVT_Fees VARCHAR(23),	
	@Option_Sense VARCHAR(12),
	@Exercice_Price VARCHAR(23),	
	@Issue_Dt VARCHAR(8),	
	@Act_Cat VARCHAR(4),
	@Underlying_Nature VARCHAR(1),
	@Brocker_BIC VARCHAR(16),
	@BATCH_EXP_ID NUMERIC(9),	
	@File_Loaded_Id NUMERIC(9),		
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare @dateStart datetime
	declare	@Record_ID NUMERIC(9) 

	set @dateStart = GETDATE()
	
	-- Création de la ligne de début dans EXP_DATA_TRANSACTIONS_OPTI_FUTU
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO EXP_DATA_TRANSACTIONS_OPTI_FUTU  (PORTFOLIO  ,NATURE_CONTRACT_CODE ,VALUE_CODE ,TRANSAC_SENS ,TRANSAC_TYPE ,BLOCK_EXT_REF ,REF_OPE_ALLOC ,CANCEL_REF_OPE ,NEG_DT ,SETT_DT ,NEGO_CURR ,SETT_CURR
					,CURR_CROSS ,UNIT ,NEGO_PRICE ,PRICE_EXPRESSION ,GROSS_NEGOCIATION_AMOUNT ,NET_SETTLEMENT_AMOUNT ,BROCKER_FEES ,CMVT_FEES ,OPTION_SENSE ,EXERCICE_PRICE
					,ISSUE_DT ,ACT_CAT ,UNDERLYING_NATURE ,BROCKER_BIC ,BATCH_EXP_ID ,FILE_LOADED_ID)
					   
					VALUES  (@Portfolio, @Nature_Contract_Code, @Value_Code, @Transac_Sense, @Transac_Type , @Block_Ext_Ref , @Ref_Ope_Alloc, @Cancel_Ref, @Neg_Dt, @Sett_Dt, @Nego_Curr, @Sett_Curr,
					@Curr_Cross, @Unit, @Nego_Price, @Price_Expression, @Gross_Negociation_Amout, @Net_Settlement_Amount, @Brocker_Fees, @CMVT_Fees, @Option_Sense, @Exercice_Price,
					@Issue_Dt, @Act_Cat, @Underlying_Nature,  @Brocker_BIC, @BATCH_EXP_ID, @File_Loaded_Id)
					
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = dbo.SP_Max_ID EXP_DATA_TRANSACTIONS_OPTI_FUTU;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID, EXP_AUDIT_TRANSACTIONS_OPTI_FUTU, @Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						

		COMMIT
			
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_TRANSACTIONS_CHANGE_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_TRANSACTIONS_CHANGE_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_EXP_DATA_TRANSACTIONS_CHANGE_Insert]
	@Portfolio VARCHAR(20),
	@Ope_Ext_Ref VARCHAR(16), 
	@Cancel_Ref VARCHAR(16),
	@Cancel_Flag VARCHAR(4),
	@Transac_Sense VARCHAR(5),
	@Transac_Type VARCHAR(3),
	@Neg_Dt VARCHAR(8),	
	@Sett_Dt VARCHAR(8),
	@Issue_Dt VARCHAR(8),
	@CounterParty VARCHAR(11),	
	@Currency_In VARCHAR(3),
	@Currency_Out VARCHAR(3),
	@Net_Settlement_Amount_In VARCHAR(23),		
	@Net_Settlement_Amount_out VARCHAR(23),		
	@Spot_Rate VARCHAR(23),
	@Forward_Rate VARCHAR(23),
	@Fixing_Swap_Dt VARCHAR(8),	
	@Common_Ref_Swap VARCHAR(16),
	@BATCH_EXP_ID NUMERIC(9),	
	@File_Loaded_Id NUMERIC(9),		
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare @dateStart datetime
	declare	@Record_ID NUMERIC(9) 

	set @dateStart = GETDATE()
	
	-- Création de la ligne de début dans EXP_DATA_TRANSACTIONS_OPTI_FUTU
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO EXP_DATA_TRANSACTIONS_CHANGE  (OPE_EXT_REF ,PORTFOLIO ,CANCEL_REF_OPE , CANCEL_FLAG ,TRANSAC_SENS ,TRANSAC_TYPE ,NEG_DT ,SETT_DT ,ISSUE_DT ,COUNTERPARTY
					,CURRENCY_IN ,CURRENCY_OUT ,NET_SETTLEMENT_AMOUNT_IN ,NET_SETTLEMENT_AMOUNT_OUT ,SPOT_RATE ,FORWARD_RATE ,FIXING_SWAP_DATE
					,COMMON_REF_SWAP ,BATCH_EXP_ID ,FILE_LOADED_ID)
					   
					VALUES  ( @Ope_Ext_Ref,  @Portfolio, @Cancel_Ref, @Cancel_Flag, @Transac_Sense, @Transac_Type, @Neg_Dt, @Sett_Dt, @Issue_Dt, @CounterParty
					, @Currency_In, @Currency_Out, @Net_Settlement_Amount_In, @Net_Settlement_Amount_Out,  @Spot_Rate, @Forward_Rate, @Fixing_Swap_Dt
					, @Common_Ref_Swap, @BATCH_EXP_ID, @File_Loaded_Id)
					
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = dbo.SP_Max_ID EXP_DATA_TRANSACTIONS_CHANGE;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID, EXP_AUDIT_TRANSACTIONS_CHANGE, @Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						

		COMMIT
			
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_HOLDINGS_VMOB_TCN_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_HOLDINGS_VMOB_TCN_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_EXP_DATA_HOLDINGS_VMOB_TCN_Insert]
	@Depository_Code VARCHAR(20), 
	@Instrument_Type VARCHAR(20), 
	@Date VARCHAR(8), 
	@Isin_Code VARCHAR(20),
	@Description VARCHAR(250),
	@Currency VARCHAR(3),	
	@Unit VARCHAR(23),	
	@Unit_Expression VARCHAR(1), 	
	@Nominal VARCHAR(23),	
	@BATCH_EXP_ID NUMERIC(9),	
	@File_Loaded_Id NUMERIC(9),		
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare @dateStart datetime
	declare	@Record_ID NUMERIC(9) 

	set @dateStart = GETDATE()
	
	-- Création de la ligne de début dans EXP_DATA_HOLDINGS_VMOB_TCN
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO EXP_DATA_HOLDINGS_VMOB_TCN (DEPOSITORY_CODE,INSTRUMENT_TYPE,DATE,ISIN_CODE,DESCRIPTION,CURRENCY
					   ,UNIT,UNIT_EXPRESSION,NOMINAL,BATCH_EXP_ID,FILE_LOADED_ID,FILE_EXTRACTED_ID) 
					   
					VALUES  (@Depository_Code,@Instrument_Type,@Date, @Isin_Code, @Description, 
								@Currency, @Unit, @Unit_Expression,  @Nominal, @BATCH_EXP_ID,
								@File_Loaded_Id, NULL)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = dbo.SP_Max_ID EXP_DATA_HOLDINGS_VMOB_TCN;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,EXP_AUDIT_HOLDINGS_VMOB_TCN,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						

		COMMIT
			
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[SP_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940_Insert]
	@Ctrl_Id NUMERIC(9), 
	@Text VARCHAR(200),	
	@BATCH_EXP_ID NUMERIC(9),	
	@File_Loaded_Id NUMERIC(9),	
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 


	-- Création de la ligne de début dans EXP_DATA_HOLDINGS_TRANSACTIONS_MT940
		BEGIN TRANSACTION 
			
				begin 
				
					INSERT INTO EXP_DATA_HOLDINGS_TRANSACTIONS_MT940  (CTRL_ID,TEXT, BATCH_EXP_ID, FILE_LOADED_ID)		   
					VALUES  (@Ctrl_Id,@Text, @BATCH_EXP_ID, @File_Loaded_Id)
					
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = dbo.SP_Max_ID EXP_DATA_HOLDINGS_TRANSACTIONS_MT940;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,EXP_AUDIT_HOLDINGS_TRANSACTIONS_MT940,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						

		COMMIT
			
END
' 
END
GO
/****** Object:  Table [dbo].[DWH_DATA_HOLDINGS]    Script Date: 01/24/2019 10:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_DATA_HOLDINGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DWH_DATA_HOLDINGS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[UNIT] [numeric](22, 10) NULL,
	[MARKET_PRICE] [numeric](22, 10) NULL,
	[MARKET_PRICE_DATE] [datetime] NULL,
	[AMOUNT] [numeric](22, 10) NULL,
	[ACCRUED_INTEREST] [numeric](22, 10) NULL,
	[STATEMENT_DATE] [datetime] NOT NULL,
	[PORTFOLIO_ID] [numeric](9, 0) NOT NULL,
	[INSTRUMENT_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[BATCH_TMP_ID] [numeric](9, 0) NOT NULL,
	[BATCH_DWH_ID] [numeric](9, 0) NOT NULL,
	[BATCH_EXP_ID] [numeric](9, 0) NULL,
	[CTRL_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_DWH_DATA_HOLDINGS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_LOGS_Insert_Info]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_LOGS_Insert_Info]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_DWH_LOGS_Insert_Info]
	@Batch_id NUMERIC(9), -- Id du batch de traitement
	@File_ID NUMERIC(9), -- ID du paramètre fichier
	@Version_id NUMERIC(9), -- Version de l''ETL
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100), -- nom de la task
	@Comment	varchar(200) -- nom de la task


AS
BEGIN

	SET NOCOUNT ON;
	
	-- Création de la ligne de début dans DWH_LOGS
		BEGIN TRANSACTION 
			
			
				INSERT INTO DWH_LOGS (VERSION_ID, MACHINE, USERNAME, PACKAGE, TASK, COMMENT, TMS, BATCH_ID , FILE_ID, TYPE ) 
				VALUES  ( @Version_id,@MachineName, @UserName, @PackageName, @TaskName, @Comment, Getdate(), @Batch_id, @File_ID, ''INFO'')


		COMMIT
		

	
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_LOGS_Insert_Error]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_LOGS_Insert_Error]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_DWH_LOGS_Insert_Error]
	@Batch_id NUMERIC(9), -- Id du batch de traitement
	@File_ID NUMERIC(9), -- ID du paramètre fichier
	@Version_id NUMERIC(9), -- Version de l''ETL
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100), -- nom de la task
	@Comment	varchar(200) -- nom de la task


AS
BEGIN

	SET NOCOUNT ON;
	
	-- Création de la ligne de début dans DWH_LOGS
		BEGIN TRANSACTION 
			
			
				INSERT INTO DWH_LOGS (VERSION_ID, MACHINE, USERNAME, PACKAGE, TASK, COMMENT, TMS, BATCH_ID , FILE_ID, TYPE ) 
				VALUES  ( @Version_id,@MachineName, @UserName, @PackageName, @TaskName, @Comment, Getdate(), @Batch_id, @File_ID, ''ERROR'')


		COMMIT
		

	
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_LOGS_CTRL_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_LOGS_CTRL_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_DWH_LOGS_CTRL_Insert]
	
	@TableName		VARCHAR(50),
	@Type_Field		VARCHAR(20), 
	@Value			VARCHAR(20), 
	@Comment		VARCHAR(200), 
	@Batch_ID		NUMERIC(9),	
	@Ctrl_ID		NUMERIC(9),
	@Row_ID			NUMERIC(9),		
	@Version_id		NUMERIC(9),			
	@UserName		VARCHAR(100) ,
	@MachineName	VARCHAR(100) ,
	@PackageName	VARCHAR(100),
	@TaskName		VARCHAR(100)

AS
BEGIN

	SET NOCOUNT ON;
	
	DECLARE	@Record_ID NUMERIC(9) 
		
	BEGIN TRANSACTION 
		
		BEGIN 
			INSERT INTO DWH_LOGS_CTRL  (TABLE_NAME, TYPE_FIELD, VALUE, COMMENT, BATCH_ID, CTRL_ID, RECORD_ID) 
		    VALUES (@TableName, @Type_Field, @Value, @Comment, @Batch_ID, @Ctrl_ID, @Row_ID)
		END
	
		-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
		EXECUTE @Record_ID = dbo.SP_Max_ID DWH_LOGS_CTRL;

		-- Lancement de l''insert dans la table d''AUDIT
		EXECUTE SP_AUDIT_Table_Insert @Record_ID,DWH_AUDIT_LOGS_CTRL, @Version_id, @UserName,	@MachineName, @PackageName,	@TaskName, ''INSERT''
				
	COMMIT
		

	
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_LOG_FILES_HISTORY_Update]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_LOG_FILES_HISTORY_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_DWH_LOG_FILES_HISTORY_Update]
	@File_id int,		-- identifiant du batch
	@Status VARCHAR(30),	-- Statut
	@Version_id NUMERIC(9), -- Version de l''ETL
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task	
AS
BEGIN


	declare @dateEnd datetime
	set @dateEnd=GETDATE()

	-- définition du type d''update
	declare @Update_final NUMERIC(1)
	if 	@Status = ''SUCCES'' or @Status = ''ECHEC''
		SET @Update_final = 1
	else
		SET @Update_final = 0
	End
	

		BEGIN TRANSACTION 

			if exists(select 1 from DWH_LOG_FILES_HISTORY where ID=@File_id)	-- On verifie que le batch existe 
				begin 
					if @Update_final = 1 -- Si on est sur un update final on met la date de fin du batch
						update DWH_LOG_FILES_HISTORY
						set STATUS= @Status,
						END_DATE = @dateEnd
						where ID=@File_id


					else
						update DWH_LOG_FILES_HISTORY -- sinon on update juste le statut
						set STATUS= @Status
						where ID=@File_id
			
		
					-- Lancement de l''insert dans la table d''AUDIT
					execute SP_AUDIT_Table_Insert @File_id,''DWH_AUDIT_FILES_HISTORY'',@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''UPDATE''
				end	
				
			else -- Si le batch n''existe pas

					begin
						raiserror(''DWH_LOG_FILES_HISTORY row does not exists.'',-1,-1)
					end
			
		COMMIT


' 
END
GO
/****** Object:  Table [dbo].[DWH_DATA_TRANSACTIONS]    Script Date: 01/24/2019 10:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DWH_DATA_TRANSACTIONS](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[EXTERNAL_REF_OPE] [varchar](16) NOT NULL,
	[REF_TYPE_OPE_ID] [numeric](9, 0) NOT NULL,
	[DESCRIPTION] [varchar](1000) NOT NULL,
	[EXTERNAL_REF_ANNULATION_OPE] [varchar](16) NULL,
	[NEGOCIATION_DATE] [datetime] NOT NULL,
	[SETTLEMENT_DATE] [datetime] NOT NULL,
	[CURRENCY_QUOT_ID] [numeric](9, 0) NOT NULL,
	[CURRENCY_SETT_ID] [numeric](9, 0) NOT NULL,
	[CURRENCY_FEES_ID] [numeric](9, 0) NOT NULL,
	[CURRENCY_NEGO_ID] [numeric](9, 0) NOT NULL,
	[UNIT] [numeric](22, 10) NULL,
	[FX_RATE_CURRENCY_SETTLEMENT_NEGOCIATION] [numeric](22, 10) NOT NULL,
	[NEGOCIATION_PRICE] [numeric](22, 10) NULL,
	[GROSS_NEGOCIATION_AMOUNT] [numeric](22, 10) NOT NULL,
	[ACCRUED_INTEREST_NEGOCIATION_AMOUNT] [numeric](22, 10) NOT NULL,
	[NET_SETTLEMENT_AMOUNT] [numeric](22, 10) NOT NULL,
	[BROCKER_FEES] [numeric](22, 10) NOT NULL,
	[OTHERS_FEES] [numeric](22, 10) NOT NULL,
	[TAXES_FEES] [numeric](22, 10) NOT NULL,
	[TTF_FEES] [numeric](22, 10) NOT NULL,
	[RTO_FEES] [numeric](22, 10) NOT NULL,
	[COMMISSIONS_FEES] [numeric](22, 10) NOT NULL,
	[CURRENCY_COMMISSIONS_FEES_ID] [numeric](9, 0) NOT NULL,
	[INSTRUMENT_ID] [numeric](9, 0) NOT NULL,
	[PORTFOLIO_ID] [numeric](9, 0) NOT NULL,
	[FILE_LOADED_ID] [numeric](9, 0) NOT NULL,
	[BATCH_STG_ID] [numeric](9, 0) NOT NULL,
	[BATCH_TMP_ID] [numeric](9, 0) NOT NULL,
	[BATCH_DWH_ID] [numeric](9, 0) NOT NULL,
	[BATCH_EXP_ID] [numeric](9, 0) NULL,
	[CTRL_ID] [numeric](9, 0) NULL,
 CONSTRAINT [PK_DWH_DATA_TRANSACTIONS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_DATA_PORTFOLIO_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_DATA_PORTFOLIO_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_DWH_DATA_PORTFOLIO_Insert]
	@Depository_code VARCHAR(50), 
	@Internal_Code VARCHAR(50), 
	@Export_Flag bit, 
	@File_Loaded_Id NUMERIC(9),
	@Batch_STG_Id NUMERIC(9),
	@Batch_TMP_Id NUMERIC(9),	
	@Batch_DWH_Id NUMERIC(9),
	@Bank_Id NUMERIC(9),	
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans DWH_DATA_PORTFOLIO
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO DWH_DATA_PORTFOLIO (DEPOSITORY_CODE,INTERNAL_CODE,EXPORT_FLAG,  BANK_ID,FILE_LOADED_ID,BATCH_STG_ID, BATCH_TMP_ID, BATCH_DWH_ID) 
					VALUES  (@Depository_code,@Internal_Code,@Export_Flag,  @Bank_Id, @File_Loaded_Id, @Batch_STG_Id, @Batch_TMP_Id, @Batch_DWH_Id)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = dbo.SP_Max_ID DWH_DATA_PORTFOLIO;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,DWH_AUDIT_PORTFOLIO,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						

		COMMIT
	
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_DATA_INSTRUMENTS_NOMINAL_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_DATA_INSTRUMENTS_NOMINAL_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_DWH_DATA_INSTRUMENTS_NOMINAL_Insert]
	@Unit_Expression VARCHAR(1), 
	@Pricing_Expression VARCHAR(1), 
	@Nominal NUMERIC(22,10),	
	@Instrument_Id NUMERIC(9),		
	@Bank_Id NUMERIC(9),	
	@File_Loaded_Id NUMERIC(9),
	@Batch_STG_Id NUMERIC(9),
	@Batch_TMP_Id NUMERIC(9),
	@Batch_DWH_Id NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans DWH_DATA_INSTRUMENTS_NOMINAL
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO DWH_DATA_INSTRUMENTS_NOMINAL (UNIT_EXPRESSION,PRICING_EXPRESSION,NOMINAL,
						INSTRUMENT_ID,BANK_ID,FILE_LOADED_ID, BATCH_STG_ID, BATCH_TMP_ID, BATCH_DWH_ID) 
					VALUES  (@Unit_Expression,@Pricing_Expression,@Nominal, 
						@Instrument_Id, @Bank_Id, @File_Loaded_Id, @Batch_STG_Id, @Batch_TMP_Id, @Batch_DWH_Id)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = dbo.SP_Max_ID DWH_DATA_INSTRUMENTS_NOMINAL;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,DWH_AUDIT_INSTRUMENTS_NOMINAL,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						

		COMMIT
		
	
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_DATA_TRANSACTIONS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_DATA_TRANSACTIONS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_DWH_DATA_TRANSACTIONS_Insert]
	@External_Ref_Ope VARCHAR(16), 
	@Ref_Type_Ope_Id NUMERIC(9), 
	@Description VARCHAR(1000),
	@External_Ref_Annulation_Ope VARCHAR(16), 	
	@Negociation_Date DATETIME,	
	@Settlement_Date DATETIME,	
	@Currency_Quot_id NUMERIC(9),		
	@Currency_Sett_id NUMERIC(9),
	@Currency_Fees_id NUMERIC(9),	
	@Currency_Nego_id NUMERIC(9),
	@Unit NUMERIC(22,10), 	
	@Fx_Rate_Curr_Sett_Nego NUMERIC(22,10), 
	@Negociation_Price NUMERIC(22,10), 	
	@Gross_Negociation_Amount NUMERIC(22,10), 	
	@Accrued_Interest_Negociation_Amount	NUMERIC(22,10), 
	@Net_Settlement_Amount NUMERIC(22,10), 
	@Brocker_Fees NUMERIC(22,10), 
	@Others_Fees NUMERIC(22,10), 
	@Taxes_Fees NUMERIC(22,10), 
	@TTF_Fees NUMERIC(22,10), 	
	@RTO_Fees NUMERIC(22,10), 
	@Commissions_Fees NUMERIC(22,10), 
	@Currency_Commissions_Fees_id NUMERIC(9),	
	@Instrument_id NUMERIC(9),	
	@Portfolio_id NUMERIC(9),	
	@File_Loaded_Id NUMERIC(9),	
	@Batch_STG_Id NUMERIC(9),
	@Batch_TMP_Id NUMERIC(9),
	@Batch_DWH_Id NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans DWH_DATA_TRANSACTIONS
		BEGIN TRANSACTION 
			
				begin 
				
						INSERT INTO DWH_DATA_TRANSACTIONS  (EXTERNAL_REF_OPE,REF_TYPE_OPE_ID,EXTERNAL_REF_ANNULATION_OPE,NEGOCIATION_DATE,SETTLEMENT_DATE,CURRENCY_QUOT_ID,CURRENCY_SETT_ID
						   ,CURRENCY_FEES_ID,CURRENCY_NEGO_ID,UNIT,FX_RATE_CURRENCY_SETTLEMENT_NEGOCIATION,NEGOCIATION_PRICE,GROSS_NEGOCIATION_AMOUNT
						   ,ACCRUED_INTEREST_NEGOCIATION_AMOUNT,NET_SETTLEMENT_AMOUNT,BROCKER_FEES,OTHERS_FEES,TAXES_FEES,TTF_FEES, RTO_FEES, COMMISSIONS_FEES, CURRENCY_COMMISSIONS_FEES_ID 
						   ,INSTRUMENT_ID,PORTFOLIO_ID,FILE_LOADED_ID, BATCH_STG_ID, BATCH_TMP_ID
						   ,BATCH_EXP_ID,BATCH_DWH_ID,DESCRIPTION)
					   
					   VALUES  (@External_Ref_Ope, @Ref_Type_Ope_Id, @External_Ref_Annulation_Ope, @Negociation_Date, @Settlement_Date, @Currency_Quot_id, @Currency_Sett_id , 
							@Currency_Fees_id, @Currency_Nego_id,@Unit, @Fx_Rate_Curr_Sett_Nego, @Negociation_Price, @Gross_Negociation_Amount,  
							@Accrued_Interest_Negociation_Amount, @Net_Settlement_Amount,@Brocker_Fees, @Others_Fees, @Taxes_Fees,@TTF_Fees, @RTO_Fees, @Commissions_Fees, @Currency_Commissions_Fees_Id
							,@Instrument_id, @Portfolio_id, @File_Loaded_Id, @Batch_STG_Id, @Batch_TMP_Id, NULL, @Batch_DWH_Id, @Description)
				end
		
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = dbo.SP_Max_ID DWH_DATA_TRANSACTIONS;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,DWH_AUDIT_TRANSACTIONS,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						

		COMMIT

	
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DWH_DATA_HOLDINGS_Insert]    Script Date: 01/24/2019 10:17:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DWH_DATA_HOLDINGS_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[SP_DWH_DATA_HOLDINGS_Insert]
	@Unit NUMERIC(22,10), 
	@Market_Price NUMERIC(22,10), 
	@Market_Price_Date DATETIME,	
	@Amount NUMERIC(22,10), 	
	@Accrued_Interest NUMERIC(22,10), 
	@Statement_Date DATETIME,	
	@Portfolio_id NUMERIC(9),		
	@Instrument_id NUMERIC(9),		
	@File_Loaded_Id NUMERIC(9),	
	@Batch_STG_Id NUMERIC(9),
	@Batch_TMP_Id NUMERIC(9),
	@Batch_DWH_Id NUMERIC(9),
	@Version_id	NUMERIC(9),
	@UserName  varchar(100) , -- nom de l''utilisateur
	@MachineName  varchar(100) , -- nom de la machine
	@PackageName	varchar(100), -- nom du package
	@TaskName	varchar(100) -- nom de la task

AS
BEGIN

	SET NOCOUNT ON;

	declare	@Record_ID NUMERIC(9) 
	
	
	-- Création de la ligne de début dans DWH_DATA_HOLDINGS
		BEGIN TRANSACTION 
			
				begin 
					INSERT INTO DWH_DATA_HOLDINGS (UNIT,MARKET_PRICE,MARKET_PRICE_DATE,AMOUNT,ACCRUED_INTEREST,STATEMENT_DATE,PORTFOLIO_ID
						,INSTRUMENT_ID,FILE_LOADED_ID,BATCH_STG_ID, BATCH_TMP_ID, BATCH_EXP_ID,BATCH_DWH_ID)
					VALUES  (@Unit,@Market_Price,@Market_Price_Date, @Amount,@Accrued_Interest, @Statement_Date, 
						@Portfolio_id, @Instrument_id, @File_Loaded_Id, @Batch_STG_Id, @Batch_TMP_Id, NULL, @Batch_DWH_Id)
				end
			
				-- On retourne l''ID du record créé pour pouvoir l''utiliser dans la table d''AUDIT
				EXECUTE @Record_ID = dbo.SP_Max_ID DWH_DATA_HOLDINGS;
	
				-- Lancement de l''insert dans la table d''AUDIT
				EXECUTE SP_AUDIT_Table_Insert @Record_ID,DWH_AUDIT_HOLDINGS,@Version_id,	@UserName,	@MachineName,	@PackageName,	@TaskName, ''INSERT''
						

		COMMIT
	
END

' 
END
GO
/****** Object:  ForeignKey [FK_DWH_LOGS_CTRL]    Script Date: 01/24/2019 10:17:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_LOGS_CTRL]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOGS_CTRL]'))
ALTER TABLE [dbo].[DWH_LOGS_CTRL]  WITH CHECK ADD  CONSTRAINT [FK_DWH_LOGS_CTRL] FOREIGN KEY([BATCH_ID])
REFERENCES [dbo].[DWH_LOG_BATCHS_HISTORY] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_LOGS_CTRL]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOGS_CTRL]'))
ALTER TABLE [dbo].[DWH_LOGS_CTRL] CHECK CONSTRAINT [FK_DWH_LOGS_CTRL]
GO
/****** Object:  ForeignKey [FK_DWH_LOGS_CTRL1]    Script Date: 01/24/2019 10:17:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_LOGS_CTRL1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOGS_CTRL]'))
ALTER TABLE [dbo].[DWH_LOGS_CTRL]  WITH CHECK ADD  CONSTRAINT [FK_DWH_LOGS_CTRL1] FOREIGN KEY([CTRL_ID])
REFERENCES [dbo].[DWH_PARAM_CTRL] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_LOGS_CTRL1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOGS_CTRL]'))
ALTER TABLE [dbo].[DWH_LOGS_CTRL] CHECK CONSTRAINT [FK_DWH_LOGS_CTRL1]
GO
/****** Object:  ForeignKey [FK_DWH_LOGS]    Script Date: 01/24/2019 10:17:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_LOGS]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOGS]'))
ALTER TABLE [dbo].[DWH_LOGS]  WITH CHECK ADD  CONSTRAINT [FK_DWH_LOGS] FOREIGN KEY([BATCH_ID])
REFERENCES [dbo].[DWH_LOG_BATCHS_HISTORY] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_LOGS]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOGS]'))
ALTER TABLE [dbo].[DWH_LOGS] CHECK CONSTRAINT [FK_DWH_LOGS]
GO
/****** Object:  ForeignKey [FK_DHW_LOG_FILES_HISTORY]    Script Date: 01/24/2019 10:17:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DHW_LOG_FILES_HISTORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOG_FILES_HISTORY]'))
ALTER TABLE [dbo].[DWH_LOG_FILES_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_DHW_LOG_FILES_HISTORY] FOREIGN KEY([BATCH_ID])
REFERENCES [dbo].[DWH_LOG_BATCHS_HISTORY] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DHW_LOG_FILES_HISTORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOG_FILES_HISTORY]'))
ALTER TABLE [dbo].[DWH_LOG_FILES_HISTORY] CHECK CONSTRAINT [FK_DHW_LOG_FILES_HISTORY]
GO
/****** Object:  ForeignKey [FK_DHW_LOG_FILES_HISTORY1]    Script Date: 01/24/2019 10:17:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DHW_LOG_FILES_HISTORY1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOG_FILES_HISTORY]'))
ALTER TABLE [dbo].[DWH_LOG_FILES_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_DHW_LOG_FILES_HISTORY1] FOREIGN KEY([FILE_ID])
REFERENCES [dbo].[DWH_PARAM_FILE] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DHW_LOG_FILES_HISTORY1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_LOG_FILES_HISTORY]'))
ALTER TABLE [dbo].[DWH_LOG_FILES_HISTORY] CHECK CONSTRAINT [FK_DHW_LOG_FILES_HISTORY1]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_PORTFOLIO]    Script Date: 01/24/2019 10:17:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_PORTFOLIO]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_PORTFOLIO]'))
ALTER TABLE [dbo].[DWH_DATA_PORTFOLIO]  WITH CHECK ADD  CONSTRAINT [FK_DWH_DATA_PORTFOLIO] FOREIGN KEY([BANK_ID])
REFERENCES [dbo].[DWH_PARAM_BANK] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_PORTFOLIO]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_PORTFOLIO]'))
ALTER TABLE [dbo].[DWH_DATA_PORTFOLIO] CHECK CONSTRAINT [FK_DWH_DATA_PORTFOLIO]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_INSTRUMENTS_NOMINAL]    Script Date: 01/24/2019 10:17:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_INSTRUMENTS_NOMINAL]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_INSTRUMENTS_NOMINAL]'))
ALTER TABLE [dbo].[DWH_DATA_INSTRUMENTS_NOMINAL]  WITH CHECK ADD  CONSTRAINT [FK_DWH_DATA_INSTRUMENTS_NOMINAL] FOREIGN KEY([INSTRUMENT_ID])
REFERENCES [dbo].[DWH_DATA_INSTRUMENTS] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_INSTRUMENTS_NOMINAL]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_INSTRUMENTS_NOMINAL]'))
ALTER TABLE [dbo].[DWH_DATA_INSTRUMENTS_NOMINAL] CHECK CONSTRAINT [FK_DWH_DATA_INSTRUMENTS_NOMINAL]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_INSTRUMENTS_NOMINAL1]    Script Date: 01/24/2019 10:17:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_INSTRUMENTS_NOMINAL1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_INSTRUMENTS_NOMINAL]'))
ALTER TABLE [dbo].[DWH_DATA_INSTRUMENTS_NOMINAL]  WITH CHECK ADD  CONSTRAINT [FK_DWH_DATA_INSTRUMENTS_NOMINAL1] FOREIGN KEY([BANK_ID])
REFERENCES [dbo].[DWH_PARAM_BANK] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_INSTRUMENTS_NOMINAL1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_INSTRUMENTS_NOMINAL]'))
ALTER TABLE [dbo].[DWH_DATA_INSTRUMENTS_NOMINAL] CHECK CONSTRAINT [FK_DWH_DATA_INSTRUMENTS_NOMINAL1]
GO
/****** Object:  ForeignKey [FK_PK_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]    Script Date: 01/24/2019 10:17:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PK_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]') AND parent_object_id = OBJECT_ID(N'[dbo].[EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]'))
ALTER TABLE [dbo].[EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]  WITH CHECK ADD  CONSTRAINT [FK_PK_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940] FOREIGN KEY([CTRL_ID])
REFERENCES [dbo].[EXP_DATA_CTRL_HOLDINGS_TRANSACTIONS_MT940] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PK_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]') AND parent_object_id = OBJECT_ID(N'[dbo].[EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]'))
ALTER TABLE [dbo].[EXP_DATA_HOLDINGS_TRANSACTIONS_MT940] CHECK CONSTRAINT [FK_PK_EXP_DATA_HOLDINGS_TRANSACTIONS_MT940]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_HOLDINGS]    Script Date: 01/24/2019 10:17:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_HOLDINGS]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_HOLDINGS]'))
ALTER TABLE [dbo].[DWH_DATA_HOLDINGS]  WITH CHECK ADD  CONSTRAINT [FK_DWH_DATA_HOLDINGS] FOREIGN KEY([INSTRUMENT_ID])
REFERENCES [dbo].[DWH_DATA_INSTRUMENTS] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_HOLDINGS]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_HOLDINGS]'))
ALTER TABLE [dbo].[DWH_DATA_HOLDINGS] CHECK CONSTRAINT [FK_DWH_DATA_HOLDINGS]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_HOLDINGS1]    Script Date: 01/24/2019 10:17:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_HOLDINGS1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_HOLDINGS]'))
ALTER TABLE [dbo].[DWH_DATA_HOLDINGS]  WITH CHECK ADD  CONSTRAINT [FK_DWH_DATA_HOLDINGS1] FOREIGN KEY([PORTFOLIO_ID])
REFERENCES [dbo].[DWH_DATA_PORTFOLIO] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_HOLDINGS1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_HOLDINGS]'))
ALTER TABLE [dbo].[DWH_DATA_HOLDINGS] CHECK CONSTRAINT [FK_DWH_DATA_HOLDINGS1]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_TRANSACTIONS]    Script Date: 01/24/2019 10:17:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS]  WITH CHECK ADD  CONSTRAINT [FK_DWH_DATA_TRANSACTIONS] FOREIGN KEY([CURRENCY_QUOT_ID])
REFERENCES [dbo].[DWH_PARAM_CURRENCY] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] CHECK CONSTRAINT [FK_DWH_DATA_TRANSACTIONS]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_TRANSACTIONS1]    Script Date: 01/24/2019 10:17:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS]  WITH CHECK ADD  CONSTRAINT [FK_DWH_DATA_TRANSACTIONS1] FOREIGN KEY([CURRENCY_SETT_ID])
REFERENCES [dbo].[DWH_PARAM_CURRENCY] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS1]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] CHECK CONSTRAINT [FK_DWH_DATA_TRANSACTIONS1]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_TRANSACTIONS2]    Script Date: 01/24/2019 10:17:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS2]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS]  WITH CHECK ADD  CONSTRAINT [FK_DWH_DATA_TRANSACTIONS2] FOREIGN KEY([CURRENCY_FEES_ID])
REFERENCES [dbo].[DWH_PARAM_CURRENCY] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS2]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] CHECK CONSTRAINT [FK_DWH_DATA_TRANSACTIONS2]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_TRANSACTIONS3]    Script Date: 01/24/2019 10:17:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS3]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS]  WITH CHECK ADD  CONSTRAINT [FK_DWH_DATA_TRANSACTIONS3] FOREIGN KEY([CURRENCY_NEGO_ID])
REFERENCES [dbo].[DWH_PARAM_CURRENCY] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS3]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] CHECK CONSTRAINT [FK_DWH_DATA_TRANSACTIONS3]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_TRANSACTIONS4]    Script Date: 01/24/2019 10:17:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS4]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS]  WITH CHECK ADD  CONSTRAINT [FK_DWH_DATA_TRANSACTIONS4] FOREIGN KEY([INSTRUMENT_ID])
REFERENCES [dbo].[DWH_DATA_INSTRUMENTS] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS4]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] CHECK CONSTRAINT [FK_DWH_DATA_TRANSACTIONS4]
GO
/****** Object:  ForeignKey [FK_DWH_DATA_TRANSACTIONS5]    Script Date: 01/24/2019 10:17:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS5]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS]  WITH CHECK ADD  CONSTRAINT [FK_DWH_DATA_TRANSACTIONS5] FOREIGN KEY([PORTFOLIO_ID])
REFERENCES [dbo].[DWH_DATA_PORTFOLIO] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DWH_DATA_TRANSACTIONS5]') AND parent_object_id = OBJECT_ID(N'[dbo].[DWH_DATA_TRANSACTIONS]'))
ALTER TABLE [dbo].[DWH_DATA_TRANSACTIONS] CHECK CONSTRAINT [FK_DWH_DATA_TRANSACTIONS5]
GO

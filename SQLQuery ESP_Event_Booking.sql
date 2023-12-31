USE [Event Booking]
GO
/****** Object:  StoredProcedure [dbo].[ESP_Event_Booking]    Script Date: 08-09-2023 21:43:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ESP_Event_Booking]
	-- Add the parameters for the stored procedure here
	@type VARCHAR(50),
	@ID VARCHAR(50) = NULL,
	@FullName VARCHAR(50) = NULL,
	@Email VARCHAR(50) = NULL,
	@Password VARCHAR(50) = NULL,
	@countSpan INT = NULL,
	@totalSpan VARCHAR(50) = NULL,
	@UPIID VARCHAR(50) = NULL,
	@Contact INT = NULL,
	@CardHolderName VARCHAR(50) = NULL,
	@CardNumber VARCHAR(50) = NULL,
	@ExpryDate DATE = NULL,
	@CcvCode VARCHAR(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF (@type = 'Select')
	SELECT * From RegisterPage
	else if (@type = 'insert')
	insert into RegisterPage values (@FullName,@Email,@Password)
	else if (@type = 'TicketsPage')
	insert into TicketsPage values (@countSpan,@totalSpan)
	else if (@type = 'UPIPayment')
	insert into UPIPayment values (@UPIID,@Contact)
	else if (@type = 'CardPayment')
	insert into CardPayment values (@CardHolderName,@CardNumber,@ExpryDate,@CcvCode)
	else if (@type = 'Edit')
	update RegisterPage set FullName = @FullName, Password = @Password where FullName = @FullName
END
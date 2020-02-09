CREATE PROCEDURE [dbo].[usp_SystemM_xGetSystemPowerCate] 
	--@SystemPowerCateIndex int
AS
BEGIN
	 SET NOCOUNT ON;
	 --IF(@SystemPowerCateIndex = 4)
	 --BEGIN
		-- SELECT [SystemPowerCateName],[SystemPowerCateIndex]
		-- FROM [NIIS_User].[dbo].[S_SystemPowerCate]
		-- WHERE SystemPowerCateIndex = @SystemPowerCateIndex
	 --END
	 --ELSE BEGIN
		 SELECT [SystemPowerCateName],[SystemPowerCateIndex]
		 FROM [NIIS_User].[dbo].[S_SystemPowerCate]
	 --END
    
END

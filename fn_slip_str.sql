CREATE FUNCTION [dbo].[fn_slip_str] ( 
@InStr nvarchar(Max) , --@InStr: 輸入字串。EX: A001,A002,A003
@s_char nvarchar(1)     --@s_char: 分割字元。EX: ','
) 
Returns @tb Table ( sno int , data nvarchar(100) ) 
As 
Begin 
    /*依據傳入字元進行字串分割，回傳Table*/ 
    /* 
    Declare @InStr nvarchar(2000) , @s_char nvarchar(1); 
    Set @InStr = '字串一,字串2,字串3,字串4'; 
    Set @s_char = ',';*/ 
  
    Set @InStr = @s_char + @InStr + @s_char; 
    Declare @p1 Int , @p2 Int , @data nvarchar(100) , @sno int; 
    Set @p1 = -1 ; Set @p2 = -1 ; Set @data = '' ; Set @sno = 0; 
    While ( 0 Not In (@P1,@P2) ) Begin 
  Set @p1 = CharIndex(@s_char,@InStr,@p1+1); 
  Set @p2 = CharIndex(@s_char,@InStr,@p1+1); 
  If ( 0 In (@p1,@p2) )  
      Break; 
  Set @data = SubString(@InStr,@p1+1,@p2-@p1-1); 
  if ( @data <> '' ) Begin 
      Set @sno = @sno +1; 
      Insert Into @tb ( sno , data ) Values ( @sno , @data ) 
  End 
    End 
    Return 
End

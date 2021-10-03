package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1507:int = 9;
      
      public static const const_1497:int = 4;
      
      public static const const_1513:int = 1;
      
      public static const const_1178:int = 10;
      
      public static const const_1559:int = 2;
      
      public static const const_1362:int = 7;
      
      public static const const_1252:int = 11;
      
      public static const const_1462:int = 3;
      
      public static const const_1348:int = 8;
      
      public static const const_1386:int = 5;
      
      public static const const_1548:int = 6;
      
      public static const const_1338:int = 12;
       
      
      private var var_1966:String;
      
      private var _roomId:int;
      
      private var var_1121:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1966;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1121 = param1.readInteger();
         var_1966 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1121;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}

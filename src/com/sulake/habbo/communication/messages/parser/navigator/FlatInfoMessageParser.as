package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_216:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_216 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_216;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_216 = new RoomSettingsFlatInfo();
         var_216.allowFurniMoving = param1.readInteger() == 1;
         var_216.doorMode = param1.readInteger();
         var_216.id = param1.readInteger();
         var_216.ownerName = param1.readString();
         var_216.type = param1.readString();
         var_216.name = param1.readString();
         var_216.description = param1.readString();
         var_216.showOwnerName = param1.readInteger() == 1;
         var_216.allowTrading = param1.readInteger() == 1;
         var_216.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}

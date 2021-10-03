package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1866:int;
      
      private var var_1200:PetData;
      
      private var var_1867:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1866;
      }
      
      public function get petData() : PetData
      {
         return var_1200;
      }
      
      public function flush() : Boolean
      {
         var_1200 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1867;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1866 = param1.readInteger();
         var_1867 = param1.readInteger();
         var_1200 = new PetData(param1);
         return true;
      }
   }
}

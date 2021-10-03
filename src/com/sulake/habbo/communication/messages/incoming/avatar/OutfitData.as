package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1734:String;
      
      private var var_754:String;
      
      private var var_1594:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1594 = param1.readInteger();
         var_1734 = param1.readString();
         var_754 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_754;
      }
      
      public function get figureString() : String
      {
         return var_1734;
      }
      
      public function get slotId() : int
      {
         return var_1594;
      }
   }
}

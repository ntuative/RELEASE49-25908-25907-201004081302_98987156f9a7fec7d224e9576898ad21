package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_2155:int;
      
      private var var_2154:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         var_2155 = param1;
         var_2154 = param2;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_2155,var_2154];
      }
   }
}

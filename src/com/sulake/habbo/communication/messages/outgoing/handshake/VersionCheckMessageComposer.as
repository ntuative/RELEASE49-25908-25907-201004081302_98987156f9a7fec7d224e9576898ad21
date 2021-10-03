package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1986:String;
      
      private var var_1263:String;
      
      private var var_1985:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1985 = param1;
         var_1263 = param2;
         var_1986 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1985,var_1263,var_1986];
      }
      
      public function dispose() : void
      {
      }
   }
}

package com.sulake.habbo.communication.messages.outgoing.marketplace
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class GetMarketplaceItemStatsComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_28:Array;
      
      public function GetMarketplaceItemStatsComposer(param1:int, param2:int)
      {
         var_28 = new Array();
         super();
         var_28.push(param1);
         var_28.push(param2);
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
      
      public function getMessageArray() : Array
      {
         return this.var_28;
      }
      
      public function dispose() : void
      {
         this.var_28 = null;
      }
   }
}

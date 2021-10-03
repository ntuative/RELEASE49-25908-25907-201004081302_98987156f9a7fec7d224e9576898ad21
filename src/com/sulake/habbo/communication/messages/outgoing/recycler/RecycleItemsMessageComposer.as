package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_823:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_823 = new Array();
         var_823.push(param1.length);
         var_823 = var_823.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_823;
      }
   }
}

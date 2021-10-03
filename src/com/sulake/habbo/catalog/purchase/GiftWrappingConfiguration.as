package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_606:Array;
      
      private var var_1250:int;
      
      private var var_1485:Array;
      
      private var var_607:Array;
      
      private var var_1363:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1363 = _loc2_.isWrappingEnabled;
         var_1250 = _loc2_.wrappingPrice;
         var_1485 = _loc2_.stuffTypes;
         var_607 = _loc2_.boxTypes;
         var_606 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_606;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1485;
      }
      
      public function get price() : int
      {
         return var_1250;
      }
      
      public function get boxTypes() : Array
      {
         return var_607;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1363;
      }
   }
}

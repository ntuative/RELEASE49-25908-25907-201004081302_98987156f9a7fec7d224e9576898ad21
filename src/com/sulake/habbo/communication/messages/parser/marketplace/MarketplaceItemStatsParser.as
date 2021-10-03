package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1497:Array;
      
      private var var_1825:int;
      
      private var var_1823:int;
      
      private var var_1824:int;
      
      private var var_1821:int;
      
      private var _dayOffsets:Array;
      
      private var var_1822:int;
      
      private var var_1496:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1497;
      }
      
      public function get furniTypeId() : int
      {
         return var_1823;
      }
      
      public function get historyLength() : int
      {
         return var_1821;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1824;
      }
      
      public function get offerCount() : int
      {
         return var_1822;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1496;
      }
      
      public function get averagePrice() : int
      {
         return var_1825;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1825 = param1.readInteger();
         var_1822 = param1.readInteger();
         var_1821 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1497 = [];
         var_1496 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1497.push(param1.readInteger());
            var_1496.push(param1.readInteger());
            _loc3_++;
         }
         var_1824 = param1.readInteger();
         var_1823 = param1.readInteger();
         return true;
      }
   }
}

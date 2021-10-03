package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1497:Array;
      
      private var var_1825:int;
      
      private var var_1823:int;
      
      private var var_1821:int;
      
      private var var_1824:int;
      
      private var _dayOffsets:Array;
      
      private var var_1822:int;
      
      private var var_1496:Array;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrices(param1:Array) : void
      {
         var_1497 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1823;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1496 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1825 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1821;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1824;
      }
      
      public function get offerCount() : int
      {
         return var_1822;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1822 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1496;
      }
      
      public function get averagePrice() : int
      {
         return var_1825;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1824 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1821 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1823 = param1;
      }
   }
}

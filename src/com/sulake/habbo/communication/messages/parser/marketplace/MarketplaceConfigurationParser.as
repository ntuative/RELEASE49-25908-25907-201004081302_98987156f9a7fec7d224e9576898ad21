package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1848:int;
      
      private var var_1516:int;
      
      private var var_1844:int;
      
      private var var_1845:int;
      
      private var var_1846:int;
      
      private var var_1515:int;
      
      private var var_1847:int;
      
      private var var_1363:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1848;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1516;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1847;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1845;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1846;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1515;
      }
      
      public function get commission() : int
      {
         return var_1844;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1363 = param1.readBoolean();
         var_1844 = param1.readInteger();
         var_1516 = param1.readInteger();
         var_1515 = param1.readInteger();
         var_1845 = param1.readInteger();
         var_1848 = param1.readInteger();
         var_1846 = param1.readInteger();
         var_1847 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1363;
      }
   }
}

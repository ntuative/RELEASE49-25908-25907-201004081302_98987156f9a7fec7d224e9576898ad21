package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1250:int;
      
      private var var_1883:int = -1;
      
      private var var_376:int;
      
      private var var_1825:int;
      
      private var var_1885:int;
      
      private var _offerId:int;
      
      private var var_1249:int;
      
      private var var_1884:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1884 = param2;
         var_1885 = param3;
         var_1250 = param4;
         var_376 = param5;
         var_1883 = param6;
         var_1825 = param7;
         var_1249 = param8;
      }
      
      public function get status() : int
      {
         return var_376;
      }
      
      public function get price() : int
      {
         return var_1250;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1883;
      }
      
      public function get offerCount() : int
      {
         return var_1249;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1885;
      }
      
      public function get averagePrice() : int
      {
         return var_1825;
      }
      
      public function get furniId() : int
      {
         return var_1884;
      }
   }
}

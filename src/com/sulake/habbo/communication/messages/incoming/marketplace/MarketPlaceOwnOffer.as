package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1450:int = 2;
      
      public static const const_1545:int = 1;
      
      public static const const_1543:int = 0;
       
      
      private var var_1250:int;
      
      private var var_376:int;
      
      private var var_2397:int;
      
      private var _offerId:int;
      
      private var var_1885:int;
      
      private var var_1884:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1884 = param2;
         var_1885 = param3;
         var_1250 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1884;
      }
      
      public function get furniType() : int
      {
         return var_1885;
      }
      
      public function get price() : int
      {
         return var_1250;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}

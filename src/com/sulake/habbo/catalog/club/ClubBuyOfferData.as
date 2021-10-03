package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1657:int;
      
      private var var_2198:Boolean = false;
      
      private var var_1655:int;
      
      private var var_1656:int;
      
      private var var_1651:int;
      
      private var var_1321:String;
      
      private var var_1250:int;
      
      private var _offerId:int;
      
      private var var_1654:int;
      
      private var var_1652:Boolean;
      
      private var var_1653:Boolean;
      
      private var var_449:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1321 = param2;
         var_1250 = param3;
         var_1653 = param4;
         var_1652 = param5;
         var_1655 = param6;
         var_1651 = param7;
         var_1656 = param8;
         var_1657 = param9;
         var_1654 = param10;
      }
      
      public function get month() : int
      {
         return var_1657;
      }
      
      public function get page() : ICatalogPage
      {
         return var_449;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_1652;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_449 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_318;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1653;
      }
      
      public function get localizationId() : String
      {
         return var_1321;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1651;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_2198;
      }
      
      public function get day() : int
      {
         return var_1654;
      }
      
      public function get year() : int
      {
         return var_1656;
      }
      
      public function get price() : int
      {
         return var_1250;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_2198 = param1;
      }
      
      public function get periods() : int
      {
         return var_1655;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1250;
      }
      
      public function get productCode() : String
      {
         return var_1321;
      }
   }
}

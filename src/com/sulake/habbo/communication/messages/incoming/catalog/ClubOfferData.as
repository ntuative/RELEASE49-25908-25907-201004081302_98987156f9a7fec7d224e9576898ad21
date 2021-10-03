package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1657:int;
      
      private var var_1250:int;
      
      private var var_1655:int;
      
      private var _offerId:int;
      
      private var var_1656:int;
      
      private var var_1654:int;
      
      private var var_1652:Boolean;
      
      private var var_1651:int;
      
      private var var_1653:Boolean;
      
      private var var_1321:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1321 = param1.readString();
         var_1250 = param1.readInteger();
         var_1653 = param1.readBoolean();
         var_1652 = param1.readBoolean();
         var_1655 = param1.readInteger();
         var_1651 = param1.readInteger();
         var_1656 = param1.readInteger();
         var_1657 = param1.readInteger();
         var_1654 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_1656;
      }
      
      public function get month() : int
      {
         return var_1657;
      }
      
      public function get price() : int
      {
         return var_1250;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_1655;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1651;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1653;
      }
      
      public function get day() : int
      {
         return var_1654;
      }
      
      public function get vip() : Boolean
      {
         return var_1652;
      }
      
      public function get productCode() : String
      {
         return var_1321;
      }
   }
}

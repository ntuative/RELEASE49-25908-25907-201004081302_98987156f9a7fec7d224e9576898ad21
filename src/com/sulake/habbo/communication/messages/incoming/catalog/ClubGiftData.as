package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1972:int;
      
      private var var_1971:Boolean;
      
      private var _offerId:int;
      
      private var var_1619:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1971 = param1.readBoolean();
         var_1972 = param1.readInteger();
         var_1619 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1619;
      }
      
      public function get monthsRequired() : int
      {
         return var_1972;
      }
      
      public function get isVip() : Boolean
      {
         return var_1971;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}

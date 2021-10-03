package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1383:String;
      
      private var var_1034:String;
      
      private var var_2070:Boolean;
      
      private var var_1552:int;
      
      private var var_1706:int;
      
      private var var_2071:Boolean;
      
      private var var_1594:String = "";
      
      private var var_1704:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1281:int;
      
      private var var_1701:Boolean;
      
      private var var_1707:int = -1;
      
      private var var_1702:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1706 = param1;
         var_1034 = param2;
         _objId = param3;
         var_1281 = param4;
         _category = param5;
         var_1383 = param6;
         var_2070 = param7;
         var_1704 = param8;
         var_1701 = param9;
         var_2071 = param10;
         var_1702 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1594;
      }
      
      public function get extra() : int
      {
         return var_1552;
      }
      
      public function get classId() : int
      {
         return var_1281;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2071;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2070;
      }
      
      public function get stripId() : int
      {
         return var_1706;
      }
      
      public function get stuffData() : String
      {
         return var_1383;
      }
      
      public function get songId() : int
      {
         return var_1707;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1594 = param1;
         var_1552 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1034;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1702;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1701;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1704;
      }
   }
}

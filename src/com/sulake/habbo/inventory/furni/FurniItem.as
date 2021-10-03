package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1706:int;
      
      private var var_1704:Boolean;
      
      private var var_1707:int;
      
      private var var_1383:String;
      
      private var var_1703:Boolean = false;
      
      private var var_1702:int;
      
      private var var_456:int;
      
      private var var_1034:String;
      
      private var var_1594:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1281:int;
      
      private var var_1701:Boolean;
      
      private var var_1705:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1706 = param1;
         var_1034 = param2;
         _objId = param3;
         var_1281 = param4;
         var_1383 = param5;
         var_1704 = param6;
         var_1701 = param7;
         var_1702 = param8;
         var_1594 = param9;
         var_1707 = param10;
         var_456 = -1;
      }
      
      public function get songId() : int
      {
         return var_1707;
      }
      
      public function get iconCallbackId() : int
      {
         return var_456;
      }
      
      public function get expiryTime() : int
      {
         return var_1702;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1705 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1703 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_456 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1701;
      }
      
      public function get slotId() : String
      {
         return var_1594;
      }
      
      public function get classId() : int
      {
         return var_1281;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1704;
      }
      
      public function get stuffData() : String
      {
         return var_1383;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1706;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1703;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1705;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1034;
      }
   }
}

package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1630:Boolean = false;
      
      private var var_1632:Boolean = false;
      
      private var var_1673:String = "";
      
      private var _type:String = "";
      
      private var var_1631:Boolean = false;
      
      private var var_1672:Number = 0;
      
      private var var_1675:Number = 0;
      
      private var var_1676:Number = 0;
      
      private var var_1674:String = "";
      
      private var var_1671:Number = 0;
      
      private var var_1629:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1674 = param2;
         var_1673 = param3;
         var_1675 = param4;
         var_1676 = param5;
         var_1672 = param6;
         var_1671 = param7;
         var_1629 = param8;
         var_1632 = param9;
         var_1631 = param10;
         var_1630 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1629;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1630;
      }
      
      public function get localX() : Number
      {
         return var_1672;
      }
      
      public function get localY() : Number
      {
         return var_1671;
      }
      
      public function get canvasId() : String
      {
         return var_1674;
      }
      
      public function get altKey() : Boolean
      {
         return var_1632;
      }
      
      public function get spriteTag() : String
      {
         return var_1673;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1675;
      }
      
      public function get screenY() : Number
      {
         return var_1676;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1631;
      }
   }
}

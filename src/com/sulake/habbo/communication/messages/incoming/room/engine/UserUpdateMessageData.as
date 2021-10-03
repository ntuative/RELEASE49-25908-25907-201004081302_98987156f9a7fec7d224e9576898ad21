package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_80:Number = 0;
      
      private var var_236:int = 0;
      
      private var var_1709:int = 0;
      
      private var var_1708:Number = 0;
      
      private var var_1713:Number = 0;
      
      private var var_1711:Number = 0;
      
      private var var_1712:Number = 0;
      
      private var var_1710:Boolean = false;
      
      private var var_79:Number = 0;
      
      private var _id:int = 0;
      
      private var var_197:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_197 = [];
         super();
         _id = param1;
         var_79 = param2;
         _y = param3;
         var_80 = param4;
         var_1712 = param5;
         var_236 = param6;
         var_1709 = param7;
         var_1708 = param8;
         var_1713 = param9;
         var_1711 = param10;
         var_1710 = param11;
         var_197 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_80;
      }
      
      public function get dir() : int
      {
         return var_236;
      }
      
      public function get localZ() : Number
      {
         return var_1712;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1710;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1709;
      }
      
      public function get targetX() : Number
      {
         return var_1708;
      }
      
      public function get targetY() : Number
      {
         return var_1713;
      }
      
      public function get targetZ() : Number
      {
         return var_1711;
      }
      
      public function get x() : Number
      {
         return var_79;
      }
      
      public function get actions() : Array
      {
         return var_197.slice();
      }
   }
}

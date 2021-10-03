package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1688:Number = 0;
      
      private var var_1691:Number = 0;
      
      private var var_1690:Number = 0;
      
      private var var_1689:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1691 = param1;
         var_1690 = param2;
         var_1688 = param3;
         var_1689 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1691;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1688;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1690;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1689;
      }
   }
}

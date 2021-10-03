package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_405:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_421:int = 0;
      
      public static const const_1012:int = 2;
      
      public static const const_839:int = 1;
      
      public static const const_671:Boolean = false;
      
      public static const const_503:String = "";
      
      public static const const_479:int = 0;
      
      public static const const_370:int = 0;
      
      public static const const_471:int = 0;
       
      
      private var var_2211:int = 0;
      
      private var var_1759:String = "";
      
      private var var_1522:int = 0;
      
      private var var_2212:int = 0;
      
      private var var_2209:Number = 0;
      
      private var var_1784:int = 255;
      
      private var var_2210:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2211;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1522 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2209;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2212 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2211 = param1;
      }
      
      public function get tag() : String
      {
         return var_1759;
      }
      
      public function get alpha() : int
      {
         return var_1784;
      }
      
      public function get ink() : int
      {
         return var_1522;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2209 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2212;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2210 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2210;
      }
      
      public function set tag(param1:String) : void
      {
         var_1759 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1784 = param1;
      }
   }
}

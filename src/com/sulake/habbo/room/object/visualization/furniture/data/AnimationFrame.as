package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_505:int = -1;
      
      public static const const_849:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1819:int = -1;
      
      private var var_79:int = 0;
      
      private var var_1186:int = 1;
      
      private var var_818:int = 1;
      
      private var var_1817:Boolean = false;
      
      private var var_1818:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_79 = param2;
         _y = param3;
         var_1817 = param5;
         if(param4 < 0)
         {
            param4 = const_505;
         }
         var_818 = param4;
         var_1186 = param4;
         if(param6 >= 0)
         {
            var_1819 = param6;
            var_1818 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_818 > 0 && param1 > var_818)
         {
            param1 = var_818;
         }
         var_1186 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_818;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1818;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_818 < 0)
         {
            return const_505;
         }
         return var_1186;
      }
      
      public function get activeSequence() : int
      {
         return var_1819;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1817;
      }
      
      public function get x() : int
      {
         return var_79;
      }
   }
}

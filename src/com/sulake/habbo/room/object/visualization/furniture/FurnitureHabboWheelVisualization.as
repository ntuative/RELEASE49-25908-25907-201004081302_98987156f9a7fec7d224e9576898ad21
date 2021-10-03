package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1099:int = 31;
      
      private static const const_1032:int = 32;
      
      private static const const_774:int = 10;
      
      private static const const_491:int = 20;
       
      
      private var var_599:Boolean = false;
      
      private var var_239:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_239 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_599 = true;
            var_239 = new Array();
            var_239.push(const_1099);
            var_239.push(const_1032);
            return;
         }
         if(param1 > 0 && param1 <= const_774)
         {
            if(var_599)
            {
               var_599 = false;
               var_239 = new Array();
               var_239.push(const_774 + param1);
               var_239.push(const_491 + param1);
               var_239.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(false)
            {
               super.setAnimation(var_239.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}

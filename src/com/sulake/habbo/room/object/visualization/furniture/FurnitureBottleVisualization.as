package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1032:int = -1;
      
      private static const const_774:int = 20;
      
      private static const const_491:int = 9;
       
      
      private var var_599:Boolean = false;
      
      private var var_239:Array;
      
      public function FurnitureBottleVisualization()
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
            var_239.push(const_1032);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_599)
            {
               var_599 = false;
               var_239 = new Array();
               var_239.push(const_774);
               var_239.push(const_491 + param1);
               var_239.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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

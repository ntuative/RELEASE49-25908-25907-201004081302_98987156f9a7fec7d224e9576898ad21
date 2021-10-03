package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1126:int = 1;
      
      private static const const_1032:int = 3;
      
      private static const const_1124:int = 2;
      
      private static const const_1125:int = 15;
       
      
      private var var_924:int;
      
      private var var_239:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_239 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1124)
         {
            var_239 = new Array();
            var_239.push(const_1126);
            var_924 = const_1125;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_924 > 0)
         {
            --var_924;
         }
         if(var_924 == 0)
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

package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_720:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_679:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_245:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1439:Point;
      
      private var var_1440:Rectangle;
      
      private var var_196:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1440 = param2;
         var_1439 = param3;
         var_196 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1440 != null)
         {
            return var_1440.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_196;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1439 != null)
         {
            return var_1439.clone();
         }
         return null;
      }
   }
}

package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_362:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_477:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_78:String = "RWPDUE_CONTENTS";
      
      public static const const_459:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_381:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_66:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_194:String;
      
      private var var_2007:BitmapData;
      
      private var var_149:int = -1;
      
      private var var_47:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_149 = param2;
         var_194 = param3;
         var_47 = param4;
         var_2007 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_2007;
      }
      
      public function get text() : String
      {
         return var_194;
      }
      
      public function get objectId() : int
      {
         return var_149;
      }
      
      public function get controller() : Boolean
      {
         return var_47;
      }
   }
}

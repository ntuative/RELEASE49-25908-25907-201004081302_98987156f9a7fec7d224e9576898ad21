package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_932:String = "AssetLoaderEventUnload";
      
      public static const const_44:String = "AssetLoaderEventError";
      
      public static const const_918:String = "AssetLoaderEventOpen";
      
      public static const const_893:String = "AssetLoaderEventProgress";
      
      public static const const_820:String = "AssetLoaderEventStatus";
      
      public static const const_34:String = "AssetLoaderEventComplete";
       
      
      private var var_376:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_376 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_376;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_376);
      }
   }
}

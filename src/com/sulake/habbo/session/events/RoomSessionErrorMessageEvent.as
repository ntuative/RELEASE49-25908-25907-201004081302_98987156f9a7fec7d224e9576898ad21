package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionErrorMessageEvent extends RoomSessionEvent
   {
      
      public static const const_150:String = "RSEME_MAX_PETS";
      
      public static const const_623:String = "RSEME_PETS_FORBIDDEN_IN_FLAT";
      
      public static const const_208:String = "RSEME_KICKED";
      
      public static const const_534:String = "RSEME_PETS_FORBIDDEN_IN_HOTEL";
      
      public static const const_225:String = "RSEME_MAX_STICKIES";
      
      public static const const_993:String = "RSEME_DOOR_OTHER_DELETED";
      
      public static const const_604:String = "RSEME_NO_FREE_TILES_FOR_PET";
      
      public static const const_194:String = "RSEME_GUIDE_EXISTS";
      
      public static const const_204:String = "RSEME_MAX_SOUND";
      
      public static const const_195:String = "RSEME_MAX_FURNITURE";
      
      public static const const_222:String = "RSEME_GUIDE_BUSY";
      
      public static const const_228:String = "RSEME_INVALID_ITEM_LOC";
      
      public static const const_216:String = "RSEME_MAX_QUEUE";
      
      public static const const_666:String = "RSEME_CANT_SET_NOT_OWNER";
      
      public static const const_608:String = "RSEME_SELECTED_TILE_NOT_FREE_FOR_PET";
      
      public static const const_866:String = "RSEME_DOOR_NOT_INSTALLED";
      
      public static const const_230:String = "RSEME_CANT_TRADE_STUFF";
       
      
      private var _message:String;
      
      public function RoomSessionErrorMessageEvent(param1:String, param2:IRoomSession, param3:String = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param4,param5);
         _message = param3;
      }
      
      public function get message() : String
      {
         return _message;
      }
   }
}

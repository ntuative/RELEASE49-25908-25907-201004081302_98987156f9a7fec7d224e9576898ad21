package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_674:String = "RWUAM_RESPECT_USER";
      
      public static const const_683:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_681:String = "RWUAM_START_TRADING";
      
      public static const const_609:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_546:String = "RWUAM_WHISPER_USER";
      
      public static const const_662:String = "RWUAM_IGNORE_USER";
      
      public static const const_429:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_730:String = "RWUAM_BAN_USER";
      
      public static const const_660:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_366:String = "RWUAM_KICK_USER";
      
      public static const const_571:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_564:String = " RWUAM_RESPECT_PET";
      
      public static const const_392:String = "RWUAM_KICK_BOT";
      
      public static const const_1207:String = "RWUAM_TRAIN_PET";
      
      public static const const_696:String = "RWUAM_PICKUP_PET";
      
      public static const const_592:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_544:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}

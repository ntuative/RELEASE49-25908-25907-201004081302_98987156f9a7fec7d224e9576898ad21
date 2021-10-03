package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2299:Boolean;
      
      private var var_2296:int;
      
      private var var_2297:Boolean;
      
      private var var_1508:String;
      
      private var var_1300:String;
      
      private var var_1646:int;
      
      private var var_2041:String;
      
      private var var_2298:String;
      
      private var var_2040:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1646 = param1.readInteger();
         this.var_1508 = param1.readString();
         this.var_2041 = param1.readString();
         this.var_2299 = param1.readBoolean();
         this.var_2297 = param1.readBoolean();
         param1.readString();
         this.var_2296 = param1.readInteger();
         this.var_2040 = param1.readString();
         this.var_2298 = param1.readString();
         this.var_1300 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1300;
      }
      
      public function get avatarName() : String
      {
         return this.var_1508;
      }
      
      public function get avatarId() : int
      {
         return this.var_1646;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2299;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2298;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2040;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2297;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2041;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2296;
      }
   }
}

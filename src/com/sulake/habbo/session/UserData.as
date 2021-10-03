package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_308:String = "";
      
      private var var_1668:String = "";
      
      private var var_1663:int = 0;
      
      private var var_1667:int = 0;
      
      private var _type:int = 0;
      
      private var var_1669:String = "";
      
      private var var_608:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1665:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1663 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1669 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_308 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_608 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1663;
      }
      
      public function set webID(param1:int) : void
      {
         var_1665 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1669;
      }
      
      public function set custom(param1:String) : void
      {
         var_1668 = param1;
      }
      
      public function get figure() : String
      {
         return var_308;
      }
      
      public function get sex() : String
      {
         return var_608;
      }
      
      public function get custom() : String
      {
         return var_1668;
      }
      
      public function get webID() : int
      {
         return var_1665;
      }
      
      public function set xp(param1:int) : void
      {
         var_1667 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1667;
      }
   }
}

package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1693:int;
      
      private var var_1694:String;
      
      private var var_1586:IActionDefinition;
      
      private var var_1699:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1700:String;
      
      private var var_1696:String;
      
      private var var_1697:Boolean;
      
      private var var_1695:ColorTransform;
      
      private var var_1698:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1694 = param1;
         var_1700 = param2;
         var_1693 = param3;
         _color = param4;
         _frames = param5;
         var_1586 = param6;
         var_1697 = param7;
         var_1698 = param8;
         var_1696 = param9;
         var_1699 = param10;
         var_1695 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1697;
      }
      
      public function get partType() : String
      {
         return var_1700;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1698;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1699;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1693;
      }
      
      public function get flippedPartType() : String
      {
         return var_1696;
      }
      
      public function get bodyPartId() : String
      {
         return var_1694;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1586;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1695;
      }
   }
}

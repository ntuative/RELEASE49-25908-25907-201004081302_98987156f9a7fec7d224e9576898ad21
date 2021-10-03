package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1662:Date;
      
      private var var_1129:Boolean = false;
      
      private var _type:int;
      
      private var var_378:BitmapData;
      
      private var var_250:Boolean = false;
      
      private var var_1203:int;
      
      private var var_558:int = 1;
      
      private var var_966:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_378;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_558;
         if(var_558 < 0)
         {
            var_558 = 0;
         }
         var_966 = var_1203;
         var_250 = false;
         var_1129 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_966 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_250;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_378 = param1;
      }
      
      public function get duration() : int
      {
         return var_1203;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1129;
      }
      
      public function get effectsInInventory() : int
      {
         return var_558;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_378;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_250)
         {
            var_1662 = new Date();
         }
         var_250 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_558 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_250)
         {
            _loc1_ = var_966 - (new Date().valueOf() - var_1662.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_966;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1129 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1203 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}

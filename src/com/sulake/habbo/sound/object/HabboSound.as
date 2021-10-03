package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1056:SoundChannel = null;
      
      private var var_875:Boolean;
      
      private var var_1055:Sound = null;
      
      private var var_676:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1055 = param1;
         var_1055.addEventListener(Event.COMPLETE,onComplete);
         var_676 = 1;
         var_875 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_875;
      }
      
      public function stop() : Boolean
      {
         var_1056.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_875 = false;
         var_1056 = var_1055.play(0);
         this.volume = var_676;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_676;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1056.position;
      }
      
      public function get length() : Number
      {
         return var_1055.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_676 = param1;
         if(var_1056 != null)
         {
            var_1056.soundTransform = new SoundTransform(var_676);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_875 = true;
      }
   }
}

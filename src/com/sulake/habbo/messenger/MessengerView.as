package com.sulake.habbo.messenger
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.friendlist.SendMsgMessageComposer;
   import com.sulake.habbo.messenger.domain.Conversation;
   import com.sulake.habbo.messenger.domain.Message;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class MessengerView implements IDisposable
   {
       
      
      private var var_848:ConversationsTabView;
      
      private var _disposed:Boolean = false;
      
      private var var_132:HabboMessenger;
      
      private var var_1241:ConversationView;
      
      private var var_13:IFrameWindow;
      
      private var var_418:Timer;
      
      private var var_678:ITextFieldWindow;
      
      public function MessengerView(param1:HabboMessenger)
      {
         super();
         var_132 = param1;
         var_418 = new Timer(300,1);
         var_418.addEventListener(TimerEvent.TIMER,onResizeTimer);
      }
      
      public function addMsgToView(param1:Conversation, param2:Message) : void
      {
         if(var_13 == null)
         {
            return;
         }
         if(!param1.selected)
         {
            return;
         }
         var_1241.addMessage(param2);
      }
      
      private function onMessageInput(param1:Event) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = param1 as WindowKeyboardEvent;
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            sendMsg();
         }
         else
         {
            _loc4_ = 120;
            _loc5_ = "null";
            if(_loc5_.length > _loc4_)
            {
               var_678.text = _loc5_.substring(0,_loc4_);
            }
         }
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         var_13.visible = false;
      }
      
      private function onResizeTimer(param1:TimerEvent) : void
      {
         Logger.log("XXX RESIZE XXX");
         this.var_1241.afterResize();
         this.var_848.refresh();
      }
      
      private function sendMsg() : void
      {
         var _loc1_:String = "null";
         Logger.log("Send msg: " + _loc1_);
         if(_loc1_ == "")
         {
            Logger.log("No text...");
            return;
         }
         var _loc2_:Conversation = var_132.conversations.findSelectedConversation();
         if(_loc2_ == null)
         {
            Logger.log("No conversation...");
            return;
         }
         var_132.send(new SendMsgMessageComposer(_loc2_.id,_loc1_));
         var_678.text = "";
         var_132.conversations.addMessageAndUpdateView(new Message(Message.const_622,_loc2_.id,_loc1_,Util.getFormattedNow()));
      }
      
      public function refresh(param1:Boolean) : void
      {
         if(var_13 == null)
         {
            return;
         }
         var _loc2_:Conversation = var_132.conversations.findSelectedConversation();
         var_13.caption = _loc2_ == null ? "" : _loc2_.name;
         var_848.refresh();
         var_1241.refresh();
         if(var_132.conversations.openConversations.length < 1)
         {
            var_13.visible = false;
            var_132.setHabboToolbarIcon(false,false);
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            if(var_418)
            {
               var_418.stop();
               var_418.removeEventListener(TimerEvent.TIMER,onResizeTimer);
               var_418 = null;
            }
            var_132 = null;
            _disposed = true;
         }
      }
      
      public function openMessenger() : void
      {
         if(var_132.conversations.openConversations.length < 1)
         {
            return;
         }
         if(var_13 == null)
         {
            prepareContent();
            refresh(true);
            var_132.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.MESSENGER,var_13));
         }
         else
         {
            refresh(true);
            var_13.visible = true;
            var_13.activate();
         }
      }
      
      public function getTabCount() : int
      {
         return this.var_848 == null ? 7 : int(this.var_848.getTabCount());
      }
      
      public function isMessengerOpen() : Boolean
      {
         return var_13 != null && false;
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_45 || param2 != var_13)
         {
            return;
         }
         if(!this.var_418.running)
         {
            this.var_418.reset();
            this.var_418.start();
         }
      }
      
      public function close() : void
      {
         if(var_13 != null)
         {
            var_13.visible = false;
         }
      }
      
      private function prepareContent() : void
      {
         var_13 = IFrameWindow(var_132.getXmlWindow("main_window"));
         var _loc1_:IWindow = var_13.findChildByTag("close");
         _loc1_.procedure = onWindowClose;
         var_13.procedure = onWindow;
         var_13.title.color = 4294623744;
         var_13.title.textColor = 4287851525;
         var_848 = new ConversationsTabView(var_132,var_13);
         var_848.refresh();
         var_678 = ITextFieldWindow(var_13.findChildByName("message_input"));
         var_678.addEventListener(WindowKeyboardEvent.const_146,onMessageInput);
         var_1241 = new ConversationView(var_132,var_13);
         var_13.scaler.setParamFlag(HabboWindowParam.const_722,false);
         var_13.scaler.setParamFlag(HabboWindowParam.const_950,true);
      }
   }
}

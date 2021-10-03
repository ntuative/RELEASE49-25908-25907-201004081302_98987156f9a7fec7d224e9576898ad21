package com.sulake.habbo.help.hotelmerge
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.avatar.ChangeUserNameResultMessageEvent;
   import com.sulake.habbo.help.tutorial.NameSuggestionListRenderer;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   
   public class HotelMergeNameChangeView
   {
      
      private static var var_1417:uint = 13232628;
      
      private static var var_1739:uint = 11129827;
       
      
      private var var_1314:String;
      
      private var _window:IFrameWindow;
      
      private var var_612:IWindowContainer;
      
      private var var_800:NameSuggestionListRenderer;
      
      private var var_249:IWindowContainer;
      
      private var var_364:String;
      
      private var var_1313:IWindowContainer;
      
      private var var_47:HotelMergeUI;
      
      private var var_35:IWindowContainer;
      
      public function HotelMergeNameChangeView(param1:HotelMergeUI)
      {
         super();
         var_47 = param1;
      }
      
      public function setNameAvailableView() : void
      {
         if(_window == null)
         {
            return;
         }
         var _loc1_:ITextWindow = _window.findChildByName("info_text") as ITextWindow;
         if(_loc1_ == null)
         {
            return;
         }
         var_47.localization.registerParameter("help.tutorial.name.available","name",var_364);
         _loc1_.text = var_47.localization.getKey("help.tutorial.name.available");
         var _loc2_:ITextFieldWindow = _window.findChildByName("input") as ITextFieldWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.text = var_364;
         var _loc3_:IWindowContainer = _window.findChildByName("suggestions") as IWindowContainer;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.visible = false;
      }
      
      private function showView(param1:IWindowContainer) : void
      {
         if(var_35)
         {
            var_35.visible = false;
         }
         var_35 = param1;
         var_35.visible = true;
         if(_window)
         {
            _window.content.width = var_35.width;
            _window.content.height = var_35.height;
         }
      }
      
      private function getName() : String
      {
         var _loc1_:* = null;
         if(_window)
         {
            _loc1_ = _window.findChildByName("input") as ITextFieldWindow;
            if(_loc1_)
            {
               return _loc1_.text;
            }
         }
         return null;
      }
      
      private function nameOut(param1:WindowMouseEvent) : void
      {
         var _loc2_:ITextWindow = param1.target as ITextWindow;
         if(_loc2_ != null)
         {
            _loc2_.color = var_1417;
         }
      }
      
      private function createWindow(param1:String) : IWindow
      {
         var _loc2_:XmlAsset = var_47.assets.getAssetByName(param1) as XmlAsset;
         if(!_loc2_)
         {
            return null;
         }
         return var_47.windowManager.buildFromXML(_loc2_.content as XML);
      }
      
      private function nameSelected(param1:WindowMouseEvent) : void
      {
         var _loc2_:ITextWindow = param1.target as ITextWindow;
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:String = _loc2_.text;
         setNormalView();
         var _loc4_:ITextFieldWindow = _window.findChildByName("input") as ITextFieldWindow;
         if(_loc4_ == null)
         {
            return;
         }
         _loc4_.text = _loc3_;
      }
      
      private function nameOver(param1:WindowMouseEvent) : void
      {
         var _loc2_:ITextWindow = param1.target as ITextWindow;
         if(_loc2_ != null)
         {
            _loc2_.color = var_1739;
         }
      }
      
      private function showSelectionView() : void
      {
         if(!var_612)
         {
            var_612 = createWindow("hotel_merge_name_selection_xml") as IWindowContainer;
            if(!var_612)
            {
               return;
            }
            _window.content.addChild(var_612);
         }
         _window.caption = var_47.localization.getKey("hotel_merge.name_change.title.select");
         setNormalView();
         showView(var_612);
      }
      
      private function showConfirmationView() : void
      {
         if(!var_249)
         {
            var_249 = createWindow("hotel_merge_name_confirmation_xml") as IWindowContainer;
            if(!var_249)
            {
               return;
            }
            _window.content.addChild(var_249);
         }
         _window.caption = var_47.localization.getKey("hotel_merge.name_change.title.confirm");
         var _loc1_:ITextWindow = var_249.findChildByName("final_name") as ITextWindow;
         if(_loc1_)
         {
            _loc1_.text = var_364;
         }
         showView(var_249);
      }
      
      public function showMainView() : void
      {
         if(!_window)
         {
            _window = createWindow("hotel_merge_name_change_xml") as IFrameWindow;
            _window.center();
            _window.procedure = windowEventHandler;
            var_1313 = _window.content.getChildAt(0) as IWindowContainer;
         }
         var_47.localization.registerParameter("hotel_merge.name_change.current","name",var_47.myName);
         _window.caption = var_47.localization.getKey("hotel_merge.name_change.title.main");
         showView(var_1313);
      }
      
      public function dispose() : void
      {
         disposeWindow();
         if(var_800 != null)
         {
            var_800.dispose();
            var_800 = null;
         }
      }
      
      private function windowEventHandler(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         switch(param2.name)
         {
            case "change_name_button":
               showSelectionView();
               break;
            case "keep_name_button":
               var_364 = var_47.myName;
               showConfirmationView();
               break;
            case "check_name_button":
               var_47.checkName(getName());
               break;
            case "select_name_button":
               _loc3_ = getName();
               if(_loc3_.length < 1)
               {
                  return;
               }
               if(var_364 != _loc3_)
               {
                  var_1314 = _loc3_;
                  var_47.checkName(_loc3_);
               }
               else
               {
                  showConfirmationView();
               }
               break;
            case "cancel_selection_button":
               showMainView();
               break;
            case "confirm_name_button":
               var_47.changeName(var_364);
               break;
            case "cancel_confirmation_button":
               showMainView();
               break;
            case "header_button_close":
               disposeWindow();
         }
      }
      
      public function get id() : String
      {
         return TutorialUI.const_210;
      }
      
      public function get view() : IWindowContainer
      {
         return _window;
      }
      
      public function setNameNotAvailableView(param1:int, param2:String, param3:Array) : void
      {
         var _loc8_:* = null;
         if(var_35 != var_612)
         {
            showSelectionView();
         }
         var_1314 = null;
         var_364 = null;
         if(_window == null)
         {
            return;
         }
         var _loc4_:ITextWindow = _window.findChildByName("info_text") as ITextWindow;
         if(_loc4_ == null)
         {
            return;
         }
         switch(param1)
         {
            case ChangeUserNameResultMessageEvent.var_936:
               var_47.localization.registerParameter("help.tutorial.name.taken","name",param2);
               _loc4_.text = var_47.localization.getKey("help.tutorial.name.taken");
               break;
            case ChangeUserNameResultMessageEvent.var_937:
               var_47.localization.registerParameter("help.tutorial.name.invalid","name",param2);
               _loc4_.text = var_47.localization.getKey("help.tutorial.name.invalid");
               break;
            case ChangeUserNameResultMessageEvent.var_938:
               break;
            case ChangeUserNameResultMessageEvent.var_941:
               _loc4_.text = var_47.localization.getKey("help.tutorial.name.long");
               break;
            case ChangeUserNameResultMessageEvent.var_939:
               _loc4_.text = var_47.localization.getKey("help.tutorial.name.short");
               break;
            case ChangeUserNameResultMessageEvent.var_1104:
               _loc4_.text = var_47.localization.getKey("help.tutorial.name.change_not_allowed");
               break;
            case ChangeUserNameResultMessageEvent.var_1103:
               _loc4_.text = var_47.localization.getKey("help.tutorial.name.merge_hotel_down");
         }
         var _loc5_:IWindowContainer = _window.findChildByName("suggestions") as IWindowContainer;
         if(_loc5_ == null)
         {
            return;
         }
         if(param1 == ChangeUserNameResultMessageEvent.var_1103 || param1 == ChangeUserNameResultMessageEvent.var_1104)
         {
            _loc5_.visible = false;
            return;
         }
         _loc5_.visible = true;
         var_800 = new NameSuggestionListRenderer(var_47);
         var _loc6_:int = var_800.render(param3,_loc5_);
         var _loc7_:int = 0;
         while(_loc7_ < _loc5_.numChildren)
         {
            _loc8_ = _loc5_.getChildAt(_loc7_);
            _loc8_.color = var_1417;
            _loc8_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,nameSelected);
            _loc8_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,nameOver);
            _loc8_.addEventListener(WindowMouseEvent.const_30,nameOut);
            _loc7_++;
         }
      }
      
      public function set checkedName(param1:String) : void
      {
         var_364 = param1;
         if(var_1314 == var_364)
         {
            showConfirmationView();
            return;
         }
         setNameAvailableView();
      }
      
      public function setNormalView() : void
      {
         if(_window == null)
         {
            return;
         }
         var _loc1_:ITextWindow = _window.findChildByName("info_text") as ITextWindow;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.text = var_47.localization.getKey("help.tutorial.name.info");
         var _loc2_:IWindowContainer = _window.findChildByName("suggestions") as IWindowContainer;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.visible = false;
      }
      
      private function disposeWindow() : void
      {
         var_1313 = null;
         var_612 = null;
         var_249 = null;
         var_35 = null;
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
      }
   }
}

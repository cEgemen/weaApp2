  

      import 'package:mobx/mobx.dart';
      part 'sign_or_log_in_view_state.g.dart';
      
      class SignOrLogInViewState = _SignOrLogInViewStateBase with _$SignOrLogInViewState;
      
      abstract class _SignOrLogInViewStateBase with Store {
         
        @observable
        ActivePageName activePage = ActivePageName.values[0];

        @action
        void changeActivePage(ActivePageName page)
        {
            if(page != activePage)
            {
               activePage = page;
            }
              return ;
        }

      }


      enum ActivePageName {
         signIn,
         logIn
      }

define('main', ['viewmodel/main'], function(viewmodel) {
  var mailBoxListViewModel;
  mailBoxListViewModel = new viewmodel.MailListViewModel();
  mailBoxListViewModel.children.push(new viewmodel.MailViewModel(mailBoxListViewModel, {
    title: 'ほげBox'
  }));
  mailBoxListViewModel.children.push(new viewmodel.MailViewModel(mailBoxListViewModel, {
    title: 'はげBox'
  }));
  mailBoxListViewModel.children.push(new viewmodel.MailViewModel(mailBoxListViewModel, {
    title: 'はげBox'
  }));
  mailBoxListViewModel.children.push(new viewmodel.MailViewModel(mailBoxListViewModel, {
    title: 'はげBox'
  }));
  mailBoxListViewModel.children.push(new viewmodel.MailViewModel(mailBoxListViewModel, {
    title: 'はげBox'
  }));
  return ko.applyBindings(mailBoxListViewModel, $('#sidebar-list')[0]);
});

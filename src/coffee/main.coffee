define('main',
    [
        'viewmodel/main'
    ],
    (viewmodel)->
        mailBoxListViewModel = new viewmodel.MailListViewModel()
        mailBoxListViewModel.children.push(
            new viewmodel.MailViewModel(mailBoxListViewModel,
                title: 'ほげBox'
            )
        )
        mailBoxListViewModel.children.push(
            new viewmodel.MailViewModel(mailBoxListViewModel,
                title: 'はげBox'
            )
        )
        mailBoxListViewModel.children.push(
            new viewmodel.MailViewModel(mailBoxListViewModel,
                title: 'はげBox'
            )
        )
        mailBoxListViewModel.children.push(
            new viewmodel.MailViewModel(mailBoxListViewModel,
                title: 'はげBox'
            )
        )
        mailBoxListViewModel.children.push(
            new viewmodel.MailViewModel(mailBoxListViewModel,
                title: 'はげBox'
            )
        )

        ko.applyBindings(mailBoxListViewModel, $('#sidebar-list')[0])
)

angular.module 'myPanel'
  .service 'booksService', () ->
    'ngInject'
    data = [
      {
        'title': 'Game of thrones',
        'startRead': '1/1/2015',
        'endRead': '15/1/2015',
        'url': 'https://angularjs.org/',
        'description': 'HTML enhanced for web apps!',
        'logo': 'angular.png'
      },
      {
        'title': '50 Ideias matemática',
        'startRead': '15/1/2015',
        'endRead': '',
        'url': 'http://browsersync.io/',
        'description': 'Time-saving synchronised browser testing.',
        'logo': 'browsersync.png'
      }
    ]

    getBooks = ->
      data

    @getBooks = getBooks
    return

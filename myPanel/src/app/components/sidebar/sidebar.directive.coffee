angular.module 'myPanel'
  .directive 'sidebar', ->
    directive =
      restrict: 'E'
      templateUrl: 'app/components/sidebar/sidebar.html'
      repalce: true


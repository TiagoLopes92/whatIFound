(function() {
  'use strict';

  angular
    .module('myDailyStory')
    .controller('MainController', MainController);

  /** @ngInject */
  function MainController() {
    var vm = this;

    vm.text = "";
    vm.save = save;

    function save(){
      console.log(vm.text);
      vm.text = "";
    }
    
  }
})();

(function() {
  'use strict';

  angular
    .module('myDailyStory')
    .run(runBlock);

  /** @ngInject */
  function runBlock($log) {

    $log.debug('runBlock end');
  }

})();

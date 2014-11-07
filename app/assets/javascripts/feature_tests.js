if(typeof Modernizr !== 'undefined') {
  Modernizr.load({
    test: Modernizr.cssanimations,
    nope: 'loading_indicator_ie.js'
  });
}

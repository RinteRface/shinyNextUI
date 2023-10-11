// Set default theme as light
$(document).on('shiny:connected', function() {
  Shiny.setInputValue('theme', 'light', {priority: 'event'});

  // People can use input$theme to conditionaly style
  // there components with renderReact and reactOutput
  $('#theme_switcher').on('change', function(e) {
    const nextTheme = e.target.checked ? 'light' : 'dark';
    window.jsmodule['@nextui-org/react'].changeTheme(nextTheme);
    Shiny.setInputValue('theme', nextTheme, {priority: 'event'});
  });
});

import "./output.css";

// Dark mode
$(function(){
  $('html').addClass('dark text-foreground bg-background');
});

window.jsmodule = {
  ...window.jsmodule,
  '@nextui-org/react': require('@nextui-org/react'),
  '@/NextUI': require('./inputs')
};

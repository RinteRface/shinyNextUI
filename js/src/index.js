import "./output.css";

// Dark mode by default
$(function(){
  let initTheme = $('body').data('skin');
  $('html').addClass(`${initTheme} text-foreground bg-background`);

  $(document).on('shiny:connected', function() {
    Shiny.setInputValue('theme', initTheme, {priority: 'event'});
  });
});

window.jsmodule = {
  ...window.jsmodule,
  '@heroui/react': require("@heroui/react"),
  '@/NextUI': require('./inputs'),
  '@/ReactR': require('./custom.js')
};

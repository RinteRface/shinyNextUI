import {createTheme, changeTheme} from '@nextui-org/react';

const darkTheme = createTheme({
  type: 'dark',
  theme: {
    //colors: {...},
  }
});

changeTheme('dark');

$(document).on('shiny:connected', function() {
  Shiny.setInputValue('theme', darkTheme);
});

window.jsmodule = {
  ...window.jsmodule,
  '@nextui-org/react': require('@nextui-org/react'),
  '@/NextUI': require('./inputs')
};

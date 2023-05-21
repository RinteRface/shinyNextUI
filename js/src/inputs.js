import * as NextUI from '@nextui-org/react';
import { ButtonAdapter, InputAdapter, debounce } from '@/shiny.react';

export const Switch = InputAdapter(NextUI.Switch, (value, setValue) => ({
  onChange: (event) => {
    setValue(event.target.checked);
  },
}));

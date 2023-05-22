import * as NextUI from '@nextui-org/react';
import { ButtonAdapter, InputAdapter, debounce } from '@/shiny.react';

export const Button = ButtonAdapter(NextUI.Button);

export const Switch = InputAdapter(NextUI.Switch, (value, setValue) => ({
  checked: value,
  onChange: (event) => {
    setValue(event.target.checked);
  },
}));

export const Input = InputAdapter(NextUI.Input, (value, setValue) => ({
  value,
  onChange: (event) => {
    setValue(event.target.value);
  },
}), { policy: debounce, delay: 250 });

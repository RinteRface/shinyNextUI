import * as NextUI from '@nextui-org/react';
import { ButtonAdapter, InputAdapter, debounce } from '@/shiny.react';

export const Button = ButtonAdapter(NextUI.Button);

export const Switch = InputAdapter(NextUI.Switch, (value, setValue) => ({
  checked: value,
  onChange: (event) => {
    setValue(event.target.checked);
  },
}));

export const Input = InputAdapter(NextUI.Input, (value, setValue, props) => ({
  value: value,
  onChange: (event) => {
    let val = event.target.value;
    // For numeric input
    if (event.target.type === "number") {
      val = Number(val);
    }
    setValue(val);
  },
}), { policy: debounce, delay: 250 });

export const Checkbox = InputAdapter(NextUI.Checkbox, (value, setValue, props) => ({
  defaultSelected: value,
  onChange: (event) => {
    setValue(event.target.checked);
  },
}));

export const CheckboxGroup = InputAdapter(NextUI.Checkbox.Group, (value, setValue, props) => ({
  value: value,
  onChange: (event) => {
    setValue(event);
  },
}));

export const Radio = InputAdapter(NextUI.Radio.Group, (value, setValue, props) => ({
  value: value,
  onChange: (event) => {
    setValue(event);
  },
}));

export const Collapse = InputAdapter(NextUI.Collapse, (value, setValue, props) => ({
  expanded: value,
  onChange: (e, i, v) => {
    console.log(props);
    setValue(v);
  },
}));

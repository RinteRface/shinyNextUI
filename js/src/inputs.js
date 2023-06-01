import * as NextUI from '@nextui-org/react';
import { ButtonAdapter, InputAdapter, debounce } from '@/shiny.react';

export const Button = ButtonAdapter(NextUI.Button);

export const Switch = InputAdapter(NextUI.Switch, (value, setValue) => ({
  checked: value,
  onChange: (event) => {
    setValue(event.target.checked);
  },
}));

export const Textarea = InputAdapter(NextUI.Textarea, (value, setValue, props) => ({
  value: value,
  onChange: (event) => {
    setValue(event.target.value);
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
  onChange: (e) => {
    setValue(e);
  },
}));

export const CheckboxGroup = InputAdapter(NextUI.Checkbox.Group, (value, setValue, props) => ({
  value: value,
  onChange: (v) => {
    console.log(props);
    props.value = v;
    setValue(v);
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
    setValue(v);
  },
}));

export const CollapseGroup = InputAdapter(NextUI.Collapse.Group, (value, setValue, props) => ({
  expanded: value,
  onChange: (i, v) => {
    // Returns index of opened element
    setValue(i);
  },
}));

export const Dropdown = InputAdapter(NextUI.Dropdown.Menu, (value, setValue, props) => ({
  onSelectionChange: (keys) => {
    let vals = [];
    keys.forEach(key => {
      vals.push(key);
    });
    // So values appear in the right order
    // regardless of selection
    setValue(vals.sort());
  }
}));

export const Navbar = InputAdapter(NextUI.Navbar, (value, setValue, props) => ({
  onClick: (e) => {
    // Get active item value
    let val = $(e.currentTarget)
      .find('li[class*="isActive"] a')[0]
      .innerHTML;
    // TO DO.
    // when click on li item, toggle the old active ...
    setValue(val);
  }
}));

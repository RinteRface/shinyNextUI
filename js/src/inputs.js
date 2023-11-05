import * as NextUI from '@nextui-org/react';
import { ButtonAdapter, InputAdapter, debounce } from '@/shiny.react';

export const Button = ButtonAdapter(NextUI.Button);

export const Switch = InputAdapter(NextUI.Switch, (value, setValue) => ({
  isSelected: value,
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
    setValue(e.target.checked);
  },
}));

export const CheckboxGroup = InputAdapter(NextUI.CheckboxGroup, (value, setValue, props) => {
  return({
    defaultValue: value,
    onChange: (v) => {
      console.log(props);
      props.value = v;
      setValue(v);
    },
  });
});

export const Radio = InputAdapter(NextUI.RadioGroup, (value, setValue, props) => {
  console.log(props);
  return({
    defaultValue: value,
    onChange: (e) => {
      setValue(e.target.value);
    }
  });
});

export const Accordion = InputAdapter(NextUI.Accordion, (value, setValue, props) => ({
  defaultSelectedKeys: value,
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

export const Autocomplete = InputAdapter(NextUI.Autocomplete, (value, setValue, props) => {
  const [touched, setTouched] = React.useState(true);

  const isValid = value !== null;
  return({
    isInvalid: isValid || !touched ? false : true,
    errorMessage: isValid || !touched ? "" : "You must select a value",
    selectedKey: value,
    onSelectionChange: (key) => {
      setValue(key);
    },
    onClose: () => setTouched(true)
  });}
);

export const Dropdown = InputAdapter(NextUI.DropdownMenu, (value, setValue, props) => ({
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

export const Select = InputAdapter(NextUI.Select, (value, setValue, props) => {
  const [touched, setTouched] = React.useState(true);

  const isValid = value !== '';
  return({
    isInvalid: isValid || !touched ? false : true,
    errorMessage: isValid || !touched ? "" : "You must select a value",
    selectedKeys: value,
    onSelectionChange: (keys) => {
      let vals = [];
      keys.forEach(key => {
        vals.push(key);
      });
      // So values appear in the right order
      // regardless of selection
      setValue(vals.sort());
    },
    onClose: () => setTouched(true)
  });
});

export const Slider = InputAdapter(NextUI.Slider, (value, setValue, props) => ({
  defaultValue: Number(value),
  onChangeEnd: (value) => {
    setValue(value);
  }
}));

export const Tabs = InputAdapter(NextUI.Tabs, (value, setValue, props) => ({
  onSelectionChange: (key) => {
    setValue(key);
  }
}));

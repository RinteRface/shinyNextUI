import * as NextUI from "@heroui/react";
import { ButtonAdapter, InputAdapter, debounce } from '@/shiny.react';
import React from "react";

export const setTheme = () => {
  let theme;
  if ($('html').hasClass('dark')) {
    theme = 'light';
    $('html').removeClass('dark').addClass('light');
  } else {
    $('html').removeClass('light').addClass('dark');
    theme = 'dark';
  }
  Shiny.setInputValue('theme', theme, { priority: 'event' });
};

export const Button = ButtonAdapter(NextUI.Button);

export const ThemeSwitcher = InputAdapter(NextUI.Switch, (value, setValue) => ({
  isSelected: $('html').hasClass('light') ? true : false,
  onChange: (event) => {
    setTheme();
    setValue(event.target.checked);
  },
}));

export const Switch = InputAdapter(NextUI.Switch, (value, setValue, props) => {
  return ({
    isSelected: value,
    onChange: (event) => {
      setValue(event.target.checked);
    }
  })
});

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
  isSelected: value,
  onValueChange: (e) => {
    setValue(e.target.checked);
  },
}));

//export const CheckboxGroup = InputAdapter(NextUI.CheckboxGroup, (value, setValue, props) => {
//  console.log(props);
//  return({
//    value: value,
//    onValueChange: (value) => {
//      setValue(value)
//    }
//  });
//});

//export const RadioGroup = InputAdapter(NextUI.RadioGroup, (value, setValue, props) => {
//  console.log(props);
//  return({
//    value: value,
//    onValueChange: (value) => {
//      setValue(value);
//    }
//  });
//});

export const Accordion = InputAdapter(NextUI.Accordion, (value, setValue, props) => ({
  selectedKeys: value,
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
  return ({
    isInvalid: isValid || !touched ? false : true,
    errorMessage: isValid || !touched ? "" : "You must select a value",
    selectedKey: value,
    onSelectionChange: (key) => {
      setValue(key);
    },
    onClose: () => setTouched(true)
  });
}
);

//export const DropdownMenu = InputAdapter(NextUI.DropdownMenu, (value, setValue, props) => {
//  return({
//    selectedKeys: value,
//    onSelectionChange: (keys) => {
//      let vals = [];
//      keys.forEach(key => {
//        vals.push(key);
//      });
//      // So values appear in the right order
//      // regardless of selection
//      setValue(vals.sort());
//    }
//  })
//});

export const Listbox = InputAdapter(NextUI.Listbox, (value, setValue, props) => ({
  selectedKeys: value,
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

export const Pagination = InputAdapter(NextUI.Pagination, (value, setValue, props) => ({
  page: value,
  onChange: (page) => {
    setValue(page);
  },
}));

export const Select = InputAdapter(NextUI.Select, (value, setValue, props) => {
  const [touched, setTouched] = React.useState(true);

  let renderValue;
  if (props.items !== undefined) {
    renderValue = (items) => {
      let Avatar = NextUI.Avatar;
      return items.map((item) => (
        <div key={item.key} className="flex items-center gap-2">
          <Avatar
            alt={item.key}
            className="flex-shrink-0"
            size="sm"
            src={item.props.startContent.props.src}
          />
          <div className="flex flex-col">
            <span>{item.textValue}</span>
            <span className="text-default-500 text-tiny">Description</span>
          </div>
        </div>
      ));
    }
  }

  let isValid = value !== '';
  return ({
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
      if (vals.length === 0) isValid = false;
    },
    onClose: () => setTouched(true),
    renderValue: renderValue
  });
});

export const Slider = InputAdapter(NextUI.Slider, (value, setValue, props) => ({
  value: value,
  onChange: (value) => {
    setValue(value);
  }
}), { policy: debounce, delay: 250 });

export const Tabs = InputAdapter(NextUI.Tabs, (value, setValue, props) => ({
  selectedKey: value,
  onSelectionChange: (key) => {
    setValue(key);
  }
}));

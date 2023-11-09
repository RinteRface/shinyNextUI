import * as NextUI from '@nextui-org/react';
import * as ReactR from './utils.js';

/* Radio and checkbox group don't work with shiny.react, have to use reactR ... */
const GroupBuilder = (Component) => {
  return(
    ({ configuration, value, setValue }) => {
      let ParentTag = NextUI[Component + 'Group'];
      let ChildTag = NextUI[Component];

      let choices = configuration.children
      let children = Object.keys(choices).map(
        (choice) => <ChildTag
          key={choice}
          value={choice}>
            {choices[choice]}
          </ChildTag>
      )

      return (
        <ParentTag
          {...configuration}
          value={value}
          onValueChange={setValue}
        >
          {children}
        </ParentTag>
      );
    }
  )
}

// Note the first argument here should match the `class`
// argument of the reactR::createReactShinyInput() from step 1
export const RadioGroup = () => {
  ReactR.reactShinyInput('.radiogroup', 'RadioGroup', GroupBuilder("Radio"));
}

export const CheckboxGroup = () => {
  ReactR.reactShinyInput('.checkboxgroup', 'CheckboxGroup', GroupBuilder("Checkbox"));
}

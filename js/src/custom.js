import * as NextUI from "@heroui/react";
import * as ReactR from './utils.js';
import React from "react";

const convertTagToElement = (tag) => {
  if (tag) {
    if (React.isValidElement(tag)) return tag;
    // looks like class attribute fine without changing to className
    // also if we expect style prop then we would need to convert to object
    //   or ask users to specify style as list in R unless also handled somewhere
    return React.createElement(
      tag.name,
      tag.attribs,
      tag.children
    );
  } else {
    return null;
  }
}

/* Radio and checkbox group don't work with shiny.react, have to use reactR ... */
const GroupBuilder = (Component) => {
  return (
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

const DropdownBuilder = () => {
  return (
    ({ configuration, value, setValue }) => {
      let Dropdown = NextUI.Dropdown;
      let DropdownTrigger = NextUI.DropdownTrigger;
      let Button = NextUI.Button;
      let DropdownMenu = NextUI.DropdownMenu;
      let DropdownItem = NextUI.DropdownItem;
      let DropdownSection = NextUI.DropdownSection;

      let choices = configuration.children;
      let menu = choices.map(
        (choice) => {
          let props = choice.props;
          if (choice.dropdownSection) {
            let items = choice.children.map(
              (child) => {
                child.startContent = convertTagToElement(child.startContent);
                child.endContent = convertTagToElement(child.endContent);

                return (
                  <DropdownItem
                    key={child.title}
                    {...child}
                  >
                  </DropdownItem>
                )
              }
            )

            return (
              <DropdownSection
                {...props}
              >
                {items}
              </DropdownSection>
            )
          } else {
            choice.startContent = convertTagToElement(choice.startContent);
            choice.endContent = convertTagToElement(choice.endContent);
            return (
              <DropdownItem
                key={choice.title}
                {...choice}
              >
              </DropdownItem>
            )
          }
        })

      return (
        <Dropdown
          classNames={{
            base: "before:bg-default-200", // change arrow background
            content: "py-1 px-1 border border-default-200 bg-gradient-to-br from-white to-default-200 dark:from-default-50 dark:to-black",
          }}
        >
          <DropdownTrigger>
            <Button
              variant={configuration.variant}
            >
              {configuration.label}
            </Button>
          </DropdownTrigger>
          <DropdownMenu
            {...configuration}
            selectedKeys={value}
            onSelectionChange={
              (keys) => {
                let vals = [];
                keys.forEach(key => {
                  vals.push(key);
                });
                setValue(vals)
              }
            }
          >
            {menu}
          </DropdownMenu>
        </Dropdown>
      );
    }
  )
}

export const DropdownMenu = () => {
  ReactR.reactShinyInput('.dropdownmenu', 'DropdownMenu', DropdownBuilder());
}

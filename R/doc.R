#' Documentation template for components with input wrappers
#'
#' @param inputId ID of the component.
#' @param value Starting value.
#' @param session Object passed as the `session` argument to Shiny server.
#' @param ... Props to pass to the component.
#' The allowed props are listed below in the \bold{Details} section.
#'
#' @return
#' Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
#' The update functions return nothing (called for side effects).
#'
#' @keywords internal
#' @name shinyInput
NULL

#' Documentation template for remaining components
#'
#' @param ... Props to pass to the component.
#' The allowed props are listed below in the \bold{Details} section.
#'
#' @return
#' Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
#'
#' @keywords internal
#' @name component
NULL

#' Documentation template for remaining components
#'
#' @param ... Props to pass to the component.
#' The allowed props are listed below in the \bold{Details} section.
#' @param motion Prop relation to the framer-motion react library.
#'
#' @return
#' Object with `shiny.tag` class suitable for use in the UI of a Shiny app.
#'
#' @keywords internal
#' @name custom_component
NULL

#' spacer
#'
#' @description
#' Spacer is a component used to add space between components.
#'
#' @details
#'
#' \itemize{
#'\item \bold{x}. The x axis space. Type: Space. Default: 1.
#'\item \bold{y}. The y axis space. Type: Space. Default: 1.
#' }
#' @md
#' @name spacer
#' @example inst/examples/spacer/app.R
#' @seealso See \url{https://nextui.org/docs/layout/spacer}.
NULL

#' accordion
#'
#' @description
#' Accordion display a list of high-level options that can expand/collapse to reveal more information.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. The contents of the collection. Usually the array of AccordionItem. Type: ReactNode | ReactNode[]. Default: .
#'\item \bold{variant}. The accordion appearance style.. Type: light | shadow | bordered | splitted. Default: light.
#'\item \bold{selectionMode}. The type of selection that is allowed in the collection.. Type: none | single | multiple. Default: .
#'\item \bold{selectionBehavior}. The accordion selection behavior.. Type: toggle | replace. Default: toggle.
#'\item \bold{isCompact}. Whether all Accordion items should be smaller.. Type: boolean. Default: false.
#'\item \bold{isDisabled}. Whether the Accordion items are disabled.. Type: boolean. Default: .
#'\item \bold{showDivider}. WWhether to display a divider at the bottom of the each accordion item.. Type: boolean. Default: true.
#'\item \bold{DividerProps}. The divider component props.. Type: DividerProps. Default: NA.
#'\item \bold{hideIndicator}. Whether the Accordion items indicator is hidden.. Type: boolean. Default: .
#'\item \bold{disableAnimation}. Whether the Accordion items open/close animation is disabled.. Type: boolean. Default: .
#'\item \bold{disableIndicatorAnimation}. Whether the Accordion items indicator animation is disabled.. Type: boolean. Default: .
#'\item \bold{disallowEmptySelection}. Whether the collection allows empty selection.. Type: boolean. Default: .
#'\item \bold{keepContentMounted}. Whether the Accordion items content should be always mounted.. Type: boolean. Default: false.
#'\item \bold{fullWidth}. Whether the accordion should take up the full width of its parent container.. Type: boolean. Default: true.
#'\item \bold{motionProps}. The motion properties of the Accordion.. Type: MotionProps. Default: .
#'\item \bold{disabledKeys}. The item keys that are disabled. These items cannot be selected, focused, or otherwise interacted with.. Type: React.Key[]. Default: .
#'\item \bold{itemClasses}. The accordion items classNames.. Type: Classnames. Default: .
#'\item \bold{selectedKeys}. The currently selected keys in the collection (controlled).. Type: all | React.Key[]. Default: .
#'\item \bold{defaultSelectedKeys}. The initial selected keys in the collection (uncontrolled).. Type: all | React.Key[]. Default: .
#'\item \bold{disabledKeys}. The currently disabled keys in the collection (controlled).. Type: React.Key[]. Default: .
#' }
#' \itemize{
#'\item \bold{onSelectionChange}. Handler that is called when the selection changes.. Type: (keys: "all" ｜ Set<React.Key>) => any. Default: NA.
#' }
#' \itemize{
#'\item \bold{children}. The content of the component.. Type: ReactNode | string. Default: .
#'\item \bold{title}. The accordion item title.. Type: ReactNode | string. Default: .
#'\item \bold{subtitle}. The accordion item subtitle.. Type: ReactNode | string. Default: .
#'\item \bold{indicator}. The accordion item expanded indicator, usually an arrow icon.. Type: IndicatorProps. Default: .
#'\item \bold{startContent}. The accordion item start content, usually an icon or avatar.. Type: ReactNode. Default: .
#'\item \bold{motionProps}. The props to modify the framer motion animation. Use the variants API to create your own animation.. Type: MotionProps. Default: .
#'\item \bold{isCompact}. Whether the AccordionItem is compact.. Type: boolean. Default: false.
#'\item \bold{isDisabled}. The current disabled status.. Type: boolean. Default: false.
#'\item \bold{keepContentMounted}. Whether the AccordionItem content is kept mounted when closed.. Type: boolean. Default: false.
#'\item \bold{hideIndicator}. Whether the AccordionItem indicator is hidden.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether the AccordionItem animation is disabled.. Type: boolean. Default: false.
#'\item \bold{disableIndicatorAnimation}. Whether the AccordionItem indicator animation is disabled.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the accordion item slots.. Type: Classnames. Default: NA.
#' }
#' \itemize{
#'\item \bold{onFocus}. Handler that is called when the element receives focus.. Type: (e: FocusEvent) => void. Default: NA.
#'\item \bold{onBlur}. Handler that is called when the element loses focus.. Type: (e: FocusEvent) => void. Default: NA.
#'\item \bold{onFocusChange}. Handler that is called when the element's focus status changes.. Type: (isFocused: boolean) => void. Default: NA.
#'\item \bold{onKeyDown}. Handler that is called when a key is pressed.. Type: (e: KeyboardEvent) => void. Default: NA.
#'\item \bold{onKeyUp}. Handler that is called when a key is released.. Type: (e: KeyboardEvent) => void. Default: NA.
#'\item \bold{onPress}. Handler called when the press is released over the target.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressStart}. Handler called when a press interaction starts.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressEnd}. Handler called when a press interaction ends, either over the target or when the pointer leaves the target.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressChange}. Handler called when the press state changes.. Type: (isPressed: boolean) => void. Default: NA.
#'\item \bold{onPressUp}. Handler called when a press is released over the target, regardless of whether it started on the target or not.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onClick}. The native button click event handler (Deprecated) use onPress instead.. Type: MouseEventHandler. Default: NA.
#' }
#' @md
#' @name accordion
#' @example inst/examples/accordion/app.R
#' @seealso See \url{https://nextui.org/docs/components/accordion}.
NULL

#' autocomplete
#'
#' @description
#' An autocomplete combines a text input with a listbox, allowing users to filter a list of options to items matching a query.
#'
#' @details
#'
#' 1. Autocomplete Props
#' \itemize{
#'\item \bold{children*}. The children to render. Usually a list of AutocompleteItem and AutocompleteSection elements.. Type: ReactNode[]. Default: NA.
#'\item \bold{label}. The content to display as the label.. Type: ReactNode. Default: NA.
#'\item \bold{name}. The name of the input element, used when submitting an HTML form. See MDN.. Type: string. Default: NA.
#'\item \bold{variant}. The variant of the Autocomplete.. Type: flat | bordered | faded | underlined. Default: flat.
#'\item \bold{color}. The color of the Autocomplete.. Type: default | primary | secondary | success | warning | danger. Default: default.
#'\item \bold{size}. The size of the Autocomplete.. Type: sm | md | lg. Default: md.
#'\item \bold{radius}. The radius of the Autocomplete.. Type: none | sm | md | lg | full. Default: NA.
#'\item \bold{items}. The list of Autocomplete items. (controlled). Type: Iterable<T>. Default: NA.
#'\item \bold{defaultItems}. The list of Autocomplete items (uncontrolled).. Type: Iterable<T>. Default: NA.
#'\item \bold{inputValue}. The value of the Autocomplete input (controlled).. Type: string. Default: NA.
#'\item \bold{defaultInputValue}. The value of the Autocomplete input (uncontrolled).. Type: string. Default: NA.
#'\item \bold{allowsCustomValue}. Whether the Autocomplete allows a non-item matching input value to be set.. Type: boolean. Default: false.
#'\item \bold{allowsEmptyCollection}. Whether the autocomplete allows the menu to be open when the collection is empty.. Type: boolean. Default: true.
#'\item \bold{shouldCloseOnBlur}. Whether the Autocomplete should close when the input is blurred.. Type: boolean. Default: true.
#'\item \bold{placeholder}. Temporary text that occupies the text input when it is empty.. Type: string. Default: NA.
#'\item \bold{description}. A description for the field. Provides a hint such as specific requirements for what to choose.. Type: ReactNode. Default: NA.
#'\item \bold{menuTrigger}. The action that causes the menu to open.. Type: focus | input | manual. Default: focus.
#'\item \bold{labelPlacement}. The position of the label.. Type: inside | outside | outside-left. Default: inside.
#'\item \bold{selectedKey}. The currently selected key in the collection (controlled).. Type: React.Key. Default: NA.
#'\item \bold{defaultSelectedKey}. The initial selected key in the collection (uncontrolled).. Type: React.Key. Default: NA.
#'\item \bold{disabledKeys}. The item keys that are disabled. These items cannot be selected, focused, or otherwise interacted with.. Type: all | React.Key[]. Default: NA.
#'\item \bold{errorMessage}. An error message to display below the field.. Type: ReactNode. Default: NA.
#'\item \bold{startContent}. Element to be rendered in the left side of the Autocomplete.. Type: ReactNode. Default: NA.
#'\item \bold{endContent}. Element to be rendered in the right side of the Autocomplete.. Type: ReactNode. Default: NA.
#'\item \bold{autoFocus}. Whether the Autocomplete should be focused on render.. Type: boolean. Default: false.
#'\item \bold{defaultFilter}. The filter function used to determine if a option should be included in the Autocomplete list.. Type: (textValue: string, inputValue: string) => boolean. Default: NA.
#'\item \bold{filterOptions}. The options used to create the collator used for filtering.. Type: Intl.CollatorOptions. Default: { sensitivity: 'base'}.
#'\item \bold{isReadOnly}. Whether the Autocomplete is read only.. Type: boolean. Default: false.
#'\item \bold{isRequired}. Whether the Autocomplete is required.. Type: boolean. Default: false.
#'\item \bold{isInvalid}. Whether the Autocomplete is invalid.. Type: boolean. Default: false.
#'\item \bold{isDisabled}. Whether the Autocomplete is disabled.. Type: boolean. Default: false.
#'\item \bold{fullWidth}. Whether the input should take up the width of its parent.. Type: boolean. Default: true.
#'\item \bold{selectorIcon}. The icon that represents the autocomplete open state. Usually a chevron icon.. Type: ReactNode. Default: NA.
#'\item \bold{clearIcon}. The icon to be used in the clear button. Usually a cross icon.. Type: ReactNode. Default: NA.
#'\item \bold{showScrollIndicators}. Whether the scroll indicators should be shown when the listbox is scrollable.. Type: boolean. Default: true.
#'\item \bold{scrollRef}. A ref to the scrollable element.. Type: React.RefObject<HTMLElement>. Default: NA.
#'\item \bold{inputProps}. Props to be passed to the Input component.. Type: InputProps. Default: NA.
#'\item \bold{popoverProps}. Props to be passed to the Popover component.. Type: PopoverProps. Default: NA.
#'\item \bold{listboxProps}. Props to be passed to the Listbox component.. Type: ListboxProps. Default: NA.
#'\item \bold{scrollShadowProps}. Props to be passed to the ScrollShadow component.. Type: ScrollShadowProps. Default: NA.
#'\item \bold{selectorButtonProps}. Props to be passed to the selector button.. Type: ButtonProps. Default: NA.
#'\item \bold{clearButtonProps}. Props to be passed to the clear button.. Type: ButtonProps. Default: NA.
#'\item \bold{isClearable}. Whether the clear button should be shown.. Type: boolean. Default: true.
#'\item \bold{disableClearable}. Whether the clear button should be hidden. (Deprecated) Use isClearable instead.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether the Autocomplete should be animated.. Type: boolean. Default: true.
#'\item \bold{disableSelectorIconRotation}. Whether the select should disable the rotation of the selector icon.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the Autocomplete slots.. Type: Record<"base"｜ "listboxWrapper"｜ "listbox"｜ "popoverContent" ｜ "endContentWrapper"｜ "clearButton" ｜ "selectorButton", string>. Default: NA.
#' }
#' 2. Autocomplete Events
#' \itemize{
#'\item \bold{onOpenChange}. Method that is called when the open state of the menu changes. Returns the new open state and the action that caused the opening of the menu.. Type: (isOpen: boolean, menuTrigger?: MenuTriggerAction) => void. Default: NA.
#'\item \bold{onInputChange}. Handler that is called when the Autocomplete input value changes.. Type: (value: string) => void. Default: NA.
#'\item \bold{onSelectionChange}. Handler that is called when the Autocomplete selection changes.. Type: (key: React.Key) => void. Default: NA.
#'\item \bold{onFocus}. Handler that is called when the Autocomplete input is focused.. Type: (e:FocusEvent<HTMLInputElement>) => void. Default: NA.
#'\item \bold{onBlur}. Handler that is called when the Autocomplete input is blurred.. Type: (e:FocusEvent<HTMLInputElement>) => void. Default: NA.
#'\item \bold{onFocusChange}. Handler that is called when the Autocomplete input focus changes.. Type: (isFocused: boolean) => void. Default: NA.
#'\item \bold{onKeyDown}. Handler that is called when a key is pressed.. Type: (e: KeyboardEvent) => void. Default: NA.
#'\item \bold{onKeyUp}. Handler that is called when a key is released.. Type: (e: KeyboardEvent) => void. Default: NA.
#'\item \bold{onClose}. Handler that is called when the Autocomplete's Popover is closed.. Type: () => void. Default: NA.
#' }
#' @md
#' @name autocomplete
#' @example inst/examples/autocomplete/app.R
#' @seealso See \url{https://nextui.org/docs/components/autocomplete}.
NULL

#' avatar
#'
#' @description
#' The Avatar component is used to represent a user, and displays the profile picture, initials or fallback icon.
#'
#' @details
#'
#' \itemize{
#'\item \bold{src}. The source URL of the image to be displayed.. Type: string. Default: NA.
#'\item \bold{color}. Sets the avatar background color.. Type: default | primary | secondary | success | warning | danger. Default: default.
#'\item \bold{radius}. Sets the avatar border radius.. Type: none | sm | md | lg | full. Default: full.
#'\item \bold{size}. Sets the avatar size.. Type: sm | md | lg. Default: md.
#'\item \bold{name}. Displays the initials if the image is not provided or fails to load.. Type: string. Default: NA.
#'\item \bold{icon}. Displays a custom icon inside the avatar.. Type: ReactNode. Default: NA.
#'\item \bold{fallback}. A custom fallback component to display when the image fails to load.. Type: ReactNode. Default: NA.
#'\item \bold{isBordered}. If true, adds a border around the avatar.. Type: boolean. Default: false.
#'\item \bold{isDisabled}. If true, disables the avatar and applies a disabled styling.. Type: boolean. Default: false.
#'\item \bold{isFocusable}. If true, makes the avatar focusable for keyboard navigation.. Type: boolean. Default: false.
#'\item \bold{showFallback}. If true, shows the fallback icon or initials when the image fails to load.. Type: boolean. Default: false.
#'\item \bold{ImgComponent}. The component to be used as the image element.. Type: React.ElementType. Default: img.
#'\item \bold{imgProps}. Props to be passed to the image element.. Type: ImgComponentProps. Default: NA.
#'\item \bold{classNames}. Allows to set custom class names for the avatar slots.. Type: Record<"base"｜ "img"｜ "fallback"｜ "name"｜ "icon", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{max}. The maximum number of visible avatars. Type: number. Default: 5.
#'\item \bold{total}. Control the number of avatar not visible. Type: number. Default: NA.
#'\item \bold{size}. Size of the avatars. Type: AvatarProps['size']. Default: NA.
#'\item \bold{color}. Color of the avatars. Type: AvatarProps['color']. Default: NA.
#'\item \bold{radius}. Radius of the avatars. Type: AvatarProps['radius']. Default: NA.
#'\item \bold{isGrid}. Whether the avatars should be displayed in a grid. Type: boolean. Default: false.
#'\item \bold{isDisabled}. Whether the avatars are disabled. Type: boolean. Default: NA.
#'\item \bold{isBordered}. Whether the avatars have a border. Type: boolean. Default: NA.
#'\item \bold{renderCount}. This allows you to render a custom count component.. Type: (count: number) => ReactNode. Default: NA.
#' }
#' @md
#' @name avatar
#' @example inst/examples/avatar/app.R
#' @seealso See \url{https://nextui.org/docs/components/avatar}.
NULL

#' badge
#'
#' @description
#' Badges are used as a small numerical value or status descriptor for UI elements.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children *}. The wrapped component.. Type: ReactNode. Default: NA.
#'\item \bold{content}. The content of the badge. The badge will be rendered relative to its children.. Type: string | number | ReactNode. Default: NA.
#'\item \bold{variant}. The variant style of the badge.. Type: solid | flat | faded | shadow. Default: solid.
#'\item \bold{color}. The color of the badge.. Type: default | primary | secondary | success | warning | danger. Default: default.
#'\item \bold{size}. The size of the badge.. Type: sm | md | lg. Default: md.
#'\item \bold{shape}. The shape of the badge.. Type: circle | rectangle. Default: rectangle.
#'\item \bold{placement}. The placement of the badge.. Type: top-right | top-left | bottom-right | bottom-left. Default: top-right.
#'\item \bold{showOutline}. If true, the badge will have an outline.. Type: boolean. Default: true.
#'\item \bold{disableOutline}. If true, the badge will not have an outline. Deprecated use showOutline instead.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. If true, the badge will not have an animation.. Type: boolean. Default: false.
#'\item \bold{isInvisible}. If true, the badge will be invisible.. Type: boolean. Default: false.
#'\item \bold{isOneChar}. If true, the badge will have the same width and height.. Type: boolean. Default: false.
#'\item \bold{isDot}. If true, the badge will have smaller dimensions.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the badge slots.. Type: Record<"base"｜"badge", string>. Default: NA.
#' }
#' @md
#' @name badge
#' @example inst/examples/badge/app.R
#' @seealso See \url{https://nextui.org/docs/components/badge}.
NULL

#' button
#'
#' @description
#' Buttons allow users to perform actions and choose with a single tap.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. The content to display in the button.. Type: ReactNode. Default: NA.
#'\item \bold{variant}. The button appearance style.. Type: solid | bordered | light | flat | faded | shadow | ghost. Default: solid.
#'\item \bold{color}. The button color theme.. Type: default | primary | secondary | success | warning | danger. Default: default.
#'\item \bold{size}. The button size.. Type: sm | md | lg. Default: md.
#'\item \bold{radius}. The button border radius.. Type: none | sm | md | lg | full. Default: NA.
#'\item \bold{startContent}. The button start content.. Type: ReactNode. Default: NA.
#'\item \bold{endContent}. The button end content.. Type: ReactNode. Default: NA.
#'\item \bold{spinner}. Spinner to display when loading.. Type: ReactNode. Default: NA.
#'\item \bold{spinnerPlacement}. The spinner placement.. Type: start | end. Default: start.
#'\item \bold{fullWidth}. Whether the button should take the full width of its parent.. Type: boolean. Default: false.
#'\item \bold{isIconOnly}. Whether the button should have the same width and height.. Type: boolean. Default: false.
#'\item \bold{isDisabled}. Whether the button is disabled.. Type: boolean. Default: false.
#'\item \bold{isLoading}. Whether the button is loading.. Type: boolean. Default: false.
#'\item \bold{disableRipple}. Whether the button should display a ripple effect on press.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether the button should display animations.. Type: boolean. Default: false.
#' }
#' \itemize{
#'\item \bold{onPress}. Handler called when the press is released over the target.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressStart}. Handler called when a press interaction starts.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressEnd}. Handler called when a press interaction ends, either over the target or when the pointer leaves the target.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressChange}. Handler called when the press state changes.. Type: (isPressed: boolean) => void. Default: NA.
#'\item \bold{onPressUp}. Handler called when a press is released over the target, regardless of whether it started on the target or not.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onKeyDown}. Handler called when a key is pressed.. Type: (e: KeyboardEvent) => void. Default: NA.
#'\item \bold{onKeyUp}. Handler called when a key is released.. Type: (e: KeyboardEvent) => void. Default: NA.
#'\item \bold{onClick}. The native button click event handler (Deprecated) use onPress instead.. Type: MouseEventHandler. Default: NA.
#' }
#' \itemize{
#'\item \bold{children}. The buttons to display.. Type: ReactNode | ReactNode[]. Default: NA.
#'\item \bold{variant}. The buttons appearance style.. Type: solid | bordered | light | flat | faded | shadow | ghost. Default: solid.
#'\item \bold{color}. The buttons color theme.. Type: default | primary | secondary | success | warning | danger. Default: default.
#'\item \bold{size}. The buttons size.. Type: sm | md | lg. Default: md.
#'\item \bold{radius}. The buttons border radius.. Type: none | sm | md | lg | full. Default: xl.
#'\item \bold{fullWidth}. Whether the buttons should take the full width.. Type: boolean. Default: false.
#'\item \bold{isDisabled}. Whether the buttons are disabled.. Type: boolean. Default: false.
#' }
#' @md
#' @name button
#' @example inst/examples/button/app.R
#' @seealso See \url{https://nextui.org/docs/components/button}.
NULL

#' card
#'
#' @description
#' Card is a container for text, photos, and actions in the context of a single subject.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. Usually the Card parts, CardHeader, CardBody and CardFooter.. Type: ReactNode | ReactNode[]. Default: NA.
#'\item \bold{shadow}. The card shadow.. Type: none | sm | md | lg. Default: md.
#'\item \bold{radius}. The card border radius.. Type: none | sm | md | lg. Default: lg.
#'\item \bold{fullWidth}. Whether the card should take the full width of its parent.. Type: boolean. Default: false.
#'\item \bold{isHoverable}. Whether the card should change the background on hover.. Type: boolean. Default: false.
#'\item \bold{isPressable}. Whether the card should allow to be pressed.. Type: boolean. Default: false.
#'\item \bold{isBlurred}. Whether the card background should be blurred.. Type: boolean. Default: false.
#'\item \bold{isFooterBlurred}. Whether the card footer background should be blurred.. Type: boolean. Default: false.
#'\item \bold{isDisabled}. Whether the card should be disabled. The press events will be ignored.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether to disable the animation.. Type: boolean. Default: false.
#'\item \bold{disableRipple}. Whether to disable ripple effect. Only when isPressable is true.. Type: boolean. Default: false.
#'\item \bold{allowTextSelectionOnPress}. Whether to allow text selection on pressing. Only when isPressable is true.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the card slots.. Type: Record<"base"｜ "header"｜ "body"｜ "footer", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onPress}. Handler that is called when the press is released over the target.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressStart}. Handler that is called when a press interaction starts.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressEnd}. Handler that is called when a press interaction ends, either over the target or when the pointer leaves the target.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressChange}. Handler that is called when the press state changes.. Type: (isPressed: boolean) => void. Default: NA.
#'\item \bold{onPressUp}. Handler that is called when a press is released over the target, regardless of whether it started on the target or not.. Type: (e: PressEvent) => void. Default: NA.
#' }
#' @md
#' @name card
#' @example inst/examples/card/app.R
#' @seealso See \url{https://nextui.org/docs/components/card}.
NULL

#' checkbox
#'
#' @description
#' Checkboxes allow users to select multiple items from a list of individual items, or to mark one individual item as selected.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. The label of the checkbox.. Type: ReactNode. Default: NA.
#'\item \bold{icon}. The icon to be displayed when the checkbox is checked.. Type: CheckboxIconProps. Default: NA.
#'\item \bold{value}. The value of the checkbox element, used when submitting an HTML form.. Type: string. Default: .
#'\item \bold{name}. The name of the checkbox element, used when submitting an HTML form.. Type: string. Default: .
#'\item \bold{size}. The size of the checkbox.. Type: sm | md | lg. Default: md.
#'\item \bold{color}. The color of the checkbox.. Type: default | primary | secondary | success | warning | danger. Default: primary.
#'\item \bold{radius}. The radius of the checkbox.. Type: none | sm | md | lg | full. Default: NA.
#'\item \bold{lineThrough}. Whether the label should be crossed out.. Type: boolean. Default: false.
#'\item \bold{isSelected}. Whether the element should be selected (controlled).. Type: boolean. Default: .
#'\item \bold{defaultSelected}. Whether the element should be selected (uncontrolled).. Type: boolean. Default: .
#'\item \bold{isRequired}. Whether user checkbox is required on the checkbox before form submission.. Type: boolean. Default: false.
#'\item \bold{isReadOnly}. Whether the checkbox can be selected but not changed by the user.. Type: boolean. Default: .
#'\item \bold{isDisabled}. Whether the checkbox is disabled.. Type: boolean. Default: false.
#'\item \bold{isIndeterminate}. Indeterminism is presentational only. The indeterminate visual representation remains regardless of user interaction.. Type: boolean. Default: .
#'\item \bold{isInvalid}. Whether the checkbox is invalid.. Type: boolean. Default: false.
#'\item \bold{validationState}. Whether the checkbox should display its "valid" or "invalid" visual styling. (Deprecated) use isInvalid instead.. Type: valid | invalid. Default: NA.
#'\item \bold{disableAnimation}. Whether the animation should be disabled.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the checkbox slots.. Type: Record<"base"｜ "wrapper"｜ "icon"｜ "label", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onChange}. Handler that is called when the element's selection state changes. You can pull out the new checked state by accessing event.target.checked (boolean).. Type: React.ChangeEvent<HTMLInputElement>. Default: NA.
#'\item \bold{onValueChange}. Handler that is called when the element's selection state changes.. Type: (isSelected: boolean) => void. Default: NA.
#' }
#' @md
#' @name checkbox
#' @example inst/examples/checkbox/app.R
#' @seealso See \url{https://nextui.org/docs/components/checkbox}.
NULL

#' circular-progress
#'
#' @description
#' Circular progress indicators are utilized to indicate an undetermined wait period or visually represent the duration of a process.
#'
#' @details
#'
#' \itemize{
#'\item \bold{label}. The content to display as the label.. Type: ReactNode. Default: NA.
#'\item \bold{size}. The size of the indicator.. Type: sm | md | lg. Default: md.
#'\item \bold{color}. The color of the indicator.. Type: default | primary | secondary | success | warning | danger. Default: primary.
#'\item \bold{value}. The current value (controlled).. Type: number. Default: NA.
#'\item \bold{valueLabel}. The content to display as the value's label (e.g. 1 of 4).. Type: ReactNode. Default: NA.
#'\item \bold{minValue}. The smallest value allowed for the input.. Type: number. Default: 0.
#'\item \bold{maxValue}. The largest value allowed for the input.. Type: number. Default: 100.
#'\item \bold{formatOptions}. The options to format the value.. Type: Intl.NumberFormat. Default: {style: 'percent'}.
#'\item \bold{isIndeterminate}. Whether the progress is indeterminate.. Type: boolean. Default: true.
#'\item \bold{showValueLabel}. Whether to show the value label.. Type: boolean. Default: true.
#'\item \bold{strokeWidth}. The width of the progress stroke.. Type: number. Default: 2.
#'\item \bold{isDisabled}. Whether the progress is disabled.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether to disable the animation.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the circular progress slots.. Type: Record<"base"｜"svgWrapper"｜"svg"｜"track"｜"indicator"｜"value"｜"label", string>. Default: NA.
#' }
#' @md
#' @name circular-progress
#' @example inst/examples/circular-progress/app.R
#' @seealso See \url{https://nextui.org/docs/components/circular-progress}.
NULL

#' chip
#'
#' @description
#' A Chip is a small block of essential information that represent an input, attribute, or action.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. The content of the chip.. Type: ReactNode. Default: NA.
#'\item \bold{variant}. The chip appearance style.. Type: solid | bordered | light | flat | faded | shadow | dot. Default: solid.
#'\item \bold{color}. The color of the chip.. Type: default | primary | secondary | success | warning | danger. Default: default.
#'\item \bold{size}. The size of the chip.. Type: sm | md | lg. Default: md.
#'\item \bold{radius}. The radius of the chip.. Type: none | sm | md | lg | full. Default: full.
#'\item \bold{avatar}. Avatar to be rendered in the left side of the chip.. Type: ReactNode. Default: NA.
#'\item \bold{startContent}. Element to be rendered in the left side of the chip. This prop overrides the avatar prop.. Type: ReactNode. Default: NA.
#'\item \bold{endContent}. Element to be rendered in the right side of the chip. This prop overrides the default close button when onClose is passed.. Type: ReactNode. Default: NA.
#'\item \bold{isDisabled}. Whether the chip is disabled.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the chip slots.. Type: Record<"base"｜ "content"｜ "dot"｜ "avatar"｜ "closeButton", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onClose}. Handler that is called when the close button is pressed. If you pass this prop, the chip will display a close button (endContent).. Type: (e: PressEvent) => void. Default: NA.
#' }
#' @md
#' @name chip
#' @example inst/examples/chip/app.R
#' @seealso See \url{https://nextui.org/docs/components/chip}.
NULL

#' code
#'
#' @description
#' Code is a component used to display inline code.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. The content of the code.. Type: ReactNode. Default: NA.
#'\item \bold{size}. The size of the code.. Type: sm | md | lg. Default: sm.
#'\item \bold{color}. The color of the code.. Type: default | primary | secondary | success | warning | danger. Default: default.
#'\item \bold{radius}. The radius of the code.. Type: none | sm | md | lg | full. Default: sm.
#' }
#' @md
#' @name code
#' @example inst/examples/code/app.R
#' @seealso See \url{https://nextui.org/docs/components/code}.
NULL

#' divider
#'
#' @description
#' Divider is a component that separates content in a page.
#'
#' @details
#'
#' \itemize{
#'\item \bold{orientation}. The orientation of the divider.. Type: horizontal | vertical. Default: horizontal.
#' }
#' @md
#' @name divider
#' @example inst/examples/divider/app.R
#' @seealso See \url{https://nextui.org/docs/components/divider}.
NULL

#' image
#'
#' @description
#' The Image component is used to display images with support for fallback.
#'
#' @details
#'
#' \itemize{
#'\item \bold{src}. The image source.. Type: string. Default: NA.
#'\item \bold{srcSet}. The image srcSet.. Type: string. Default: NA.
#'\item \bold{sizes}. The image sizes.. Type: string. Default: NA.
#'\item \bold{alt}. The image alt.. Type: string. Default: NA.
#'\item \bold{width}. The image width.. Type: number. Default: NA.
#'\item \bold{height}. The image height.. Type: number. Default: NA.
#'\item \bold{radius}. The image border radius.. Type: none | sm | md | lg | full. Default: xl.
#'\item \bold{shadow}. The image shadow.. Type: none | sm | md | lg. Default: none.
#'\item \bold{loading}. A loading strategy to use for the image.. Type: eager | lazy. Default: NA.
#'\item \bold{fallbackSrc}. The fallback image source.. Type: string. Default: NA.
#'\item \bold{isBlurred}. Whether the image should have a duplicated blurred image at the background.. Type: boolean. Default: false.
#'\item \bold{isZoomed}. Whether the image should be zoomed when hovered.. Type: boolean. Default: false.
#'\item \bold{removeWrapper}. Whether to remove the wrapper element. This will cause the image to be rendered as a direct child of the parent element. If you set this prop as true neither the skeleton nor the zoom effect will work.. Type: boolean. Default: false.
#'\item \bold{disableSkeleton}. Whether the image should disable the skeleton animation while loading.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the image slots.. Type: Record<"img"｜ "wrapper"｜ "zoomedWrapper"｜ "blurredImg", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onLoad}. Handler that is called when the image load.. Type: ReactEventHandler<HTMLImageElement>. Default: NA.
#'\item \bold{onError}. Handler that is called when the image fails to load.. Type: () => void. Default: NA.
#' }
#' @md
#' @name image
#' @example inst/examples/image/app.R
#' @seealso See \url{https://nextui.org/docs/components/image}.
NULL

#' input
#'
#' @description
#' Input is a component that allows users to enter text. It can be used to get user inputs in forms, search fields, and more.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. The content of the input.. Type: ReactNode. Default: NA.
#'\item \bold{variant}. The variant of the input.. Type: flat | bordered | faded | underlined. Default: flat.
#'\item \bold{color}. The color of the input.. Type: default | primary | secondary | success | warning | danger. Default: default.
#'\item \bold{size}. The size of the input.. Type: sm | md | lg. Default: md.
#'\item \bold{radius}. The radius of the input.. Type: none | sm | md | lg | full. Default: NA.
#'\item \bold{label}. The content to display as the label.. Type: ReactNode. Default: NA.
#'\item \bold{value}. The current value of the input (controlled).. Type: string. Default: NA.
#'\item \bold{defaultValue}. The default value of the input (uncontrolled).. Type: string. Default: NA.
#'\item \bold{placeholder}. The placeholder of the input.. Type: string. Default: NA.
#'\item \bold{description}. A description for the input. Provides a hint such as specific requirements for what to choose.. Type: ReactNode. Default: NA.
#'\item \bold{errorMessage}. An error message for the input.. Type: ReactNode. Default: NA.
#'\item \bold{startContent}. Element to be rendered in the left side of the input.. Type: ReactNode. Default: NA.
#'\item \bold{endContent}. Element to be rendered in the right side of the input.. Type: ReactNode. Default: NA.
#'\item \bold{labelPlacement}. The position of the label.. Type: inside | outside | outside-left. Default: inside.
#'\item \bold{fullWidth}. Whether the input should take up the width of its parent.. Type: boolean. Default: true.
#'\item \bold{isClearable}. Whether the input should have a clear button.. Type: boolean. Default: false.
#'\item \bold{isRequired}. Whether user input is required on the input before form submission.. Type: boolean. Default: false.
#'\item \bold{isReadOnly}. Whether the input can be selected but not changed by the user.. Type: boolean. Default: .
#'\item \bold{isDisabled}. Whether the input is disabled.. Type: boolean. Default: false.
#'\item \bold{isInvalid}. Whether the input is invalid.. Type: boolean. Default: false.
#'\item \bold{baseRef}. The ref to the base element.. Type: RefObject<HTMLDivElement>. Default: NA.
#'\item \bold{validationState}. Whether the input should display its "valid" or "invalid" visual styling. (Deprecated) use isInvalid instead.. Type: valid | invalid. Default: NA.
#'\item \bold{disableAnimation}. Whether the input should be animated.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the checkbox slots.. Type: Record<"base"｜ "label"｜ "inputWrapper"｜ "innerWrapper"｜ "mainWrapper" ｜ "input" ｜ "clearButton" ｜ "helperWrapper" ｜ "description" ｜ "errorMessage", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onChange}. Handler that is called when the element's value changes. You can pull out the new value by accessing event.target.value (string).. Type: React.ChangeEvent<HTMLInputElement>. Default: NA.
#'\item \bold{onValueChange}. Handler that is called when the element's value changes.. Type: (value: string) => void. Default: NA.
#'\item \bold{onClear}. Handler that is called when the clear button is clicked.. Type: () => void. Default: NA.
#' }
#' @md
#' @name input
#' @example inst/examples/input/app.R
#' @seealso See \url{https://nextui.org/docs/components/input}.
NULL

#' link
#'
#' @description
#' Links allow users to click their way from page to page. This component is styled to resemble a hyperlink and semantically renders an <a>
#'
#' @details
#'
#' \itemize{
#'\item \bold{size}. The size of the link.. Type: sm | md | lg. Default: md.
#'\item \bold{color}. The color of the link.. Type: foreground | primary | secondary | success | warning | danger. Default: primary.
#'\item \bold{underline}. The underline of the link.. Type: none | hover | always | active | focus. Default: none.
#'\item \bold{href}. A URL to link to. See MDN.. Type: string. Default: NA.
#'\item \bold{target}. The target window for the link. See MDN.. Type: HTMLAttributeAnchorTarget. Default: NA.
#'\item \bold{rel}. The relationship between the linked resource and the current page. See MDN.. Type: string. Default: NA.
#'\item \bold{download}. Causes the browser to download the linked URL. A string may be provided to suggest a file name. See MDN.. Type: boolean | string. Default: NA.
#'\item \bold{ping}. A space-separated list of URLs to ping when the link is followed. See MDN.. Type: string. Default: NA.
#'\item \bold{referrerPolicy}. How much of the referrer to send when following the link. See MDN.. Type: HTMLAttributeReferrerPolicy. Default: NA.
#'\item \bold{isExternal}. Whether the link should open in a new tab.. Type: boolean. Default: false.
#'\item \bold{showAnchorIcon}. Whether to show the anchor icon.. Type: boolean. Default: false.
#'\item \bold{anchorIcon}. The anchor icon.. Type: ReactNode. Default: NA.
#'\item \bold{isBlock}. Whether the link should be rendered as block with a hover effect.. Type: boolean. Default: false.
#'\item \bold{isDisabled}. Whether the link is disabled.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether to disable link and block animations.. Type: boolean. Default: false.
#' }
#' \itemize{
#'\item \bold{onPress}. Handler called when the press is released over the target.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressStart}. Handler called when a press interaction starts.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressEnd}. Handler called when a press interaction ends, either over the target or when the pointer leaves the target.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressChange}. Handler called when the press state changes.. Type: (isPressed: boolean) => void. Default: NA.
#'\item \bold{onPressUp}. Handler called when a press is released over the target, regardless of whether it started on the target or not.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onKeyDown}. Handler called when a key is pressed.. Type: (e: KeyboardEvent) => void. Default: NA.
#'\item \bold{onKeyUp}. Handler called when a key is released.. Type: (e: KeyboardEvent) => void. Default: NA.
#'\item \bold{onClick}. The native link click event handler (Deprecated) use onPress instead.. Type: MouseEventHandler. Default: NA.
#' }
#' @md
#' @name link
#' @example inst/examples/link/app.R
#' @seealso See \url{https://nextui.org/docs/components/link}.
NULL

#' listbox
#'
#' @description
#' A listbox displays a list of options and allows a user to select one or more of them.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children*}. The children to render. Usually a list of ListboxItem or ListboxSection. Type: ReactNode[]. Default: NA.
#'\item \bold{items}. Item objects in the collection. (dynamic). Type: Iterable<T>. Default: NA.
#'\item \bold{variant}. The listbox items appearance style.. Type: solid | bordered | light | flat | faded | shadow. Default: solid.
#'\item \bold{color}. The listbox items color theme.. Type: default | primary | secondary | success | warning | danger. Default: default.
#'\item \bold{selectionMode}. The type of selection that is allowed in the collection.. Type: none | single | multiple. Default: NA.
#'\item \bold{selectedKeys}. The currently selected keys in the collection (controlled).. Type: React.Key[]. Default: NA.
#'\item \bold{disabledKeys}. The item keys that are disabled. These items cannot be selected, focused, or otherwise interacted with.. Type: React.Key[]. Default: NA.
#'\item \bold{defaultSelectedKeys}. The initial selected keys in the collection (uncontrolled).. Type: all | React.Key[]. Default: NA.
#'\item \bold{disallowEmptySelection}. Whether the collection allows empty selection.. Type: boolean. Default: false.
#'\item \bold{shouldHighlightOnFocus}. Whether the focused item should be highlighted. It applies the same styles to the items as when hovered.. Type: boolean. Default: false.
#'\item \bold{autoFocus}. Where the focus should be set.. Type: boolean | first | last. Default: false.
#'\item \bold{topContent}. The content to display above the listbox items.. Type: ReactNode. Default: NA.
#'\item \bold{bottomContent}. The content to display below the listbox items.. Type: ReactNode. Default: NA.
#'\item \bold{emptyContent}. The content to display when the collection is empty.. Type: ReactNode. Default: No items..
#'\item \bold{shouldFocusWrap}. Whether keyboard navigation is circular.. Type: boolean. Default: false.
#'\item \bold{hideEmptyContent}. Whether to not display the empty content when the collection is empty.. Type: boolean. Default: false.
#'\item \bold{hideSelectedIcon}. Whether to hide the check icon when the items are selected.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether to disable the animation of the listbox items.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the listbox slots.. Type: Record<"base"｜ "list"｜ "emptyContent", string>. Default: NA.
#'\item \bold{itemClasses}. Allows to set custom class names for the listbox item slots.. Type: Record<"base"｜ "wrapper"｜ "title"｜ "description"｜ "selectedIcon", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onAction}. Handler that is called when an item is selected.. Type: (key: React.Key) => void. Default: NA.
#'\item \bold{onSelectionChange}. Handler that is called when the selection changes.. Type: (keys: React.Key[]) => void. Default: NA.
#' }
#' \itemize{
#'\item \bold{children*}. The contents of the listbox section. Usually a list of ListboxItem components. (static). Type: ReactNode. Default: NA.
#'\item \bold{title}. The title of the listbox section.. Type: string. Default: NA.
#'\item \bold{items}. Item objects in the collection. (dynamic). Type: Iterable<T>. Default: NA.
#'\item \bold{hideSelectedIcon}. Whether to hide the check icon when the items are selected.. Type: boolean. Default: false.
#'\item \bold{showDivider}. Whether to show the divider between the groups.. Type: boolean. Default: false.
#'\item \bold{dividerProps}. The divider component props.. Type: DividerProps. Default: NA.
#'\item \bold{classNames}. Allows to set custom class names for the listbox section slots.. Type: Record<"base"｜ "heading"｜ "group"｜ "divider", string>. Default: NA.
#'\item \bold{itemClasses}. Allows to set custom class names for the listbox item slots.. Type: Record<"base"｜ "wrapper"｜ "title"｜ "description"｜ "shortcut" ｜ "selectedIcon", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{children*}. The contents of the listbox item.. Type: ReactNode. Default: NA.
#'\item \bold{key}. The unique key for the listbox item.. Type: React.Key. Default: NA.
#'\item \bold{title}. The title of the listbox item.. Type: string | ReactNode. Default: NA.
#'\item \bold{textValue}. A string representation of the item's contents, used for features like typeahead.. Type: string. Default: NA.
#'\item \bold{description}. The description of the listbox item.. Type: string | ReactNode. Default: NA.
#'\item \bold{shortcut}. The listbox item keyboard shortcut.. Type: string | ReactNode. Default: NA.
#'\item \bold{startContent}. The start content of the listbox item.. Type: ReactNode. Default: NA.
#'\item \bold{endContent}. The end content of the listbox item. This is positioned after the shortcut and the selected icon.. Type: ReactNode. Default: NA.
#'\item \bold{selectedIcon}. Custom icon to render when the item is selected.. Type: SelectedIconProps. Default: NA.
#'\item \bold{href}. A URL to link to. See MDN.. Type: string. Default: NA.
#'\item \bold{target}. The target window for the link. See MDN.. Type: HTMLAttributeAnchorTarget. Default: NA.
#'\item \bold{rel}. The relationship between the linked resource and the current page. See MDN.. Type: string. Default: NA.
#'\item \bold{download}. Causes the browser to download the linked URL. A string may be provided to suggest a file name. See MDN.. Type: boolean | string. Default: NA.
#'\item \bold{ping}. A space-separated list of URLs to ping when the link is followed. See MDN.. Type: string. Default: NA.
#'\item \bold{referrerPolicy}. How much of the referrer to send when following the link. See MDN.. Type: HTMLAttributeReferrerPolicy. Default: NA.
#'\item \bold{shouldHighlightOnFocus}. Whether the focused item should be highlighted. It applies the same styles to the item as when hovered.. Type: boolean. Default: false.
#'\item \bold{hideSelectedIcon}. Whether to hide the check icon when the item is selected.. Type: boolean. Default: false.
#'\item \bold{showDivider}. Whether to show a divider below the item.. Type: boolean. Default: false.
#'\item \bold{isDisabled}. Whether the listbox item should be disabled. (Deprecated) pass disabledKeys to Listbox instead.. Type: boolean. Default: false.
#'\item \bold{isSelected}. Whether the listbox item should be selected. (Deprecated) pass selectedKeys to Listbox instead.. Type: boolean. Default: false.
#'\item \bold{isReadOnly}. Whether the listbox item press events should be ignored.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the listbox item slots.. Type: Record<"base"｜ "wrapper"｜ "title"｜ "description"｜ "shortcut" ｜ "selectedIcon", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onAction}. Handler that is called when the listbox item is selected. (Deprecated) pass to Listbox instead.. Type: () => void. Default: NA.
#'\item \bold{onPress}. Handler called when the press is released over the target.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressStart}. Handler called when a press interaction starts.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressEnd}. Handler called when a press interaction ends, either over the target or when the pointer leaves the target.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressChange}. Handler called when the press state changes.. Type: (isPressed: boolean) => void. Default: NA.
#'\item \bold{onPressUp}. Handler called when a press is released over the target, regardless of whether it started on the target or not.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onKeyDown}. Handler called when a key is pressed.. Type: (e: KeyboardEvent) => void. Default: NA.
#'\item \bold{onKeyUp}. Handler called when a key is released.. Type: (e: KeyboardEvent) => void. Default: NA.
#'\item \bold{onClick}. The native button click event handler (Deprecated) use onPress instead.. Type: MouseEventHandler. Default: NA.
#' }
#' @md
#' @name listbox
#' @example inst/examples/listbox/app.R
#' @seealso See \url{https://nextui.org/docs/components/listbox}.
NULL

#' modal
#'
#' @description
#' Displays a dialog with a custom content that requires attention or provides additional information.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children*}. The content of the modal. It's usually the ModalContent.. Type: ReactNode. Default: NA.
#'\item \bold{size}. The modal size. This changes the modal max-width and height (full).. Type: xs | sm | md | lg | xl | 2xl | 3xl | 4xl | 5xl | full. Default: md.
#'\item \bold{radius}. The modal border radius.. Type: none | sm | md | lg. Default: lg.
#'\item \bold{shadow}. The modal shadow.. Type: none | sm | md | lg. Default: lg.
#'\item \bold{backdrop}. The modal backdrop type.. Type: transparent | opaque | blur. Default: opaque.
#'\item \bold{scrollBehavior}. The modal scroll behavior.. Type: normal | inside | outside. Default: normal.
#'\item \bold{placement}. The modal position.. Type: auto | top | center | bottom. Default: auto.
#'\item \bold{isOpen}. Whether the modal is open by default (controlled).. Type: boolean. Default: NA.
#'\item \bold{defaultOpen}. Whether the modal is open by default (uncontrolled).. Type: boolean. Default: NA.
#'\item \bold{isDismissable}. Whether the modal can be closed by clicking on the overlay or pressing the Esc key.. Type: boolean. Default: true.
#'\item \bold{isKeyboardDismissDisabled}. Whether pressing the Esc key to close the modal should be disabled.. Type: boolean. Default: false.
#'\item \bold{shouldBlockScroll}. Whether the modal should block the scroll of the page on open.. Type: boolean. Default: true.
#'\item \bold{hideCloseButton}. Whether to hide the modal close button.. Type: boolean. Default: false.
#'\item \bold{closeButton}. Custom close button to display on top right corner.. Type: ReactNode. Default: NA.
#'\item \bold{motionProps}. The props to modify the framer motion animation. Use the variants API to create your own animation.. Type: MotionProps. Default: .
#'\item \bold{portalContainer}. The container element in which the overlay portal will be placed.. Type: HTMLElement. Default: document.body.
#'\item \bold{disableAnimation}. Whether the modal should not have animations.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the modal slots.. Type: Record<"wrapper"｜ "base"｜ "backdrop"｜ "header" ｜ "body" ｜ "footer" ｜ "closeButton", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onOpenChange}. Handler that is called when the modal's open state changes.. Type: (isOpen: boolean) => void. Default: NA.
#'\item \bold{onClose}. Handler that is called when the modal is closed.. Type: () => void. Default: NA.
#' }
#' @md
#' @name modal
#' @example inst/examples/modal/app.R
#' @seealso See \url{https://nextui.org/docs/components/modal}.
NULL

#' navbar
#'
#' @description
#' A responsive navigation header positioned on top side of your page that includes support for branding, links, navigation, collapse menu and more.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children*}. The children to render. Usually navbar elements such as NavbarBrand, NavbarContent and NavbarItem. Type: ReactNode[]. Default: NA.
#'\item \bold{height}. The height of the navbar.. Type: string | number. Default: 4rem (64px).
#'\item \bold{position}. The position of the navbar.. Type: static | sticky. Default: sticky.
#'\item \bold{maxWidth}. The max width of the navbar wrapper.. Type: sm | md | lg | xl | 2xl | full. Default: lg.
#'\item \bold{parentRef}. The parent element where the navbar is placed within. This is used to determine the scroll position and whether the navbar should be hidden or not.. Type: React.RefObject<HTMLElement>. Default: window.
#'\item \bold{isBordered}. Whether the navbar should have a bottom border or not.. Type: boolean. Default: false.
#'\item \bold{isBlurred}. Whether the navbar should have a blur effect or not.. Type: boolean. Default: true.
#'\item \bold{isMenuOpen}. Indicates if the navbar menu is open. (controlled). Type: boolean. Default: false.
#'\item \bold{isMenuDefaultOpen}. Indicates if the navbar menu is open by default. (uncontrolled). Type: boolean. Default: false.
#'\item \bold{shouldHideOnScroll}. Indicates if the navbar should hide on scroll.. Type: boolean. Default: false.
#'\item \bold{motionProps}. The motion props to controle the visible / hidden animation. This motion is only available if the shouldHideOnScroll prop is set to true.. Type: MotionProps. Default: NA.
#'\item \bold{disableScrollHandler}. Whether the navbar parent scroll event should be listened to or not.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether the navbar menu animation should be disabled or not.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the navbar slots.. Type: Record<"base"｜ "wrapper"｜ "brand"｜ "content"｜ "item"｜ "toggle"｜ "toggleIcon"｜ "menu"｜ "menuItem", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onMenuOpenChange}. Handler that is called when the navbar menu open state changes.. Type: (isOpen: boolean) => void. Default: NA.
#'\item \bold{onScrollPositionChange}. Handler that is called when the navbar parent element is scrolled. This event is only dispatched if disableScrollHandler is set to false or shouldHideOnScroll is set to true.. Type: (position: number) => void. Default: NA.
#' }
#' \itemize{
#'\item \bold{children*}. The children to render. Usually navbar elements such as NavbarBrand, NavbarContent and NavbarItem. Type: ReactNode[]. Default: NA.
#'\item \bold{justify}. The justify content of the navbar content. It takes into account the correct space distribution.. Type: start | center | end. Default: start.
#' }
#' \itemize{
#'\item \bold{children}. The children to render as the navbar item.. Type: ReactNode. Default: NA.
#'\item \bold{isActive}. Whether the navbar item is active or not.. Type: boolean. Default: false.
#' }
#' \itemize{
#'\item \bold{icon}. The icon to render as the navbar menu toggle.. Type: ReactNode | (isOpen: boolean | undefined) => ReactNode | null;. Default: NA.
#'\item \bold{isSelected}. Whether the navbar menu toggle is selected. (controlled). Type: boolean. Default: false.
#'\item \bold{defaultSelected}. Whether the navbar menu toggle is selected by default. (uncontrolled). Type: boolean. Default: false.
#'\item \bold{srOnlyText}. The text to be used by screen readers.. Type: string. Default: open/close navigation menu.
#' }
#' \itemize{
#'\item \bold{onChange}. Handler that is called when the navbar menu toggle is pressed.. Type: (isOpen: boolean) => void. Default: NA.
#' }
#' \itemize{
#'\item \bold{children*}. The children to render as the navbar menu. Usually a list of NavbarMenuItem components.. Type: ReactNode[]. Default: NA.
#'\item \bold{portalContainer}. The container element in which the navbar menu overlay portal will be placed.. Type: HTMLElement. Default: document.body.
#'\item \bold{motionProps}. The motion props to controle the open / close animation. This motion is only available if the disableAnimation prop is set to false.. Type: MotionProps. Default: NA.
#' }
#' \itemize{
#'\item \bold{children}. The children to render as the menu item.. Type: ReactNode. Default: NA.
#'\item \bold{isActive}. Whether the menu item is active or not.. Type: boolean. Default: false.
#' }
#' @md
#' @name navbar
#' @example inst/examples/navbar/app.R
#' @seealso See \url{https://nextui.org/docs/components/navbar}.
NULL

#' pagination
#'
#' @description
#' The Pagination component allows you to display active page and navigate between multiple pages.
#'
#' @details
#'
#' \itemize{
#'\item \bold{variant}. The pagination variant.. Type: flat | bordered | light | faded. Default: flat.
#'\item \bold{color}. The pagination color theme.. Type: default | primary | secondary | success | warning | danger. Default: default.
#'\item \bold{size}. The pagination size.. Type: sm | md | lg. Default: md.
#'\item \bold{radius}. The pagination border radius.. Type: none | sm | md | lg | full. Default: xl.
#'\item \bold{total}. The total number of pages.. Type: number. Default: 1.
#'\item \bold{dotsJump}. The number of pages that are added or subtracted on the '...' button.. Type: number. Default: 5.
#'\item \bold{initialPage}. The initial page. (uncontrolled). Type: number. Default: 1.
#'\item \bold{page}. The current page. (controlled). Type: number. Default: NA.
#'\item \bold{siblings}. The number of pages to show before and after the current page.. Type: number. Default: 1.
#'\item \bold{boundaries}. The number of pages to show at the beginning and end of the pagination.. Type: number. Default: 1.
#'\item \bold{loop}. Whether the pagination should be looped.. Type: boolean. Default: false.
#'\item \bold{isCompact}. Whether the pagination should have a compact style.. Type: boolean. Default: false.
#'\item \bold{isDisabled}. Whether the pagination is disabled.. Type: boolean. Default: false.
#'\item \bold{showShadow}. Whether the pagination cursor should have a shadow.. Type: boolean. Default: false.
#'\item \bold{showControls}. Whether the pagination should have controls.. Type: boolean. Default: false.
#'\item \bold{disableCursorAnimation}. Whether the pagination cursor should be hidden.. Type: boolean. Default: false.
#'\item \bold{renderItem}. The pagination item render function.. Type: PaginationItemProps. Default: NA.
#'\item \bold{getItemAriaLabel}. A function that allows you to customize the pagination items aria-label.. Type: (page: string) => string. Default: NA.
#'\item \bold{disableAnimation}. Whether the pagination cursor should be animated.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the pagination slots.. Type: Record<"base"｜ "wrapper" ｜ "prev"｜ "next" ｜ "item" ｜ "cursor" ｜ "forwardIcon" ｜ "ellipsis" ｜ "chevronNext", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onChange}. Handler that is called when the pagination acitve page changes.. Type: (page: number) => void. Default: NA.
#' }
#' @md
#' @name pagination
#' @example inst/examples/pagination/app.R
#' @seealso See \url{https://nextui.org/docs/components/pagination}.
NULL

#' popover
#'
#' @description
#' Popover is a non-modal dialog that floats around its disclosure. It's commonly used for displaying additional rich content on top of something.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children*}. The content of the popover. It's usually the PopoverTrigger and PopoverContent.. Type: ReactNode[]. Default: NA.
#'\item \bold{size}. The popover content font size.. Type: sm | md | lg. Default: md.
#'\item \bold{color}. The popover color theme.. Type: default | primary | secondary | success | warning | danger. Default: default.
#'\item \bold{radius}. The popover border radius.. Type: none | sm | md | lg | full. Default: lg.
#'\item \bold{shadow}. The popover shadow.. Type: none | sm | md | lg. Default: lg.
#'\item \bold{backdrop}. The popover backdrop type.. Type: transparent | opaque | blur. Default: transparent.
#'\item \bold{placement}. The placement of the popover relative to its trigger reference.. Type: PopoverPlacement. Default: bottom.
#'\item \bold{state}. The controlled state of the popover. See Overlay States. Type: OverlayTriggerState. Default: NA.
#'\item \bold{isOpen}. Whether the popover is open by default (controlled).. Type: boolean. Default: NA.
#'\item \bold{defaultOpen}. Whether the popover is open by default (uncontrolled).. Type: boolean. Default: NA.
#'\item \bold{offset(px)}. The distance or margin between the reference and popper. It is used internally to create an offset modifier.. Type: number. Default: 7.
#'\item \bold{containerPadding(px)}. The placement padding that should be applied between the element and its surrounding container.. Type: number. Default: 12.
#'\item \bold{crossOffset(px)}. The additional offset applied along the cross axis between the element and its anchor element.. Type: number. Default: 0.
#'\item \bold{triggerType}. Type of popover that is opened by the trigger.. Type: dialog | menu | listbox | tree | grid;. Default: dialog.
#'\item \bold{showArrow}. Whether the popover should have an arrow.. Type: boolean. Default: false.
#'\item \bold{shouldFlip}. Whether the popover should change its placement and flip when it's about to overflow its boundary area.. Type: boolean. Default: true.
#'\item \bold{triggerScaleOnOpen}. Whether the trigger should scale down when the popover is open.. Type: boolean. Default: true.
#'\item \bold{shouldBlockScroll}. Whether to block scrolling outside the popover.. Type: boolean. Default: false.
#'\item \bold{isKeyboardDismissDisabled}. Whether pressing the escape key to close the popover should be disabled.. Type: boolean. Default: false.
#'\item \bold{shouldCloseOnBlur}. Whether the popover should close when focus is lost or moves outside it.. Type: boolean. Default: false.
#'\item \bold{motionProps}. The props to modify the framer motion animation. Use the variants API to create your own animation.. Type: MotionProps. Default: .
#'\item \bold{portalContainer}. The container element in which the overlay portal will be placed.. Type: HTMLElement. Default: document.body.
#'\item \bold{triggerRef}. The ref for the element which the popover positions itself with respect to.. Type: RefObject<HTMLElement>. Default: NA.
#'\item \bold{scrollRef}. A ref for the scrollable region within the popover.. Type: RefObject<HTMLElement>. Default: overlayRef.
#'\item \bold{disableAnimation}. Whether the popover is animated.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the popover slots.. Type: Record<"base"｜ "trigger"｜ "backdrop"｜ "content", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onOpenChange}. Handler that is called when the popover's open state changes.. Type: (isOpen: boolean) => void. Default: NA.
#'\item \bold{shouldCloseOnInteractOutside}. When user interacts with the argument element outside of the popover ref, return true if onClose should be called. This gives you a chance to filter out interaction with elements that should not dismiss the popover. By default, onClose will always be called on interaction outside the overlay ref.. Type: (e: HTMLElement) => void. Default: NA.
#'\item \bold{onClose}. Handler that is called when the popover should close.. Type: () => void. Default: NA.
#' }
#' \itemize{
#'\item \bold{children*}. The popover trigger component, ensure the children passed is focusable. Users can tab to it using their keyboard, and it can take a ref. It is critical for accessiblity.. Type: ReactNode. Default: NA.
#' }
#' \itemize{
#'\item \bold{children}. The content that is displayed when the trigger is pressed.. Type: ReactNode. Default: NA.
#' }
#' @md
#' @name popover
#' @example inst/examples/popover/app.R
#' @seealso See \url{https://nextui.org/docs/components/popover}.
NULL

#' progress
#'
#' @description
#' The Progress component allows you to view the progress of any activity.
#'
#' @details
#'
#' \itemize{
#'\item \bold{label}. The content to display as the label.. Type: ReactNode. Default: NA.
#'\item \bold{size}. The size of the indicator.. Type: sm | md | lg. Default: md.
#'\item \bold{color}. The color of the indicator.. Type: default | primary | secondary | success | warning | danger. Default: primary.
#'\item \bold{radius}. The progress border radius.. Type: none | sm | md | lg | full. Default: full.
#'\item \bold{value}. The current value (controlled).. Type: number. Default: NA.
#'\item \bold{valueLabel}. The content to display as the value's label (e.g. 1 of 4).. Type: ReactNode. Default: NA.
#'\item \bold{minValue}. The smallest value allowed for the input.. Type: number. Default: 0.
#'\item \bold{maxValue}. The largest value allowed for the input.. Type: number. Default: 100.
#'\item \bold{formatOptions}. The options to format the value.. Type: Intl.NumberFormat. Default: {style: 'percent'}.
#'\item \bold{isIndeterminate}. Whether the progress is indeterminate.. Type: boolean. Default: false.
#'\item \bold{isStriped}. Whether the progress is striped.. Type: boolean. Default: false.
#'\item \bold{showValueLabel}. Whether to show the value label.. Type: boolean. Default: true.
#'\item \bold{isDisabled}. Whether the progress is disabled.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether to disable the animation.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the progress slots.. Type: Record<"base"｜"labelWrapper"｜"label"｜"track"｜"value"｜"track"｜"indicator", string>. Default: NA.
#' }
#' @md
#' @name progress
#' @example inst/examples/progress/app.R
#' @seealso See \url{https://nextui.org/docs/components/progress}.
NULL

#' select
#'
#' @description
#' A select displays a collapsible list of options and allows a user to select one or more of them.
#'
#' @details
#'
#' 1. Select Props
#' \itemize{
#'\item \bold{children*}. The children to render. Usually a list of SelectItem and SelectSection elements.. Type: ReactNode[]. Default: NA.
#'\item \bold{items}. Item objects in the select. (dynamic). Type: Iterable<T>. Default: NA.
#'\item \bold{selectionMode}. The type of selection that is allowed in the collection.. Type: single | multiple. Default: NA.
#'\item \bold{selectedKeys}. The currently selected keys in the collection (controlled).. Type: all | React.Key[]. Default: NA.
#'\item \bold{disabledKeys}. The item keys that are disabled. These items cannot be selected, focused, or otherwise interacted with.. Type: all | React.Key[]. Default: NA.
#'\item \bold{defaultSelectedKeys}. The initial selected keys in the collection (uncontrolled).. Type: all | React.Key[]. Default: NA.
#'\item \bold{variant}. The variant of the select.. Type: flat | bordered | faded | underlined. Default: flat.
#'\item \bold{color}. The color of the select.. Type: default | primary | secondary | success | warning | danger. Default: default.
#'\item \bold{size}. The size of the select.. Type: sm | md | lg. Default: md.
#'\item \bold{radius}. The radius of the select.. Type: none | sm | md | lg | full. Default: NA.
#'\item \bold{placeholder}. The placeholder of the select.. Type: string. Default: Select an option.
#'\item \bold{labelPlacement}. The position of the label.. Type: inside | outside | outside-left. Default: inside.
#'\item \bold{label}. The content to display as the label.. Type: ReactNode. Default: NA.
#'\item \bold{description}. A description for the select. Provides a hint such as specific requirements for what to choose.. Type: ReactNode. Default: NA.
#'\item \bold{errorMessage}. An error message for the select.. Type: ReactNode. Default: NA.
#'\item \bold{startContent}. Element to be rendered in the left side of the select.. Type: ReactNode. Default: NA.
#'\item \bold{endContent}. Element to be rendered in the right side of the select.. Type: ReactNode. Default: NA.
#'\item \bold{selectorIcon}. Element to be rendered as the selector icon.. Type: ReactNode. Default: NA.
#'\item \bold{scrollRef}. A ref to the scrollable element.. Type: React.RefObject<HTMLElement>. Default: NA.
#'\item \bold{spinnerRef}. A ref to the spinner element.. Type: React.RefObject<HTMLElement>. Default: NA.
#'\item \bold{fullWidth}. Whether the select should take up the width of its parent.. Type: boolean. Default: true.
#'\item \bold{isOpen}. Whether the select is open by default (controlled).. Type: boolean. Default: NA.
#'\item \bold{defaultOpen}. Whether the select is open by default (uncontrolled).. Type: boolean. Default: NA.
#'\item \bold{isRequired}. Whether user select is required on the select before form submission.. Type: boolean. Default: false.
#'\item \bold{isDisabled}. Whether the select is disabled.. Type: boolean. Default: false.
#'\item \bold{isMultiline}. Whether the select should allow multiple lines of text.. Type: boolean. Default: false.
#'\item \bold{isInvalid}. Whether the select is invalid.. Type: boolean. Default: false.
#'\item \bold{validationState}. Whether the select should display its "valid" or "invalid" visual styling. (Deprecated) use isInvalid instead.. Type: valid | invalid. Default: NA.
#'\item \bold{showScrollIndicators}. Whether the select should show scroll indicators when the listbox is scrollable.. Type: boolean. Default: true.
#'\item \bold{autoFocus}. Whether the select should be focused on the first mount.. Type: boolean. Default: false.
#'\item \bold{disallowEmptySelection}. Whether the collection allows empty selection.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether the select should be animated.. Type: boolean. Default: true.
#'\item \bold{disableSelectorIconRotation}. Whether the select should disable the rotation of the selector icon.. Type: boolean. Default: false.
#'\item \bold{popoverProps}. Props to be passed to the popover component.. Type: PopoverProps. Default: NA.
#'\item \bold{listboxProps}. Props to be passed to the listbox component.. Type: ListboxProps. Default: NA.
#'\item \bold{scrollShadowProps}. Props to be passed to the scroll shadow component.. Type: ScrollShadowProps. Default: NA.
#'\item \bold{classNames}. Allows to set custom class names for the Select slots.. Type: Record<"base"｜ "label"｜ "trigger"｜ "mainWrapper" ｜ "innerWrapper"｜ "selectorIcon" ｜ "value" ｜ "listboxWrapper"｜ "listbox" ｜ "popoverContent" ｜ "helperWrapper" ｜ "description" ｜ "errorMessage", string>. Default: NA.
#' }
#' 2. Select Events
#' \itemize{
#'\item \bold{onClose}. Callback fired when the select popover is closed.. Type: () => void. Default: NA.
#'\item \bold{onOpenChange}. Callback fired when the select popover is opened or closed.. Type: (isOpen: boolean) => void. Default: NA.
#'\item \bold{onSelectionChange}. Callback fired when the selected keys change.. Type: (keys: React.Key[]) => void. Default: NA.
#'\item \bold{onChange}. Native select change event, fired when the selected value changes.. Type: React.ChangeEvent<HTMLSelectElement>. Default: NA.
#'\item \bold{renderValue}. Function to render the value of the select. It renders the selected item by default.. Type: RenderValueFunction. Default: NA.
#' }
#' @md
#' @name select
#' @example inst/examples/select/app.R
#' @seealso See \url{https://nextui.org/docs/components/select}.
NULL

#' skeleton
#'
#' @description
#' Skeleton is a placeholder to show a loading state and the expected shape of a component.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. The content of the skeleton.. Type: ReactNode. Default: NA.
#'\item \bold{isLoaded}. Whether the skeleton is loaded.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether to disable the animations.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the skeleton slots.. Type: Record<"base"｜"content", string>. Default: NA.
#' }
#' @md
#' @name skeleton
#' @example inst/examples/skeleton/app.R
#' @seealso See \url{https://nextui.org/docs/components/skeleton}.
NULL

#' slider
#'
#' @description
#' A slider allows a user to select one or more values within a range.
#'
#' @details
#'
#' \itemize{
#'\item \bold{label}. The content to display as the label.. Type: ReactNode. Default: NA.
#'\item \bold{name}. The name of the input element, used when submitting an HTML form. See MDN.. Type: string. Default: NA.
#'\item \bold{size}. The size of the Slider filler and thumb.. Type: sm | md | lg. Default: md.
#'\item \bold{color}. The color of the filler and thumb.. Type: foreground | primary | secondary | success | warning | danger. Default: primary.
#'\item \bold{radius}. The Slider's thumbs border radius.. Type: none | sm | md | lg | full. Default: full.
#'\item \bold{step}. The Slider's step value.. Type: number. Default: 1.
#'\item \bold{value}. The current value (controlled).. Type: number. Default: NA.
#'\item \bold{defaultValue}. The default value (uncontrolled).. Type: number. Default: NA.
#'\item \bold{minValue}. The slider's minimum value.. Type: number. Default: 0.
#'\item \bold{maxValue}. The slider's maximum value.. Type: number. Default: 100.
#'\item \bold{orientation}. The orientation of the Slider.. Type: horizontal | vertical. Default: horizontal.
#'\item \bold{fillOffset}. The offset from which to start the fill.. Type: number. Default: NA.
#'\item \bold{showSteps}. Whether to show the steps indicators.. Type: boolean. Default: false.
#'\item \bold{showTooltip}. Whether to show a tooltip with the current thumb value when the user hovers or drags the thumb.. Type: boolean. Default: false.
#'\item \bold{marks}. The marks to display on the Slider's steps.. Type: SliderStepMarks. Default: NA.
#'\item \bold{startContent}. The content to display at the beginning of the Slider.. Type: ReactNode. Default: NA.
#'\item \bold{endContent}. The content to display at the end of the Slider.. Type: ReactNode. Default: NA.
#'\item \bold{formatOptions}. The options to format the value.. Type: Intl.NumberFormat. Default: NA.
#'\item \bold{tooltipValueFormatOptions}. The options to format the tooltip value. By default, it uses the same options as formatOptions.. Type: Intl.NumberFormat. Default: NA.
#'\item \bold{tooltipProps}. The props to pass to the thumbs's tooltip.. Type: TooltipProps. Default: NA.
#'\item \bold{showOutline}. Whether to show a small outline around the thumbs.. Type: boolean. Default: false.
#'\item \bold{hideValue}. Whether to hide the Slider value.. Type: boolean. Default: false.
#'\item \bold{hideThumb}. Whether to hide all the Slider thumbs.. Type: boolean. Default: false.
#'\item \bold{disableThumbScale}. Whether to disable the thumb scale animation.. Type: boolean. Default: false.
#'\item \bold{isDisabled}. Whether the whole Slider is disabled.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether to disable the Slider animations.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the Slider slots.. Type: Record<"base"｜"labelWrapper"｜"label"｜ "value" ｜ "step" ｜ "mark" ｜ "trackWrapper" ｜ "track"｜ "output" ｜ "filler" ｜ "thumb" ｜ "startContent" ｜ "endContent", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{getValue}. A function to format the value. Overrides default formatted number.. Type: (value: SliderValue) => string. Default: NA.
#'\item \bold{renderLabel}. A function to render the label.. Type: (props: DOMAttributes<HTMLLabelElement>) => ReactNode. Default: NA.
#'\item \bold{renderValue}. A function to render the value.. Type: (props: DOMAttributes<HTMLOutputElement>) => ReactNode. Default: NA.
#'\item \bold{renderThumb}. A function to render the thumbs. The index prop will tell you which thumb is being rendered.. Type: (props: DOMAttributes<HTMLDivElement> & {index?: number}) => ReactNode. Default: NA.
#' }
#' \itemize{
#'\item \bold{onChange}. Callback fired when the value changes.. Type: (value: SliderValue) => void. Default: NA.
#'\item \bold{onChangeEnd}. Callback fired when the value changes and the user stops dragging the thumb.. Type: (value: SliderValue) => void. Default: NA.
#' }
#' @md
#' @name slider
#' @example inst/examples/slider/app.R
#' @seealso See \url{https://nextui.org/docs/components/slider}.
NULL

#' snippet
#'
#' @description
#' Snippet is a component that can be used to display inline or multiline code snippets.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. The content of the snippet.. Type: ReactNode | ReactNode[]. Default: NA.
#'\item \bold{size}. The size of the snippet.. Type: sm | md | lg. Default: md.
#'\item \bold{radius}. The radius of the snippet.. Type: none | sm | md | lg. Default: lg.
#'\item \bold{symbol}. The symbol to show before the snippet.. Type: string | ReactNode. Default: $.
#'\item \bold{timeout}. he time in milliseconds to wait before resetting the clipboard.. Type: number. Default: 2000.
#'\item \bold{codeString}. The code string to copy. if codeString is passed, it will be copied instead of the children.. Type: string. Default: NA.
#'\item \bold{tooltipProps}. The props of the tooltip.. Type: TooltipProps. Default: NA.
#'\item \bold{copyIcon}. The copy icon.. Type: ReactNode. Default: NA.
#'\item \bold{checkIcon}. The check icon.. Type: ReactNode. Default: NA.
#'\item \bold{disableTooltip}. Whether to disable the tooltip.. Type: boolean. Default: false.
#'\item \bold{disableCopy}. Whether to disable the copy button.. Type: boolean. Default: false.
#'\item \bold{hideCopyButton}. Whether to hide the copy button.. Type: boolean. Default: false.
#'\item \bold{hideSymbol}. Whether to hide the symbol.. Type: boolean. Default: false.
#'\item \bold{copyButtonProps}. The props of the copy button.. Type: ButtonProps. Default: NA.
#'\item \bold{disableAnimation}. Whether to disable the animations.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the snippet slots.. Type: Record<"base"｜"content"｜"pre"｜"symbol"｜"copyButton"｜"checkIcon", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onCopy}. Handler that is called when the code is copied.. Type: (value: string ｜ string[]) => void;. Default: NA.
#' }
#' @md
#' @name snippet
#' @example inst/examples/snippet/app.R
#' @seealso See \url{https://nextui.org/docs/components/snippet}.
NULL

#' switch
#'
#' @description
#' The Switch component is used as an alternative between checked and not checked states.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. The label of the switch.. Type: ReactNode. Default: NA.
#'\item \bold{value}. The value of the input element, used when submitting an HTML form.. Type: string. Default: NA.
#'\item \bold{name}. The name of the input element, used when submitting an HTML form.. Type: string. Default: NA.
#'\item \bold{size}. The size of the switch.. Type: sm | md | lg. Default: md.
#'\item \bold{color}. The color of the switch.. Type: default | primary | secondary | success | warning | danger. Default: primary.
#'\item \bold{thumbIcon}. The icon to be displayed when the switch is checked.. Type: ThumbIconProps. Default: NA.
#'\item \bold{startContent}. The icon to be displayed at the start of the switch.. Type: ReactNode. Default: NA.
#'\item \bold{endContent}. The icon to be displayed at the end of the switch.. Type: ReactNode. Default: NA.
#'\item \bold{isSelected}. Whether the element should be selected (controlled).. Type: boolean. Default: NA.
#'\item \bold{defaultSelected}. Whether the element should be selected (uncontrolled).. Type: boolean. Default: NA.
#'\item \bold{isRequired}. Whether user input is required on the input before form submission.. Type: boolean. Default: false.
#'\item \bold{isReadOnly}. Whether the input can be selected but not changed by the user.. Type: boolean. Default: NA.
#'\item \bold{isDisabled}. Whether the switch is disabled.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether the animation should be disabled.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the switch slots.. Type: Record<"base"｜ "wrapper"｜ "thumb"｜ "label" ｜ "startContent" ｜ "endContent" ｜ "thumbIcon" , string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onChange}. Handler that is called when the element's selection state changes. You can pull out the new checked state by accessing event.target.checked (boolean).. Type: React.ChangeEvent<HTMLInputElement>. Default: NA.
#'\item \bold{onValueChange}. Handler that is called when the element's selection state changes.. Type: (isSelected: boolean) => void. Default: NA.
#' }
#' @md
#' @name switch
#' @example inst/examples/switch/app.R
#' @seealso See \url{https://nextui.org/docs/components/switch}.
NULL

#' tabs
#'
#' @description
#' Tabs organize content into multiple sections and allow users to navigate between them.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children*}. The list of tabs.. Type: ReactNode | ((item: T) => ReactElement). Default: NA.
#'\item \bold{variant}. The tabs appearance style.. Type: solid | bordered | light | underlined. Default: solid.
#'\item \bold{color}. The tabs color theme.. Type: default | primary | secondary | success | warning | danger. Default: default.
#'\item \bold{size}. The tabs size.. Type: sm | md | lg. Default: md.
#'\item \bold{radius}. The tabs border radius.. Type: none | sm | md | lg | full. Default: NA.
#'\item \bold{fullWidth}. Whether the tabs should take the full width of its parent.. Type: boolean. Default: false.
#'\item \bold{items}. The list of tabs (dynamic).. Type: Iterable<T>. Default: NA.
#'\item \bold{disabledKeys}. The item keys that are disabled. These items cannot be selected, focused, or otherwise interacted with.. Type: React.Key[]. Default: NA.
#'\item \bold{selectedKey}. The key for the currently selected item.. Type: React.Key. Default: NA.
#'\item \bold{defaultSelectedKey}. The key for the initially selected item.. Type: React.Key. Default: NA.
#'\item \bold{disallowEmptySelection}. Whether the tabs should allow empty selection.. Type: boolean. Default: false.
#'\item \bold{shouldSelectOnPressUp}. Whether the tabs selection should occur on press up instead of press down.. Type: boolean. Default: true.
#'\item \bold{keyboardActivation}. Whether tabs are activated automatically on focus or manually.. Type: automatic | manual. Default: automatic.
#'\item \bold{motionProps}. The props to modify the cursor framer motion animation. Use the variants API to create your own animation.. Type: MotionProps. Default: NA.
#'\item \bold{disableCursorAnimation}. Whether the cursor should be hidden.. Type: boolean. Default: false.
#'\item \bold{isDisabled}. Whether the tab list should be disabled.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether the tab list should be animated.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the card slots.. Type: Record<"base"｜ "tabList"｜ "tab"｜ "tabContent"｜ "cursor" ｜ "panel", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onSelectionChange}. Handler that is called when the selection changes.. Type: (key: React.Key) => any. Default: NA.
#' }
#' \itemize{
#'\item \bold{children*}. The content of the tab.. Type: ReactNode. Default: NA.
#'\item \bold{title}. The title of the tab.. Type: ReactNode. Default: NA.
#'\item \bold{titleValue}. A string representation of the item's contents. Use this when the title is not readable.. Type: string. Default: NA.
#'\item \bold{href}. A URL to link to. See MDN.. Type: string. Default: NA.
#'\item \bold{target}. The target window for the link. See MDN.. Type: HTMLAttributeAnchorTarget. Default: NA.
#'\item \bold{rel}. The relationship between the linked resource and the current page. See MDN.. Type: string. Default: NA.
#'\item \bold{download}. Causes the browser to download the linked URL. A string may be provided to suggest a file name. See MDN.. Type: boolean | string. Default: NA.
#'\item \bold{ping}. A space-separated list of URLs to ping when the link is followed. See MDN.. Type: string. Default: NA.
#'\item \bold{referrerPolicy}. How much of the referrer to send when following the link. See MDN.. Type: HTMLAttributeReferrerPolicy. Default: NA.
#'\item \bold{shouldSelectOnPressUp}. Whether the tab selection should occur on press up instead of press down.. Type: boolean. Default: NA.
#' }
#' @md
#' @name tabs
#' @example inst/examples/tabs/app.R
#' @seealso See \url{https://nextui.org/docs/components/tabs}.
NULL

#' textarea
#'
#' @description
#' Textarea component is a multi-line Input which allows you to write large texts.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. The content of the textarea.. Type: ReactNode. Default: NA.
#'\item \bold{minRows}. The minimum number of rows to display.. Type: number. Default: 3.
#'\item \bold{maxRows}. Maximum number of rows up to which the textarea can grow.. Type: number. Default: 8.
#'\item \bold{cacheMeasurements}. Reuse previously computed measurements when computing height of textarea.. Type: boolean. Default: false.
#'\item \bold{variant}. The variant of the textarea.. Type: flat | bordered | faded | underlined. Default: flat.
#'\item \bold{color}. The color of the textarea.. Type: default | primary | secondary | success | warning | danger. Default: default.
#'\item \bold{size}. The size of the textarea.. Type: sm|md|lg. Default: md.
#'\item \bold{radius}. The radius of the textarea.. Type: none | sm | md | lg | full. Default: NA.
#'\item \bold{label}. The content to display as the label.. Type: ReactNode. Default: NA.
#'\item \bold{value}. The current value of the textarea (controlled).. Type: string. Default: NA.
#'\item \bold{defaultValue}. The default value of the textarea (uncontrolled).. Type: string. Default: NA.
#'\item \bold{placeholder}. The placeholder of the textarea.. Type: string. Default: NA.
#'\item \bold{startContent}. Element to be rendered in the left side of the input.. Type: ReactNode. Default: NA.
#'\item \bold{endContent}. Element to be rendered in the right side of the input.. Type: ReactNode. Default: NA.
#'\item \bold{description}. A description for the textarea. Provides a hint such as specific requirements for what to choose.. Type: ReactNode. Default: NA.
#'\item \bold{errorMessage}. An error message for the textarea.. Type: ReactNode. Default: NA.
#'\item \bold{labelPlacement}. The position of the label.. Type: inside | outside | outside-left. Default: inside.
#'\item \bold{fullWidth}. Whether the textarea should take up the width of its parent.. Type: boolean. Default: true.
#'\item \bold{isRequired}. Whether user input is required on the textarea before form submission.. Type: boolean. Default: false.
#'\item \bold{isReadOnly}. Whether the textarea can be selected but not changed by the user.. Type: boolean. Default: .
#'\item \bold{isDisabled}. Whether the textarea is disabled.. Type: boolean. Default: false.
#'\item \bold{isInvalid}. Whether the textarea is invalid.. Type: boolean. Default: false.
#'\item \bold{validationState}. Whether the textarea should display its "valid" or "invalid" visual styling. (Deprecated) use isInvalid instead.. Type: valid | invalid. Default: NA.
#'\item \bold{disableAutosize}. Whether the textarea auto vertically resize should be disabled.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether the textarea should be animated.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the checkbox slots.. Type: Record<"base"｜ "label"｜ "inputWrapper"｜ "innerWrapper" ｜ "input" ｜ "description" ｜ "errorMessage", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onChange}. Handler that is called when the element's value changes. You can pull out the new value by accessing event.target.value (string).. Type: React.ChangeEvent <HTMLInputElement>. Default: NA.
#'\item \bold{onValueChange}. Handler that is called when the element's value changes.. Type: (value: string) => void. Default: NA.
#'\item \bold{onClear}. Handler that is called when the clear button is clicked.. Type: () => void. Default: NA.
#'\item \bold{onHeightChange}. Handler that is called when the height of the textarea changes.. Type: (height: number, meta: { rowHeight: number }) => void. Default: NA.
#' }
#' @md
#' @name textarea
#' @example inst/examples/textarea/app.R
#' @seealso See \url{https://nextui.org/docs/components/textarea}.
NULL

#' tooltip
#'
#' @description
#' Tooltips display a brief, informative message that appears when a user interacts with an element.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children*}. The children to render. Usually a trigger element.. Type: ReactNode[]. Default: NA.
#'\item \bold{content}. The content to render inside the tooltip.. Type: ReactNode. Default: NA.
#'\item \bold{size}. The tooltip size. This change the content font size.. Type: sm | md | lg. Default: md.
#'\item \bold{color}. The tooltip color theme.. Type: default | primary | secondary | success | warning | danger. Default: default.
#'\item \bold{radius}. The tooltip border radius.. Type: none | sm | md | lg | full. Default: md.
#'\item \bold{shadow}. The tooltip shadow.. Type: none | sm | md | lg. Default: sm.
#'\item \bold{placement}. The placement of the tooltip relative to its trigger reference.. Type: TooltipPlacement. Default: top.
#'\item \bold{delay}. The delay in milliseconds before the tooltip opens.. Type: number. Default: 500.
#'\item \bold{closeDelay}. The delay in milliseconds before the tooltip closes.. Type: number. Default: 0.
#'\item \bold{isOpen}. Whether the tooltip is open by default (controlled).. Type: boolean. Default: NA.
#'\item \bold{defaultOpen}. Whether the tooltip is open by default (uncontrolled).. Type: boolean. Default: NA.
#'\item \bold{offset(px)}. The distance or margin between the reference and popper. It is used internally to create an offset modifier.. Type: number. Default: 7.
#'\item \bold{containerPadding(px)}. The placement padding that should be applied between the element and its surrounding container.. Type: number. Default: 12.
#'\item \bold{crossOffset(px)}. The additional offset applied along the cross axis between the element and its anchor element.. Type: number. Default: 0.
#'\item \bold{triggerType}. Type of tooltip that is opened by the trigger.. Type: dialog | menu | listbox | tree | grid;. Default: dialog.
#'\item \bold{showArrow}. Whether the tooltip should have an arrow.. Type: boolean. Default: false.
#'\item \bold{shouldFlip}. Whether the tooltip should change its placement and flip when it's about to overflow its boundary area.. Type: boolean. Default: true.
#'\item \bold{triggerScaleOnOpen}. Whether the trigger should scale down when the tooltip is open.. Type: boolean. Default: true.
#'\item \bold{shouldBlockScroll}. Whether to block scrolling outside the tooltip.. Type: boolean. Default: true.
#'\item \bold{isKeyboardDismissDisabled}. Whether pressing the escape key to close the tooltip should be disabled.. Type: boolean. Default: false.
#'\item \bold{isDismissable}. Whether to close the overlay when the user interacts outside it.. Type: boolean. Default: false.
#'\item \bold{shouldCloseOnBlur}. Whether the tooltip should close when focus is lost or moves outside it.. Type: boolean. Default: true.
#'\item \bold{motionProps}. The props to modify the framer motion animation. Use the variants API to create your own animation.. Type: MotionProps. Default: NA.
#'\item \bold{portalContainer}. The container element in which the overlay portal will be placed.. Type: HTMLElement. Default: document.body.
#'\item \bold{updatePositionDeps}. The dependencies to force the tooltip position update.. Type: any[]. Default: [].
#'\item \bold{isDisabled}. Whether the tooltip is disabled.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether the tooltip is animated.. Type: boolean. Default: false.
#'\item \bold{classNames}. Allows to set custom class names for the tooltip slots.. Type: Record<"base"｜"content", string>. Default: NA.
#' }
#' \itemize{
#'\item \bold{onOpenChange}. Handler that is called when the tooltip's open state changes.. Type: (isOpen: boolean) => void. Default: NA.
#'\item \bold{shouldCloseOnInteractOutside}. When user interacts with the argument element outside of the tooltip ref, return true if onClose should be called. This gives you a chance to filter out interaction with elements that should not dismiss the tooltip. By default, onClose will always be called on interaction outside the overlay ref.. Type: (e: HTMLElement) => void. Default: NA.
#'\item \bold{onClose}. Handler that is called when the tooltip should close.. Type: () => void. Default: NA.
#' }
#' @md
#' @name tooltip
#' @example inst/examples/tooltip/app.R
#' @seealso See \url{https://nextui.org/docs/components/tooltip}.
NULL

#' user
#'
#' @description
#' Display user information with avatar and name.
#'
#' @details
#'
#' \itemize{
#'\item \bold{name}. The name of the user.. Type: string. Default: NA.
#'\item \bold{description}. The description component.. Type: ReactNode. Default: NA.
#'\item \bold{isFocusable}. Whether the user is focusable. This is useful when using Dropdown or similar components.. Type: boolean. Default: false.
#'\item \bold{avatarProps}. The avatar component props. The name is passed by default.. Type: AvatarProps. Default: NA.
#'\item \bold{classNames}. Allows to set custom class names for the user slots.. Type: Record<"base"｜ "wrapper"｜ "name"｜ "description", string>. Default: NA.
#' }
#' @md
#' @name user
#' @example inst/examples/user/app.R
#' @seealso See \url{https://nextui.org/docs/components/user}.
NULL

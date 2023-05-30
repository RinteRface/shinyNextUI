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

#' container
#'
#' @description
#' A component for fixing an element's width to the current breakpoint.
#'
#' @details
#'
#' 1. Container Props
#' \itemize{
#'\item \bold{fluid}. width: 100% at all breakpoints. Type: boolean. Default: false.
#'\item \bold{responsive}. Sets a max-width at each responsive breakpoint. Type: boolean. Default: true.
#'\item \bold{xs}. Extra small devices (<650px). Type: boolean. Default: false.
#'\item \bold{sm}. Small devices (≥650px). Type: boolean. Default: false.
#'\item \bold{md}. Medium devices (≥960px). Type: boolean. Default: false.
#'\item \bold{lg}. Large devices (≥1280px). Type: boolean. Default: false.
#'\item \bold{xl}. Extra large devices (≥1400px). Type: boolean. Default: false.
#'\item \bold{gap}. Children's spacing. Type: number. Default: 2.
#'\item \bold{wrap}. CSS "flex-wrap". Type: Wrap. Default: wrap.
#'\item \bold{display}. CSS "display". Type: Display. Default: block.
#'\item \bold{justify}. CSS "justify-content". Type: Justify. Default: NA.
#'\item \bold{direction}. CSS "flex-direction". Type: Direction. Default: NA.
#'\item \bold{alignItems}. CSS "align-items". Type: AlignItems. Default: NA.
#'\item \bold{alignContent}. CSS "align-content". Type: AlignContent. Default: NA.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. Native element props. Type: HTMLAttributes. Default: NA.
#' }
#' 2. Row Props
#' \itemize{
#'\item \bold{fluid}. width: 100%. Type: boolean. Default: true.
#'\item \bold{gap}. Children's spacing. Type: number. Default: 0.
#'\item \bold{wrap}. CSS "flex-wrap" property. Type: Wrap. Default: nowrap.
#'\item \bold{justify}. CSS "justify-content" property. Type: Justify. Default: flex-start.
#'\item \bold{align}. CSS "align-items" property. Type: AlignItems. Default: flex-start.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. Native element props. Type: HTMLAttributes. Default: NA.
#' }
#' 3. Col Props
#' \itemize{
#'\item \bold{span}. Column's width. Type: number. Default: 12.
#'\item \bold{offset}. Move columns to the right. Type: number. Default: 0.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. Native element props. Type: HTMLAttributes. Default: NA.
#' }
#' @md
#' @name container
#' @example inst/examples/container/app.R
#' @seealso See \url{https://nextui.org/docs/layout/container}.
NULL

#' grid
#'
#' @description
#' The layout Grid adapts to screen size and orientation, ensuring consistency across layouts.
#'
#' @details
#'
#' 1. Grid Props
#' \itemize{
#'\item \bold{xs}. extra small devices (<650px). Type: boolean. Default: false.
#'\item \bold{sm}. small devices (≥650px). Type: boolean. Default: false.
#'\item \bold{md}. medium devices (≥960px). Type: boolean. Default: false.
#'\item \bold{lg}. large devices (≥1280px). Type: boolean. Default: false.
#'\item \bold{xl}. extra large devices (≥1400px). Type: boolean. Default: false.
#'\item \bold{direction}. CSS "flex-direction" property. Type: Direction. Default: NA.
#'\item \bold{justify}. CSS "justify-content" property. Type: Justify. Default: NA.
#'\item \bold{alignItems}. CSS "align-items" property. Type: AlignItems. Default: NA.
#'\item \bold{alignContent}. CSS "align-content" property. Type: AlignContent. Default: NA.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. Native element props. Type: HTMLAttributes. Default: NA.
#' }
#' 2. Grid.Container Props
#' \itemize{
#'\item \bold{gap}. spacing of children. Type: number. Default: 0.
#'\item \bold{wrap}. CSS "flex-wrap" property. Type: Wrap. Default: wrap.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. Native element props. Type: HTMLAttributes. Default: NA.
#' }
#' @md
#' @name grid
#' @example inst/examples/grid/app.R
#' @seealso See \url{https://nextui.org/docs/layout/grid}.
NULL

#' spacer
#'
#' @description
#' Provide empty space.
#'
#' @details
#'
#' 1. Spacer Props
#' \itemize{
#'\item \bold{x}. x-axis spacing. Type: number / float. Default: 1.
#'\item \bold{y}. y-axis spacing. Type: number / float. Default: 1.
#'\item \bold{inline}. inline space. Type: boolean. Default: false.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. native props. Type: HTMLAttributes. Default: NA.
#' }
#' @md
#' @name spacer
#' @example inst/examples/spacer/app.R
#' @seealso See \url{https://nextui.org/docs/layout/spacer}.
NULL

#' button
#'
#' @description
#' Buttons allow users to perform actions and choose with a single tap.
#'
#' @details
#'
#' 1. Button Props
#' \itemize{
#'\item \bold{color}. Change button color. Type: NormalColors. Default: default.
#'\item \bold{size}. Change button size. Type: NormalSizes. Default: md.
#'\item \bold{disabled}. Disable button. Type: boolean. Default: false.
#'\item \bold{bordered}. Bordered button. Type: boolean. Default: false.
#'\item \bold{flat}. Flat button. Type: boolean. Default: false.
#'\item \bold{rounded}. Rounded button. Type: boolean. Default: false.
#'\item \bold{ghost}. The opposite color. Type: boolean. Default: false.
#'\item \bold{shadow}. Display shadow effect. Type: boolean. Default: false.
#'\item \bold{ripple}. Display drip animation. Type: boolean. Default: true.
#'\item \bold{auto}. Autoscale button width. Type: boolean. Default: false.
#'\item \bold{animated}. Display drip and scale animation. Type: boolean. Default: true.
#'\item \bold{borderWeight}. Border weight for bordered button. Type: NormalWeights. Default: normal.
#'\item \bold{autoFocus}. Automatically focus button. Type: boolean. Default: false.
#'\item \bold{onClick}. Button click handler. Type: MouseEventHandler. Default: NA.
#'\item \bold{icon}. Show icon in button. Type: ReactNode. Default: NA.
#'\item \bold{iconRight}. Show icon on the other side of the button. Type: ReactNode. Default: NA.
#'\item \bold{type}. Native type of button element. Type: button reset submit. Default: button.
#'\item \bold{ref}. forwardRef. Type: Ref<HTMLButtonElement | null>. Default: NA.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{iconLeftCss}. Override icon CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{iconRightCss}. Override iconRight CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: button.
#'\item \bold{...}. Button native props. Type: 'id', 'className', .... Default: NA.
#' }
#' 2. Button Events
#' \itemize{
#'\item \bold{onClick deprecated}. Button click handler. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPress}. Handler that is called when the press is released over the button.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressUp}. Handler that is called when a press is released over the button, regardless of whether it started on the button or not.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressStart}. Handler that is called when a press interaction starts.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressEnd}. Handler that is called when a press interaction ends, either over the button or when the pointer leaves the button.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressChange}. Handler that is called when the press state changes.. Type: (isPressed: boolean) => void. Default: NA.
#' }
#' 3. Button Accessibility Props
#' \itemize{
#'\item \bold{id}. The element's unique identifier. See MDN. Type: string. Default: NA.
#'\item \bold{excludeFromTabOrder}. Whether to exclude the element from the sequential tab order. If true, the element will not be focusable via the keyboard by tabbing. This should be avoided except in rare scenarios where an alternative means of accessing the element or its functionality via the keyboard is available.. Type: boolean. Default: NA.
#'\item \bold{aria-expanded}. Indicates whether the element, or another grouping element it controls, is currently expanded or collapsed.. Type: boolean. Default: NA.
#'\item \bold{aria-haspopup}. Indicates the availability and type of interactive popup element, such as menu or dialog, that can be triggered by an element.. Type: boolean menu listbox tree grid dialog. Default: NA.
#'\item \bold{aria-controls}. Identifies the element (or elements) whose contents or presence are controlled by the current element.. Type: string. Default: NA.
#'\item \bold{aria-pressed}. Indicates the current "pressed" state of toggle buttons.. Type: boolean. Default: NA.
#'\item \bold{aria-label}. Defines a string value that labels the current element. Type: string. Default: NA.
#'\item \bold{aria-labelledby}. Identifies the element (or elements) that labels the current element. Type: string. Default: NA.
#'\item \bold{aria-describedby}. Identifies the element (or elements) that describes the object.. Type: string. Default: NA.
#'\item \bold{aria-details}. Identifies the element (or elements) that provide a detailed, extended description for the object.. Type: string. Default: NA.
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
#' 1. Card Props
#' \itemize{
#'\item \bold{children*}. The content of the card. It's usually the header, body, and footer.. Type: ReactNode ReactNode[]. Default: NA.
#'\item \bold{variant}. The card variant style.. Type: CardVariants. Default: shadow.
#'\item \bold{borderWeight}. The border weight of the bordered card.. Type: NormalWeights. Default: light.
#'\item \bold{isHoverable}. Whether the card can be hovered by the user.. Type: boolean. Default: false.
#'\item \bold{isPressable}. Whether the card should allow users to interact with the card.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether the card is animated.. Type: boolean. Default: false.
#'\item \bold{disableRipple}. Whether the card should show a ripple animation on press. Type: boolean. Default: false.
#'\item \bold{allowTextSelectionOnPress}. Whether the card should allow text selection on press. (only for pressable cards). Type: boolean. Default: true.
#'\item \bold{css}. Override Default CSS style.. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs.. Type: keyof JSX.IntrinsicElements. Default: div.
#' }
#' 2. Card Events
#' \itemize{
#'\item \bold{onPress}. Handler that is called when the press is released over the target.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressStart}. Handler that is called when a press interaction starts.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressEnd}. Handler that is called when a press interaction ends, either over the target or when the pointer leaves the target.. Type: (e: PressEvent) => void. Default: NA.
#'\item \bold{onPressChange}. Handler that is called when the press state changes.. Type: (isPressed: boolean) => void. Default: NA.
#'\item \bold{onPressUp}. Handler that is called when a press is released over the target, regardless of whether it started on the target or not.. Type: (e: PressEvent) => void. Default: NA.
#' }
#' 3. Card.Header Props
#' \itemize{
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#' }
#' 4. Card.Body Props
#' \itemize{
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#' }
#' 5. Card.Footer Props
#' \itemize{
#'\item \bold{isBlurred}. Whether the card footer background should be blurry.. Type: boolean. Default: false.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#' }
#' 6. Card.Image Props
#' \itemize{
#'\item \bold{ImageProps}. NA. Type: ImageProps. Default: NA.
#' }
#' @md
#' @name card
#' @example inst/examples/card/app.R
#' @seealso See \url{https://nextui.org/docs/components/card}.
NULL

#' input
#'
#' @description
#' Inputs fields are used to get the user input in a text field.
#'
#' @details
#'
#' 1. Input Props
#' \itemize{
#'\item \bold{value}. number. Type: string. Default: NA.
#'\item \bold{initialValue}. Input default value. Type: string. Default: NA.
#'\item \bold{placeholder}. The short hint displayed in the input. Type: string. Default: NA.
#'\item \bold{size}. Change input size. Type: NormalSizes. Default: medium.
#'\item \bold{color}. Change input text, border and label color. Type: SimpleColors. Default: default.
#'\item \bold{status}. Change input status color. Type: SimpleColors. Default: default.
#'\item \bold{helperColor}. Change helper text color. Type: SimpleColors. Default: default.
#'\item \bold{required}. Required input prop. Type: boolean. Default: false.
#'\item \bold{readOnly}. It prevents the user from changing the value of the field. Type: boolean. Default: false.
#'\item \bold{disabled}. Disable input. Type: boolean. Default: false.
#'\item \bold{clearable}. Show clear button. Type: boolean. Default: false.
#'\item \bold{rounded}. Rounded input. Type: boolean. Default: false.
#'\item \bold{bordered}. Bordered input. Type: boolean. Default: false.
#'\item \bold{underlined}. Underlined input. Type: boolean. Default: false.
#'\item \bold{shadow}. Enable or disable the input shadow. Type: boolean. Default: true.
#'\item \bold{animated}. Enable or disable the input animation. Type: boolean. Default: true.
#'\item \bold{autoComplete}. HTML input autocomplete attribute. Type: string. Default: off.
#'\item \bold{borderWeight}. Border weight for bordered input. Type: NormalWeights. Default: normal.
#'\item \bold{fullWidth}. If true, the input will take up the full width of its container.. Type: boolean. Default: false.
#'\item \bold{width}. Input width. Type: string. Default: initial.
#'\item \bold{label}. Text label for input. Type: string. Default: NA.
#'\item \bold{labelPlaceholder}. The placeholder becomes a label. Type: string. Default: NA.
#'\item \bold{labelLeft}. Text label at left of the input. Type: string. Default: NA.
#'\item \bold{labelRight}. Text label at right of the input. Type: string. Default: NA.
#'\item \bold{helperText}. Add a helper text to Input. Type: string. Default: NA.
#'\item \bold{contentLeft}. Left content for input. Type: React.ReactNode. Default: NA.
#'\item \bold{contentRight}. Right content for input. Type: React.ReactNode. Default: NA.
#'\item \bold{contentClickable}. Left/right content are clickable (just applied when the styling prop is true, see the next props). Type: boolean. Default: false.
#'\item \bold{contentLeftStyling}. Allows the Input component to wrap the contentLeft in a container. Type: boolean. Default: true.
#'\item \bold{contentRightStyling}. Allows the Input component to wrap the contentRight in a container. Type: boolean. Default: true.
#'\item \bold{onChange}. Callback fired when the value is changed. Type: (e: React.ChangeEvent<HTMLInputElement>) => void. Default: NA.
#'\item \bold{onFocus}. Callback fired when the input is focused.. Type: (e: React.FocusEvent<HTMLInputElement>) => void. Default: NA.
#'\item \bold{onBlur}. Callback fired when the input is blurred.. Type: (e: React.FocusEvent<HTMLInputElement>) => void. Default: NA.
#'\item \bold{onContentClick}. click icon event. Type: (key: ContentPosition, e: React.MouseEvent) => void. Default: NA.
#'\item \bold{onClearClick}. clear icon event. Type: (e: React.MouseEvent) => void. Default: NA.
#'\item \bold{ref}. forwardRef. Type: Ref<HTMLInputElement | null>. Default: NA.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: input.
#'\item \bold{...}. Input native props. Type: InputHTMLAttributes. Default: NA.
#' }
#' 2. NA
#' \itemize{
#'\item \bold{hideToggle}. Hide toggle icon. Type: boolean. Default: false.
#'\item \bold{visibleIcon}. Custom visible password icon. Type: React.ReactNode. Default: NA.
#'\item \bold{hiddenIcon}. Custom hidden password icon. Type: React.ReactNode. Default: NA.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: input.
#'\item \bold{...}. Input props. Type: Input Props. Default: NA.
#' }
#' @md
#' @name input
#' @example inst/examples/input/app.R
#' @seealso See \url{https://nextui.org/docs/components/input}.
NULL

#' modal
#'
#' @description
#' Displays a dialog with a custom content that requires attention or provides additional information.
#'
#' @details
#'
#' 1. Modal Props
#' \itemize{
#'\item \bold{open}. Determine if the modal is visible or hidden. Type: boolean. Default: false.
#'\item \bold{scroll}. Makes the content a maximum high and gives the possibility to overflow the content add scroll. Type: boolean. Default: false.
#'\item \bold{blur}. Makes all elements blur when the modal opens. Type: boolean. Default: false.
#'\item \bold{animated}. Display the modal with opening and close animation. Type: boolean. Default: true.
#'\item \bold{noPadding}. Eliminates the padding of the base elements of the modal. Type: boolean. Default: false.
#'\item \bold{closeButton}. Determine if the modal close button is visible or hidden. Type: boolean. Default: false.
#'\item \bold{fullScreen}. Makes the modal the size of the window. Type: boolean. Default: false.
#'\item \bold{autoMargin}. Apply or not a margin to the base elements of the modal. Type: boolean. Default: NA.
#'\item \bold{preventClose}. Modal cannot be closed by clicking outside or by pressing the esc key. Type: boolean. Default: false.
#'\item \bold{width}. Determine the width of the modal. Type: string number. Default: 400px.
#'\item \bold{onClose}. Callback fired when the modal is closed. Type: () => void. Default: NA.
#'\item \bold{onOpen}. Callback fired when the modal is open. Type: () => void. Default: NA.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: section.
#'\item \bold{...}. Native props. Type: HTMLAttributes. Default: NA.
#' }
#' 2. Modal.Header Props
#' \itemize{
#'\item \bold{autoMargin}. Apply or not a margin to the base elements of the modal. Type: boolean. Default: true.
#'\item \bold{justify}. CSS "justify-content" property. Type: Justify. Default: center.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. Native props. Type: HTMLAttributes. Default: NA.
#' }
#' 3. Modal.Body Props
#' \itemize{
#'\item \bold{autoMargin}. Apply or not a margin to the base elements of the modal. Type: boolean. Default: true.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. Native props. Type: HTMLAttributes. Default: NA.
#' }
#' 4. Modal.Footer Props
#' \itemize{
#'\item \bold{autoMargin}. Apply or not a margin to the base elements of the modal. Type: boolean. Default: true.
#'\item \bold{justify}. CSS "justify-content" property. Type: Justify. Default: flex-end.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. Native props. Type: HTMLAttributes. Default: NA.
#' }
#' @md
#' @name modal
#' @example inst/examples/modal/app.R
#' @seealso See \url{https://nextui.org/docs/components/modal}.
NULL

#' switch
#'
#' @description
#' The Switch component is used as an alternative for the Checkbox component. You can switch between enabled or disabled states.
#'
#' @details
#'
#' 1. Switch Props
#' \itemize{
#'\item \bold{color}. Change switch color. Type: NormalColors. Default: primary.
#'\item \bold{size}. Switch size. Type: NormalSizes. Default: medium.
#'\item \bold{checked}. Selected or not (in single). Type: boolean. Default: false.
#'\item \bold{initialChecked}. Determine the initial value of the switch. Type: boolean. Default: false.
#'\item \bold{animated}. Display checkbox animations. Type: boolean. Default: true.
#'\item \bold{squared}. Squared switch. Type: boolean. Default: false.
#'\item \bold{shadow}. Display shadow effect. Type: boolean. Default: false.
#'\item \bold{disabled}. Disable switch. Type: boolean. Default: false.
#'\item \bold{bordered}. Bordered switch. Type: boolean. Default: false.
#'\item \bold{icon}. Add an icon for both status on/off. Type: ReactNode. Default: NA.
#'\item \bold{iconOn}. Add an icon for on status. Type: ReactNode. Default: NA.
#'\item \bold{iconOff}. Add an icon for off status. Type: ReactNode. Default: NA.
#'\item \bold{preventDefault}. Prevent default event on when is selected through the Space, Enter keys. Type: boolean. Default: true.
#'\item \bold{name}. Add a name to the input of the switch.. Type: string. Default: NA.
#'\item \bold{onChange}. The callback invoked when the checked state of the switch changes.. Type: (e:SwitchEvent) => void. Default: NA.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. Native props. Type: LabelHTMLAttributes. Default: NA.
#' }
#' @md
#' @name switch
#' @example inst/examples/switch/app.R
#' @seealso See \url{https://nextui.org/docs/components/switch}.
NULL

#' text
#'
#' @description
#' Text component is the used to render text and paragraphs within an interface using well-defined typographic styles. It renders a <p> tag by default.
#'
#' @details
#'
#' 1. Text Props
#' \itemize{
#'\item \bold{h1 - h6}. Component name. Type: boolean. Default: false.
#'\item \bold{small}. Component name. Type: boolean. Default: false.
#'\item \bold{span}. Component name. Type: boolean. Default: false.
#'\item \bold{del}. Component name. Type: boolean. Default: false.
#'\item \bold{i}. Component name. Type: boolean. Default: false.
#'\item \bold{em}. Component name. Type: boolean. Default: false.
#'\item \bold{b}. Component name. Type: boolean. Default: false.
#'\item \bold{blockquote}. Component name. Type: boolean. Default: false.
#'\item \bold{transform}. text-transform prop. Type: TextTransforms. Default: none.
#'\item \bold{size}. Text size. Type: string number FontSize. Default: inherit.
#'\item \bold{color}. Text color. Type: SimpleColors string. Default: default.
#'\item \bold{weight}. Text weight. Type: TextWeights. Default: noset.
#'\item \bold{hideIn new}. Whether the Text should be hidden from selected breakpoint.. Type: xs sm md lg xl. Default: NA.
#'\item \bold{showIn new}. Whether the Text should be visible only from selected breakpoint.. Type: xs sm md lg xl. Default: NA.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: p.
#' }
#' @md
#' @name text
#' @example inst/examples/text/app.R
#' @seealso See \url{https://nextui.org/docs/components/text}.
NULL

#' avatar
#'
#' @description
#' The Avatar component is used to represent a user, and displays the profile picture, initials or fallback icon.
#'
#' @details
#'
#' 1. Avatar Props
#' \itemize{
#'\item \bold{color}. Change avatar color. Type: NormalColors string. Default: default.
#'\item \bold{textColor}. Change avatar text color. Type: SimpleColors string. Default: default.
#'\item \bold{src}. Image source (local or remote). Type: string. Default: NA.
#'\item \bold{text}. Display text when image is missing. Type: string. Default: NA.
#'\item \bold{alt}. Display alt text when image is missing. Type: string. Default: NA.
#'\item \bold{size}. Avatar size. Type: NormalSizes number. Default: medium.
#'\item \bold{bordered}. Bordered avatar. Type: boolean. Default: false.
#'\item \bold{borderWeight}. Border weight for bordered avatar. Type: NormalWeights. Default: normal.
#'\item \bold{pointer}. Display pointer cursor on hover. Type: boolean. Default: false.
#'\item \bold{stacked}. Stacked display group. Type: boolean. Default: false.
#'\item \bold{zoomed}. Zoomed avatar. Type: boolean. Default: false.
#'\item \bold{squared}. Squared avatar. Type: boolean. Default: false.
#'\item \bold{icon}. Show icon in avatar. Type: ReactNode. Default: NA.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: span.
#'\item \bold{...}. Native props. Type: ImgHTMLAttributes. Default: NA.
#' }
#' 2. Avatar Group Props
#' \itemize{
#'\item \bold{count}. Total count of avatars. Type: number. Default: NA.
#'\item \bold{animated}. Display translations animation on hover. Type: boolean. Default: true.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. Native props. Type: HTMLAttributes. Default: NA.
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
#' 1. Badge Props
#' \itemize{
#'\item \bold{children}. The wrapped component.. Type: ReactNode. Default: NA.
#'\item \bold{content}. The content of the badge. The badge will be rendered relative to its children.. Type: string number ReactNode. Default: NA.
#'\item \bold{color}. The badge color.. Type: SimpleColors. Default: default.
#'\item \bold{size}. The badge size.. Type: NormalSizes. Default: md.
#'\item \bold{variant}. The badge variation.. Type: BadgeVariant. Default: default.
#'\item \bold{placement}. The placement of the badge content.. Type: BadgePlacements. Default: top-right.
#'\item \bold{borderWeight}. The border weight for bordered badge variation.. Type: NormalWeights. Default: normal.
#'\item \bold{shape}. The wrapped shape the badge should overlap.. Type: circle rectangle. Default: rectangle.
#'\item \bold{horizontalOffset}. The horizontal offset of the badge content.. Type: string number. Default: NA.
#'\item \bold{verticalOffset}. The vertical offset of the badge content.. Type: string number. Default: NA.
#'\item \bold{isInvisible}. Whether the badge is invisible.. Type: boolean. Default: false.
#'\item \bold{enableShadow}. Whether the badge shadow should be enabled.. Type: boolean. Default: false.
#'\item \bold{isSquared}. Whether the badge corners should be squared.. Type: boolean. Default: false.
#'\item \bold{disableOutline}. Whether the badge outline should be disabled.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether the badge content animation should be disabled.. Type: boolean. Default: false.
#'\item \bold{css}. Override Default CSS style.. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs.. Type: keyof JSX.IntrinsicElements. Default: span.
#' }
#' @md
#' @name badge
#' @example inst/examples/badge/app.R
#' @seealso See \url{https://nextui.org/docs/components/badge}.
NULL

#' popover
#'
#' @description
#' Popover is a non-modal dialog that floats around its disclosure. It's commonly used for displaying additional rich content on top of something. Popover implementation is based on @react-aria/overlays.
#'
#' @details
#'
#' 1. Popover Props
#' \itemize{
#'\item \bold{children*}. The content of the popover. It's usually the Popover.Trigger and Popover.Content.. Type: ReactNode[]. Default: NA.
#'\item \bold{placement}. The placement of the popover relative to its trigger reference.. Type: PopoverPlacement. Default: bottom.
#'\item \bold{triggerType}. Type of overlay that is opened by the trigger.. Type: TriggerType. Default: dialog.
#'\item \bold{shouldFlip}. Whether the popover should change its placement and flip when it's about to overflow its boundary area.. Type: boolean. Default: true.
#'\item \bold{offset(px)}. The distance or margin between the reference and popper. It is used internally to create an offset modifier.. Type: number. Default: 12.
#'\item \bold{isOpen}. Whether the overlay is open by default (controlled).. Type: boolean. Default: NA.
#'\item \bold{isBordered}. Whether the overlay should have a border.. Type: boolean. Default: false.
#'\item \bold{borderWeight}. The border weight of the bordered overlay.. Type: NormalWeights. Default: light.
#'\item \bold{defaultOpen}. Whether the overlay is open by default (uncontrolled).. Type: boolean. Default: NA.
#'\item \bold{isDismissable}. Whether to close the overlay when the user interacts outside it.. Type: boolean. Default: true.
#'\item \bold{disableShadow}. Whether to disable the shadow.. Type: boolean. Default: false.
#'\item \bold{isKeyboardDismissDisabled}. Whether pressing the escape key to close the overlay should be disabled.. Type: boolean. Default: false.
#'\item \bold{shouldCloseOnBlur}. Whether the overlay should close when focus is lost or moves outside it.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether the popover is animated.. Type: boolean. Default: false.
#'\item \bold{triggerRef}. The ref for the element which the overlay positions itself with respect to.. Type: RefObject<HTMLElement>. Default: NA.
#'\item \bold{scrollRef}. A ref for the scrollable region within the overlay.. Type: RefObject<HTMLElement>. Default: overlayRef.
#' }
#' 2. Popover Events
#' \itemize{
#'\item \bold{onOpenChange}. Handler that is called when the overlay's open state changes.. Type: (isOpen: boolean) => void. Default: NA.
#'\item \bold{onClose}. Handler that is called when the overlay should close.. Type: () => void. Default: NA.
#'\item \bold{shouldCloseOnInteractOutside}. When user interacts with the argument element outside of the overlay ref, return true if onClose should be called. This gives you a chance to filter out interaction with elements that should not dismiss the overlay. By default, onClose will always be called on interaction outside the overlay ref.. Type: (e: HTMLElement) => void. Default: NA.
#' }
#' 3. Popover.Trigger Props
#' \itemize{
#'\item \bold{children*}. The popover trigger component, ensure the children passed is focusable. Users can tab to it using their keyboard, and it can take a ref. It is critical for accessiblity.. Type: ReactNode. Default: NA.
#' }
#' 4. Popover.Content Props
#' \itemize{
#'\item \bold{children}. The content that is displayed when the trigger is clicked.. Type: ReactNode. Default: NA.
#'\item \bold{css}. Override Default CSS style.. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs.. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. Native element props.. Type: HTMLDivElement. Default: NA.
#' }
#' @md
#' @name popover
#' @example inst/examples/popover/app.R
#' @seealso See \url{https://nextui.org/docs/components/popover}.
NULL

#' tooltip
#'
#' @description
#' Tooltips displays informative text when users hover, focus, or click an element.
#'
#' @details
#'
#' 1. Tooltip Props
#' \itemize{
#'\item \bold{content}. Tooltip content. Type: React.ReactNode string. Default: NA.
#'\item \bold{color}. Change tooltip background color. Type: TooltipTypes string. Default: default.
#'\item \bold{contentColor}. Checkbox tooltip text color. Type: SimpleColors string. Default: default.
#'\item \bold{placement}. Tooltip placement relative to the target. Type: Placement. Default: top.
#'\item \bold{initialVisible}. Determine if the tooltip is visible on initial. Type: boolean. Default: false.
#'\item \bold{animated}. Display tooltip animations. Type: boolean. Default: true.
#'\item \bold{visible}. Force if the tooltip is visible or not. Type: boolean. Default: NA.
#'\item \bold{shadow}. Display shadow effect. Type: boolean. Default: false.
#'\item \bold{rounded}. Rounded tooltip. Type: boolean. Default: false.
#'\item \bold{hideArrow}. Hide tooltip arrow icon. Type: boolean. Default: NA.
#'\item \bold{keepMounted}. Keep tooltip mounted on the DOM. Type: boolean. Default: false.
#'\item \bold{*isDisabled}. Whether the tooltip content should be displayed or not. Type: boolean. Default: false.
#'\item \bold{trigger}. Tooltip trigger mode. Type: TriggerTypes. Default: hover.
#'\item \bold{enterDelay(ms)}. Delay before tooltip is shown. Type: number. Default: 0.
#'\item \bold{leaveDelay(ms)}. Delay before tooltip is hidden (only works in 'hover' mode). Type: number. Default: 0.
#'\item \bold{offset(px)}. Distance between tooltip and target. Type: number. Default: 12.
#'\item \bold{portalClassName}. Tooltip box content className. Type: string. Default: NA.
#'\item \bold{onVisibleChange}. Callback when tooltip visibility has changed. Type: number. Default: NA.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. Native div props. Type: DivHTMLAttributes. Default: NA.
#' }
#' @md
#' @name tooltip
#' @example inst/examples/tooltip/app.R
#' @seealso See \url{https://nextui.org/docs/components/tooltip}.
NULL

#' checkbox
#'
#' @description
#' Checkboxes allow users to select multiple items from a list of individual items, or to mark one individual item as selected. Checkbox implementation is based on @react-aria/checkbox
#'
#' @details
#'
#' 1. Checkbox Props
#' \itemize{
#'\item \bold{children}. The label for the element. Type: ReactNode. Default: NA.
#'\item \bold{value}. The value of the input element, used when submitting an HTML form. See MDN. Type: string. Default: NA.
#'\item \bold{label}. The label for the element. Type: string. Default: NA.
#'\item \bold{name}. The name of the input element, used when submitting an HTML form. See MDN. Type: string. Default: NA.
#'\item \bold{color}. The color of the component. Type: NormalColors. Default: default.
#'\item \bold{labelColor}. The color of the label. Type: SimpleColors. Default: default.
#'\item \bold{size}. The size of the component. Type: NormalSizes. Default: md.
#'\item \bold{isSelected}. Whether the element should be selected (controlled). Type: boolean. Default: false.
#'\item \bold{defaultSelected}. Whether the element should be selected (uncontrolled). Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether the checkbox has animations. Type: boolean. Default: false.
#'\item \bold{isDisabled}. Whether the input is disabled. Type: boolean. Default: false.
#'\item \bold{isIndeterminate}. Indeterminism is presentational only. The indeterminate visual representation remains regardless of user interaction.. Type: boolean. Default: false.
#'\item \bold{isRounded}. Whether the checkbox is rounded. Type: boolean. Default: false.
#'\item \bold{lineThrough}. Line in the middle of the label when the Checkbox is checked. Type: boolean. Default: NA.
#'\item \bold{isReadOnly}. Whether the input can be selected but not changed by the user.. Type: boolean. Default: false.
#'\item \bold{isRequired}. Whether user input is required on the input before form submission.. Type: boolean. Default: false.
#'\item \bold{autoFocus}. Whether the element should receive focus on render. Type: boolean. Default: .
#'\item \bold{containerCss new}. Override Default CSS Container style. Type: Stitches.CSS. Default: NA.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: label.
#' }
#' 2. Checkbox Events
#' \itemize{
#'\item \bold{onChange}. Handler that is called when the element's selection state changes. Type: (checked: boolean) => void. Default: NA.
#'\item \bold{onFocus}. Handler that is called when the element receives focus. Type: (e: FocusEvent) => void. Default: NA.
#'\item \bold{onBlur}. Handler that is called when the element loses focus. Type: (e: FocusEvent) => void. Default: NA.
#'\item \bold{onFocusChange}. Handler that is called when the element's focus status changes. Type: (focused: boolean) => void. Default: NA.
#'\item \bold{onKeyDown}. Handler that is called when a key is pressed. Type: (e: KeyboardEvent) => void. Default: NA.
#'\item \bold{onKeyUp}. Handler that is called when a key is released. Type: (e: KeyboardEvent) => void. Default: NA.
#' }
#' 3. Checkbox Accessibility Props
#' \itemize{
#'\item \bold{id}. The element's unique identifier. See MDN. Type: string. Default: NA.
#'\item \bold{excludeFromTabOrder}. Whether to exclude the element from the sequential tab order. If true, the element will not be focusable via the keyboard by tabbing. This should be avoided except in rare scenarios where an alternative means of accessing the element or its functionality via the keyboard is available.. Type: boolean. Default: NA.
#'\item \bold{aria-controls}. Identifies the element (or elements) whose contents or presence are controlled by the current element.. Type: string. Default: NA.
#'\item \bold{aria-label}. Defines a string value that labels the current element. Type: string. Default: NA.
#'\item \bold{aria-labelledby}. Identifies the element (or elements) that labels the current element. Type: string. Default: NA.
#'\item \bold{aria-describedby}. Identifies the element (or elements) that describes the object.. Type: string. Default: NA.
#'\item \bold{aria-details}. Identifies the element (or elements) that provide a detailed, extended description for the object.. Type: string. Default: NA.
#'\item \bold{aria-errormessage}. Identifies the element that provides an error message for the object.. Type: string. Default: NA.
#' }
#' @md
#' @name checkbox
#' @example inst/examples/checkbox/app.R
#' @seealso See \url{https://nextui.org/docs/components/checkbox}.
NULL

#' radio
#'
#' @description
#' Radios allow users to select a single option from a list of mutually exclusive options. All possible options are exposed up front for users to compare. Radio implementation is based on @react-aria/radio
#'
#' @details
#'
#' 1. Radio.Group Props
#' \itemize{
#'\item \bold{children*}. The content of the radio group. It must be a list of radio items.. Type: ReactNode[]. Default: NA.
#'\item \bold{label}. The content to display as the label.. Type: ReactNode. Default: NA.
#'\item \bold{value}. The current value (controlled).. Type: string. Default: NA.
#'\item \bold{defaultValue}. The default value (uncontrolled).. Type: string. Default: NA.
#'\item \bold{color}. Change radio group color. Type: SimpleColors string. Default: primary.
#'\item \bold{labelColor}. Change radio group label color. Type: SimpleColors string. Default: default.
#'\item \bold{size}. Size of all radios in the group. Type: NormalSizes. Default: md.
#'\item \bold{name}. The name of the RadioGroup, used when submitting an HTML form. See MDN. Type: string. Default: NA.
#'\item \bold{orientation}. The axis the radio group items should align with.. Type: horizontal vertical. Default: vertical.
#'\item \bold{validationState}. Whether the input should display its "valid" or "invalid" visual styling.. Type: valid invalid. Default: NA.
#'\item \bold{isDisabled}. Whether the radio group items are disabled.. Type: boolean. Default: false.
#'\item \bold{isReadOnly}. Whether the input can be selected but not changed by the user.. Type: boolean. Default: false.
#'\item \bold{isRequired}. Whether user input is required on the input before form submission. Often paired with the necessityIndicator prop to add a visual indicator to the input.. Type: boolean. Default: false.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#' }
#' 2. Radio.Group Events
#' \itemize{
#'\item \bold{onChange}. Handler that is called when the value changes.. Type: (value: T) => void. Default: NA.
#' }
#' 3. Radio.Group Accessibility Props
#' \itemize{
#'\item \bold{id}. The element's unique identifier. See MDN. Type: string. Default: NA.
#'\item \bold{aria-label}. Defines a string value that labels the current element. Type: string. Default: NA.
#'\item \bold{aria-labelledby}. Identifies the element (or elements) that labels the current element. Type: string. Default: NA.
#'\item \bold{aria-describedby}. Identifies the element (or elements) that describes the object.. Type: string. Default: NA.
#'\item \bold{aria-details}. Identifies the element (or elements) that provide a detailed, extended description for the object.. Type: string. Default: NA.
#'\item \bold{aria-errormessage}. Identifies the element that provides an error message for the object.. Type: string. Default: NA.
#' }
#' 4. Radio Props
#' \itemize{
#'\item \bold{value*}. The value of the radio button, used when submitting an HTML form. See MDN. Type: string. Default: NA.
#'\item \bold{children}. The label for the Radio. Accepts any renderable node.. Type: ReactNode. Default: NA.
#'\item \bold{color}. The radio color. Type: SimpleColors string. Default: primary.
#'\item \bold{labelColor}. The radio label color. Type: SimpleColors string. Default: default.
#'\item \bold{description}. The radio description text. Type: string ReactNode. Default: NA.
#'\item \bold{size}. The radio size. Type: NormalSizes. Default: md.
#'\item \bold{isSquared}. Whether the radio button has squared corners. Type: boolean. Default: false.
#'\item \bold{isDisabled}. Whether the radio button is disabled or not. Shows that a selection exists, but is not available in that circumstance.. Type: boolean. Default: false.
#'\item \bold{disableAnimation}. Whether the checkbox has animations. Type: boolean. Default: false.
#'\item \bold{autoFocus}. Whether the element should receive focus on render.. Type: boolean. Default: false.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: label.
#' }
#' 5. Radio Events
#' \itemize{
#'\item \bold{onFocus}. Handler that is called when the element receives focus.. Type: (e: FocusEvent) => any. Default: NA.
#'\item \bold{onBlur}. Handler that is called when the element loses focus.. Type: (e: FocusEvent) => any. Default: NA.
#'\item \bold{onFocusChange}. Handler that is called when the element's focus status changes.. Type: (isFocused: boolean) => void. Default: NA.
#'\item \bold{onKeyDown}. Handler that is called when a key is pressed.. Type: (e: KeyboardEvent) => any. Default: NA.
#'\item \bold{onKeyUp}. Handler that is called when a key is released.. Type: (e: KeyboardEvent) => any. Default: NA.
#' }
#' 6. Radio Accessibility Props
#' \itemize{
#'\item \bold{id}. The element's unique identifier. See MDN. Type: string. Default: NA.
#'\item \bold{aria-label}. Defines a string value that labels the current element. Type: string. Default: NA.
#'\item \bold{aria-labelledby}. Identifies the element (or elements) that labels the current element. Type: string. Default: NA.
#'\item \bold{aria-describedby}. Identifies the element (or elements) that describes the object.. Type: string. Default: NA.
#'\item \bold{aria-details}. Identifies the element (or elements) that provide a detailed, extended description for the object.. Type: string. Default: NA.
#' }
#' @md
#' @name radio
#' @example inst/examples/radio/app.R
#' @seealso See \url{https://nextui.org/docs/components/radio}.
NULL

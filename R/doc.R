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

#' checkbox-group
#'
#' @description
#' A CheckboxGroup allows users to select one or more items from a list of choices. CheckboxGrup implementation is based on @react-aria/checkbox
#'
#' @details
#'
#' 1. Checkbox Group Props
#' \itemize{
#'\item \bold{children*}. The Checkboxes contained within the checkbox group.. Type: CheckboxGroupChildren. Default: NA.
#'\item \bold{label}. The content to display as the label.. Type: ReactNode. Default: NA.
#'\item \bold{value}. The current value (controlled).. Type: string[]. Default: NA.
#'\item \bold{defaultValue}. The current value (uncontrolled).. Type: string[]. Default: NA.
#'\item \bold{name}. The name of the checkbox group, used when submitting an HTML form.. Type: string. Default: NA.
#'\item \bold{orientation}. The axis the checkbox group items should align with.. Type: horizontal vertical. Default: vertical.
#'\item \bold{size}. The size of the component. Type: NormalSizes. Default: medium.
#'\item \bold{color}. The color of the component. Type: NormalColors. Default: default.
#'\item \bold{labelColor}. The color of the label. Type: SimpleColors. Default: default.
#'\item \bold{isDisabled}. Whether the checkbox group is disabled. Type: boolean. Default: false.
#'\item \bold{isReadOnly}. Whether the input can be selected but not changed by the user.. Type: boolean. Default: false.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#' }
#' 2. Checkbox Group Events
#' \itemize{
#'\item \bold{onChange}. Handler that is called when the value changes. Type: (value: T) => void. Default: NA.
#' }
#' 3. Checkbox Group Accessibility Props
#' \itemize{
#'\item \bold{id}. The element's unique identifier. See MDN. Type: string. Default: NA.
#'\item \bold{aria-label}. Defines a string value that labels the current element. Type: string. Default: NA.
#'\item \bold{aria-labelledby}. Identifies the element (or elements) that labels the current element. Type: string. Default: NA.
#'\item \bold{aria-describedby}. Identifies the element (or elements) that describes the object.. Type: string. Default: NA.
#'\item \bold{aria-details}. Identifies the element (or elements) that provide a detailed, extended description for the object.. Type: string. Default: NA.
#'\item \bold{aria-errormessage}. Identifies the element that provides an error message for the object.. Type: string. Default: NA.
#' }
#' @md
#' @name checkbox-group
#' @example inst/examples/checkbox-group/app.R
#' @seealso See \url{https://nextui.org/docs/components/checkbox-group}.
NULL

#' progress
#'
#' @description
#' The Progress component allows you to view the progress of any activity.
#'
#' @details
#'
#' 1. Progress Props
#' \itemize{
#'\item \bold{value}. Current value. Type: number. Default: NA.
#'\item \bold{min}. Progress min value. Type: number. Default: 0.
#'\item \bold{max}. Progress max value. Type: number. Default: 100.
#'\item \bold{color}. Change filler bar color. Type: NormalColors. Default: default.
#'\item \bold{status}. Change filler bar background color. Type: NormalColors. Default: default.
#'\item \bold{size}. Change progress size. Type: NormalSizes. Default: medium.
#'\item \bold{striped}. Stripe over the progress bar's background color. Type: boolean. Default: false.
#'\item \bold{indeterminated}. Indeterminated progress. Type: boolean. Default: false.
#'\item \bold{shadow}. Display shadow effect. Type: boolean. Default: false.
#'\item \bold{squared}. Squared progress. Type: boolean. Default: false.
#'\item \bold{animated}. Enable or disable the progress animation. Type: boolean. Default: true.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. Progress native props. Type: ProgressHTMLAttributes. Default: NA.
#' }
#' @md
#' @name progress
#' @example inst/examples/progress/app.R
#' @seealso See \url{https://nextui.org/docs/components/progress}.
NULL

#' link
#'
#' @description
#' Links allow users to click their way from page to page. This component is styled to resemble a hyperlink and semantically renders an <a>
#'
#' @details
#'
#' 1. Link Props
#' \itemize{
#'\item \bold{color}. Change link color. Type: LinkColors boolean string. Default: false.
#'\item \bold{href}. Link url. Type: string. Default: NA.
#'\item \bold{isExternal updated}. Show link icon. Type: boolean. Default: false.
#'\item \bold{underline}. Display underline. Type: boolean. Default: false.
#'\item \bold{block}. Display as a separate block. Type: boolean. Default: false.
#'\item \bold{ref}. forwardRef. Type: Ref<HTMLAnchorElement | null>. Default: NA.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: a.
#'\item \bold{...}. Native props. Type: AnchorHTMLAttributes. Default: NA.
#' }
#' @md
#' @name link
#' @example inst/examples/link/app.R
#' @seealso See \url{https://nextui.org/docs/components/link}.
NULL

#' user
#'
#' @description
#' Flexible User Profile Component.
#'
#' @details
#'
#' 1. User Props
#' \itemize{
#'\item \bold{color}. Change User Profile border color. Type: NormalColors string. Default: default.
#'\item \bold{src}. Image source (local or remote). Type: string. Default: NA.
#'\item \bold{name}. Display Text Next to Image. Type: string. Default: NA.
#'\item \bold{text}. Display Text when image is missing. Type: string. Default: NA.
#'\item \bold{alt}. Display alt text when image is missing. Type: string. Default: NA.
#'\item \bold{size}. User Profile size. Type: NormalSizes number. Default: medium.
#'\item \bold{bordered}. Bordered User Profile. Type: boolean. Default: false.
#'\item \bold{zoomed}. Zoomed User Profile. Type: boolean. Default: false.
#'\item \bold{pointer}. Display pointer cursor on hover. Type: boolean. Default: false.
#'\item \bold{squared}. Squared User Profile. Type: boolean. Default: false.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: span.
#'\item \bold{...}. Native props. Type: ImgHTMLAttributes. Default: NA.
#' }
#' @md
#' @name user
#' @example inst/examples/user/app.R
#' @seealso See \url{https://nextui.org/docs/components/user}.
NULL

#' collapse
#'
#' @description
#' Collapse display a list of high-level options that can expand/collapse to reveal more information.
#'
#' @details
#'
#' 1. Collapse Props
#' \itemize{
#'\item \bold{expanded}. Manage the expand behaivor by prop. Type: boolean. Default: false.
#'\item \bold{title}. Collapse title content. Type: string React.ReactNode. Default: NA.
#'\item \bold{subtitle}. Collapse description content. Type: string React.ReactNode. Default: NA.
#'\item \bold{divider}. Show or hide the collapse divider. Type: boolean. Default: true.
#'\item \bold{disabled}. Disable collapse. Type: boolean. Default: false.
#'\item \bold{bordered}. Bordered collapse. Type: boolean. Default: false.
#'\item \bold{shadow}. Enable or disable the collapse shadow. Type: boolean. Default: false.
#'\item \bold{animated}. Enable or disable the collapse animation. Type: boolean. Default: true.
#'\item \bold{showArrow}. Show or hide the collapse right arrow. Type: boolean. Default: true.
#'\item \bold{arrowIcon}. Collapse arrow icon. Type: React.ReactNode. Default: NA.
#'\item \bold{contentLeft}. Left content for the collapse. Type: React.ReactNode. Default: NA.
#'\item \bold{borderWeight}. Border weight for bordered collapse. Type: NormalWeights. Default: light.
#'\item \bold{index}. Collapse's index, this value it's autogenerated by default. Type: number. Default: NA.
#'\item \bold{preventDefault}. Prevent default event on when is selected through the Space, Enter keys. Type: boolean. Default: true.
#'\item \bold{onChange}. Callback fired when the value is changed. Type: (e: React.ChangeEvent, index:number, value: boolean) => void. Default: NA.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. Div native props. Type: HTMLAttributes. Default: NA.
#' }
#' 2. Collapse Group Props
#' \itemize{
#'\item \bold{accordion}. Expand children collapse like an accordion. Type: boolean. Default: true.
#'\item \bold{animated}. Enable or disable the collapse group animation. Type: boolean. Default: true.
#'\item \bold{bordered}. Bordered collapse group. Type: boolean. Default: false.
#'\item \bold{splitted}. Separated collapse group. Type: boolean. Default: false.
#'\item \bold{shadow}. Enable or disable the collapse group shadow. Type: boolean. Default: false.
#'\item \bold{divider}. Show or hide the collapse group children divider. Type: boolean. Default: NA.
#'\item \bold{borderWeight}. Border weight for bordered collapse group. Type: NormalWeights. Default: light.
#'\item \bold{onChange}. Callback fired when a collapse children value is changed. Type: (index:number, value: boolean) => void. Default: NA.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: div.
#'\item \bold{...}. Div native props. Type: HTMLAttributes. Default: NA.
#' }
#' @md
#' @name collapse
#' @example inst/examples/collapse/app.R
#' @seealso See \url{https://nextui.org/docs/components/collapse}.
NULL

#' textarea
#'
#' @description
#' Textarea component is a multi-line Input which allows you to write large texts.
#'
#' @details
#'
#' 1. Textarea Props
#' \itemize{
#'\item \bold{value}. Textarea value. Type: string. Default: NA.
#'\item \bold{initialValue}. Textarea default value. Type: string. Default: NA.
#'\item \bold{placeholder}. The short hint displayed in the textarea. Type: string. Default: NA.
#'\item \bold{size}. Change textarea size. Type: NormalSizes. Default: medium.
#'\item \bold{color}. Change textarea text, border and label color. Type: SimpleColors. Default: default.
#'\item \bold{status}. Change textarea status color. Type: SimpleColors. Default: default.
#'\item \bold{rows}. Textarea rows count. Type: number. Default: NA.
#'\item \bold{minRows}. Minimum number of rows to show for textarea. Type: number. Default: 3.
#'\item \bold{maxRows}. Maximum number of rows up to which the textarea can grow. Type: number. Default: 6.
#'\item \bold{cacheMeasurements}. Reuse previously computed measurements when computing height of textarea.. Type: boolean. Default: true.
#'\item \bold{helperColor}. Change helper text color. Type: SimpleColors. Default: default.
#'\item \bold{required}. Required textarea prop. Type: boolean. Default: false.
#'\item \bold{readOnly}. It prevents the user from changing the value of the field. Type: boolean. Default: false.
#'\item \bold{disabled}. Disable textarea. Type: boolean. Default: false.
#'\item \bold{bordered}. Bordered textarea. Type: boolean. Default: false.
#'\item \bold{underlined}. Underlined textarea. Type: boolean. Default: false.
#'\item \bold{shadow}. Enable or disable the textarea shadow. Type: boolean. Default: true.
#'\item \bold{animated}. Enable or disable the textarea animation. Type: boolean. Default: true.
#'\item \bold{autoComplete}. HTML textarea autocomplete attribute. Type: string. Default: off.
#'\item \bold{borderWeight}. Border weight for bordered textarea. Type: NormalWeights. Default: normal.
#'\item \bold{fullWidth}. If true, the textarea will take up the full width of its container.. Type: boolean. Default: false.
#'\item \bold{width}. Textarea width. Type: string. Default: initial.
#'\item \bold{label}. Text label for textarea. Type: string. Default: NA.
#'\item \bold{labelPlaceholder}. The placeholder becomes a label. Type: string. Default: NA.
#'\item \bold{helperText}. Add a helper text to textarea. Type: string. Default: NA.
#'\item \bold{onHeightChange}. Callback fired whenthe textarea height change. Type: (height: number, meta: {rowHeight: number}) => void. Default: NA.
#'\item \bold{onChange}. Callback fired when the value is changed. Type: (e: React.ChangeEvent<HTMLTextAreaElement>) => void. Default: NA.
#'\item \bold{onFocus}. Callback fired when the textarea is focused.. Type: (e: React.FocusEvent<HTMLTextAreaElement>) => void. Default: NA.
#'\item \bold{onBlur}. Callback fired when the textarea is blurred.. Type: (e: React.FocusEvent<HTMLTextAreaElement>) => void. Default: NA.
#'\item \bold{ref}. forwardRef. Type: Ref<HTMLTextAreaElement | null>. Default: NA.
#'\item \bold{css}. Override Default CSS style. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs. Type: keyof JSX.IntrinsicElements. Default: input.
#'\item \bold{...}. Textarea native props. Type: TextareaHTMLAttributes. Default: NA.
#' }
#' @md
#' @name textarea
#' @example inst/examples/textarea/app.R
#' @seealso See \url{https://nextui.org/docs/components/textarea}.
NULL

#' dropdown
#'
#' @description
#' Displays a list of actions or options that a user can choose. Dropdown implementation is based on
#' \code{react-aria/menu}
#'
#' @details
#'
#' 1. Dropdown Props
#' \itemize{
#'\item \bold{children*}. The content of the dropdown. It's usually the Dropdown.Trigger, Dropdown.Button and Dropdown.Menu.. Type: ReactNode[]. Default: NA.
#'\item \bold{type}. The type of dropdown menu that the dropdown trigger opens.. Type: TriggerType. Default: menu.
#'\item \bold{trigger}. How the dropdown menu is triggered.. Type: MenuTriggerType. Default: press.
#'\item \bold{closeOnSelect}. Whether the dropdown menu closes when a selection is made.. Type: boolean. Default: true.
#'\item \bold{isDisabled}. Whether dropdown trigger is disabled.. Type: boolean. Default: false.
#'\item \bold{disableTriggerPressedAnimation new}. Whether the trigger should show a pressed animation when the menu is open.. Type: boolean. Default: false.
#'\item \bold{PopoverProps}. Since dropdown is based on the Popover you can use any of the Popover props.. Type: PopoverProps. Default: NA.
#' }
#' 2. Dropdown Events
#' \itemize{
#'\item \bold{PopoverEvents}. Since dropdown is based on the Popover you can use any of the Popover events.. Type: PopoverEvents. Default: NA.
#' }
#' 3. Dropdown.Trigger Props
#' \itemize{
#'\item \bold{children*}. The dropdown trigger component, ensure the children passed is focusable. Users can tab to it using their keyboard, and it can take a ref. It is critical for accessiblity.. Type: ReactNode. Default: NA.
#' }
#' 4. Dropdown.Button Props
#' \itemize{
#'\item \bold{ButtonProps}. Since dropdown button is based on the Button you can use any of the Button props.. Type: ButtonProps. Default: NA.
#' }
#' 5. Dropdown.Menu Props
#' \itemize{
#'\item \bold{children*}. The contents of the collection. It's usually the Dropdown.Item or Dropdown.Section.. Type: CollectionChildrentype. Default: NA.
#'\item \bold{items}. Item objects in the collection.. Type: Iterable<T>. Default: NA.
#'\item \bold{selectedKeys}. The currently selected keys in the collection (controlled).. Type: all Iterable<T>. Default: NA.
#'\item \bold{defaultSelectedKeys}. The initial selected keys in the collection (uncontrolled).. Type: all Iterable<T>. Default: NA.
#'\item \bold{disabledKeys}. The item keys that are disabled. These items cannot be selected, focused, or otherwise interacted with.. Type: Iterable<T>. Default: NA.
#'\item \bold{selectionMode}. The type of selection that is allowed in the collection.. Type: SelectionModeType. Default: NA.
#'\item \bold{keyboardDelegate}. An optional keyboard delegate implementation for type to select, to override the default.. Type: KeyboardDelegateType. Default: NA.
#'\item \bold{color}. The dropdown menu items color. Type: SimpleColors. Default: default.
#'\item \bold{textColor}. The dropdown menu items text color. Type: SimpleColors. Default: default.
#'\item \bold{variant}. The dropdown menu items variantion. Type: DropdownVariant. Default: flat.
#'\item \bold{isVirtualized}. Whether the dropdown menu uses virtual scrolling.. Type: boolean. Default: false.
#'\item \bold{disallowEmptySelection}. Whether the collection allows empty selection.. Type: boolean. Default: false.
#'\item \bold{autoFocus}. Where the focus should be set.. Type: boolean FocusStrategyType. Default: false.
#'\item \bold{shouldFocusWrap}. Whether keyboard navigation is circular.. Type: boolean. Default: false.
#'\item \bold{css}. Override Default CSS style.. Type: Stitches.CSS. Default: NA.
#'\item \bold{containerCss new}. Override the dropdown mmenu container (Popover.Content) CSS style.. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs.. Type: keyof JSX.IntrinsicElements. Default: ul.
#' }
#' 6. Dropdown.Menu Events
#' \itemize{
#'\item \bold{onAction}. Handler that is called when an item is selected.. Type: (key: Key) => void. Default: NA.
#'\item \bold{onSelectionChange}. Handler that is called when the selection changes.. Type: (keys:SelectionType) => any. Default: NA.
#' }
#' 7. Dropdown.Menu Accessibility Props
#' \itemize{
#'\item \bold{id}. The element's unique identifier. See MDN. Type: string. Default: NA.
#'\item \bold{aria-label}. Defines a string value that labels the current element. Type: string. Default: NA.
#'\item \bold{aria-labelledby}. Identifies the element (or elements) that labels the current element. Type: string. Default: NA.
#'\item \bold{aria-describedby}. Identifies the element (or elements) that describes the object.. Type: string. Default: NA.
#'\item \bold{aria-details}. Identifies the element (or elements) that provide a detailed, extended description for the object.. Type: string. Default: NA.
#' }
#' 8. Dropdown.Item Props
#' \itemize{
#'\item \bold{key}. The unique key for the menu item.. Type: Key. Default: false.
#'\item \bold{description}. Description text element inside the dropdown menu item.. Type: string. Default: NA.
#'\item \bold{command}. Right-aligned label text content, useful for displaying hotkeys.. Type: string. Default: NA.
#'\item \bold{icon}. The icon to render before the dropdown menu item's label.. Type: ReactNode. Default: NA.
#'\item \bold{dividerWeight}. The dropdown item divider height. Type: NormalWeights. Default: light.
#'\item \bold{color}. The dropdown item color. Type: SimpleColors. Default: default.
#'\item \bold{textColor}. The dropdown item text color. Type: SimpleColors. Default: default.
#'\item \bold{variant}. The dropdown item variation. Type: DropdownVariant. Default: flat.
#'\item \bold{withDivider}. Whether the dropdown item should have a border on top. Type: boolean. Default: false.
#'\item \bold{showFullDescription new}. Whether the item description should be truncated or not.. Type: boolean. Default: false.
#'\item \bold{css}. Override Default CSS style.. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs.. Type: keyof JSX.IntrinsicElements. Default: li.
#' }
#' 9. Dropdown.Item Accessibility Props
#' \itemize{
#'\item \bold{aria-label}. A screen reader only label for the dropdown menu item.. Type: string. Default: NA.
#' }
#' 10. Dropdown.Section Props
#' \itemize{
#'\item \bold{heading}. The heading for the section.. Type: ReactNode. Default: NA.
#' }
#' 11. Dropdown.Section Accessibility Props
#' \itemize{
#'\item \bold{aria-label}. An accessibility label for the section. Required if heading is not present.. Type: string. Default: NA.
#' }
#' @md
#' @name dropdown
#' @example inst/examples/dropdown/app.R
#' @seealso See \url{https://nextui.org/docs/components/dropdown}.
NULL

#' navbar
#'
#' @description
#' A responsive navigation header positioned on top side of your page that includes support for branding, links, navigation, collapse and more.
#'
#' @details
#'
#' 1. Navbar Props
#' \itemize{
#'\item \bold{children*}. The content of the navbar. It's usually the brand, content, toggle and collapse.. Type: ReactNode ReactNode[]. Default: NA.
#'\item \bold{parentRef}. The parent element where the navbar is placed within. This is used to determine the scroll position and whether the navbar should be hidden or not.. Type: RefObject<HTMLElement>. Default: window.
#'\item \bold{variant}. The navbar positions variantions.. Type: NavbarVariants. Default: static.
#'\item \bold{height}. The height of the navbar. When the navbar is compacted (isCompact=true) the height is reduced to 54px.. Type: number string. Default: 76px.
#'\item \bold{maxWidth}. The navbar maximum width.. Type: NavbarMaxWidth. Default: lg.
#'\item \bold{isBordered}. Whether the navbar should be bordered.. Type: boolean. Default: false.
#'\item \bold{isCompact}. Whether the navbar should be compact. It reduces the height to 54px.. Type: boolean. Default: false.
#'\item \bold{borderWeight}. The border weight of the bordered navbar.. Type: NormalWeights. Default: light.
#'\item \bold{shouldHideOnScroll}. Whether the navbar should hide on scroll or not.. Type: boolean. Default: false.
#'\item \bold{disableShadow}. Whether the navbar should have a shadow or not.. Type: boolean. Default: false.
#'\item \bold{disableBlur}. Whether the navbar should be blurred or not. (only supported by this browser list. Type: boolean. Default: false.
#'\item \bold{disableScrollHandler}. Whether the navbar parent scroll event should be listened to or not.. Type: boolean. Default: false.
#'\item \bold{containerCss}. The css object of the navbar container.. Type: Stitches.CSS. Default: NA.
#'\item \bold{css}. Override Default CSS style.. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs.. Type: keyof JSX.IntrinsicElements. Default: nav.
#' }
#' 2. Navbar Events
#' \itemize{
#'\item \bold{onScrollPositionChange}. The scroll event handler for the navbar. The event fires when the navbar parent element is scrolled. it only works if disableScrollHandler is set to false or shouldHideOnScroll is set to true.. Type: (scrollPosition: number) => void. Default: NA.
#' }
#' 3. Navbar.Brand Props
#' \itemize{
#'\item \bold{children}. The content of the navbar brand. It's usually the logo and name of the brand.. Type: ReactNode ReactNode[]. Default: NA.
#'\item \bold{hideIn}. Sets the breakpoint from where the component should start hiding.. Type: HideShowIn. Default: NA.
#'\item \bold{showIn}. Sets the breakpoint from where the component should start displaying.. Type: HideShowIn. Default: NA.
#'\item \bold{css}. Override Default CSS style.. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs.. Type: keyof JSX.IntrinsicElements. Default: span.
#' }
#' 4. Navbar.Content Props
#' \itemize{
#'\item \bold{children}. The content of the navbar content. It's usually the navbar item and navbar link.. Type: ReactNode ReactNode[]. Default: NA.
#'\item \bold{variant}. The variant of the navbar content items.. Type: NavbarContentVariants. Default: default.
#'\item \bold{gap}. The gap between each content item. It's 0px for highlight variants.. Type: number string CSSGapUnit. Default: $10.
#'\item \bold{activeColor}. The active color of the navbar content items.. Type: SimpleColors. Default: default (link).
#'\item \bold{underlineHeight}. The height of the navbar content items's underline.. Type: NormalWeights. Default: normal.
#'\item \bold{enableCursorHighlight}. Whether the navbar content highlighted cursor should be visible.. Type: NormalWeights. Default: false.
#'\item \bold{isCursorHighlightRounded}. Whether the navbar content highlighted cursor should be rounded.. Type: NormalWeights. Default: false.
#'\item \bold{hideIn}. Sets the breakpoint from where the component should start hiding.. Type: HideShowIn. Default: NA.
#'\item \bold{showIn}. Sets the breakpoint from where the component should start displaying.. Type: HideShowIn. Default: NA.
#'\item \bold{css}. Override Default CSS style.. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs.. Type: keyof JSX.IntrinsicElements. Default: ul.
#' }
#' 5. Navbar.Item Props
#' \itemize{
#'\item \bold{children*}. The contents of the navbar item.. Type: ReactNode. Default: NA.
#'\item \bold{variant}. The variant of the navbar item.. Type: NavbarContentVariants. Default: default.
#'\item \bold{activeColor}. The active color of the navbar item.. Type: SimpleColors. Default: default (link).
#'\item \bold{underlineHeight}. The height of the navbar item underline.. Type: NormalWeights. Default: normal.
#'\item \bold{isActive}. Whether navbar item is active.. Type: boolean. Default: false.
#'\item \bold{isDisabled}. Whether navbar item is disabled.. Type: boolean. Default: false.
#'\item \bold{hideIn}. Sets the breakpoint from where the component should start hiding.. Type: HideShowIn. Default: NA.
#'\item \bold{showIn}. Sets the breakpoint from where the component should start displaying.. Type: HideShowIn. Default: NA.
#'\item \bold{css}. Override Default CSS style.. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs.. Type: keyof JSX.IntrinsicElements. Default: li.
#' }
#' 6. Navbar.Link Props
#' \itemize{
#'\item \bold{ItemProps}. Since dropdown navbar link is based on the Navbar.Item component you can use any of the Navbar.Item props.. Type: NavbarItemProps. Default: NA.
#'\item \bold{LinkProps}. Since dropdown navbar link uses the Link component as a base, you can use any of the Link props.. Type: LinkProps. Default: NA.
#'\item \bold{itemCss}. Override the navbar item CSS style.. Type: Stitches.CSS. Default: NA.
#'\item \bold{itemClassName}. Add a class name to the navbar item.. Type: string. Default: NA.
#'\item \bold{css}. Override Default CSS style.. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs.. Type: keyof JSX.IntrinsicElements. Default: a.
#' }
#' 7. Navbar.Toggle Props
#' \itemize{
#'\item \bold{children}. The contents of the navbar toggle. It's usually an hamburguer icon button.. Type: ReactNode. Default: NA.
#'\item \bold{isSelected}. Whether the element should be selected (controlled).. Type: HideShowIn. Default: false.
#'\item \bold{defaultSelected}. Whether the element should be selected (uncontrolled).. Type: HideShowIn. Default: NA.
#'\item \bold{autoFocus}. Whether the element should receive focus on render.. Type: HideShowIn. Default: false.
#'\item \bold{hideIn}. Sets the breakpoint from where the component should start hiding.. Type: HideShowIn. Default: NA.
#'\item \bold{showIn}. Sets the breakpoint from where the component should start displaying.. Type: HideShowIn. Default: NA.
#'\item \bold{css}. Override Default CSS style.. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs.. Type: keyof JSX.IntrinsicElements. Default: button.
#' }
#' 8. Navbar.Toggle Events
#' \itemize{
#'\item \bold{onChange}. Handler that is called when the element's selection state changes.. Type: (isSelected: boolean) => void. Default: NA.
#' }
#' 9. Navbar.Toggle Accessibility Props
#' \itemize{
#'\item \bold{id}. The element's unique identifier. See MDN. Type: string. Default: NA.
#'\item \bold{aria-label}. Defines a string value that labels the current element. Type: string. Default: NA.
#' }
#' 10. Navbar.Collapse Props
#' \itemize{
#'\item \bold{children}. The contents of the navbar toggle. It's usually an hamburguer icon button.. Type: ReactNode ReactNode[]. Default: NA.
#'\item \bold{transitionDelay}. The delay of all collapse items transition. (milliseconds). Type: number. Default: 0.
#'\item \bold{transitionTime}. The delay of all collapse items transition. (milliseconds). Type: number. Default: 450.
#'\item \bold{transitionMatrix}. The matrix of all collapse items transition.. Type: CollapseTransitionMatrix. Default: {in: "matrix(1, 0, 0, 1, 0, 0)", out: "matrix(0.97, 0, 0, 1, 0, 20)"}.
#'\item \bold{disableAnimation}. Whether the all navbar collapse items are animated.. Type: boolean. Default: false.
#'\item \bold{hideIn}. Sets the breakpoint from where the component should start hiding.. Type: HideShowIn. Default: NA.
#'\item \bold{showIn}. Sets the breakpoint from where the component should start displaying.. Type: HideShowIn. Default: NA.
#'\item \bold{css}. Override Default CSS style.. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs.. Type: keyof JSX.IntrinsicElements. Default: ul.
#' }
#' 11. Navbar.Collapse Accessibility Props
#' \itemize{
#'\item \bold{id}. The element's unique identifier. See MDN. Type: string. Default: NA.
#'\item \bold{aria-labelledby}. Identifies the element (or elements) that labels the current element. Type: string. Default: NA.
#'\item \bold{aria-describedby}. Identifies the element (or elements) that describes the object.. Type: string. Default: NA.
#' }
#' 12. Navbar.CollapseItem Props
#' \itemize{
#'\item \bold{children}. The contents of the navbar toggle. It's usually an hamburguer icon button.. Type: ReactNode ReactNode[]. Default: NA.
#'\item \bold{transitionDelay}. The delay of all collapse items transition. (milliseconds). Type: number. Default: 0.
#'\item \bold{transitionTime}. The delay of all collapse items transition. (milliseconds). Type: number. Default: 450.
#'\item \bold{transitionMatrix}. The matrix of all collapse items transition.. Type: CollapseTransitionMatrix. Default: {in: "matrix(1, 0, 0, 1, 0, 0)", out: "matrix(0.97, 0, 0, 1, 0, 20)"}.
#'\item \bold{disableAnimation}. Whether the navbar collapse item is animated.. Type: boolean. Default: false.
#'\item \bold{hideIn}. Sets the breakpoint from where the component should start hiding.. Type: HideShowIn. Default: NA.
#'\item \bold{showIn}. Sets the breakpoint from where the component should start displaying.. Type: HideShowIn. Default: NA.
#'\item \bold{css}. Override Default CSS style.. Type: Stitches.CSS. Default: NA.
#'\item \bold{as}. Changes which tag component outputs.. Type: keyof JSX.IntrinsicElements. Default: li.
#' }
#' @md
#' @name navbar
#' @example inst/examples/navbar/app.R
#' @seealso See \url{https://nextui.org/docs/components/navbar}.
NULL

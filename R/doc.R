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

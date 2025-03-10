#' spacer
#'
#' @description
#' Spacer is a component used to add space between components.
#'
#' @details
#'
#' \itemize{
#'\item \bold{x}. Type: \code{Space}. Default: "1".
#'\item \bold{y}. Type: \code{Space}. Default: "1".
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
#'\item \bold{children}. Type: \code{ReactNode | ReactNode[]}. Default: NA.
#'\item \bold{variant}. Type: \code{light | shadow | bordered | splitted}. Default: "light".
#'\item \bold{selectionMode}. Type: \code{none | single | multiple}. Default: NA.
#'\item \bold{selectionBehavior}. Type: \code{toggle | replace}. Default: "toggle".
#'\item \bold{isCompact}. Type: \code{boolean}. Default: false.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{showDivider}. Type: \code{boolean}. Default: true.
#'\item \bold{dividerProps}. Type: \code{DividerProps}. Default: NA.
#'\item \bold{hideIndicator}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{disableIndicatorAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{disallowEmptySelection}. Type: \code{boolean}. Default: false.
#'\item \bold{keepContentMounted}. Type: \code{boolean}. Default: false.
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: true.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: NA.
#'\item \bold{disabledKeys}. Type: \code{React.Key[]}. Default: NA.
#'\item \bold{itemClasses}. Type: \code{AccordionItemClassnames}. Default: NA.
#'\item \bold{selectedKeys}. Type: \code{all | React.Key[]}. Default: NA.
#'\item \bold{defaultSelectedKeys}. Type: \code{all | React.Key[]}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onSelectionChange}. Type: \code{(keys: "all" | Set<React.Key>) => any}. Default: NA.
#' }
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{title}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{subtitle}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{indicator}. Type: \code{IndicatorProps}. Default: NA.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: NA.
#'\item \bold{isCompact}. Type: \code{boolean}. Default: false.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{keepContentMounted}. Type: \code{boolean}. Default: false.
#'\item \bold{hideIndicator}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{disableIndicatorAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{HeadingComponent}. Type: \code{React.ElementType}. Default: "h2".
#'\item \bold{classNames}. Type: \code{AccordionItemClassnames}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onFocus}. Type: \code{(e: FocusEvent) => void}. Default: NA.
#'\item \bold{onBlur}. Type: \code{(e: FocusEvent) => void}. Default: NA.
#'\item \bold{onFocusChange}. Type: \code{(isFocused: boolean) => void}. Default: NA.
#'\item \bold{onKeyDown}. Type: \code{(e: KeyboardEvent) => void}. Default: NA.
#'\item \bold{onKeyUp}. Type: \code{(e: KeyboardEvent) => void}. Default: NA.
#'\item \bold{onPress}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onPressStart}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onPressEnd}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onPressChange}. Type: \code{(isPressed: boolean) => void}. Default: NA.
#'\item \bold{onPressUp}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onClick}. Type: \code{MouseEventHandler}. Default: NA.
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
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: NA.
#'\item \bold{label}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{name}. Type: \code{string}. Default: NA.
#'\item \bold{variant}. Type: \code{flat | bordered | faded | underlined}. Default: "flat".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "default".
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: NA.
#'\item \bold{items}. Type: \code{Iterable<T>}. Default: NA.
#'\item \bold{defaultItems}. Type: \code{Iterable<T>}. Default: NA.
#'\item \bold{inputValue}. Type: \code{string}. Default: NA.
#'\item \bold{defaultInputValue}. Type: \code{string}. Default: NA.
#'\item \bold{allowsCustomValue}. Type: \code{boolean}. Default: false.
#'\item \bold{allowsEmptyCollection}. Type: \code{boolean}. Default: true.
#'\item \bold{shouldCloseOnBlur}. Type: \code{boolean}. Default: true.
#'\item \bold{placeholder}. Type: \code{string}. Default: NA.
#'\item \bold{description}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{menuTrigger}. Type: \code{focus | input | manual}. Default: "focus".
#'\item \bold{labelPlacement}. Type: \code{inside | outside | outside-left}. Default: "inside".
#'\item \bold{selectedKey}. Type: \code{React.Key}. Default: NA.
#'\item \bold{defaultSelectedKey}. Type: \code{React.Key}. Default: NA.
#'\item \bold{disabledKeys}. Type: \code{all | React.Key[]}. Default: NA.
#'\item \bold{errorMessage}. Type: \code{ReactNode | ((v: ValidationResult) => ReactNode)}. Default: NA.
#'\item \bold{validate}. Type: \code{(value: { inputValue: string, selectedKey: React.Key }) => ValidationError | true | null | undefined}. Default: NA.
#'\item \bold{validationBehavior}. Type: \code{native | aria}. Default: "native".
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{autoFocus}. Type: \code{boolean}. Default: false.
#'\item \bold{defaultFilter}. Type: \code{(textValue: string, inputValue: string) => boolean}. Default: NA.
#'\item \bold{filterOptions}. Type: \code{Intl.CollatorOptions}. Default: "{ sensitivity: 'base'}".
#'\item \bold{maxListboxHeight}. Type: \code{number}. Default: "256".
#'\item \bold{itemHeight}. Type: \code{number}. Default: "32".
#'\item \bold{isVirtualized}. Type: \code{boolean}. Default: "undefined".
#'\item \bold{isReadOnly}. Type: \code{boolean}. Default: false.
#'\item \bold{isRequired}. Type: \code{boolean}. Default: false.
#'\item \bold{isInvalid}. Type: \code{boolean}. Default: false.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: true.
#'\item \bold{selectorIcon}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{clearIcon}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{showScrollIndicators}. Type: \code{boolean}. Default: true.
#'\item \bold{scrollRef}. Type: \code{React.RefObject<HTMLElement>}. Default: NA.
#'\item \bold{inputProps}. Type: \code{InputProps}. Default: NA.
#'\item \bold{popoverProps}. Type: \code{PopoverProps}. Default: NA.
#'\item \bold{listboxProps}. Type: \code{ListboxProps}. Default: NA.
#'\item \bold{scrollShadowProps}. Type: \code{ScrollShadowProps}. Default: NA.
#'\item \bold{selectorButtonProps}. Type: \code{ButtonProps}. Default: NA.
#'\item \bold{clearButtonProps}. Type: \code{ButtonProps}. Default: NA.
#'\item \bold{isClearable}. Type: \code{boolean}. Default: true.
#'\item \bold{disableClearable}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: true.
#'\item \bold{disableSelectorIconRotation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' | 'listboxWrapper' | 'listbox' | 'popoverContent' | 'endContentWrapper' | 'clearButton' | 'selectorButton', string>>}. Default: NA.
#' }
#' 2. Autocomplete Events
#' \itemize{
#'\item \bold{onOpenChange}. Type: \code{(isOpen: boolean, menuTrigger?: MenuTriggerAction) => void}. Default: NA.
#'\item \bold{onInputChange}. Type: \code{(value: string) => void}. Default: NA.
#'\item \bold{onSelectionChange}. Type: \code{(key: React.Key) => void}. Default: NA.
#'\item \bold{onFocus}. Type: \code{(e: FocusEvent<HTMLInputElement>) => void}. Default: NA.
#'\item \bold{onBlur}. Type: \code{(e: FocusEvent<HTMLInputElement>) => void}. Default: NA.
#'\item \bold{onFocusChange}. Type: \code{(isFocused: boolean) => void}. Default: NA.
#'\item \bold{onKeyDown}. Type: \code{(e: KeyboardEvent) => void}. Default: NA.
#'\item \bold{onKeyUp}. Type: \code{(e: KeyboardEvent) => void}. Default: NA.
#'\item \bold{onClose}. Type: \code{() => void}. Default: NA.
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
#'\item \bold{src}. Type: \code{string}. Default: NA.
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "default".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: "full".
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{name}. Type: \code{string}. Default: NA.
#'\item \bold{icon}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{fallback}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{isBordered}. Type: \code{boolean}. Default: false.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{isFocusable}. Type: \code{boolean}. Default: false.
#'\item \bold{showFallback}. Type: \code{boolean}. Default: false.
#'\item \bold{ImgComponent}. Type: \code{React.ElementType}. Default: "img".
#'\item \bold{imgProps}. Type: \code{ImgComponentProps}. Default: NA.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" | "img" | "fallback" | "name" | "icon", string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{max}. Type: \code{number}. Default: "5".
#'\item \bold{total}. Type: \code{number}. Default: NA.
#'\item \bold{size}. Type: \code{AvatarProps['size']}. Default: NA.
#'\item \bold{color}. Type: \code{AvatarProps['color']}. Default: NA.
#'\item \bold{radius}. Type: \code{AvatarProps['radius']}. Default: NA.
#'\item \bold{isGrid}. Type: \code{boolean}. Default: false.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: NA.
#'\item \bold{isBordered}. Type: \code{boolean}. Default: NA.
#'\item \bold{renderCount}. Type: \code{(count: number) => ReactNode}. Default: NA.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" | "count", string>>}. Default: NA.
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
#'\item \bold{children}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{content}. Type: \code{string | number | ReactNode}. Default: NA.
#'\item \bold{variant}. Type: \code{solid | flat | faded | shadow}. Default: "solid".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "default".
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{shape}. Type: \code{circle | rectangle}. Default: "rectangle".
#'\item \bold{placement}. Type: \code{top-right | top-left | bottom-right | bottom-left}. Default: "top-right".
#'\item \bold{showOutline}. Type: \code{boolean}. Default: true.
#'\item \bold{disableOutline}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{isInvisible}. Type: \code{boolean}. Default: false.
#'\item \bold{isOneChar}. Type: \code{boolean}. Default: false.
#'\item \bold{isDot}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base"｜"badge", string>>}. Default: NA.
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
#'\item \bold{children}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{variant}. Type: \code{solid | bordered | light | flat | faded | shadow | ghost}. Default: "solid".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "default".
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: NA.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{spinner}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{spinnerPlacement}. Type: \code{start | end}. Default: "start".
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: false.
#'\item \bold{isIconOnly}. Type: \code{boolean}. Default: false.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{isLoading}. Type: \code{boolean}. Default: false.
#'\item \bold{disableRipple}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#' }
#' \itemize{
#'\item \bold{onPress}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onPressStart}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onPressEnd}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onPressChange}. Type: \code{(isPressed: boolean) => void}. Default: NA.
#'\item \bold{onPressUp}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onKeyDown}. Type: \code{(e: KeyboardEvent) => void}. Default: NA.
#'\item \bold{onKeyUp}. Type: \code{(e: KeyboardEvent) => void}. Default: NA.
#'\item \bold{onClick}. Type: \code{MouseEventHandler}. Default: NA.
#' }
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode | ReactNode[]}. Default: NA.
#'\item \bold{variant}. Type: \code{solid | bordered | light | flat | faded | shadow | ghost}. Default: "solid".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "default".
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: "xl".
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: false.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
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
#'\item \bold{children}. Type: \code{ReactNode | ReactNode[]}. Default: NA.
#'\item \bold{shadow}. Type: \code{none | sm | md | lg}. Default: "md".
#'\item \bold{radius}. Type: \code{none | sm | md | lg}. Default: "lg".
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: false.
#'\item \bold{isHoverable}. Type: \code{boolean}. Default: false.
#'\item \bold{isPressable}. Type: \code{boolean}. Default: false.
#'\item \bold{isBlurred}. Type: \code{boolean}. Default: false.
#'\item \bold{isFooterBlurred}. Type: \code{boolean}. Default: false.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{disableRipple}. Type: \code{boolean}. Default: false.
#'\item \bold{allowTextSelectionOnPress}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' | 'header' | 'body' | 'footer', string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onPress}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onPressStart}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onPressEnd}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onPressChange}. Type: \code{(isPressed: boolean) => void}. Default: NA.
#'\item \bold{onPressUp}. Type: \code{(e: PressEvent) => void}. Default: NA.
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
#'\item \bold{children}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{icon}. Type: \code{CheckboxIconProps}. Default: NA.
#'\item \bold{value}. Type: \code{string}. Default: NA.
#'\item \bold{name}. Type: \code{string}. Default: NA.
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "primary".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: NA.
#'\item \bold{lineThrough}. Type: \code{boolean}. Default: false.
#'\item \bold{isSelected}. Type: \code{boolean}. Default: NA.
#'\item \bold{defaultSelected}. Type: \code{boolean}. Default: NA.
#'\item \bold{isRequired}. Type: \code{boolean}. Default: false.
#'\item \bold{isReadOnly}. Type: \code{boolean}. Default: NA.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{isIndeterminate}. Type: \code{boolean}. Default: NA.
#'\item \bold{isInvalid}. Type: \code{boolean}. Default: false.
#'\item \bold{validationState}. Type: \code{valid | invalid}. Default: NA.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base"｜ "wrapper"｜ "icon"｜ "label", string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onChange}. Type: \code{React.ChangeEvent<HTMLInputElement>}. Default: NA.
#'\item \bold{onValueChange}. Type: \code{(isSelected: boolean) => void}. Default: NA.
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
#'\item \bold{label}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "primary".
#'\item \bold{value}. Type: \code{number}. Default: NA.
#'\item \bold{valueLabel}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{minValue}. Type: \code{number}. Default: "0".
#'\item \bold{maxValue}. Type: \code{number}. Default: "100".
#'\item \bold{formatOptions}. Type: \code{Intl.NumberFormat}. Default: "{style: 'percent'}".
#'\item \bold{isIndeterminate}. Type: \code{boolean}. Default: true.
#'\item \bold{showValueLabel}. Type: \code{boolean}. Default: true.
#'\item \bold{strokeWidth}. Type: \code{number}. Default: "2".
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base'｜'svgWrapper'｜'svg'｜'track'｜'indicator'｜'value'｜'label', string>>}. Default: NA.
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
#'\item \bold{children}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{variant}. Type: \code{solid | bordered | light | flat | faded | shadow | dot}. Default: "solid".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "default".
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: "full".
#'\item \bold{avatar}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" | "content" | "dot" | "avatar" | "closeButton", string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onClose}. Type: \code{(e: PressEvent) => void}. Default: NA.
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
#'\item \bold{children}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "sm".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "default".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: "sm".
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
#'\item \bold{orientation}. Type: \code{`horizontal` | `vertical`}. Default: "`horizontal`".
#' }
#' @md
#' @name divider
#' @example inst/examples/divider/app.R
#' @seealso See \url{https://nextui.org/docs/components/divider}.
NULL

#' drawer
#'
#' @description
#' Displays a panel that slides in from the edge of the screen, containing supplementary content.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{size}. Type: \code{xs | sm | md | lg | xl | 2xl | 3xl | 4xl | 5xl | full}. Default: "md".
#'\item \bold{radius}. Type: \code{none | sm | md | lg}. Default: "lg".
#'\item \bold{placement}. Type: \code{left | right | top | bottom}. Default: "right".
#'\item \bold{isOpen}. Type: \code{boolean}. Default: NA.
#'\item \bold{defaultOpen}. Type: \code{boolean}. Default: NA.
#'\item \bold{isDismissable}. Type: \code{boolean}. Default: true.
#'\item \bold{isKeyboardDismissDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{shouldBlockScroll}. Type: \code{boolean}. Default: true.
#'\item \bold{hideCloseButton}. Type: \code{boolean}. Default: false.
#'\item \bold{closeButton}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: NA.
#'\item \bold{portalContainer}. Type: \code{HTMLElement}. Default: "document.body".
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<'wrapper' | 'base' | 'backdrop' | 'header' | 'body' | 'footer' | 'closeButton', string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onOpenChange}. Type: \code{(isOpen: boolean) => void}. Default: NA.
#'\item \bold{onClose}. Type: \code{() => void}. Default: NA.
#' }
#' @md
#' @name drawer
#' @example inst/examples/drawer/app.R
#' @seealso See \url{https://nextui.org/docs/components/drawer}.
NULL

#' image
#'
#' @description
#' The Image component is used to display images with support for fallback.
#'
#' @details
#'
#' \itemize{
#'\item \bold{src}. Type: \code{string}. Default: NA.
#'\item \bold{srcSet}. Type: \code{string}. Default: NA.
#'\item \bold{sizes}. Type: \code{string}. Default: NA.
#'\item \bold{alt}. Type: \code{string}. Default: NA.
#'\item \bold{width}. Type: \code{number}. Default: NA.
#'\item \bold{height}. Type: \code{number}. Default: NA.
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: "xl".
#'\item \bold{shadow}. Type: \code{none | sm | md | lg}. Default: "none".
#'\item \bold{loading}. Type: \code{eager | lazy}. Default: NA.
#'\item \bold{fallbackSrc}. Type: \code{string}. Default: NA.
#'\item \bold{isBlurred}. Type: \code{boolean}. Default: false.
#'\item \bold{isZoomed}. Type: \code{boolean}. Default: false.
#'\item \bold{removeWrapper}. Type: \code{boolean}. Default: false.
#'\item \bold{disableSkeleton}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<"img" | "wrapper" | "zoomedWrapper" | "blurredImg", string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onLoad}. Type: \code{ReactEventHandler<HTMLImageElement>}. Default: NA.
#'\item \bold{onError}. Type: \code{() => void}. Default: NA.
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
#'\item \bold{children}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{variant}. Type: \code{flat | bordered | faded | underlined}. Default: "flat".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "default".
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: NA.
#'\item \bold{label}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{value}. Type: \code{string}. Default: NA.
#'\item \bold{defaultValue}. Type: \code{string}. Default: NA.
#'\item \bold{placeholder}. Type: \code{string}. Default: NA.
#'\item \bold{description}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{errorMessage}. Type: \code{ReactNode | ((v: ValidationResult) => ReactNode)}. Default: NA.
#'\item \bold{validate}. Type: \code{(value: string) => ValidationError | true | null | undefined}. Default: NA.
#'\item \bold{validationBehavior}. Type: \code{native | aria}. Default: "native".
#'\item \bold{minLength}. Type: \code{number}. Default: NA.
#'\item \bold{maxLength}. Type: \code{number}. Default: NA.
#'\item \bold{pattern}. Type: \code{string}. Default: NA.
#'\item \bold{type}. Type: \code{text | email | url | password | tel | search | file}. Default: "text".
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{labelPlacement}. Type: \code{inside | outside | outside-left}. Default: "inside".
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: true.
#'\item \bold{isClearable}. Type: \code{boolean}. Default: false.
#'\item \bold{isRequired}. Type: \code{boolean}. Default: false.
#'\item \bold{isReadOnly}. Type: \code{boolean}. Default: false.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{isInvalid}. Type: \code{boolean}. Default: false.
#'\item \bold{baseRef}. Type: \code{RefObject<HTMLDivElement>}. Default: NA.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' | 'label' | 'inputWrapper' | 'innerWrapper' | 'mainWrapper' | 'input' | 'clearButton' | 'helperWrapper' | 'description' | 'errorMessage', string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onChange}. Type: \code{React.ChangeEvent<HTMLInputElement>}. Default: NA.
#'\item \bold{onValueChange}. Type: \code{(value: string) => void}. Default: NA.
#'\item \bold{onClear}. Type: \code{() => void}. Default: NA.
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
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{color}. Type: \code{foreground | primary | secondary | success | warning | danger}. Default: "primary".
#'\item \bold{underline}. Type: \code{none | hover | always | active | focus}. Default: "none".
#'\item \bold{href}. Type: \code{string}. Default: NA.
#'\item \bold{target}. Type: \code{HTMLAttributeAnchorTarget}. Default: NA.
#'\item \bold{rel}. Type: \code{string}. Default: NA.
#'\item \bold{download}. Type: \code{boolean | string}. Default: NA.
#'\item \bold{ping}. Type: \code{string}. Default: NA.
#'\item \bold{referrerPolicy}. Type: \code{HTMLAttributeReferrerPolicy}. Default: NA.
#'\item \bold{isExternal}. Type: \code{boolean}. Default: false.
#'\item \bold{showAnchorIcon}. Type: \code{boolean}. Default: false.
#'\item \bold{anchorIcon}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{isBlock}. Type: \code{boolean}. Default: false.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#' }
#' \itemize{
#'\item \bold{onPress}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onPressStart}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onPressEnd}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onPressChange}. Type: \code{(isPressed: boolean) => void}. Default: NA.
#'\item \bold{onPressUp}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onKeyDown}. Type: \code{(e: KeyboardEvent) => void}. Default: NA.
#'\item \bold{onKeyUp}. Type: \code{(e: KeyboardEvent) => void}. Default: NA.
#'\item \bold{onClick}. Type: \code{MouseEventHandler}. Default: NA.
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
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: NA.
#'\item \bold{items}. Type: \code{Iterable<T>}. Default: NA.
#'\item \bold{variant}. Type: \code{solid | bordered | light | flat | faded | shadow}. Default: "solid".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "default".
#'\item \bold{selectionMode}. Type: \code{none | single | multiple}. Default: NA.
#'\item \bold{selectedKeys}. Type: \code{React.Key[]}. Default: NA.
#'\item \bold{disabledKeys}. Type: \code{React.Key[]}. Default: NA.
#'\item \bold{defaultSelectedKeys}. Type: \code{all | React.Key[]}. Default: NA.
#'\item \bold{disallowEmptySelection}. Type: \code{boolean}. Default: false.
#'\item \bold{shouldHighlightOnFocus}. Type: \code{boolean}. Default: false.
#'\item \bold{autoFocus}. Type: \code{boolean | first | last}. Default: false.
#'\item \bold{topContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{bottomContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{emptyContent}. Type: \code{ReactNode}. Default: "No items.".
#'\item \bold{shouldFocusWrap}. Type: \code{boolean}. Default: false.
#'\item \bold{isVirtualized}. Type: \code{boolean}. Default: false.
#'\item \bold{virtualization}. Type: \code{Record<"maxListboxHeight" & "itemHeight", number>}. Default: NA.
#'\item \bold{hideEmptyContent}. Type: \code{boolean}. Default: false.
#'\item \bold{hideSelectedIcon}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" | "list" | "emptyContent", string>>}. Default: NA.
#'\item \bold{itemClasses}. Type: \code{Partial<Record<"base" | "wrapper" | "title" | "description" | "selectedIcon", string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onAction}. Type: \code{(key: React.Key) => void}. Default: NA.
#'\item \bold{onSelectionChange}. Type: \code{(keys: React.Key[]) => void}. Default: NA.
#' }
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{title}. Type: \code{string}. Default: NA.
#'\item \bold{items}. Type: \code{Iterable<T>}. Default: NA.
#'\item \bold{hideSelectedIcon}. Type: \code{boolean}. Default: false.
#'\item \bold{showDivider}. Type: \code{boolean}. Default: false.
#'\item \bold{dividerProps}. Type: \code{DividerProps}. Default: NA.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" | "heading" | "group" | "divider", string>>}. Default: NA.
#'\item \bold{itemClasses}. Type: \code{Partial<Record<"base" | "wrapper" | "title" | "description" | "shortcut" | "selectedIcon", string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{key}. Type: \code{React.Key}. Default: NA.
#'\item \bold{title}. Type: \code{string | ReactNode}. Default: NA.
#'\item \bold{textValue}. Type: \code{string}. Default: NA.
#'\item \bold{description}. Type: \code{string | ReactNode}. Default: NA.
#'\item \bold{shortcut}. Type: \code{string | ReactNode}. Default: NA.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{selectedIcon}. Type: \code{ListboxItemSelectedIconProps}. Default: NA.
#'\item \bold{href}. Type: \code{string}. Default: NA.
#'\item \bold{target}. Type: \code{HTMLAttributeAnchorTarget}. Default: NA.
#'\item \bold{rel}. Type: \code{string}. Default: NA.
#'\item \bold{download}. Type: \code{boolean | string}. Default: NA.
#'\item \bold{ping}. Type: \code{string}. Default: NA.
#'\item \bold{referrerPolicy}. Type: \code{HTMLAttributeReferrerPolicy}. Default: NA.
#'\item \bold{shouldHighlightOnFocus}. Type: \code{boolean}. Default: false.
#'\item \bold{hideSelectedIcon}. Type: \code{boolean}. Default: false.
#'\item \bold{showDivider}. Type: \code{boolean}. Default: false.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{isSelected}. Type: \code{boolean}. Default: false.
#'\item \bold{isReadOnly}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" | "wrapper" | "title" | "description" | "shortcut" | "selectedIcon", string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onAction}. Type: \code{() => void}. Default: NA.
#'\item \bold{onPress}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onPressStart}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onPressEnd}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onPressChange}. Type: \code{(isPressed: boolean) => void}. Default: NA.
#'\item \bold{onPressUp}. Type: \code{(e: PressEvent) => void}. Default: NA.
#'\item \bold{onKeyDown}. Type: \code{(e: KeyboardEvent) => void}. Default: NA.
#'\item \bold{onKeyUp}. Type: \code{(e: KeyboardEvent) => void}. Default: NA.
#'\item \bold{onClick}. Type: \code{MouseEventHandler}. Default: NA.
#' }
#' @md
#' @name listbox
#' @example inst/examples/listbox/app.R
#' @seealso See \url{https://nextui.org/docs/components/listbox}.
NULL

#' modal
#'
#' @description
#' Displays a dialog with custom content that requires attention or provides additional information.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{size}. Type: \code{xs | sm | md | lg | xl | 2xl | 3xl | 4xl | 5xl | full}. Default: "md".
#'\item \bold{radius}. Type: \code{none | sm | md | lg}. Default: "lg".
#'\item \bold{shadow}. Type: \code{none | sm | md | lg}. Default: "lg".
#'\item \bold{backdrop}. Type: \code{transparent | opaque | blur}. Default: "opaque".
#'\item \bold{scrollBehavior}. Type: \code{normal | inside | outside}. Default: "normal".
#'\item \bold{placement}. Type: \code{auto | top | center | bottom}. Default: "auto".
#'\item \bold{isOpen}. Type: \code{boolean}. Default: NA.
#'\item \bold{defaultOpen}. Type: \code{boolean}. Default: NA.
#'\item \bold{isDismissable}. Type: \code{boolean}. Default: true.
#'\item \bold{isKeyboardDismissDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{shouldBlockScroll}. Type: \code{boolean}. Default: true.
#'\item \bold{hideCloseButton}. Type: \code{boolean}. Default: false.
#'\item \bold{closeButton}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: NA.
#'\item \bold{portalContainer}. Type: \code{HTMLElement}. Default: "document.body".
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<'wrapper' | 'base' | 'backdrop' | 'header' | 'body' | 'footer' | 'closeButton', string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onOpenChange}. Type: \code{(isOpen: boolean) => void}. Default: NA.
#'\item \bold{onClose}. Type: \code{() => void}. Default: NA.
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
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: NA.
#'\item \bold{height}. Type: \code{string | number}. Default: "4rem (64px)".
#'\item \bold{position}. Type: \code{static | sticky}. Default: "sticky".
#'\item \bold{maxWidth}. Type: \code{sm | md | lg | xl | 2xl | full}. Default: "lg".
#'\item \bold{parentRef}. Type: \code{React.RefObject<HTMLElement>}. Default: "window".
#'\item \bold{isBordered}. Type: \code{boolean}. Default: false.
#'\item \bold{isBlurred}. Type: \code{boolean}. Default: true.
#'\item \bold{isMenuOpen}. Type: \code{boolean}. Default: false.
#'\item \bold{isMenuDefaultOpen}. Type: \code{boolean}. Default: false.
#'\item \bold{shouldHideOnScroll}. Type: \code{boolean}. Default: false.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: NA.
#'\item \bold{disableScrollHandler}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' | 'wrapper' | 'brand' | 'content' | 'item' | 'toggle' | 'toggleIcon' | 'menu' | 'menuItem', string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onMenuOpenChange}. Type: \code{(isOpen: boolean) => void}. Default: NA.
#'\item \bold{onScrollPositionChange}. Type: \code{(position: number) => void}. Default: NA.
#' }
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: NA.
#'\item \bold{justify}. Type: \code{start | center | end}. Default: "start".
#' }
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{isActive}. Type: \code{boolean}. Default: false.
#' }
#' \itemize{
#'\item \bold{icon}. Type: \code{ReactNode | ((isOpen: boolean | undefined) => ReactNode)}. Default: NA.
#'\item \bold{isSelected}. Type: \code{boolean}. Default: false.
#'\item \bold{defaultSelected}. Type: \code{boolean}. Default: false.
#'\item \bold{srOnlyText}. Type: \code{string}. Default: "open/close navigation menu".
#' }
#' \itemize{
#'\item \bold{onChange}. Type: \code{(isOpen: boolean) => void}. Default: NA.
#' }
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: NA.
#'\item \bold{portalContainer}. Type: \code{HTMLElement}. Default: "document.body".
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: NA.
#' }
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{isActive}. Type: \code{boolean}. Default: false.
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
#'\item \bold{variant}. Type: \code{flat | bordered | light | faded}. Default: "flat".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "default".
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: "xl".
#'\item \bold{total}. Type: \code{number}. Default: "1".
#'\item \bold{dotsJump}. Type: \code{number}. Default: "5".
#'\item \bold{initialPage}. Type: \code{number}. Default: "1".
#'\item \bold{page}. Type: \code{number}. Default: NA.
#'\item \bold{siblings}. Type: \code{number}. Default: "1".
#'\item \bold{boundaries}. Type: \code{number}. Default: "1".
#'\item \bold{loop}. Type: \code{boolean}. Default: false.
#'\item \bold{isCompact}. Type: \code{boolean}. Default: false.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{showShadow}. Type: \code{boolean}. Default: false.
#'\item \bold{showControls}. Type: \code{boolean}. Default: false.
#'\item \bold{disableCursorAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{renderItem}. Type: \code{PaginationItemProps}. Default: NA.
#'\item \bold{getItemAriaLabel}. Type: \code{(page: string) => string}. Default: NA.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' | 'wrapper' | 'prev' | 'next' | 'item' | 'cursor' | 'forwardIcon' | 'ellipsis' | 'chevronNext', string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onChange}. Type: \code{(page: number) => void}. Default: NA.
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
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: NA.
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "default".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: "lg".
#'\item \bold{shadow}. Type: \code{none | sm | md | lg}. Default: "lg".
#'\item \bold{backdrop}. Type: \code{transparent | opaque | blur}. Default: "transparent".
#'\item \bold{placement}. Type: \code{PopoverPlacement}. Default: "bottom".
#'\item \bold{state}. Type: \code{OverlayTriggerState}. Default: NA.
#'\item \bold{isOpen}. Type: \code{boolean}. Default: NA.
#'\item \bold{defaultOpen}. Type: \code{boolean}. Default: NA.
#'\item \bold{offset}. Type: \code{number}. Default: "7".
#'\item \bold{containerPadding}. Type: \code{number}. Default: "12".
#'\item \bold{crossOffset}. Type: \code{number}. Default: "0".
#'\item \bold{triggerType}. Type: \code{dialog | menu | listbox | tree | grid}. Default: "dialog".
#'\item \bold{showArrow}. Type: \code{boolean}. Default: false.
#'\item \bold{shouldFlip}. Type: \code{boolean}. Default: true.
#'\item \bold{triggerScaleOnOpen}. Type: \code{boolean}. Default: true.
#'\item \bold{shouldBlockScroll}. Type: \code{boolean}. Default: false.
#'\item \bold{shouldCloseOnScroll}. Type: \code{boolean}. Default: false.
#'\item \bold{isKeyboardDismissDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{shouldCloseOnBlur}. Type: \code{boolean}. Default: false.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: NA.
#'\item \bold{portalContainer}. Type: \code{HTMLElement}. Default: "document.body".
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' | 'trigger' | 'backdrop' | 'content', string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onOpenChange}. Type: \code{(isOpen: boolean) => void}. Default: NA.
#'\item \bold{shouldCloseOnInteractOutside}. Type: \code{(e: HTMLElement) => void}. Default: NA.
#'\item \bold{onClose}. Type: \code{() => void}. Default: NA.
#' }
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode}. Default: NA.
#' }
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: NA.
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
#'\item \bold{label}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "primary".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: "full".
#'\item \bold{value}. Type: \code{number}. Default: NA.
#'\item \bold{valueLabel}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{minValue}. Type: \code{number}. Default: "0".
#'\item \bold{maxValue}. Type: \code{number}. Default: "100".
#'\item \bold{formatOptions}. Type: \code{Intl.NumberFormat}. Default: "{style: 'percent'}".
#'\item \bold{isIndeterminate}. Type: \code{boolean}. Default: false.
#'\item \bold{isStriped}. Type: \code{boolean}. Default: false.
#'\item \bold{showValueLabel}. Type: \code{boolean}. Default: true.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' | 'labelWrapper' | 'label' | 'track' | 'value' | 'indicator', string>>}. Default: NA.
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
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: NA.
#'\item \bold{items}. Type: \code{Iterable<T>}. Default: NA.
#'\item \bold{selectionMode}. Type: \code{single | multiple}. Default: NA.
#'\item \bold{selectedKeys}. Type: \code{all | Iterable<React.Key>}. Default: NA.
#'\item \bold{disabledKeys}. Type: \code{Iterable<React.Key>}. Default: NA.
#'\item \bold{defaultSelectedKeys}. Type: \code{all | Iterable<React.Key>}. Default: NA.
#'\item \bold{variant}. Type: \code{flat | bordered | faded | underlined}. Default: "flat".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "default".
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: NA.
#'\item \bold{placeholder}. Type: \code{string}. Default: "Select an option".
#'\item \bold{labelPlacement}. Type: \code{inside | outside | outside-left}. Default: "inside".
#'\item \bold{label}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{description}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{errorMessage}. Type: \code{ReactNode | ((v: ValidationResult) => ReactNode)}. Default: NA.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{selectorIcon}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{scrollRef}. Type: \code{React.RefObject<HTMLElement>}. Default: NA.
#'\item \bold{spinnerRef}. Type: \code{React.RefObject<HTMLElement>}. Default: NA.
#'\item \bold{maxListboxHeight}. Type: \code{number}. Default: "256".
#'\item \bold{itemHeight}. Type: \code{number}. Default: "32".
#'\item \bold{isVirtualized}. Type: \code{boolean}. Default: "undefined".
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: true.
#'\item \bold{isOpen}. Type: \code{boolean}. Default: NA.
#'\item \bold{defaultOpen}. Type: \code{boolean}. Default: NA.
#'\item \bold{isRequired}. Type: \code{boolean}. Default: false.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{isMultiline}. Type: \code{boolean}. Default: false.
#'\item \bold{isInvalid}. Type: \code{boolean}. Default: false.
#'\item \bold{validationState}. Type: \code{valid | invalid}. Default: NA.
#'\item \bold{showScrollIndicators}. Type: \code{boolean}. Default: true.
#'\item \bold{autoFocus}. Type: \code{boolean}. Default: false.
#'\item \bold{disallowEmptySelection}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: true.
#'\item \bold{disableSelectorIconRotation}. Type: \code{boolean}. Default: false.
#'\item \bold{hideEmptyContent}. Type: \code{boolean}. Default: false.
#'\item \bold{popoverProps}. Type: \code{PopoverProps}. Default: NA.
#'\item \bold{listboxProps}. Type: \code{ListboxProps}. Default: NA.
#'\item \bold{scrollShadowProps}. Type: \code{ScrollShadowProps}. Default: NA.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base"｜ "label"｜ "trigger"｜ "mainWrapper" ｜ "innerWrapper"｜ "selectorIcon" ｜ "value" ｜ "listboxWrapper"｜ "listbox" ｜ "popoverContent" ｜ "helperWrapper" ｜ "description" ｜ "errorMessage", string>>}. Default: NA.
#' }
#' 2. Select Events
#' \itemize{
#'\item \bold{onClose}. Type: \code{() => void}. Default: NA.
#'\item \bold{onOpenChange}. Type: \code{(isOpen: boolean) => void}. Default: NA.
#'\item \bold{onSelectionChange}. Type: \code{(keys: "all" | Set<React.Key> & {anchorKey?: string; currentKey?: string}) => void}. Default: NA.
#'\item \bold{onChange}. Type: \code{React.ChangeEvent<HTMLSelectElement>}. Default: NA.
#'\item \bold{renderValue}. Type: \code{RenderValueFunction}. Default: NA.
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
#'\item \bold{children}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{isLoaded}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" | "content", string>>}. Default: NA.
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
#'\item \bold{label}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{name}. Type: \code{string}. Default: NA.
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{color}. Type: \code{foreground | primary | secondary | success | warning | danger}. Default: "primary".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: "full".
#'\item \bold{step}. Type: \code{number}. Default: "1".
#'\item \bold{value}. Type: \code{number}. Default: NA.
#'\item \bold{defaultValue}. Type: \code{number}. Default: NA.
#'\item \bold{minValue}. Type: \code{number}. Default: "0".
#'\item \bold{maxValue}. Type: \code{number}. Default: "100".
#'\item \bold{orientation}. Type: \code{horizontal | vertical}. Default: "horizontal".
#'\item \bold{fillOffset}. Type: \code{number}. Default: NA.
#'\item \bold{showSteps}. Type: \code{boolean}. Default: false.
#'\item \bold{showTooltip}. Type: \code{boolean}. Default: false.
#'\item \bold{marks}. Type: \code{SliderStepMarks}. Default: NA.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{formatOptions}. Type: \code{Intl.NumberFormat}. Default: NA.
#'\item \bold{tooltipValueFormatOptions}. Type: \code{Intl.NumberFormat}. Default: NA.
#'\item \bold{tooltipProps}. Type: \code{TooltipProps}. Default: NA.
#'\item \bold{showOutline}. Type: \code{boolean}. Default: false.
#'\item \bold{hideValue}. Type: \code{boolean}. Default: false.
#'\item \bold{hideThumb}. Type: \code{boolean}. Default: false.
#'\item \bold{disableThumbScale}. Type: \code{boolean}. Default: false.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#' }
#' \itemize{
#'\item \bold{getValue}. Type: \code{(value: SliderValue) => string}. Default: NA.
#'\item \bold{renderLabel}. Type: \code{(props: DOMAttributes<HTMLLabelElement>) => ReactNode}. Default: NA.
#'\item \bold{renderValue}. Type: \code{(props: DOMAttributes<HTMLOutputElement>) => ReactNode}. Default: NA.
#'\item \bold{renderThumb}. Type: \code{(props: DOMAttributes<HTMLDivElement> & {index?: number}) => ReactNode}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onChange}. Type: \code{(value: SliderValue) => void}. Default: NA.
#'\item \bold{onChangeEnd}. Type: \code{(value: SliderValue) => void}. Default: NA.
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
#'\item \bold{children}. Type: \code{ReactNode | ReactNode[]}. Default: NA.
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{radius}. Type: \code{none | sm | md | lg}. Default: "lg".
#'\item \bold{symbol}. Type: \code{string | ReactNode}. Default: "$".
#'\item \bold{timeout}. Type: \code{number}. Default: "2000".
#'\item \bold{codeString}. Type: \code{string}. Default: NA.
#'\item \bold{tooltipProps}. Type: \code{TooltipProps}. Default: NA.
#'\item \bold{copyIcon}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{checkIcon}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{disableTooltip}. Type: \code{boolean}. Default: false.
#'\item \bold{disableCopy}. Type: \code{boolean}. Default: false.
#'\item \bold{hideCopyButton}. Type: \code{boolean}. Default: false.
#'\item \bold{hideSymbol}. Type: \code{boolean}. Default: false.
#'\item \bold{copyButtonProps}. Type: \code{ButtonProps}. Default: NA.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' | 'content' | 'pre' | 'symbol' | 'copyButton' | 'checkIcon', string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onCopy}. Type: \code{(value: string | string[]) => void}. Default: NA.
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
#'\item \bold{children}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{value}. Type: \code{string}. Default: NA.
#'\item \bold{name}. Type: \code{string}. Default: NA.
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "primary".
#'\item \bold{thumbIcon}. Type: \code{ThumbIconProps}. Default: NA.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{isSelected}. Type: \code{boolean}. Default: NA.
#'\item \bold{defaultSelected}. Type: \code{boolean}. Default: NA.
#'\item \bold{isReadOnly}. Type: \code{boolean}. Default: NA.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base"｜ "wrapper"｜ "thumb"｜ "label" ｜ "startContent" ｜ "endContent" ｜ "thumbIcon" , string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onChange}. Type: \code{React.ChangeEvent<HTMLInputElement>}. Default: NA.
#'\item \bold{onValueChange}. Type: \code{(isSelected: boolean) => void}. Default: NA.
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
#'\item \bold{children*}. Type: \code{ReactNode | ((item: T) => ReactElement)}. Default: NA.
#'\item \bold{variant}. Type: \code{solid | bordered | light | underlined}. Default: "solid".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "default".
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: NA.
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: false.
#'\item \bold{items}. Type: \code{Iterable<T>}. Default: NA.
#'\item \bold{disabledKeys}. Type: \code{React.Key[]}. Default: NA.
#'\item \bold{selectedKey}. Type: \code{React.Key}. Default: NA.
#'\item \bold{defaultSelectedKey}. Type: \code{React.Key}. Default: NA.
#'\item \bold{shouldSelectOnPressUp}. Type: \code{boolean}. Default: true.
#'\item \bold{keyboardActivation}. Type: \code{automatic | manual}. Default: "automatic".
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: NA.
#'\item \bold{disableCursorAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base"｜ "tabList"｜ "tab"｜ "tabContent"｜ "cursor" ｜ "panel" ｜ "tabWrapper", string>>}. Default: NA.
#'\item \bold{placement}. Type: \code{top | bottom | start | end}. Default: "top".
#'\item \bold{isVertical}. Type: \code{boolean}. Default: false.
#'\item \bold{destroyInactiveTabPanel}. Type: \code{boolean}. Default: true.
#' }
#' \itemize{
#'\item \bold{onSelectionChange}. Type: \code{(key: React.Key) => any}. Default: NA.
#' }
#' \itemize{
#'\item \bold{tabRef}. Type: \code{RefObject<HTMLButtonElement>}. Default: NA.
#'\item \bold{children*}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{title}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{titleValue}. Type: \code{string}. Default: NA.
#'\item \bold{href}. Type: \code{string}. Default: NA.
#'\item \bold{target}. Type: \code{HTMLAttributeAnchorTarget}. Default: NA.
#'\item \bold{rel}. Type: \code{string}. Default: NA.
#'\item \bold{download}. Type: \code{boolean | string}. Default: NA.
#'\item \bold{ping}. Type: \code{string}. Default: NA.
#'\item \bold{referrerPolicy}. Type: \code{HTMLAttributeReferrerPolicy}. Default: NA.
#'\item \bold{shouldSelectOnPressUp}. Type: \code{boolean}. Default: NA.
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
#'\item \bold{children}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{minRows}. Type: \code{number}. Default: "3".
#'\item \bold{maxRows}. Type: \code{number}. Default: "8".
#'\item \bold{cacheMeasurements}. Type: \code{boolean}. Default: false.
#'\item \bold{variant}. Type: \code{flat | bordered | faded | underlined}. Default: "flat".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "default".
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: NA.
#'\item \bold{label}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{value}. Type: \code{string}. Default: NA.
#'\item \bold{defaultValue}. Type: \code{string}. Default: NA.
#'\item \bold{placeholder}. Type: \code{string}. Default: NA.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{description}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{errorMessage}. Type: \code{ReactNode | ((v: ValidationResult) => ReactNode)}. Default: NA.
#'\item \bold{validate}. Type: \code{(value: string) => ValidationError | true | null | undefined}. Default: NA.
#'\item \bold{validationBehavior}. Type: \code{native | aria}. Default: "native".
#'\item \bold{labelPlacement}. Type: \code{inside | outside | outside-left}. Default: "inside".
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: true.
#'\item \bold{isRequired}. Type: \code{boolean}. Default: false.
#'\item \bold{isReadOnly}. Type: \code{boolean}. Default: NA.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{isClearable}. Type: \code{boolean}. Default: false.
#'\item \bold{isInvalid}. Type: \code{boolean}. Default: false.
#'\item \bold{validationState}. Type: \code{valid | invalid}. Default: NA.
#'\item \bold{disableAutosize}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" | "label" | "inputWrapper" | "innerWrapper" | "input" | "description" | "errorMessage", string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onChange}. Type: \code{React.ChangeEvent<HTMLInputElement>}. Default: NA.
#'\item \bold{onValueChange}. Type: \code{(value: string) => void}. Default: NA.
#'\item \bold{onClear}. Type: \code{() => void}. Default: NA.
#'\item \bold{onHeightChange}. Type: \code{(height: number, meta: { rowHeight: number }) => void}. Default: NA.
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
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: NA.
#'\item \bold{content}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{size}. Type: \code{sm | md | lg}. Default: "md".
#'\item \bold{color}. Type: \code{default | primary | secondary | success | warning | danger}. Default: "default".
#'\item \bold{radius}. Type: \code{none | sm | md | lg | full}. Default: "md".
#'\item \bold{shadow}. Type: \code{none | sm | md | lg}. Default: "sm".
#'\item \bold{placement}. Type: \code{TooltipPlacement}. Default: "top".
#'\item \bold{delay}. Type: \code{number}. Default: "0".
#'\item \bold{closeDelay}. Type: \code{number}. Default: "500".
#'\item \bold{isOpen}. Type: \code{boolean}. Default: NA.
#'\item \bold{defaultOpen}. Type: \code{boolean}. Default: NA.
#'\item \bold{offset}. Type: \code{number}. Default: "7".
#'\item \bold{containerPadding}. Type: \code{number}. Default: "12".
#'\item \bold{crossOffset}. Type: \code{number}. Default: "0".
#'\item \bold{showArrow}. Type: \code{boolean}. Default: false.
#'\item \bold{shouldFlip}. Type: \code{boolean}. Default: true.
#'\item \bold{triggerScaleOnOpen}. Type: \code{boolean}. Default: true.
#'\item \bold{isKeyboardDismissDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{isDismissable}. Type: \code{boolean}. Default: false.
#'\item \bold{shouldCloseOnBlur}. Type: \code{boolean}. Default: true.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: NA.
#'\item \bold{portalContainer}. Type: \code{HTMLElement}. Default: "document.body".
#'\item \bold{updatePositionDeps}. Type: \code{any[]}. Default: "[]".
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: false.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: false.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base"｜"content", string>>}. Default: NA.
#' }
#' \itemize{
#'\item \bold{onOpenChange}. Type: \code{(isOpen: boolean) => void}. Default: NA.
#'\item \bold{shouldCloseOnInteractOutside}. Type: \code{(e: HTMLElement) => void}. Default: NA.
#'\item \bold{onClose}. Type: \code{() => void}. Default: NA.
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
#'\item \bold{name}. Type: \code{string}. Default: NA.
#'\item \bold{description}. Type: \code{ReactNode}. Default: NA.
#'\item \bold{isFocusable}. Type: \code{boolean}. Default: false.
#'\item \bold{avatarProps}. Type: \code{AvatarProps}. Default: NA.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" | "wrapper" | "name" | "description", string>>}. Default: NA.
#' }
#' @md
#' @name user
#' @example inst/examples/user/app.R
#' @seealso See \url{https://nextui.org/docs/components/user}.
NULL

#' spacer
#'
#' @description
#' Spacer is a component used to add space between components.
#'
#' @details
#'
#' \itemize{
#'\item \bold{x}. Type: \code{Space}. Default: \code{"1"}.
#'\item \bold{y}. Type: \code{Space}. Default: \code{"1"}.
#' }
#' @md
#' @name spacer
#' @example inst/examples/spacer/app.R
#' @seealso See \url{https://heroui.com/docs/layout/spacer}.
NULL

#' accordion
#'
#' @description
#' Accordion display a list of high-level options that can expand/collapse to reveal more information.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode OR ReactNode[]}. Default: \code{NA}.
#'\item \bold{variant}. Type: \code{light OR shadow OR bordered OR splitted}. Default: \code{"light"}.
#'\item \bold{selectionMode}. Type: \code{none OR single OR multiple}. Default: \code{NA}.
#'\item \bold{selectionBehavior}. Type: \code{toggle OR replace}. Default: \code{"toggle"}.
#'\item \bold{isCompact}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{showDivider}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{dividerProps}. Type: \code{DividerProps}. Default: \code{NA}.
#'\item \bold{hideIndicator}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableIndicatorAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disallowEmptySelection}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{keepContentMounted}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: \code{NA}.
#'\item \bold{disabledKeys}. Type: \code{React.Key[]}. Default: \code{NA}.
#'\item \bold{itemClasses}. Type: \code{AccordionItemClassnames}. Default: \code{NA}.
#'\item \bold{selectedKeys}. Type: \code{all OR React.Key[]}. Default: \code{NA}.
#'\item \bold{defaultSelectedKeys}. Type: \code{all OR React.Key[]}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onSelectionChange}. Type: \code{(keys: "all" OR Set<React.Key>) => any}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{title}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{subtitle}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{indicator}. Type: \code{IndicatorProps}. Default: \code{NA}.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: \code{NA}.
#'\item \bold{isCompact}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{keepContentMounted}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{hideIndicator}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableIndicatorAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{HeadingComponent}. Type: \code{React.ElementType}. Default: \code{"h2"}.
#'\item \bold{classNames}. Type: \code{AccordionItemClassnames}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onFocus}. Type: \code{(e: FocusEvent) => void}. Default: \code{NA}.
#'\item \bold{onBlur}. Type: \code{(e: FocusEvent) => void}. Default: \code{NA}.
#'\item \bold{onFocusChange}. Type: \code{(isFocused: boolean) => void}. Default: \code{NA}.
#'\item \bold{onKeyDown}. Type: \code{(e: KeyboardEvent) => void}. Default: \code{NA}.
#'\item \bold{onKeyUp}. Type: \code{(e: KeyboardEvent) => void}. Default: \code{NA}.
#'\item \bold{onPress}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onPressStart}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onPressEnd}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onPressChange}. Type: \code{(isPressed: boolean) => void}. Default: \code{NA}.
#'\item \bold{onPressUp}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onClick}. Type: \code{MouseEventHandler}. Default: \code{NA}.
#' }
#' @md
#' @name accordion
#' @example inst/examples/accordion/app.R
#' @seealso See \url{https://heroui.com/docs/components/accordion}.
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
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: \code{NA}.
#'\item \bold{label}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{name}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{variant}. Type: \code{flat OR bordered OR faded OR underlined}. Default: \code{"flat"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"default"}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{NA}.
#'\item \bold{items}. Type: \code{Iterable<T>}. Default: \code{NA}.
#'\item \bold{defaultItems}. Type: \code{Iterable<T>}. Default: \code{NA}.
#'\item \bold{inputValue}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{defaultInputValue}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{allowsCustomValue}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{allowsEmptyCollection}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{shouldCloseOnBlur}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{placeholder}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{description}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{menuTrigger}. Type: \code{focus OR input OR manual}. Default: \code{"focus"}.
#'\item \bold{labelPlacement}. Type: \code{inside OR outside OR outside-left}. Default: \code{"inside"}.
#'\item \bold{selectedKey}. Type: \code{React.Key}. Default: \code{NA}.
#'\item \bold{defaultSelectedKey}. Type: \code{React.Key}. Default: \code{NA}.
#'\item \bold{disabledKeys}. Type: \code{all OR React.Key[]}. Default: \code{NA}.
#'\item \bold{errorMessage}. Type: \code{ReactNode OR ((v: ValidationResult) => ReactNode)}. Default: \code{NA}.
#'\item \bold{validate}. Type: \code{(value: { inputValue: string, selectedKey: React.Key }) => ValidationError OR true OR null OR undefined}. Default: \code{NA}.
#'\item \bold{validationBehavior}. Type: \code{native OR aria}. Default: \code{"native"}.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{autoFocus}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{defaultFilter}. Type: \code{(textValue: string, inputValue: string) => boolean}. Default: \code{NA}.
#'\item \bold{filterOptions}. Type: \code{Intl.CollatorOptions}. Default: \code{"{ sensitivity: 'base'}"}.
#'\item \bold{maxListboxHeight}. Type: \code{number}. Default: \code{"256"}.
#'\item \bold{itemHeight}. Type: \code{number}. Default: \code{"32"}.
#'\item \bold{isVirtualized}. Type: \code{boolean}. Default: \code{"undefined"}.
#'\item \bold{isReadOnly}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isRequired}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isInvalid}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{selectorIcon}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{clearIcon}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{showScrollIndicators}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{scrollRef}. Type: \code{React.RefObject<HTMLElement>}. Default: \code{NA}.
#'\item \bold{inputProps}. Type: \code{InputProps}. Default: \code{NA}.
#'\item \bold{popoverProps}. Type: \code{PopoverProps}. Default: \code{NA}.
#'\item \bold{listboxProps}. Type: \code{ListboxProps}. Default: \code{NA}.
#'\item \bold{scrollShadowProps}. Type: \code{ScrollShadowProps}. Default: \code{NA}.
#'\item \bold{selectorButtonProps}. Type: \code{ButtonProps}. Default: \code{NA}.
#'\item \bold{clearButtonProps}. Type: \code{ButtonProps}. Default: \code{NA}.
#'\item \bold{isClearable}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{disableClearable}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{disableSelectorIconRotation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' OR 'listboxWrapper' OR 'listbox' OR 'popoverContent' OR 'endContentWrapper' OR 'clearButton' OR 'selectorButton', string>>}. Default: \code{NA}.
#' }
#' 2. Autocomplete Events
#' \itemize{
#'\item \bold{onOpenChange}. Type: \code{(isOpen: boolean, menuTrigger?: MenuTriggerAction) => void}. Default: \code{NA}.
#'\item \bold{onInputChange}. Type: \code{(value: string) => void}. Default: \code{NA}.
#'\item \bold{onSelectionChange}. Type: \code{(key: React.Key) => void}. Default: \code{NA}.
#'\item \bold{onFocus}. Type: \code{(e: FocusEvent<HTMLInputElement>) => void}. Default: \code{NA}.
#'\item \bold{onBlur}. Type: \code{(e: FocusEvent<HTMLInputElement>) => void}. Default: \code{NA}.
#'\item \bold{onFocusChange}. Type: \code{(isFocused: boolean) => void}. Default: \code{NA}.
#'\item \bold{onKeyDown}. Type: \code{(e: KeyboardEvent) => void}. Default: \code{NA}.
#'\item \bold{onKeyUp}. Type: \code{(e: KeyboardEvent) => void}. Default: \code{NA}.
#'\item \bold{onClose}. Type: \code{() => void}. Default: \code{NA}.
#' }
#' @md
#' @name autocomplete
#' @example inst/examples/autocomplete/app.R
#' @seealso See \url{https://heroui.com/docs/components/autocomplete}.
NULL

#' avatar
#'
#' @description
#' The Avatar component is used to represent a user, and displays the profile picture, initials or fallback icon.
#'
#' @details
#'
#' \itemize{
#'\item \bold{src}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"default"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{"full"}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{name}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{icon}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{fallback}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{isBordered}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isFocusable}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{showFallback}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{ImgComponent}. Type: \code{React.ElementType}. Default: \code{"img"}.
#'\item \bold{imgProps}. Type: \code{ImgComponentProps}. Default: \code{NA}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" OR "img" OR "fallback" OR "name" OR "icon", string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{max}. Type: \code{number}. Default: \code{"5"}.
#'\item \bold{total}. Type: \code{number}. Default: \code{NA}.
#'\item \bold{size}. Type: \code{AvatarProps['size']}. Default: \code{NA}.
#'\item \bold{color}. Type: \code{AvatarProps['color']}. Default: \code{NA}.
#'\item \bold{radius}. Type: \code{AvatarProps['radius']}. Default: \code{NA}.
#'\item \bold{isGrid}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{isBordered}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{renderCount}. Type: \code{(count: number) => ReactNode}. Default: \code{NA}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" OR "count", string>>}. Default: \code{NA}.
#' }
#' @md
#' @name avatar
#' @example inst/examples/avatar/app.R
#' @seealso See \url{https://heroui.com/docs/components/avatar}.
NULL

#' badge
#'
#' @description
#' Badges are used as a small numerical value or status descriptor for UI elements.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{content}. Type: \code{string OR number OR ReactNode}. Default: \code{NA}.
#'\item \bold{variant}. Type: \code{solid OR flat OR faded OR shadow}. Default: \code{"solid"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"default"}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{shape}. Type: \code{circle OR rectangle}. Default: \code{"rectangle"}.
#'\item \bold{placement}. Type: \code{top-right OR top-left OR bottom-right OR bottom-left}. Default: \code{"top-right"}.
#'\item \bold{showOutline}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{disableOutline}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isInvisible}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isOneChar}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDot}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base"OR"badge", string>>}. Default: \code{NA}.
#' }
#' @md
#' @name badge
#' @example inst/examples/badge/app.R
#' @seealso See \url{https://heroui.com/docs/components/badge}.
NULL

#' button
#'
#' @description
#' Buttons allow users to perform actions and choose with a single tap.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{variant}. Type: \code{solid OR bordered OR light OR flat OR faded OR shadow OR ghost}. Default: \code{"solid"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"default"}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{NA}.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{spinner}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{spinnerPlacement}. Type: \code{start OR end}. Default: \code{"start"}.
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isIconOnly}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isLoading}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableRipple}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#' }
#' \itemize{
#'\item \bold{onPress}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onPressStart}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onPressEnd}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onPressChange}. Type: \code{(isPressed: boolean) => void}. Default: \code{NA}.
#'\item \bold{onPressUp}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onKeyDown}. Type: \code{(e: KeyboardEvent) => void}. Default: \code{NA}.
#'\item \bold{onKeyUp}. Type: \code{(e: KeyboardEvent) => void}. Default: \code{NA}.
#'\item \bold{onClick}. Type: \code{MouseEventHandler}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode OR ReactNode[]}. Default: \code{NA}.
#'\item \bold{variant}. Type: \code{solid OR bordered OR light OR flat OR faded OR shadow OR ghost}. Default: \code{"solid"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"default"}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{"xl"}.
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#' }
#' @md
#' @name button
#' @example inst/examples/button/app.R
#' @seealso See \url{https://heroui.com/docs/components/button}.
NULL

#' card
#'
#' @description
#' Card is a container for text, photos, and actions in the context of a single subject.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode OR ReactNode[]}. Default: \code{NA}.
#'\item \bold{shadow}. Type: \code{none OR sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg}. Default: \code{"lg"}.
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isHoverable}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isPressable}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isBlurred}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isFooterBlurred}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableRipple}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{allowTextSelectionOnPress}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' OR 'header' OR 'body' OR 'footer', string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onPress}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onPressStart}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onPressEnd}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onPressChange}. Type: \code{(isPressed: boolean) => void}. Default: \code{NA}.
#'\item \bold{onPressUp}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#' }
#' @md
#' @name card
#' @example inst/examples/card/app.R
#' @seealso See \url{https://heroui.com/docs/components/card}.
NULL

#' checkbox
#'
#' @description
#' Checkboxes allow users to select multiple items from a list of individual items, or to mark one individual item as selected.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{icon}. Type: \code{CheckboxIconProps}. Default: \code{NA}.
#'\item \bold{value}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{name}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"primary"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{NA}.
#'\item \bold{lineThrough}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isSelected}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{defaultSelected}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{isRequired}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isReadOnly}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isIndeterminate}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{isInvalid}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{validationState}. Type: \code{valid OR invalid}. Default: \code{NA}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base"OR "wrapper"OR "icon"OR "label", string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onChange}. Type: \code{React.ChangeEvent<HTMLInputElement>}. Default: \code{NA}.
#'\item \bold{onValueChange}. Type: \code{(isSelected: boolean) => void}. Default: \code{NA}.
#' }
#' @md
#' @name checkbox
#' @example inst/examples/checkbox/app.R
#' @seealso See \url{https://heroui.com/docs/components/checkbox}.
NULL

#' circular-progress
#'
#' @description
#' Circular progress indicators are utilized to indicate an undetermined wait period or visually represent the duration of a process.
#'
#' @details
#'
#' \itemize{
#'\item \bold{label}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"primary"}.
#'\item \bold{value}. Type: \code{number}. Default: \code{NA}.
#'\item \bold{valueLabel}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{minValue}. Type: \code{number}. Default: \code{"0"}.
#'\item \bold{maxValue}. Type: \code{number}. Default: \code{"100"}.
#'\item \bold{formatOptions}. Type: \code{Intl.NumberFormat}. Default: \code{"{style: 'percent'}"}.
#'\item \bold{isIndeterminate}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{showValueLabel}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{strokeWidth}. Type: \code{number}. Default: \code{"2"}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base'OR'svgWrapper'OR'svg'OR'track'OR'indicator'OR'value'OR'label', string>>}. Default: \code{NA}.
#' }
#' @md
#' @name circular-progress
#' @example inst/examples/circular-progress/app.R
#' @seealso See \url{https://heroui.com/docs/components/circular-progress}.
NULL

#' chip
#'
#' @description
#' A Chip is a small block of essential information that represent an input, attribute, or action.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{variant}. Type: \code{solid OR bordered OR light OR flat OR faded OR shadow OR dot}. Default: \code{"solid"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"default"}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{"full"}.
#'\item \bold{avatar}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" OR "content" OR "dot" OR "avatar" OR "closeButton", string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onClose}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#' }
#' @md
#' @name chip
#' @example inst/examples/chip/app.R
#' @seealso See \url{https://heroui.com/docs/components/chip}.
NULL

#' code
#'
#' @description
#' Code is a component used to display inline code.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"sm"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"default"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{"sm"}.
#' }
#' @md
#' @name code
#' @example inst/examples/code/app.R
#' @seealso See \url{https://heroui.com/docs/components/code}.
NULL

#' divider
#'
#' @description
#' Divider is a component that separates content in a page.
#'
#' @details
#'
#' \itemize{
#'\item \bold{orientation}. Type: \code{`horizontal` OR `vertical`}. Default: \code{"`horizontal`"}.
#' }
#' @md
#' @name divider
#' @example inst/examples/divider/app.R
#' @seealso See \url{https://heroui.com/docs/components/divider}.
NULL

#' drawer
#'
#' @description
#' Displays a panel that slides in from the edge of the screen, containing supplementary content.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{size}. Type: \code{xs OR sm OR md OR lg OR xl OR 2xl OR 3xl OR 4xl OR 5xl OR full}. Default: \code{"md"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg}. Default: \code{"lg"}.
#'\item \bold{placement}. Type: \code{left OR right OR top OR bottom}. Default: \code{"right"}.
#'\item \bold{isOpen}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{defaultOpen}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{isDismissable}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{isKeyboardDismissDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{shouldBlockScroll}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{hideCloseButton}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{closeButton}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: \code{NA}.
#'\item \bold{portalContainer}. Type: \code{HTMLElement}. Default: \code{"document.body"}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<'wrapper' OR 'base' OR 'backdrop' OR 'header' OR 'body' OR 'footer' OR 'closeButton', string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onOpenChange}. Type: \code{(isOpen: boolean) => void}. Default: \code{NA}.
#'\item \bold{onClose}. Type: \code{() => void}. Default: \code{NA}.
#' }
#' @md
#' @name drawer
#' @example inst/examples/drawer/app.R
#' @seealso See \url{https://heroui.com/docs/components/drawer}.
NULL

#' image
#'
#' @description
#' The Image component is used to display images with support for fallback.
#'
#' @details
#'
#' \itemize{
#'\item \bold{src}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{srcSet}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{sizes}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{alt}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{width}. Type: \code{number}. Default: \code{NA}.
#'\item \bold{height}. Type: \code{number}. Default: \code{NA}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{"xl"}.
#'\item \bold{shadow}. Type: \code{none OR sm OR md OR lg}. Default: \code{"none"}.
#'\item \bold{loading}. Type: \code{eager OR lazy}. Default: \code{NA}.
#'\item \bold{fallbackSrc}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{isBlurred}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isZoomed}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{removeWrapper}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableSkeleton}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"img" OR "wrapper" OR "zoomedWrapper" OR "blurredImg", string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onLoad}. Type: \code{ReactEventHandler<HTMLImageElement>}. Default: \code{NA}.
#'\item \bold{onError}. Type: \code{() => void}. Default: \code{NA}.
#' }
#' @md
#' @name image
#' @example inst/examples/image/app.R
#' @seealso See \url{https://heroui.com/docs/components/image}.
NULL

#' input
#'
#' @description
#' Input is a component that allows users to enter text. It can be used to get user inputs in forms, search fields, and more.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{variant}. Type: \code{flat OR bordered OR faded OR underlined}. Default: \code{"flat"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"default"}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{NA}.
#'\item \bold{label}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{value}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{defaultValue}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{placeholder}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{description}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{errorMessage}. Type: \code{ReactNode OR ((v: ValidationResult) => ReactNode)}. Default: \code{NA}.
#'\item \bold{validate}. Type: \code{(value: string) => ValidationError OR true OR null OR undefined}. Default: \code{NA}.
#'\item \bold{validationBehavior}. Type: \code{native OR aria}. Default: \code{"native"}.
#'\item \bold{minLength}. Type: \code{number}. Default: \code{NA}.
#'\item \bold{maxLength}. Type: \code{number}. Default: \code{NA}.
#'\item \bold{pattern}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{type}. Type: \code{text OR email OR url OR password OR tel OR search OR file}. Default: \code{"text"}.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{labelPlacement}. Type: \code{inside OR outside OR outside-left}. Default: \code{"inside"}.
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{isClearable}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isRequired}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isReadOnly}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isInvalid}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{baseRef}. Type: \code{RefObject<HTMLDivElement>}. Default: \code{NA}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' OR 'label' OR 'inputWrapper' OR 'innerWrapper' OR 'mainWrapper' OR 'input' OR 'clearButton' OR 'helperWrapper' OR 'description' OR 'errorMessage', string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onChange}. Type: \code{React.ChangeEvent<HTMLInputElement>}. Default: \code{NA}.
#'\item \bold{onValueChange}. Type: \code{(value: string) => void}. Default: \code{NA}.
#'\item \bold{onClear}. Type: \code{() => void}. Default: \code{NA}.
#' }
#' @md
#' @name input
#' @example inst/examples/input/app.R
#' @seealso See \url{https://heroui.com/docs/components/input}.
NULL

#' link
#'
#' @description
#' Links allow users to click their way from page to page. This component is styled to resemble a hyperlink and semantically renders an &lt;a&gt;
#'
#' @details
#'
#' \itemize{
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{color}. Type: \code{foreground OR primary OR secondary OR success OR warning OR danger}. Default: \code{"primary"}.
#'\item \bold{underline}. Type: \code{none OR hover OR always OR active OR focus}. Default: \code{"none"}.
#'\item \bold{href}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{target}. Type: \code{HTMLAttributeAnchorTarget}. Default: \code{NA}.
#'\item \bold{rel}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{download}. Type: \code{boolean OR string}. Default: \code{NA}.
#'\item \bold{ping}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{referrerPolicy}. Type: \code{HTMLAttributeReferrerPolicy}. Default: \code{NA}.
#'\item \bold{isExternal}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{showAnchorIcon}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{anchorIcon}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{isBlock}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#' }
#' \itemize{
#'\item \bold{onPress}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onPressStart}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onPressEnd}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onPressChange}. Type: \code{(isPressed: boolean) => void}. Default: \code{NA}.
#'\item \bold{onPressUp}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onKeyDown}. Type: \code{(e: KeyboardEvent) => void}. Default: \code{NA}.
#'\item \bold{onKeyUp}. Type: \code{(e: KeyboardEvent) => void}. Default: \code{NA}.
#'\item \bold{onClick}. Type: \code{MouseEventHandler}. Default: \code{NA}.
#' }
#' @md
#' @name link
#' @example inst/examples/link/app.R
#' @seealso See \url{https://heroui.com/docs/components/link}.
NULL

#' listbox
#'
#' @description
#' A listbox displays a list of options and allows a user to select one or more of them.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: \code{NA}.
#'\item \bold{items}. Type: \code{Iterable<T>}. Default: \code{NA}.
#'\item \bold{variant}. Type: \code{solid OR bordered OR light OR flat OR faded OR shadow}. Default: \code{"solid"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"default"}.
#'\item \bold{selectionMode}. Type: \code{none OR single OR multiple}. Default: \code{NA}.
#'\item \bold{selectedKeys}. Type: \code{React.Key[]}. Default: \code{NA}.
#'\item \bold{disabledKeys}. Type: \code{React.Key[]}. Default: \code{NA}.
#'\item \bold{defaultSelectedKeys}. Type: \code{all OR React.Key[]}. Default: \code{NA}.
#'\item \bold{disallowEmptySelection}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{shouldHighlightOnFocus}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{autoFocus}. Type: \code{boolean OR first OR last}. Default: \code{false}.
#'\item \bold{topContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{bottomContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{emptyContent}. Type: \code{ReactNode}. Default: \code{"No items."}.
#'\item \bold{shouldFocusWrap}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isVirtualized}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{virtualization}. Type: \code{Record<"maxListboxHeight" & "itemHeight", number>}. Default: \code{NA}.
#'\item \bold{hideEmptyContent}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{hideSelectedIcon}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" OR "list" OR "emptyContent", string>>}. Default: \code{NA}.
#'\item \bold{itemClasses}. Type: \code{Partial<Record<"base" OR "wrapper" OR "title" OR "description" OR "selectedIcon", string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onAction}. Type: \code{(key: React.Key) => void}. Default: \code{NA}.
#'\item \bold{onSelectionChange}. Type: \code{(keys: React.Key[]) => void}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{title}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{items}. Type: \code{Iterable<T>}. Default: \code{NA}.
#'\item \bold{hideSelectedIcon}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{showDivider}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{dividerProps}. Type: \code{DividerProps}. Default: \code{NA}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" OR "heading" OR "group" OR "divider", string>>}. Default: \code{NA}.
#'\item \bold{itemClasses}. Type: \code{Partial<Record<"base" OR "wrapper" OR "title" OR "description" OR "shortcut" OR "selectedIcon", string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{key}. Type: \code{React.Key}. Default: \code{NA}.
#'\item \bold{title}. Type: \code{string OR ReactNode}. Default: \code{NA}.
#'\item \bold{textValue}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{description}. Type: \code{string OR ReactNode}. Default: \code{NA}.
#'\item \bold{shortcut}. Type: \code{string OR ReactNode}. Default: \code{NA}.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{selectedIcon}. Type: \code{ListboxItemSelectedIconProps}. Default: \code{NA}.
#'\item \bold{href}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{target}. Type: \code{HTMLAttributeAnchorTarget}. Default: \code{NA}.
#'\item \bold{rel}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{download}. Type: \code{boolean OR string}. Default: \code{NA}.
#'\item \bold{ping}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{referrerPolicy}. Type: \code{HTMLAttributeReferrerPolicy}. Default: \code{NA}.
#'\item \bold{shouldHighlightOnFocus}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{hideSelectedIcon}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{showDivider}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isSelected}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isReadOnly}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" OR "wrapper" OR "title" OR "description" OR "shortcut" OR "selectedIcon", string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onAction}. Type: \code{() => void}. Default: \code{NA}.
#'\item \bold{onPress}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onPressStart}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onPressEnd}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onPressChange}. Type: \code{(isPressed: boolean) => void}. Default: \code{NA}.
#'\item \bold{onPressUp}. Type: \code{(e: PressEvent) => void}. Default: \code{NA}.
#'\item \bold{onKeyDown}. Type: \code{(e: KeyboardEvent) => void}. Default: \code{NA}.
#'\item \bold{onKeyUp}. Type: \code{(e: KeyboardEvent) => void}. Default: \code{NA}.
#'\item \bold{onClick}. Type: \code{MouseEventHandler}. Default: \code{NA}.
#' }
#' @md
#' @name listbox
#' @example inst/examples/listbox/app.R
#' @seealso See \url{https://heroui.com/docs/components/listbox}.
NULL

#' modal
#'
#' @description
#' Displays a dialog with custom content that requires attention or provides additional information.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{size}. Type: \code{xs OR sm OR md OR lg OR xl OR 2xl OR 3xl OR 4xl OR 5xl OR full}. Default: \code{"md"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg}. Default: \code{"lg"}.
#'\item \bold{shadow}. Type: \code{none OR sm OR md OR lg}. Default: \code{"lg"}.
#'\item \bold{backdrop}. Type: \code{transparent OR opaque OR blur}. Default: \code{"opaque"}.
#'\item \bold{scrollBehavior}. Type: \code{normal OR inside OR outside}. Default: \code{"normal"}.
#'\item \bold{placement}. Type: \code{auto OR top OR center OR bottom}. Default: \code{"auto"}.
#'\item \bold{isOpen}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{defaultOpen}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{isDismissable}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{isKeyboardDismissDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{shouldBlockScroll}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{hideCloseButton}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{closeButton}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: \code{NA}.
#'\item \bold{portalContainer}. Type: \code{HTMLElement}. Default: \code{"document.body"}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<'wrapper' OR 'base' OR 'backdrop' OR 'header' OR 'body' OR 'footer' OR 'closeButton', string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onOpenChange}. Type: \code{(isOpen: boolean) => void}. Default: \code{NA}.
#'\item \bold{onClose}. Type: \code{() => void}. Default: \code{NA}.
#' }
#' @md
#' @name modal
#' @example inst/examples/modal/app.R
#' @seealso See \url{https://heroui.com/docs/components/modal}.
NULL

#' navbar
#'
#' @description
#' A responsive navigation header positioned on top side of your page that includes support for branding, links, navigation, collapse menu and more.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: \code{NA}.
#'\item \bold{height}. Type: \code{string OR number}. Default: \code{"4rem (64px)"}.
#'\item \bold{position}. Type: \code{static OR sticky}. Default: \code{"sticky"}.
#'\item \bold{maxWidth}. Type: \code{sm OR md OR lg OR xl OR 2xl OR full}. Default: \code{"lg"}.
#'\item \bold{parentRef}. Type: \code{React.RefObject<HTMLElement>}. Default: \code{"window"}.
#'\item \bold{isBordered}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isBlurred}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{isMenuOpen}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isMenuDefaultOpen}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{shouldHideOnScroll}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: \code{NA}.
#'\item \bold{disableScrollHandler}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' OR 'wrapper' OR 'brand' OR 'content' OR 'item' OR 'toggle' OR 'toggleIcon' OR 'menu' OR 'menuItem', string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onMenuOpenChange}. Type: \code{(isOpen: boolean) => void}. Default: \code{NA}.
#'\item \bold{onScrollPositionChange}. Type: \code{(position: number) => void}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: \code{NA}.
#'\item \bold{justify}. Type: \code{start OR center OR end}. Default: \code{"start"}.
#' }
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{isActive}. Type: \code{boolean}. Default: \code{false}.
#' }
#' \itemize{
#'\item \bold{icon}. Type: \code{ReactNode OR ((isOpen: boolean OR undefined) => ReactNode)}. Default: \code{NA}.
#'\item \bold{isSelected}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{defaultSelected}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{srOnlyText}. Type: \code{string}. Default: \code{"open/close navigation menu"}.
#' }
#' \itemize{
#'\item \bold{onChange}. Type: \code{(isOpen: boolean) => void}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: \code{NA}.
#'\item \bold{portalContainer}. Type: \code{HTMLElement}. Default: \code{"document.body"}.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{isActive}. Type: \code{boolean}. Default: \code{false}.
#' }
#' @md
#' @name navbar
#' @example inst/examples/navbar/app.R
#' @seealso See \url{https://heroui.com/docs/components/navbar}.
NULL

#' pagination
#'
#' @description
#' The Pagination component allows you to display active page and navigate between multiple pages.
#'
#' @details
#'
#' \itemize{
#'\item \bold{variant}. Type: \code{flat OR bordered OR light OR faded}. Default: \code{"flat"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"default"}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{"xl"}.
#'\item \bold{total}. Type: \code{number}. Default: \code{"1"}.
#'\item \bold{dotsJump}. Type: \code{number}. Default: \code{"5"}.
#'\item \bold{initialPage}. Type: \code{number}. Default: \code{"1"}.
#'\item \bold{page}. Type: \code{number}. Default: \code{NA}.
#'\item \bold{siblings}. Type: \code{number}. Default: \code{"1"}.
#'\item \bold{boundaries}. Type: \code{number}. Default: \code{"1"}.
#'\item \bold{loop}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isCompact}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{showShadow}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{showControls}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableCursorAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{renderItem}. Type: \code{PaginationItemProps}. Default: \code{NA}.
#'\item \bold{getItemAriaLabel}. Type: \code{(page: string) => string}. Default: \code{NA}.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' OR 'wrapper' OR 'prev' OR 'next' OR 'item' OR 'cursor' OR 'forwardIcon' OR 'ellipsis' OR 'chevronNext', string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onChange}. Type: \code{(page: number) => void}. Default: \code{NA}.
#' }
#' @md
#' @name pagination
#' @example inst/examples/pagination/app.R
#' @seealso See \url{https://heroui.com/docs/components/pagination}.
NULL

#' popover
#'
#' @description
#' Popover is a non-modal dialog that floats around its disclosure. It's commonly used for displaying additional rich content on top of something.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: \code{NA}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"default"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{"lg"}.
#'\item \bold{shadow}. Type: \code{none OR sm OR md OR lg}. Default: \code{"lg"}.
#'\item \bold{backdrop}. Type: \code{transparent OR opaque OR blur}. Default: \code{"transparent"}.
#'\item \bold{placement}. Type: \code{PopoverPlacement}. Default: \code{"bottom"}.
#'\item \bold{state}. Type: \code{OverlayTriggerState}. Default: \code{NA}.
#'\item \bold{isOpen}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{defaultOpen}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{offset}. Type: \code{number}. Default: \code{"7"}.
#'\item \bold{containerPadding}. Type: \code{number}. Default: \code{"12"}.
#'\item \bold{crossOffset}. Type: \code{number}. Default: \code{"0"}.
#'\item \bold{triggerType}. Type: \code{dialog OR menu OR listbox OR tree OR grid}. Default: \code{"dialog"}.
#'\item \bold{showArrow}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{shouldFlip}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{triggerScaleOnOpen}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{shouldBlockScroll}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{shouldCloseOnScroll}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isKeyboardDismissDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{shouldCloseOnBlur}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: \code{NA}.
#'\item \bold{portalContainer}. Type: \code{HTMLElement}. Default: \code{"document.body"}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' OR 'trigger' OR 'backdrop' OR 'content', string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onOpenChange}. Type: \code{(isOpen: boolean) => void}. Default: \code{NA}.
#'\item \bold{shouldCloseOnInteractOutside}. Type: \code{(e: HTMLElement) => void}. Default: \code{NA}.
#'\item \bold{onClose}. Type: \code{() => void}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: \code{NA}.
#' }
#' @md
#' @name popover
#' @example inst/examples/popover/app.R
#' @seealso See \url{https://heroui.com/docs/components/popover}.
NULL

#' progress
#'
#' @description
#' The Progress component allows you to view the progress of any activity.
#'
#' @details
#'
#' \itemize{
#'\item \bold{label}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"primary"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{"full"}.
#'\item \bold{value}. Type: \code{number}. Default: \code{NA}.
#'\item \bold{valueLabel}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{minValue}. Type: \code{number}. Default: \code{"0"}.
#'\item \bold{maxValue}. Type: \code{number}. Default: \code{"100"}.
#'\item \bold{formatOptions}. Type: \code{Intl.NumberFormat}. Default: \code{"{style: 'percent'}"}.
#'\item \bold{isIndeterminate}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isStriped}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{showValueLabel}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' OR 'labelWrapper' OR 'label' OR 'track' OR 'value' OR 'indicator', string>>}. Default: \code{NA}.
#' }
#' @md
#' @name progress
#' @example inst/examples/progress/app.R
#' @seealso See \url{https://heroui.com/docs/components/progress}.
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
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: \code{NA}.
#'\item \bold{items}. Type: \code{Iterable<T>}. Default: \code{NA}.
#'\item \bold{selectionMode}. Type: \code{single OR multiple}. Default: \code{NA}.
#'\item \bold{selectedKeys}. Type: \code{all OR Iterable<React.Key>}. Default: \code{NA}.
#'\item \bold{disabledKeys}. Type: \code{Iterable<React.Key>}. Default: \code{NA}.
#'\item \bold{defaultSelectedKeys}. Type: \code{all OR Iterable<React.Key>}. Default: \code{NA}.
#'\item \bold{variant}. Type: \code{flat OR bordered OR faded OR underlined}. Default: \code{"flat"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"default"}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{NA}.
#'\item \bold{placeholder}. Type: \code{string}. Default: \code{"Select an option"}.
#'\item \bold{labelPlacement}. Type: \code{inside OR outside OR outside-left}. Default: \code{"inside"}.
#'\item \bold{label}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{description}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{errorMessage}. Type: \code{ReactNode OR ((v: ValidationResult) => ReactNode)}. Default: \code{NA}.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{selectorIcon}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{scrollRef}. Type: \code{React.RefObject<HTMLElement>}. Default: \code{NA}.
#'\item \bold{spinnerRef}. Type: \code{React.RefObject<HTMLElement>}. Default: \code{NA}.
#'\item \bold{maxListboxHeight}. Type: \code{number}. Default: \code{"256"}.
#'\item \bold{itemHeight}. Type: \code{number}. Default: \code{"32"}.
#'\item \bold{isVirtualized}. Type: \code{boolean}. Default: \code{"undefined"}.
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{isOpen}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{defaultOpen}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{isRequired}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isMultiline}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isInvalid}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{validationState}. Type: \code{valid OR invalid}. Default: \code{NA}.
#'\item \bold{showScrollIndicators}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{autoFocus}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disallowEmptySelection}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{disableSelectorIconRotation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{hideEmptyContent}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{popoverProps}. Type: \code{PopoverProps}. Default: \code{NA}.
#'\item \bold{listboxProps}. Type: \code{ListboxProps}. Default: \code{NA}.
#'\item \bold{scrollShadowProps}. Type: \code{ScrollShadowProps}. Default: \code{NA}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base"OR "label"OR "trigger"OR "mainWrapper" OR "innerWrapper"OR "selectorIcon" OR "value" OR "listboxWrapper"OR "listbox" OR "popoverContent" OR "helperWrapper" OR "description" OR "errorMessage", string>>}. Default: \code{NA}.
#' }
#' 2. Select Events
#' \itemize{
#'\item \bold{onClose}. Type: \code{() => void}. Default: \code{NA}.
#'\item \bold{onOpenChange}. Type: \code{(isOpen: boolean) => void}. Default: \code{NA}.
#'\item \bold{onSelectionChange}. Type: \code{(keys: "all" OR Set<React.Key> & {anchorKey?: string; currentKey?: string}) => void}. Default: \code{NA}.
#'\item \bold{onChange}. Type: \code{React.ChangeEvent<HTMLSelectElement>}. Default: \code{NA}.
#'\item \bold{renderValue}. Type: \code{RenderValueFunction}. Default: \code{NA}.
#' }
#' @md
#' @name select
#' @example inst/examples/select/app.R
#' @seealso See \url{https://heroui.com/docs/components/select}.
NULL

#' skeleton
#'
#' @description
#' Skeleton is a placeholder to show a loading state and the expected shape of a component.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{isLoaded}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" OR "content", string>>}. Default: \code{NA}.
#' }
#' @md
#' @name skeleton
#' @example inst/examples/skeleton/app.R
#' @seealso See \url{https://heroui.com/docs/components/skeleton}.
NULL

#' slider
#'
#' @description
#' A slider allows a user to select one or more values within a range.
#'
#' @details
#'
#' \itemize{
#'\item \bold{label}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{name}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{color}. Type: \code{foreground OR primary OR secondary OR success OR warning OR danger}. Default: \code{"primary"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{"full"}.
#'\item \bold{step}. Type: \code{number}. Default: \code{"1"}.
#'\item \bold{value}. Type: \code{number}. Default: \code{NA}.
#'\item \bold{defaultValue}. Type: \code{number}. Default: \code{NA}.
#'\item \bold{minValue}. Type: \code{number}. Default: \code{"0"}.
#'\item \bold{maxValue}. Type: \code{number}. Default: \code{"100"}.
#'\item \bold{orientation}. Type: \code{horizontal OR vertical}. Default: \code{"horizontal"}.
#'\item \bold{fillOffset}. Type: \code{number}. Default: \code{NA}.
#'\item \bold{showSteps}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{showTooltip}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{marks}. Type: \code{SliderStepMarks}. Default: \code{NA}.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{formatOptions}. Type: \code{Intl.NumberFormat}. Default: \code{NA}.
#'\item \bold{tooltipValueFormatOptions}. Type: \code{Intl.NumberFormat}. Default: \code{NA}.
#'\item \bold{tooltipProps}. Type: \code{TooltipProps}. Default: \code{NA}.
#'\item \bold{showOutline}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{hideValue}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{hideThumb}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableThumbScale}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#' }
#' \itemize{
#'\item \bold{getValue}. Type: \code{(value: SliderValue) => string}. Default: \code{NA}.
#'\item \bold{renderLabel}. Type: \code{(props: DOMAttributes<HTMLLabelElement>) => ReactNode}. Default: \code{NA}.
#'\item \bold{renderValue}. Type: \code{(props: DOMAttributes<HTMLOutputElement>) => ReactNode}. Default: \code{NA}.
#'\item \bold{renderThumb}. Type: \code{(props: DOMAttributes<HTMLDivElement> & {index?: number}) => ReactNode}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onChange}. Type: \code{(value: SliderValue) => void}. Default: \code{NA}.
#'\item \bold{onChangeEnd}. Type: \code{(value: SliderValue) => void}. Default: \code{NA}.
#' }
#' @md
#' @name slider
#' @example inst/examples/slider/app.R
#' @seealso See \url{https://heroui.com/docs/components/slider}.
NULL

#' snippet
#'
#' @description
#' Snippet is a component that can be used to display inline or multiline code snippets.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode OR ReactNode[]}. Default: \code{NA}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg}. Default: \code{"lg"}.
#'\item \bold{symbol}. Type: \code{string OR ReactNode}. Default: \code{"$"}.
#'\item \bold{timeout}. Type: \code{number}. Default: \code{"2000"}.
#'\item \bold{codeString}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{tooltipProps}. Type: \code{TooltipProps}. Default: \code{NA}.
#'\item \bold{copyIcon}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{checkIcon}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{disableTooltip}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableCopy}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{hideCopyButton}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{hideSymbol}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{copyButtonProps}. Type: \code{ButtonProps}. Default: \code{NA}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<'base' OR 'content' OR 'pre' OR 'symbol' OR 'copyButton' OR 'checkIcon', string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onCopy}. Type: \code{(value: string OR string[]) => void}. Default: \code{NA}.
#' }
#' @md
#' @name snippet
#' @example inst/examples/snippet/app.R
#' @seealso See \url{https://heroui.com/docs/components/snippet}.
NULL

#' switch
#'
#' @description
#' The Switch component is used as an alternative between checked and not checked states.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{value}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{name}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"primary"}.
#'\item \bold{thumbIcon}. Type: \code{ThumbIconProps}. Default: \code{NA}.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{isSelected}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{defaultSelected}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{isReadOnly}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base"OR "wrapper"OR "thumb"OR "label" OR "startContent" OR "endContent" OR "thumbIcon" , string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onChange}. Type: \code{React.ChangeEvent<HTMLInputElement>}. Default: \code{NA}.
#'\item \bold{onValueChange}. Type: \code{(isSelected: boolean) => void}. Default: \code{NA}.
#' }
#' @md
#' @name switch
#' @example inst/examples/switch/app.R
#' @seealso See \url{https://heroui.com/docs/components/switch}.
NULL

#' tabs
#'
#' @description
#' Tabs organize content into multiple sections and allow users to navigate between them.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode OR ((item: T) => ReactElement)}. Default: \code{NA}.
#'\item \bold{variant}. Type: \code{solid OR bordered OR light OR underlined}. Default: \code{"solid"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"default"}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{NA}.
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{items}. Type: \code{Iterable<T>}. Default: \code{NA}.
#'\item \bold{disabledKeys}. Type: \code{React.Key[]}. Default: \code{NA}.
#'\item \bold{selectedKey}. Type: \code{React.Key}. Default: \code{NA}.
#'\item \bold{defaultSelectedKey}. Type: \code{React.Key}. Default: \code{NA}.
#'\item \bold{shouldSelectOnPressUp}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{keyboardActivation}. Type: \code{automatic OR manual}. Default: \code{"automatic"}.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: \code{NA}.
#'\item \bold{disableCursorAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base"OR "tabList"OR "tab"OR "tabContent"OR "cursor" OR "panel" OR "tabWrapper", string>>}. Default: \code{NA}.
#'\item \bold{placement}. Type: \code{top OR bottom OR start OR end}. Default: \code{"top"}.
#'\item \bold{isVertical}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{destroyInactiveTabPanel}. Type: \code{boolean}. Default: \code{true}.
#' }
#' \itemize{
#'\item \bold{onSelectionChange}. Type: \code{(key: React.Key) => any}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{tabRef}. Type: \code{RefObject<HTMLButtonElement>}. Default: \code{NA}.
#'\item \bold{children*}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{title}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{titleValue}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{href}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{target}. Type: \code{HTMLAttributeAnchorTarget}. Default: \code{NA}.
#'\item \bold{rel}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{download}. Type: \code{boolean OR string}. Default: \code{NA}.
#'\item \bold{ping}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{referrerPolicy}. Type: \code{HTMLAttributeReferrerPolicy}. Default: \code{NA}.
#'\item \bold{shouldSelectOnPressUp}. Type: \code{boolean}. Default: \code{NA}.
#' }
#' @md
#' @name tabs
#' @example inst/examples/tabs/app.R
#' @seealso See \url{https://heroui.com/docs/components/tabs}.
NULL

#' textarea
#'
#' @description
#' Textarea component is a multi-line Input which allows you to write large texts.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{minRows}. Type: \code{number}. Default: \code{"3"}.
#'\item \bold{maxRows}. Type: \code{number}. Default: \code{"8"}.
#'\item \bold{cacheMeasurements}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{variant}. Type: \code{flat OR bordered OR faded OR underlined}. Default: \code{"flat"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"default"}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{NA}.
#'\item \bold{label}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{value}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{defaultValue}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{placeholder}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{startContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{endContent}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{description}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{errorMessage}. Type: \code{ReactNode OR ((v: ValidationResult) => ReactNode)}. Default: \code{NA}.
#'\item \bold{validate}. Type: \code{(value: string) => ValidationError OR true OR null OR undefined}. Default: \code{NA}.
#'\item \bold{validationBehavior}. Type: \code{native OR aria}. Default: \code{"native"}.
#'\item \bold{labelPlacement}. Type: \code{inside OR outside OR outside-left}. Default: \code{"inside"}.
#'\item \bold{fullWidth}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{isRequired}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isReadOnly}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isClearable}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isInvalid}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{validationState}. Type: \code{valid OR invalid}. Default: \code{NA}.
#'\item \bold{disableAutosize}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" OR "label" OR "inputWrapper" OR "innerWrapper" OR "input" OR "description" OR "errorMessage", string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onChange}. Type: \code{React.ChangeEvent<HTMLInputElement>}. Default: \code{NA}.
#'\item \bold{onValueChange}. Type: \code{(value: string) => void}. Default: \code{NA}.
#'\item \bold{onClear}. Type: \code{() => void}. Default: \code{NA}.
#'\item \bold{onHeightChange}. Type: \code{(height: number, meta: { rowHeight: number }) => void}. Default: \code{NA}.
#' }
#' @md
#' @name textarea
#' @example inst/examples/textarea/app.R
#' @seealso See \url{https://heroui.com/docs/components/textarea}.
NULL

#' tooltip
#'
#' @description
#' Tooltips display a brief, informative message that appears when a user interacts with an element.
#'
#' @details
#'
#' \itemize{
#'\item \bold{children*}. Type: \code{ReactNode[]}. Default: \code{NA}.
#'\item \bold{content}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{size}. Type: \code{sm OR md OR lg}. Default: \code{"md"}.
#'\item \bold{color}. Type: \code{default OR primary OR secondary OR success OR warning OR danger}. Default: \code{"default"}.
#'\item \bold{radius}. Type: \code{none OR sm OR md OR lg OR full}. Default: \code{"md"}.
#'\item \bold{shadow}. Type: \code{none OR sm OR md OR lg}. Default: \code{"sm"}.
#'\item \bold{placement}. Type: \code{TooltipPlacement}. Default: \code{"top"}.
#'\item \bold{delay}. Type: \code{number}. Default: \code{"0"}.
#'\item \bold{closeDelay}. Type: \code{number}. Default: \code{"500"}.
#'\item \bold{isOpen}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{defaultOpen}. Type: \code{boolean}. Default: \code{NA}.
#'\item \bold{offset}. Type: \code{number}. Default: \code{"7"}.
#'\item \bold{containerPadding}. Type: \code{number}. Default: \code{"12"}.
#'\item \bold{crossOffset}. Type: \code{number}. Default: \code{"0"}.
#'\item \bold{showArrow}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{shouldFlip}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{triggerScaleOnOpen}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{isKeyboardDismissDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{isDismissable}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{shouldCloseOnBlur}. Type: \code{boolean}. Default: \code{true}.
#'\item \bold{motionProps}. Type: \code{MotionProps}. Default: \code{NA}.
#'\item \bold{portalContainer}. Type: \code{HTMLElement}. Default: \code{"document.body"}.
#'\item \bold{updatePositionDeps}. Type: \code{any[]}. Default: \code{"[]"}.
#'\item \bold{isDisabled}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{disableAnimation}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base"OR"content", string>>}. Default: \code{NA}.
#' }
#' \itemize{
#'\item \bold{onOpenChange}. Type: \code{(isOpen: boolean) => void}. Default: \code{NA}.
#'\item \bold{shouldCloseOnInteractOutside}. Type: \code{(e: HTMLElement) => void}. Default: \code{NA}.
#'\item \bold{onClose}. Type: \code{() => void}. Default: \code{NA}.
#' }
#' @md
#' @name tooltip
#' @example inst/examples/tooltip/app.R
#' @seealso See \url{https://heroui.com/docs/components/tooltip}.
NULL

#' user
#'
#' @description
#' Display user information with avatar and name.
#'
#' @details
#'
#' \itemize{
#'\item \bold{name}. Type: \code{string}. Default: \code{NA}.
#'\item \bold{description}. Type: \code{ReactNode}. Default: \code{NA}.
#'\item \bold{isFocusable}. Type: \code{boolean}. Default: \code{false}.
#'\item \bold{avatarProps}. Type: \code{AvatarProps}. Default: \code{NA}.
#'\item \bold{classNames}. Type: \code{Partial<Record<"base" OR "wrapper" OR "name" OR "description", string>>}. Default: \code{NA}.
#' }
#' @md
#' @name user
#' @example inst/examples/user/app.R
#' @seealso See \url{https://heroui.com/docs/components/user}.
NULL

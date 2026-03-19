# popover

Popover is a non-modal dialog that floats around its disclosure. It's
commonly used for displaying additional rich content on top of
something.

## Usage

``` r
popover(...)

popover_trigger(...)

popover_content(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI popover component.

## Details

- **children\***. Type: `ReactNode[]`. Default: `NA`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"default"`.

- **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `"lg"`.

- **shadow**. Type: `none OR sm OR md OR lg`. Default: `"lg"`.

- **backdrop**. Type: `transparent OR opaque OR blur`. Default:
  `"transparent"`.

- **placement**. Type: `PopoverPlacement`. Default: `"bottom"`.

- **state**. Type: `OverlayTriggerState`. Default: `NA`.

- **isOpen**. Type: `boolean`. Default: `NA`.

- **defaultOpen**. Type: `boolean`. Default: `NA`.

- **offset**. Type: `number`. Default: `"7"`.

- **containerPadding**. Type: `number`. Default: `"12"`.

- **crossOffset**. Type: `number`. Default: `"0"`.

- **triggerType**. Type: `dialog OR menu OR listbox OR tree OR grid`.
  Default: `"dialog"`.

- **showArrow**. Type: `boolean`. Default: `false`.

- **shouldFlip**. Type: `boolean`. Default: `true`.

- **triggerScaleOnOpen**. Type: `boolean`. Default: `true`.

- **shouldBlockScroll**. Type: `boolean`. Default: `false`.

- **shouldCloseOnScroll**. Type: `boolean`. Default: `false`.

- **isKeyboardDismissDisabled**. Type: `boolean`. Default: `false`.

- **shouldCloseOnBlur**. Type: `boolean`. Default: `false`.

- **motionProps**. Type: `MotionProps`. Default: `NA`.

- **portalContainer**. Type: `HTMLElement`. Default: `"document.body"`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **classNames**. Type:
  `Partial<Record<'base' OR 'trigger' OR 'backdrop' OR 'content', string>>`.
  Default: `NA`.

&nbsp;

- **onOpenChange**. Type: `(isOpen: boolean) => void`. Default: `NA`.

- **shouldCloseOnInteractOutside**. Type: `(e: HTMLElement) => void`.
  Default: `NA`.

- **onClose**. Type: `() => void`. Default: `NA`.

&nbsp;

- **children\***. Type: `ReactNode`. Default: `NA`.

&nbsp;

- **children**. Type: `ReactNode`. Default: `NA`.

## See also

See <https://heroui.com/docs/components/popover>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  dark_mode = TRUE,
  div(
    className = "flex align-items-start",
    popover(
      showArrow = TRUE,
      placement = "right",
      backdrop = "blur",
      popover_trigger(button("Click me!", color = "primary")),
      popover_content(
        div(
          className = "px-1 py-2",
          "This is the content of the popover."
        )
      )
    )
  )
)

server <- function(input, output, session) {
}

if (interactive() || is_testing()) shinyApp(ui, server)
```

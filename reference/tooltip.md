# tooltip

Tooltips display a brief, informative message that appears when a user
interacts with an element.

## Usage

``` r
tooltip(...)
```

## Arguments

- ...:

  Props to pass to the component. The allowed props are listed below in
  the **Details** section.

## Value

An object of class `shiny.tag` containing the necessary configuration
and including options such as JavaScript dependencies to instantiate a
HeroUI tooltip component.

## Details

- **children\***. Type: `ReactNode[]`. Default: `NA`.

- **content**. Type: `ReactNode`. Default: `NA`.

- **size**. Type: `sm OR md OR lg`. Default: `"md"`.

- **color**. Type:
  `default OR primary OR secondary OR success OR warning OR danger`.
  Default: `"default"`.

- **radius**. Type: `none OR sm OR md OR lg OR full`. Default: `"md"`.

- **shadow**. Type: `none OR sm OR md OR lg`. Default: `"sm"`.

- **placement**. Type: `TooltipPlacement`. Default: `"top"`.

- **delay**. Type: `number`. Default: `"0"`.

- **closeDelay**. Type: `number`. Default: `"500"`.

- **isOpen**. Type: `boolean`. Default: `NA`.

- **defaultOpen**. Type: `boolean`. Default: `NA`.

- **offset**. Type: `number`. Default: `"7"`.

- **containerPadding**. Type: `number`. Default: `"12"`.

- **crossOffset**. Type: `number`. Default: `"0"`.

- **showArrow**. Type: `boolean`. Default: `false`.

- **shouldFlip**. Type: `boolean`. Default: `true`.

- **triggerScaleOnOpen**. Type: `boolean`. Default: `true`.

- **isKeyboardDismissDisabled**. Type: `boolean`. Default: `false`.

- **isDismissable**. Type: `boolean`. Default: `false`.

- **shouldCloseOnBlur**. Type: `boolean`. Default: `true`.

- **motionProps**. Type: `MotionProps`. Default: `NA`.

- **portalContainer**. Type: `HTMLElement`. Default: `"document.body"`.

- **updatePositionDeps**. Type: `any[]`. Default: `"[]"`.

- **isDisabled**. Type: `boolean`. Default: `false`.

- **disableAnimation**. Type: `boolean`. Default: `false`.

- **classNames**. Type: `Partial<Record<"base"OR"content", string>>`.
  Default: `NA`.

&nbsp;

- **onOpenChange**. Type: `(isOpen: boolean) => void`. Default: `NA`.

- **shouldCloseOnInteractOutside**. Type: `(e: HTMLElement) => void`.
  Default: `NA`.

- **onClose**. Type: `() => void`. Default: `NA`.

## See also

See <https://heroui.com/docs/components/tooltip>.

## Examples

``` r
library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  div(
    className = "flex align-items-start",
    tooltip(
      content = "A tooltip...",
      color = "primary",
      showArrow = TRUE,
      closeDelay = 0,
      delay = 0,
      button("Click me!", color = "warning")
    )
  )
)

server <- function(input, output, session) {
}

if (interactive() || is_testing()) shinyApp(ui, server)
```

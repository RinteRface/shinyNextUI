library(shiny)
library(shinyNextUI)
library(shiny.react)

ui <- nextui_page(
  grid_container(
    gap = 2,
    grid(
      xs = 4,
      md = 4,
      card(
        variant = "bordered",
        card_header("Card title"),
        card_divider(),
        card_body(h1("Card body")),
        card_divider(),
        card_footer("Card Footer")
      )
    ),
    grid(
      xs = 4,
      md = 4,
      card(
        css = JS("{ w: '100%', h: '400px' }"),
        card_header(
          css = JS("{ position: 'absolute', zIndex: 1, top: 5 }"),
          col(
            text(
              size = 12,
              weight = "bold",
              transform = "uppercase",
              color = "#9E9E9E",
              "Your day your way"
            ),
            text(h3 = TRUE,  color = "white", "Your checklist for better sleep")
          )
        ),
        card_body(
          css = JS("{ p: 0 }"),
          card_image(
            src = "https://nextui.org/images/card-example-5.jpeg",
            objectFit = "cover",
            width = "100%",
            height = "100%",
            alt = "Relaxing app background",
          )
        ),
        card_footer(
          isBlurred = TRUE,
          css = JS(
            "{
              position: 'absolute',
              bgBlur: '#0f111466',
              borderTop: '$borderWeights$light solid $gray800',
              bottom: 0,
              zIndex: 1,
            }"
          ),
          row(
            col(
              row(
                col(
                  span = 3,
                  card_image(
                    src = "https://nextui.org/images/breathing-app-icon.jpeg",
                    css = JS("{ bg: 'black', br: '50%' }"),
                    height = 40,
                    width = 40,
                    alt = "Breathing app icon"
                  )
                ),
                col(
                  text(color = "#d1d1d1", size = 12, "Breathing App"),
                  text(color = "#d1d1d1", size = 12, "Get a good night's sleep.")
                )
              )
            ),
            col(
              row(
                justify = "flex-end",
                action_button(
                  inputId = "card_button",
                  flat = TRUE,
                  auto = TRUE,
                  rounded = TRUE,
                  css = JS("{ color: '#94f9f0', bg: '#94f9f026' }"),
                  text(
                    css = JS("{ color: 'inherit' }"),
                    size = 12,
                    weight= "bold",
                    transform = "uppercase",
                    "Get App"
                  )
                )
              )
            )
          )
        )
      )
    ),
    grid(
      md = 4,
      xs = 4,
      card(
        className = "user-twitter-card__container",
        css = JS(
          "{
            mw: '270px',
            borderRadius: '$lg',
            padding: '$sm',
          }"
        ),
        row(
          justify = "space-around",
          align = "center",
          col(
            span = 8,
            user(
              src = "https://i.pravatar.cc/150?u=a042581f4e29026704d",
              name = "Ariana Wattson",
              description = "UI/UX Designer",
              css = JS("{ px: 0 }")
            )
          ),
          col(
            span = 4,
            row(
              action_button(
                inputId = "twitter_button",
                auto = TRUE,
                rounded = TRUE,
                onPress = NULL,
                css = JS(
                  "{
                    maxHeight: '$space$12',
                    fs: '$xs',
                    fontWeight: '$semibold',
                    borderColor: '$primary',
                    color: '$white'
                  }"
                ),
                color = "primary",
                bordered = FALSE,
                "Click me"
              )
            )
          )
        ),
        grid_container(
          className = "user-twitter-card__username-container",
          grid(
            xs = 12,
            text(
              className = "user-twitter-card__text",
              size = 14,
              css = JS("{ mt: '$1' }"),
              color = "#888888",
              "Full-stack developer, @getnextui lover she/her 🎉"
            )
          )
        ),
        grid_container(
          className = "user-twitter-card__metrics-container",
          justify = "flex-start",
          alignContent = "center",
          text(
            className = "user-twitter-card__text",
            size = 14,
            color = "#888888",
            text(
              b = TRUE,
              color = "foreground",
              classNam. = "user-twitter-card__text",
              size = 14,
              "4"
            ),
            text("Following")
          ),
          spacer(inline = TRUE, x = 0.5),
          text(
            className = "user-twitter-card__text",
            size = 14,
            color = "#888888",
            text(
              b = TRUE,
              color = "foreground",
              classNam. = "user-twitter-card__text",
              size = 14,
              "97.1K"
            ),
            text("Followers")
          )
        )
      )
    )
  )
)

server <- function(input, output, session) {}

if (interactive() || is_testing()) shinyApp(ui, server)

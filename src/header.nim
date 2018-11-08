include karax / prelude
import karax / vstyles

proc customHeader(): VNode =
  result = buildHtml(tdiv):
    nav(class="navbar is-dark"):
      tdiv(class="navbar-menu", style=style(
        (StyleAttr.display, kstring"flex"),
        (StyleAttr.justifyContent, kstring"center")
        )):
        a(class="navbar-item", style=style((StyleAttr.color, kstring"white"))): 
          text "AWESOME WEBSITE"
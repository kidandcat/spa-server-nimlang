include karax / prelude
import karax / vstyles

proc customFooter(): VNode =
  result = buildHtml(tdiv):
    footer(class="footer", style=style((StyleAttr.backgroundColor, kstring"lightgray"))):
      tdiv(class="content has-text-centered"):
        p:
          text "This website has been coded in Nim."
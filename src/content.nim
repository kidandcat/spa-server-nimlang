include karax / prelude
import karax / vstyles

var isRed = true
var color = kstring"red"

proc customContent(): VNode =
  result = buildHtml(tdiv):
    tdiv(class="container", style=style(
        (StyleAttr.border, kstring"4px solid " & color),
        (StyleAttr.borderRadius, kstring"15px"),
        (StyleAttr.padding, kstring"15px")
        )):
        text "This is the content. You can click it!!"
        proc onclick(ev: karax.Event; n: VNode) =
            if isRed:
                isRed = false
                color = kstring"blue"
            else:
                isRed = true
                color = kstring"red"
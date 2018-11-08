include karax / prelude
import karax / vstyles

include header
include content
include footer

proc html(): VNode =
  result = buildHtml(tdiv):
    tdiv(class="root", style=style(
      (StyleAttr.display, kstring"flex"),
      (StyleAttr.flexDirection, kstring"column"),
      (StyleAttr.height, kstring"100vh"),
      )):
      customHeader()
      tdiv(style=style((StyleAttr.flexGrow, kstring"1"))):
        customContent()
      customFooter()

when isMainModule:
  setRenderer html
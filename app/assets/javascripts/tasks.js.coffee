jQuery ->

  #Task Editor Dropdown
  editorToggleTag = "task-edit-toggle"
  $(document).on "click", "[data-#{editorToggleTag}]", (event) ->
    id = $(@).data(editorToggleTag)
    lineItem = $("[task-line-item=#{id}]")
    editor = $("[data-task-edit-area=#{id}]")
    if editor.is(':hidden') or editor.is(':empty')
      lineItem.slideUp()
      editor.hide()
      editor.load('/tasks/' + id + '/edit', (-> $(@).slideDown()))
    else
      lineItem.slideDown()
      editor.slideUp(-> $(@).empty())

  #Auto-submitters
  $(document).on "change", "[data-submit-on-change]", (event) ->
    console.log "autosubmit"
    form = $(@).closest("form")
    group = $(@).data("submit-on-change")

    if form.data("remote")
      errorArea = $("[data-errors-from-submit='#{group}']")
      form.on 'ajax:success.autosubmit', (event, data, status, xhr) ->
        errorArea.slideUp()
      form.on "ajax:error.autosubmit", (event, xhr, status, error) ->
        console.log xhr.responseText
        try
          result = JSON.parse(xhr.responseText)
          console.log result
          message = result.messages.join("<br>")
        catch parseError
          message = "A server error occured:<br>#{error}"
        errorArea.html(message)
        errorArea.slideDown()
      form.on "ajax:complete.autosubmit", ->
        form.off ".autosubmit"

    form.submit()

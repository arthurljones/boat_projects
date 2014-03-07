jQuery ->

  #Task Editor Dropdown
  editorToggleTag = "task-edit-toggle"
  editorAreaTag = "task-edit-area"
  $(document).on "click", "[data-#{editorToggleTag}]", (event) ->
    id = $(@).data(editorToggleTag)
    editor = $("[data-#{editorAreaTag}=#{id}]")
    if editor.is(':hidden') or editor.is(':empty')
      editor.load('/tasks/' + id + '/edit', (-> $(@).slideDown()))
    else
      editor.slideUp(-> $(@).remove())

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

jQuery ->

  editorToggleTag = "data-task-editor-toggle"
  editorAreaTag = "data-task-editor-area"
  $(editorToggleTag).each ->
    id = @.data(editorToggleTag)


    edit_element = $('#edit_' + task_id)
    if edit_element.is(":hidden")
      edit_element.html("<img src='/images/spinner.gif' alt='Loading...' style='spinner' />");
      edit_element.show()
      edit_element.slideDown(200)
      edit_element.load('/tasks/' + task_id + '/edit', -> 
        edit_element.hide()
        edit_element.animate({opacity: 1, height: 'toggle'}, 500)
      )
    else
      edit_element.animate({opacity: 0, height: 'toggle'}, 500)

  submit: (task_id) ->
    $('form_' + task_id).submit
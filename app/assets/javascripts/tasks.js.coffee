class self.TasksIndex
  constructor: (@tasks) ->
    for task in tasks
      @addSlider(task, 'hours', 0, 7, 0.01, true)

      for field in ['helpers', 'liveaboard', 'daysail', 'cruising']
        @addSlider(task, field, 1, 10, 1)

  addSlider: (task, field, min, max, step, logarithmic=false) ->
    field_element = $('#' + field + '_' + task.id)
    slider_id = field + '_slider_' + task.id
    field_element.parent().append('<div class=slider id=' + slider_id + ' />')
    slider_element = $('#' + slider_id)
    slider_element.slider(min:min, max:max, step:step, animate: true, 
      slide: (event, ui) ->
        value = slider_element.slider("value")
        value = Math.pow(2, parseFloat(value)).toFixed(1) if logarithmic
        field_element.val(value)
    )

    field_element.keyup ->
      value = field_element.val()
      value = Math.log(parseFloat(value) + 1) / Math.log(2) if logarithmic
      slider_element.slider("value", value)

    field_element.keyup()


  submit: (task_id) ->
    $('form_' + task_id).submit
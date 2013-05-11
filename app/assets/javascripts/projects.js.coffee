class self.ProjectsIndex
  constructor: (@projects) ->
    for project in projects
      @addSlider(project, 'hours', 0, 7, 0.01, true)

      for field in ['helpers', 'liveaboard', 'daysail', 'cruising']
        @addSlider(project, field, 1, 10, 1)

  addSlider: (project, field, min, max, step, logarithmic=false) ->
    field_element = $('#' + field + '_' + project.id)
    slider_id = field + '_slider_' + project.id
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


  submit: (project_id) ->
    $('form_' + project_id).submit
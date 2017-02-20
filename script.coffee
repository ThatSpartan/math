new Vue
  el: '#title_app'
  data:
    message: 'Hi, this website has been built from the ground up to help yungers learn their mathematics.'
    message2: 'Scroll down to start!'

app_addition = new Vue
  el: '#container1'
  data:
    message: 'hello there'
    number_1: '?'
    number_2: '?'
    user_answer: undefined

  methods:
    calculate: ->
      if (this.number_1 + this.number_2 == this.user_answer)
        alert 'good'
        this.restart()
      else
        $('#container1 input').removeClass 'animated shake'
        $('#container1 input').addClass 'animated shake'

    restart: ->
      this.number_1 = Math.floor(Math.random() * 10)
      this.number_2 = Math.floor(Math.random() * 10)

app_soustraction = new Vue
  el: '#container2'
  data:
    message: 'hello there'
    number_1: '?'
    number_2: '?'
    user_answer: undefined

  methods:
    calculate: ->
      if (this.number_1 - this.number_2 == this.user_answer)
        alert 'good'
        this.restart()
      else
        $('#container2 input').removeClass 'animated shake'
        $('#container2 input').addClass 'animated shake'

    restart: ->
      this.number_1 = Math.floor(Math.random() * 10)
      this.number_2 = Math.floor(Math.random() * 10)

$(document).ready ->
  $('.animate').each (i) ->
    setTimeout ->
      $('.animate').eq(i).addClass('show')
      $('.animate').eq(i).addClass('animated')
      $('.animate').eq(i).addClass('fadeIn')
    , 200 * i

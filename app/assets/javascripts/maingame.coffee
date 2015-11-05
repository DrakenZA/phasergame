# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#window.client = new Faye.Client('/faye')



jQuery ->
  PrivatePub.subscribe '/test', (data, channel) ->

    text = game.add.text(game.world.centerX, game.world.centerY, data.chat_message,
      font: '65px Courier'
      fill: 'black'
      align: 'center'
      boundsAlignH: 'center'
      backgroundColor: 'white')



    #game.physics.arcade.enable text
    #text.body.bounce.y = 1
    #text.body.bounce.x = 1
    #text.body.gravity.y = 300
    #text.body.collideWorldBounds = true
    #text.anchor.set 0.5
    #texts.add text

    game.physics.p2.enable text, false
    text.body.setCollisionGroup blockCollisionGroup
    text.body.collides [ blockCollisionGroup ]
    text.body.collideWorldBounds = true

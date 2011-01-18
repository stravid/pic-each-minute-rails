var Clock = Class.create({
  initialize: function(imageBufferOneID, imageBufferTwoID) {
    this.imageBufferOne = $(imageBufferOneID);
    this.imageBufferTwo = $(imageBufferTwoID);

    var that = this;

    setInterval(function() {
      that.tick();
    }, 1000 * 10);
  },

  getTime: function() {
    var hours = new Date().getHours().toString(),
        minutes = new Date().getMinutes().toString();

    if (hours.length < 2) {
      hours = "0" + hours;
    }

    if (minutes.length < 2) {
      minutes = "0" + minutes;
    }

    return hours + minutes;
  },

  tick: function() {
    console.log("Mathias");
    new Ajax.Request('/minutes/' + this.getTime() + '/random', {
                method:'get',
                requestHeaders: {Accept: 'application/json'},
                onSuccess: function(transport) {
                   var json = transport.responseText.evalJSON();
                   console.log(json);

                   var picture = json.picture;

                   //domImageContainer.style.width = picture.bottom_x - picture.top_x + 'px';
                   //domImageContainer.style.height = picture.bottom_y - picture.top_y + 'px';
                   this.imageBufferOne.style.background = 'url(/uploads/pictures/' + picture.path + ')';
                   //domImageContainer.style.backgroundPosition = picture.top_x * -1 + 'px ' + picture.top_y * -1 + 'px';
                }
              });
  }
});
HTMLWidgets.widget({

  name: 'particles',

  type: 'output',

  factory: function(el, width, height) {

    return {

      renderValue: function(x) {
        //var sel = document.body;
        //var selid = sel.id;
        //sel.id = "particles-js";

        var particlebody = document.body;
        var particleel = document.createElement("div");
        particleel.id = "particles-js";
        particleel.classList.add("particles");
        document.body.appendChild(particleel);
        particlebody.insertBefore(particleel, particlebody.firstChild);

        var config = HTMLWidgets.getAttachmentUrl('particles-config', 'config-json');
        particlesJS.load('particles-js', config, function() {
          console.log('callback - particles.js config loaded');
        });

      },

      resize: function(width, height) {
      }

    };
  }
});

HTMLWidgets.widget({

  name: 'particles',

  type: 'output',

  factory: function(el, width, height) {

    return {

      renderValue: function(x) {

        // Suggestion: Custome HTML template ?
        var particlebody = document.body;
        var particleel = document.createElement("div");
        particleel.id = "particles-js";
        particleel.classList.add("particles");
        document.body.appendChild(particleel);
        particlebody.insertBefore(particleel, particlebody.firstChild);

        // with hymlDependency attachment: bug Chrome (access to xmlhttprequest at from origin 'null' has been blocked by cors policy)
        //var config = HTMLWidgets.getAttachmentUrl('particles-config', 'config-json');
        // With dataURI: bug IE
        //var config = "data:text/plain;base64,"+window.btoa(JSON.stringify(x.config));
        //particlesJS.load('particles-js', config, function() {
        //  console.log('callback - particles.js config loaded');
        //});
        // dont use XMLHttpRequest, use config JSON directly
        particlesJS("particles-js", x.config);

      },

      resize: function(width, height) {
      }

    };
  }
});

function Candidates() {
  this.candidates = $('[data-candidate]');
  this.buttons = $('[data-vote-button]');
}

var fn = Candidates.prototype;

fn.prepare = function() {
  var self = this;

  this.hideButtons();

  this.candidates.each(function() {
    $(this).on('mouseover', function() {
      self.hideButtons();
      $(this).find('[data-vote-button]').show();
    })
  });
};

fn.hideButtons = function() {
  this.buttons.hide();
};

$(document).ready(function() {
  var candidates = new Candidates();
  candidates.prepare();
});

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

  this.buttons.on('click', function() {
    var card = $(this).parents('[data-candidate]'),
        category = card.parents('[data-category]');

    category.find('.card.selected').removeClass('selected');
    category.find('.card').addClass('blur');

    card.addClass('selected');
    card.removeClass('blur');
  });
};

fn.hideButtons = function() {
  this.buttons.hide();
};

$(document).ready(function() {
  var candidates = new Candidates();
  candidates.prepare();
});

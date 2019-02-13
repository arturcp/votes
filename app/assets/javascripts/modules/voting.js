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
    var candidate = $(this).parents('[data-candidate]'),
        category = candidate.parents('[data-category]');

    category.find('.card.selected').removeClass('selected');
    category.find('.card').addClass('blur');

    candidate.addClass('selected');
    candidate.removeClass('blur');

    self.castVote(category, candidate);
  });
};

fn.hideButtons = function() {
  this.buttons.hide();
};

fn.castVote = function(category, candidate) {
  $.ajax({
    type: 'POST',
    url: category.attr('data-update-url'),
    data: {
      category_id: category.attr('data-category'),
      candidate_id: candidate.attr('data-candidate')
    },
    error: function(data) {
      M.toast({ html: 'Hum... something didn\'t work as expected' });
    },
    success: function(data) {
    }
  });
}

$(document).ready(function() {
  var candidates = new Candidates();
  candidates.prepare();
});

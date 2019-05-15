const suggestions = document.querySelectorAll('.button-suggestion');
let missionName = document.getElementById('mission_name');


function addSuggestion(e) {
  missionName.value = e.target.innerHTML
};

suggestions.forEach(function(suggestion){
  suggestion.addEventListener('click', addSuggestion);
});

export { addSuggestion };

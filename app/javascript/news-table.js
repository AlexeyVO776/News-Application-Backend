
  document.addEventListener('DOMContentLoaded', function() {
  const dateHeader = document.getElementById('date-header');
  let ascending = true;

  dateHeader.addEventListener('click', function() {
  const tbody = document.getElementById('news-table-body');
  const rows = Array.from(tbody.querySelectorAll('tr'));

  rows.sort((a, b) => {
  const dateA = new Date(a.children[3].textContent.split('.').reverse().join('-'));
  const dateB = new Date(b.children[3].textContent.split('.').reverse().join('-'));

  return ascending ? dateA - dateB : dateB - dateA;
});

  ascending = !ascending;

  rows.forEach(row => tbody.appendChild(row));
});
});


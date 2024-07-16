document.addEventListener('DOMContentLoaded', function() {
    const modal = document.getElementById("deleteModal");
    const span = document.getElementsByClassName("close")[0];
    const confirmDeleteButton = document.getElementById("confirmDeleteButton");
    const cancelDeleteButton = document.getElementById("cancelDeleteButton");
    const formToDelete = null;
  
    function showModal(event) {
      event.preventDefault();
      formToDelete = event.target.closest('form');
      modal.style.display = "block";
    }
  
    function closeModal() {
      modal.style.display = "none";
      formToDelete = null;
    }
  
    confirmDeleteButton.addEventListener('click', function() {
      if (formToDelete) {
        formToDelete.submit();
      }
    });
  
    cancelDeleteButton.addEventListener('click', function() {
      closeModal();
    });
  
    span.addEventListener('click', function() {
      closeModal();
    });
  
    const deleteButtons = document.querySelectorAll('.delete-button');
    deleteButtons.forEach(function(button) {
      button.addEventListener('click', showModal);
    });
  });
  
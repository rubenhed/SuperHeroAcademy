import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favorite"
export default class extends Controller {
  toggle(event) {
    event.preventDefault();
    const heartIcon = event.currentTarget;
    const courseId = event.currentTarget.dataset.courseId
    fetch (`/courses/${courseId}/favorites`, {
      method: 'POST',
      headers: {
        "X-CSRF-Token": document.querySelector("meta[name='csrf-token']").getAttribute("content"),
        'Content-Type': 'application/json',
        "Accept": "application/json", // 確保要求 JSON 回應
      },
    }).then((response) => response.json())
    .then((data) => {
      if (data.favorited) {
        heartIcon.classList.remove('far');
        heartIcon.classList.add('fas');
      } else {
        heartIcon.classList.remove('fas');
        heartIcon.classList.add('far');
      }
    })
    .catch(error => console.error("Fetch error:", error));
  }
}

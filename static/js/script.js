document.addEventListener("DOMContentLoaded", function () {
    console.log("Script Loaded!"); // Check if JS is running

    document.querySelectorAll(".like-btn").forEach(button => {
        button.addEventListener("click", function (event) {
            event.preventDefault();  // Prevent default behavior
            event.stopPropagation(); // Stop event bubbling
            
            const itemId = this.dataset.itemId;
            const itemType = this.dataset.itemType;
            const icon = this.querySelector("i");

            console.log("Clicked:", itemId, itemType); // Debugging

            fetch('/toggle_like', {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify({ item_id: itemId, item_type: itemType })
            })
            .then(response => response.json())
            .then(data => {
                if (data.status === "liked") {
                    this.classList.add("liked");
                    icon.style.color = "#ff006e";  // Change heart icon to red
                } else {
                    this.classList.remove("liked");
                    icon.style.color = "#333";  // Change heart icon to black
                }
                console.log("Like status:", data.status); // Debugging
            })
            .catch(error => console.error("Error:", error));
        });
    });
});

function performSearch() {
    const query = document.getElementById('search-input').value.trim();

    const resultsContainer = document.getElementById('search-results');
    resultsContainer.innerHTML = '';

    if (query === "") return;

    fetch(`/search?q=${encodeURIComponent(query)}`)
        .then(response => response.json())
        .then(data => {
            if (data.results.length === 0) {
                resultsContainer.innerHTML = '<p style="padding:10px;">No results found.</p>';
                return;
            }

            const ul = document.createElement('ul');

            data.results.forEach(item => {
                const li = document.createElement('li');
                const a = document.createElement('a');

                let url = "#";
                if (item.item_type === "food") {
                    url = `/recipe/${item.item_id}`;
                } else if (item.item_type === "recipe") {
                    url = `/recipe/${item.item_id}`;
                } else if (item.item_type === "cuisine") {
                    url = `/cuisine/${item.item_id}`;
                } else if (item.item_type === "category") {
                    url = `/category/${item.item_id}`;
                }

                a.href = url;
                a.textContent = item.name;
                li.appendChild(a);
                ul.appendChild(li);
            });

            resultsContainer.appendChild(ul);
        })
        .catch(err => {
            console.error('Search error:', err);
        });
}

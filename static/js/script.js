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

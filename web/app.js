const form = document.querySelector("#signup-form");
const stat = document.querySelector("#signup-form-status");

form.addEventListener("submit", async (event) => {
  event.preventDefault();

  stat.textContent = "Submitting...";

  try {
    const body = new URLSearchParams(new FormData(form));

    const response = await fetch(form.action, {
      method: "POST",
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
      },
      body,
    });

    const result = await response.json();

    if (!response.ok) {
      throw new Error(result.error ?? "Submission failed");
    }

    stat.textContent = "Submitted successfully";
  } catch (error) {
    stat.textContent = error.message;
  }
});

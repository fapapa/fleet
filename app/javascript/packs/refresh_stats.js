$(function() {
  update_link = $("#update");
  update_link.on("click", event => checkForNewTrips(event));
});

const checkForNewTrips = function(event) {
  const currentTrips = $(".trips tbody tr").length;

  $.ajax({
    url: "/trip_count",
    success: result => {
      const newTrips = result.tripCount;
      if (newTrips === currentTrips) {
        alert("You are up to date!");
      } else {
        if (confirm("There is new data. Are you sure you want to refresh?")) {
          location.reload();
        }
      }
    }
  });

  event.preventDefault();
};

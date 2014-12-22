//example for using APIlib.js
$(document).ready(function() {
    $("button").click(function() {
        //get user sessionId
        //getData( [ controller, function], { properties (must have the same names as parameters in api url)}, callback function)
        API.getData(["User", "Auth"], {
            login: "123",
            password: "123"
        }, function(data, fullanswer) {
           //data returns Data of answer
           //fullanswer returns full answer
            $("#CampusSessionId").val(data);
        });
    });
});
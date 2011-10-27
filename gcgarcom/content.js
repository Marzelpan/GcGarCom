var GCGarCom = (function () {
	var oldApiUrl = "http://www8.garmin.com/j/communicator-api-1.5.1/garmin/device/GarminDeviceDisplay.js",
		newApiUrl = "http://developer.garmin.com/web/communicator-api-1.9/garmin/device/GarminDeviceDisplay.js",

		isScriptElement = function (e) {
			return "SCRIPT" === e.nodeName.toUpperCase();
		},

		updateApiUrl = function (e) {
			var element = e.target;
			if (isScriptElement(element) && element.src === oldApiUrl) {
				element.src = newApiUrl;
			}
		};

	return {
		updateApiUrl: updateApiUrl
	};
}());

document.addEventListener("beforeload", GCGarCom.updateApiUrl, true);

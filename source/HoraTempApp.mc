using Toybox.Application;
using Toybox.WatchUi;

class HoraTempApp extends Application.AppBase {
    function initialize() {
        AppBase.initialize();
    }
    function getInitialView() {
        return [ new HoraTempView() ];
    }
}

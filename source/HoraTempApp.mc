import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class HoraTempApp extends Application.AppBase {
    function initialize() {
        AppBase.initialize();
    }
    function getInitialView() as [Views] or [Views, InputDelegates] {
        return [ new HoraTempView() ];
    }
}

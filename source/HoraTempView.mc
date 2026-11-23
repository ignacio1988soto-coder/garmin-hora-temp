import Toybox.Graphics;
import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;
import Toybox.Weather;

class HoraTempView extends WatchUi.WatchFace {
    function initialize() {
        WatchFace.initialize();
    }
    function onUpdate(dc as Dc) as Void {
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
        dc.clear();

        var clockTime = System.getClockTime();
        var horaTexto = Lang.format("$1$:$2$", [
            clockTime.hour.format("%02d"),
            clockTime.min.format("%02d")
        ]);

        var tempTexto = "-- °C";
        var condiciones = Weather.getCurrentConditions();
        if (condiciones != null && condiciones.temperature != null) {
            tempTexto = condiciones.temperature.format("%d") + " °C";
        }

        var ancho = dc.getWidth();
        var alto = dc.getHeight();

        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(ancho / 2, (alto / 2) - 55, Graphics.FONT_NUMBER_HOT, horaTexto, Graphics.TEXT_JUSTIFY_CENTER);

        dc.setColor(Graphics.COLOR_BLUE, Graphics.COLOR_TRANSPARENT);
        dc.drawText(ancho / 2, (alto / 2) + 35, Graphics.FONT_MEDIUM, tempTexto, Graphics.TEXT_JUSTIFY_CENTER);
    }
}

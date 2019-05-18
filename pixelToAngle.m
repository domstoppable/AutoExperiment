function visualAngle = pixelToAngle(pixelDistance, screenPixelSize, ...
                                 distanceAcrossScreen, distanceToScreen)
    visualAngle = NaN;
    if ~isnan(pixelDistance)
        visualAngle = ...
            (2 * atan( ...
                (pixelDistance / screenPixelSize * distanceAcrossScreen) ...
                / (2 * distanceToScreen))) ...
            / pi * 180;
    end
end
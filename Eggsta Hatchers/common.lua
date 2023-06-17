common = {}

function common:GetTime(Point1, Point2, Speed)
    local Distance = (Point1.Position - Point2.Position).Magnitude
    local Time = Distance / Speed
    return Time
end

return common
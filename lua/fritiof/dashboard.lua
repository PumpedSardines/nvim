local db = require "dashboard"

local goodMorningAsciiArt =
 {
    '',
    '',
    '   _____                 _   __  __                  _             ',
    '  / ____|               | | |  \\/  |                (_)            ',
    ' | |  __  ___   ___   __| | | \\  / | ___  _ __ _ __  _ _ __   __ _ ',
    ' | | |_ |/ _ \\ / _ \\ / _` | | |\\/| |/ _ \\| \'__| \'_ \\| | \'_ \\ / _` |',
    ' | |__| | (_) | (_) | (_| | | |  | | (_) | |  | | | | | | | | (_| |',
    '  \\_____|\\___/ \\___/ \\__,_| |_|  |_|\\___/|_|  |_| |_|_|_| |_|\\__, |',
    '                                                              __/ |',
    '                                                             |___/ ',
    '',
}

local midDayAsciiArt = {
    '',
    '',
    '  _    _      _ _       _ ',
    ' | |  | |    | | |     | |',
    ' | |__| | ___| | | ___ | |',
    ' |  __  |/ _ \\ | |/ _ \\| |',
    ' | |  | |  __/ | | (_) |_|',
    ' |_|  |_|\\___|_|_|\\___/(_)',
    '                          ',
    '                          ',
    '',
}

local goodEveningAsciiArt = {
    '',
    '',
    '   _____                 _   ______               _             ',
    '  / ____|               | | |  ____|             (_)            ',
    ' | |  __  ___   ___   __| | | |____   _____ _ __  _ _ __   __ _ ',
    ' | | |_ |/ _ \\ / _ \\ / _` | |  __\\ \\ / / _ \\ \'_ \\| | \'_ \\ / _` |',
    ' | |__| | (_) | (_) | (_| | | |___\\ V /  __/ | | | | | | | (_| |',
    '  \\_____|\\___/ \\___/ \\__,_| |______\\_/ \\___|_| |_|_|_| |_|\\__, |',
    '                                                           __/ |',
    '                                                          |___/ ',
    '',

}

db.custom_header = function () 
  local os = require "os"

  local hour = tonumber(os.date("%H"));

  local isMorning = hour >= 6 and hour <= 9
  local isEvening = hour >= 18 and hour <= 22
  local text = midDayAsciiArt;

  if isMorning then
    text = goodMorningAsciiArt; 
  end

  if isEvening then
    text = goodEveningAsciiArt ; 
  end

  local currentTime = os.date("%H:%M");
  table.insert(text, "Current time is: " .. currentTime);

  return text 
end

db.custom_center = {
} 

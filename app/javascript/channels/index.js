// Load Channels within this Directory and all Subdirectories
// Channel File Convention: *_channel.js

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

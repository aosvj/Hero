'use strict'

const path = require('path'),
    ROOT_PATH = path.join(__dirname, '..'),

    config = require('@amuzlab/config')(Object.assign(
        typeof process.env.CONF_DIR === 'string' ? {confPath: process.env.CONF_DIR} : {},
        {
            mapper: {
                config: data => {
                    if (!path.isAbsolute(data.tempPath)) {
                        data.tempPath = path.resolve(ROOT_PATH, data.tempPath)
                    }

                    data.workerCount === 'Infinity' && (data.workerCount = Infinity)
                    
                    return data
                },
                itrc: data => {
                    data.workerCount && /Infinity/i.test(data.workerCount.live) && (data.workerCount.live = Infinity)
                    data.workerCount && /Infinity/i.test(data.workerCount.vod) && (data.workerCount.vod = Infinity)

                    return data
                }
            },
            isGlobal: true,
            globalName: '_APP_CONFIG'
        }
    ))

module.exports = exports = config

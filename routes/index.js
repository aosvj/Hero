'use strict'

const express = require('express'),
    router = express.Router(),

    controller = require('../controller')

router.get('/code', controller.controller.getCodes)
router.get('/gpu/list', controller.controller.getCpus)

router.use('/transcoder', require('./transcoder'))
router.use('/tes', require('./tes'))
router.use('/capture', require('./capture'))
router.use('/debug', require('./debug'))
router.use('/server', require('./server'))

module.exports = exports = router

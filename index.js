const express = require('express')
const bodyParser = require('body-parser')
const path = require('path')
const connection = require('./modules/dbConnection')

const app = express()


// configurations
app.use(bodyParser.urlencoded({extended: true}))

app.set('view engine', 'ejs')
app.set('views', path.join(__dirname, 'views'))


// Routes
app.get('/', (req, res) => {
    res.render('home', {pass: 0})
})



app.listen('5000', (err) => {
    if (err) console.log(err)
    console.log('Server Up and Running at localhost:5000/');
})


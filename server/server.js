const express = require('express');
const bodyParser = require('body-parser');
require('dotenv').config();

const app = express();

const sessionMiddleware = require('./modules/session-middleware');
const passport = require('./strategies/user.strategy');

// Route includes
const userRouter = require('./routes/user.router');
const randomWordRouter = require('./routes/randomWord.router');
const searchWordRouter = require('./routes/searchWord.router.js');
const poemRouter = require('./routes/addPoem.router.js');
const homePoemRouter = require('./routes/homePoem.router.js');
const galleryRouter = require('./routes/gallery.router.js');
const userGalleryRouter = require('./routes/userGallery.router.js');
const randomNounRouter = require('./routes/randomNoun.router.js');

// Body parser middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Passport Session Configuration //
app.use(sessionMiddleware);

// start up passport sessions
app.use(passport.initialize());
app.use(passport.session());

/* Routes */
app.use('/api/user', userRouter);
app.use('/random-word', randomWordRouter);
app.use('/search-word', searchWordRouter);
app.use('/poem', poemRouter);
app.use('/home-poem', homePoemRouter);
app.use('/gallery', galleryRouter);
app.use('/user-gallery', userGalleryRouter);
app.use('/random-noun', randomNounRouter);

// Serve static files
app.use(express.static('build'));

// App Set //
const PORT = process.env.PORT || 5000;

/** Listen * */
app.listen(PORT, () => {
  console.log(`Listening on port: ${PORT}`);
});

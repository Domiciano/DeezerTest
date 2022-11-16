import fetch from 'node-fetch';
import express from 'express';
import cors from 'cors';

const deezer = express()

deezer.use(cors({
    origin: '*'
}))

deezer.get('/deezer/search', async (req, res) => {
    let response = await fetch('https://api.deezer.com/search?q='+req.query.q)
    let data = await response.json();
    return res.status(200).json(data)
});

deezer.get('/deezer/artist/:id', async (req, res) => {
    let response = await fetch('https://api.deezer.com/artist/'+req.params.id)
    let data = await response.json();
    return res.status(200).json(data)
});

deezer.get('/deezer/album/:id', async (req, res) => {
    let response = await fetch('https://api.deezer.com/album/'+req.params.id)
    let data = await response.json();
    return res.status(200).json(data)
});

deezer.listen(3000)
console.log('Ejecutando en 3000')
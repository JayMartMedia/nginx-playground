import express from 'express';
import {v4 as uuidv4} from 'uuid';

const port = process.env.PORT ?? 3000;
const message = process.env.MESSAGE ?? 'Default message';
const endpoint = process.env.ENDPOINT ?? 'endpoint';
const instanceId = process.env.INSTANCE_ID ?? uuidv4();

const app = express();

function requestLogger(req, httpResponseCode = 200) {
    console.log(
        `${instanceId} --- ${httpResponseCode} --- HOST ${req.headers?.host} --- ${req.method} ${req.path}`
    );
}

app.get('/', (req, res) => {
    requestLogger(req);
    res.send(message);
});

app.get(`/${endpoint}`, (req, res) => {
    requestLogger(req);
    res.send(message + ' from ' + endpoint);
});

app.get("*", (req, res) => {
    requestLogger(req, 404);
    res.status(404).send(`Cannot ${req.method} ${req.path} on ${instanceId}`);
});

app.listen(port, () => {
    console.log(`Micro-express instance ${instanceId} listening on port ${port}`);
});

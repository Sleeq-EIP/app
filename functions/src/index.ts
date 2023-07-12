import * as functions from 'firebase-functions';
import admin from 'firebase-admin';
admin.initializeApp();

// // Start writing functions
// // https://firebase.google.com/docs/functions/typescript

export const helloWorld = functions.https.onRequest((request, response) => {
  functions.logger.info('Hello logs!', { structuredData: true });
  response.send('Hello from Firebase!');
});

export const getFileCount = functions.https.onRequest(async (req, res) => {
  const userId = String(req.query.userId);
  if (!userId) {
    res.status(400).send({ error: 'userId is required in the query parameters' });
    return;
  }
  try {
    const snapshot = await admin.firestore().collection('users').doc(userId).collection('files').get();
    const fileCount = snapshot.size;
    res.status(200).send({ fileCount: fileCount });
  } catch (error) {
    res.status(500).send({ error: error });
  }
});

const crypto = require('crypto');
function verifySignature(payload, secret, incomingSignature) {
    const computedSignature = crypto
        .createHmac('sha256', secret)
        .update(JSON.stringify(payload))
        .digest('hex');
    return computedSignature === incomingSignature;
}
module.exports = { verifySignature };
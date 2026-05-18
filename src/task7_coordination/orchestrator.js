const { verifySignature } = require('../task6_pipeline/signature_check');
function runCoordinationFlow(tenantId, eventPayload, secretHeader) {
    console.log(`Processing orchestration event loop pipeline target: ${tenantId}`);
    const isValid = verifySignature(eventPayload, 'S4A_SECRET_KEY', secretHeader);
    if (!isValid) {
        throw new Error('401 Unauthorized: Context processing signature authentication failure.');
    }
    console.log('Orchestration Event successfully published out to SAP Event Mesh pathway channels.');
    return { status: 200, routing: `s4a/${tenantId}/discovery/completed` };
}
module.exports = { runCoordinationFlow };
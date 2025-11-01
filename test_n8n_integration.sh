#!/bin/bash

# Test script for n8n integration with MCP Proxmox Server

echo "=== MCP Proxmox Server - n8n Integration Test ==="
echo ""

# Start server in background
echo "1. Starting SSE server on port 8000..."
python -m proxmox_mcp.server --transport sse --host 0.0.0.0 --port 8000 > /tmp/mcp-server.log 2>&1 &
SERVER_PID=$!
echo "   Server PID: $SERVER_PID"
sleep 3

echo ""
echo "2. Testing root endpoint..."
curl -s http://localhost:8000/ | python3 -m json.tool

echo ""
echo "3. Testing health endpoint..."
curl -s http://localhost:8000/health | python3 -m json.tool

echo ""
echo "4. Testing tools list..."
curl -s http://localhost:8000/tools | python3 -m json.tool | head -20

echo ""
echo "5. Testing tool execution (proxmox-list-nodes)..."
curl -s -X POST http://localhost:8000/execute \
  -H "Content-Type: application/json" \
  -d '{"tool": "proxmox-list-nodes", "params": {}}' | python3 -m json.tool

echo ""
echo "=== Test Complete ==="
echo ""
echo "Server is running at: http://localhost:8000"
echo "API docs: http://localhost:8000/docs"
echo ""
echo "For n8n integration:"
echo "  - Use HTTP Request node"
echo "  - URL: http://localhost:8000/execute"
echo "  - Method: POST"
echo "  - Body: {\"tool\": \"tool-name\", \"params\": {}}"
echo ""
echo "To stop server: kill $SERVER_PID"
echo "Server logs: tail -f /tmp/mcp-server.log"


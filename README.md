## skaffold-flask

This is a demo to show how to develop a 'flask' app
with some level of convenience under Kubernetes.

It automatically constructs a container, a pod,
forwards a local port, and then watches for changes
live-deploying them.

## Use

1. Install skaffold:
```
curl -s -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 
chmod +x skaffold
sudo mv skaffold /usr/local/bin
```

2. Run 'skaffold dev'
3. When you see 'Running on http://127.0.0.1:5000' try 'curl localhost:5000'
4. Edit files at will and watch them auto-deploy



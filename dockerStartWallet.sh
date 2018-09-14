docker run -d  --name etm-wallet -w /etm  -v $(pwd):/etm -p 8888:8080  node /bin/bash -c "npm install && npm run dev"

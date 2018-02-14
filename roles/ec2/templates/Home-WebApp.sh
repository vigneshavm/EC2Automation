#set -e


echo
echo "Deployment start time :- `date`"
echo "Deployment started on host :- `hostname`"
echo


echo "Step 1. Pulling git changes for Home-WebApp..."
cd /home/ubuntu/Project/Home-WebApp
git pull origin development -v --progress
echo

echo "Step 2. Restarting Home application services..."
forever restart /home/ubuntu/Project/Home-WebApp/server.js
echo

sleep 5

echo "Step 3. Final status of all application services :- "
forever list
echo

#set -e


echo
echo "Deployment start time :- `date`"
echo "Deployment started on host :- `hostname`"
echo


echo "Step 1. Pulling git changes for Board-WebApp..."
cd /home/ubuntu/Project/Board-WebApp
git pull origin development -v --progress
echo

echo "Step 2. Restarting Board application services..."
forever restart /home/ubuntu/Project/Board-WebApp/server.js
echo

sleep 5

echo "Step 3. Final status of all application services :- "
forever list
echo

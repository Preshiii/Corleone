if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Preshiii/Corleone.git /Corleone
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Corleone
fi
cd /Corleone
pip3 install -U -r requirements.txt
echo "Starting Corleone...."
python3 bot.py

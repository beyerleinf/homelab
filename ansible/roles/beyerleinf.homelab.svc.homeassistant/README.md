# Home Assistant

## Add Mosquitto User

```
sudo docker exec -it homeassistant-mqtt-1 sh
mosquitto_passwd -c /mosquitto/config/pwfile user1
```

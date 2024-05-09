FROM cm2network/steamcmd

ENV ARK_DIR="/ark"

# Install ARK: Survival Ascended server
RUN /home/steam/steamcmd/steamcmd.sh +force_install_dir $INSTALL_DIR +login anonymous +app_update $GAME_ID validate +quit

WORKDIR $ARK_DIR

# Expose ports for ARK server (query and game)
EXPOSE 27015/udp
EXPOSE 7778/udp

# Start ARK server
CMD ["./ShooterGame/Binaries/Linux/ArkAscendedServer", "ScorchedEarth_WP?SessionName=BBS-SVR-002?ServerPassword=easports?Port=7778?QueryPort=27015?Listen -ServerPlatform=PC+PS5+XSX+WINGDK+ALL -culture=en -WinLiveMaxPlayers=20 -mods=998333,996571"]

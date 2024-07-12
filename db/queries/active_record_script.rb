
team_players = Player.where('teams_id = ?',1)

players_older_than_age = Player.where('age> ?', 25)

count_all_players = Player.group(:teams_id).count

destroying = Player.destroy(name: 'Player1')

new_player = Player.create(name: 'playerNew', age:'24', position:'midfielder',teams_id:34)


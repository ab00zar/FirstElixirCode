# Panda

* Token should be passed as an env variable using 'token=YOUR_TOKEN iex -S mix' 
* Methods:
   - upcoming_matches returns 5 first upcoming matches
   - odds_for_match(match_id) calculated odds based on number of matches each opponent won before
   - odds_using_cache(match_id) returns the odds value using a cache

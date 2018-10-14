state("SOTTR")
{
  bool IsLoading    : 0x36079A0, 0x748, 0x7D4;
  bool InCutscene   : 0x141B8F0;
  // Doesn't remove Deaths at Trial of the Eagle (After Skip Falling down)
}

init
{
  timer.IsGameTimePaused = false;
}

isLoading
{
    return current.IsLoading || current.InCutscene;
}

exit
{
    timer.IsGameTimePaused = true;
}
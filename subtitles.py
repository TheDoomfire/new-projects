import os
import re



folder_p = r"D:\Downloads\2 - Torrents\Outrageous Fortune 2005 Season 1 Complete + Extras  DVDRip x264 [i_c]"


def extract_season_episode(filename):
    # Check for 's01e02' format
    match = re.search(r's(\d+)e(\d+)', filename, re.IGNORECASE)
    if match:
        season = match.group(1)
        episode = match.group(2)
        return int(season), int(episode)

    # Check for 'Season 1 Episode 02' format
    match = re.search(r'season (\d+) episode (\d+)', filename, re.IGNORECASE)
    if match:
        season = match.group(1)
        episode = match.group(2)
        return int(season), int(episode)

    else:
        return None, None


def rename_subtitles(folder_path):
    subtitle_extension = ".srt"
    video_extensions = [".mp4", ".mkv"]
    video_files = [file for file in os.listdir(folder_path) if file.endswith(tuple(video_extensions))]
    subtitle_files = [file for file in os.listdir(folder_path) if file.endswith(subtitle_extension)]

    for video_file in video_files:
        video_base_name, video_extension = os.path.splitext(video_file)
        video_season, video_episode = extract_season_episode(video_base_name)
        
        if video_season and video_episode:
            for subtitle_file in subtitle_files:
                subtitle_base_name, subtitle_extension = os.path.splitext(subtitle_file)
                subtitle_season, subtitle_episode = extract_season_episode(subtitle_base_name)
                
                if subtitle_season == video_season and subtitle_episode == video_episode:
                    subtitle_path = os.path.join(folder_path, subtitle_file)
                    new_subtitle_name = f"{video_base_name}.srt"
                    new_subtitle_path = os.path.join(folder_path, new_subtitle_name)
                    os.rename(subtitle_path, new_subtitle_path)
                    break


rename_subtitles(folder_p)
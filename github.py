from dotenv import load_dotenv
import requests
import json


def create_github_repo():
    # Replace these variables with your GitHub username and personal access token
    username = 'your_username'
    token = 'your_personal_access_token'

    # Repository name and description
    repo_name = 'new-repo'
    repo_description = 'Description of your repository'

    # GitHub API endpoint for creating a repository
    url = f'https://api.github.com/user/repos'

    # JSON payload with repository name and description
    payload = {
        'name': repo_name,
        'description': repo_description,
        'private': False  # Set to True if you want to create a private repository
    }

    # Headers with authentication information
    headers = {
        'Authorization': f'token {token}',
        'Accept': 'application/vnd.github.v3+json'
    }

    # Make a POST request to create the repository
    response = requests.post(url, headers=headers, data=json.dumps(payload))

    # Check if the repository was successfully created
    if response.status_code == 201:
        print(f'Repository {repo_name} created successfully!')
    else:
        print(f'Failed to create repository. Status code: {response.status_code}')
        print(response.json())

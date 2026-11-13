# Game Jam Newsletter

## Sending Newsletters

1. Clone this repository
2. Decrypt the signups db (checkout the [README](https://github.com/openost/game-jam/tree/master/signups))
3. Install nele

    ```bash
    pip3 install nele
    ```
4. Create a new file in the `archiv` directory and write your Newsletter in there (don't forget the frontmatter header!)
5. Send a draft to yourself

    ```bash
    nele draft archiv/<file>.md
    ```

6. Send an email to EVERYONE (!!!)

    ```bash
    nele send
    ```

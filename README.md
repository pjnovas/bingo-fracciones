# Bingo Fracciones

A STEAM project for playing bingo with kids by using python as the board generator (card boards) from a set of combinations and openscad for creating the ball/chips which are later 3d printed.

`main.py` is where card boards are generated. It stdouts the list of card boards as CSV (semi colons). Those numbers are created from a set decimals. Then input the fractions of those numbers into bingo.scad and generate the STL for 3d printing.

Check out `boards.csv` and the `.stl` files as an example

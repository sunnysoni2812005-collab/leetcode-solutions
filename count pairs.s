t = int(input())

for _ in range(t):
    L, R = map(int, input().split())

    ans = R

    while ans & (ans - 1):
        nxt = ans & (ans - 1)

        if nxt < L:
            break

        ans = nxt

    print(ans)

@test "{{ .ProjectSnake }} outputs its name" (
    {{ .ProjectSnake }}
) = "{{ .ProjectSnake }}"

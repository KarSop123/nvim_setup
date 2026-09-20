return {
    "stevearc/conform.nvim",
    opts = function(_, opts)
        opts.formatters_by_ft = opts.formatters_by_ft or {}

        -- Przypisujemy clang-format dla typów c i cpp
        opts.formatters_by_ft.c = { "clang-format" }
        opts.formatters_by_ft.cpp = { "clang-format" }

        opts.formatters = opts.formatters or {}

        -- Pełna reguła przekazana bezpośrednio do komendy clang-format z poziomu Neovima
        opts.formatters["clang-format"] = {
            prepend_args = {
                "-style={"
                    .. "BasedOnStyle: LLVM, "
                    .. "IndentWidth: 4, "
                    .. "TabWidth: 4, "
                    .. "UseTab: Never, "
                    .. "AccessModifierOffset: -4, "
                    .. "IndentAccessModifiers: false, "
                    .. "NamespaceIndentation: All"
                    .. "}",
            },
        }
    end,
}

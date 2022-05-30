defmodule Canvas do
    @default [ fg: "black", bg: "white", font: "Merriweather" ]

    def draw_text(text, options \\ []) do
        options = Keyword.merge(@default, options)
        IO.puts "Drawing text #{inspect(text)}"
        IO.puts "Foreground:  #{options[:fg]}"
        IO.puts "Background:  #{options[:bg]}"
        IO.puts "Font:        #{Keyword.get(options, :font)}"
        IO.puts "Pattern:     #{Keyword.get(options, :pattern, "solid")}"
        IO.puts "Style:       #{Keyword.get_values(options, :style)}"
    end
end

Canvas.draw_text("hello", [ fg: "red", style: "italic", style: "bold" ])

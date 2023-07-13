return {
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        ["neotest-rspec"] = {
          rspec_cmd = "qonto-rspec",
        },
        "neotest-go",
      },
    },
  },
}

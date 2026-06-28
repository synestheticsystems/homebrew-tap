class Sutra < Formula
  desc "Dev environment status dashboard with GUI/TUI"
  homepage "https://github.com/synestheticsystems/sutra"
  url "https://github.com/synestheticsystems/sutra/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "755d2a4ecb2f2616d4f0806de08b4808f64a12830cf3a7287492d43a682d7543"
  license any_of: ["MIT", "Apache-2.0"]
  head "https://github.com/synestheticsystems/sutra.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Dev environment status", shell_output("#{bin}/sutra --help")
  end
end

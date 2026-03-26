class Ev < Formula
  desc "Secure environment variable manager with keychain integration"
  homepage "https://github.com/adrian-lorenz/ev"
  url "https://github.com/adrian-lorenz/ev/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "d2c9e4ea35fd6fdfbae1b349fe67950f3333a48261d9dd85357778a1c8079185"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=v#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "."
  end

  test do
    system "#{bin}/ev", "--version"
  end
end

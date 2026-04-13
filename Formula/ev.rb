class Ev < Formula
  desc "Secure environment variable manager with keychain integration"
  homepage "https://git-wall.de/noa-x/ev"
  url "https://git-wall.de/noa-x/ev/releases/v1.0.10/archive.tar.gz"
  sha256 "015a0aba51ae3515e8e0f7ee0b4448b633b4503dc4047a135f1f22e702eb23dd"
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

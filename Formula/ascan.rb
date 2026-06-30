class Ascan < Formula
  desc "Local iOS App Store pre-submission compliance scanner"
  homepage "https://github.com/xdx888999/AScan"
  url "https://github.com/xdx888999/AScan/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "854aebb6029ec39e601966185ab80da941cd19dacfc834f2036f70610472b936"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/xdx888999/AScan/internal/version.Version=#{version}"
    system "go", "build", "-ldflags", ldflags, "-o", bin/"ascan", "./cmd/ascan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascan --version")
  end
end

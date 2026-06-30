class Ascan < Formula
  desc "Local iOS App Store pre-submission compliance scanner"
  homepage "https://github.com/xdx888999/AScan"
  url "https://github.com/xdx888999/AScan/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "92839947a80e9e55682f0c15dcc629f236442214b0d9c3c698ece310ce1e254a"
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

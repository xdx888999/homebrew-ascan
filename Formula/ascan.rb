class Ascan < Formula
  desc "Local iOS App Store pre-submission compliance scanner"
  homepage "https://github.com/xdx888999/AScan"
  url "https://github.com/xdx888999/AScan/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "e6829b7d250fa12a30841afc05b994155e705fd1ceb240151dbc0cccfc298f34"
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

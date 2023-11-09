class Cloudflarewarpspeedtest < Formula
  desc "Speedtest tool for Cloudflare Warp"
  homepage "https://github.com/peanut996/CloudflareWarpSpeedTest"
  url "https://github.com/peanut996/CloudflareWarpSpeedTest/archive/refs/tags/v1.1.5.tar.gz"
  sha256 "f209136e34f95a8369d72a71b0e332c6a438b7fab835ab672328c0a0855e4065"
  license "GPL-3.0-only"

  depends_on "go@1.20" => :build

  def install
    ENV["GOPATH"] = buildpath
    path = buildpath/"src/github.com/peanut996/CloudflareWarpSpeedTest"
    path.install Dir["*"]
    cd path do
      system "go", "build", "-ldflags", "-X main.Version=v1.1.5", "-o", "#{bin}/CloudflareWarpSpeedTest"
    end
  end
end

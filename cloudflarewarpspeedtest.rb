class Cloudflarewarpspeedtest < Formula
  desc "Speedtest tool for Cloudflare Warp"
  homepage "https://github.com/peanut996/CloudflareWarpSpeedTest"
  url "https://github.com/peanut996/CloudflareWarpSpeedTest/archive/refs/tags/v1.1.6.tar.gz"
  sha256 "7a62a693120e9f0e6207ec9640349c88a01eafaaca3884831d2d596ee6c7edfe"
  license "GPL-3.0-only"

  depends_on "go@1.20" => :build

  def install
    ENV["GOPATH"] = buildpath
    path = buildpath/"src/github.com/peanut996/CloudflareWarpSpeedTest"
    path.install Dir["*"]
    cd path do
      system "go", "build", "-ldflags", "-X main.Version=v1.1.6", "-o", "#{bin}/CloudflareWarpSpeedTest"
    end
  end
end

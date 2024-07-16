class Cloudflarewarpspeedtest < Formula
  desc "Speedtest tool for Cloudflare Warp"
  homepage "https://github.com/peanut996/CloudflareWarpSpeedTest"
  url "https://github.com/peanut996/CloudflareWarpSpeedTest/archive/refs/tags/v1.5.1.tar.gz"
  sha256 "abadba991dd7e66661f8e3d9d1f5ac3de44cfb9422f7c219fcf15feec340dea3"
  license "GPL-3.0-only"

  depends_on "go@1.22" => :build

  def install
    ENV["GOPATH"] = buildpath
    path = buildpath/"src/github.com/peanut996/CloudflareWarpSpeedTest"
    path.install Dir["*"]
    cd path do
      system "go", "build", "-ldflags", "-X main.Version=v1.5.1", "-o", "#{bin}/CloudflareWarpSpeedTest"
    end
  end
end

class Cloudflarewarpspeedtest < Formula
  desc "Speedtest tool for Cloudflare Warp"
  homepage "https://github.com/peanut996/CloudflareWarpSpeedTest"
  url "https://github.com/peanut996/CloudflareWarpSpeedTest/archive/refs/tags/v1.4.1.tar.gz"
  sha256 "d6a4acdfa121d302931964d74ddf905965be666c207f5de7343fc6a19e93a3fa"
  license "GPL-3.0-only"

  depends_on "go@1.20" => :build

  def install
    ENV["GOPATH"] = buildpath
    path = buildpath/"src/github.com/peanut996/CloudflareWarpSpeedTest"
    path.install Dir["*"]
    cd path do
      system "go", "build", "-ldflags", "-X main.Version=v1.4.1", "-o", "#{bin}/CloudflareWarpSpeedTest"
    end
  end
end

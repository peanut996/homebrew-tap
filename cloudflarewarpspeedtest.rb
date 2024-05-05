class Cloudflarewarpspeedtest < Formula
  desc "Speedtest tool for Cloudflare Warp"
  homepage "https://github.com/peanut996/CloudflareWarpSpeedTest"
  url "https://github.com/peanut996/CloudflareWarpSpeedTest/archive/refs/tags/v1.3.9.tar.gz"
  sha256 "ed2a56054a9f38773d4f9a1bc249780abc03286a6c8a3db2877be915b2fb41f9"
  license "GPL-3.0-only"

  depends_on "go@1.20" => :build

  def install
    ENV["GOPATH"] = buildpath
    path = buildpath/"src/github.com/peanut996/CloudflareWarpSpeedTest"
    path.install Dir["*"]
    cd path do
      system "go", "build", "-ldflags", "-X main.Version=v1.3.9", "-o", "#{bin}/CloudflareWarpSpeedTest"
    end
  end
end

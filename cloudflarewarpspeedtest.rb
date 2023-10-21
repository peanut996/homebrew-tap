require "language/go"

class Cloudflarewarpspeedtest < Formula
  desc "Speedtest tool for Cloudflare Warp"
  homepage "https://github.com/peanut996/CloudflareWarpSpeedTest"
  url "https://github.com/peanut996/CloudflareWarpSpeedTest/archive/refs/tags/v1.1.4.tar.gz"
  license "GPL V3"
  sha256 "b0a06717290a3f3bbef06857d9767efac4ea26df17282c17156b874feb75fec9"
  version "v1.1.4"

  depends_on "go@1.20" => :build

  def install
    ENV["GOPATH"] = buildpath
    path = buildpath/"src/github.com/peanut996/CloudflareWarpSpeedTest"
    path.install Dir["*"]
    cd path do
      system "go", "build", "-ldflags", "-X main.Version=#{version}", "-o", "#{bin}/CloudflareWarpSpeedTest"
    end
  end

end

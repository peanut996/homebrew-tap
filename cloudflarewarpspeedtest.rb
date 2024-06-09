class Cloudflarewarpspeedtest < Formula
  desc "Speedtest tool for Cloudflare Warp"
  homepage "https://github.com/peanut996/CloudflareWarpSpeedTest"
  url "https://github.com/peanut996/CloudflareWarpSpeedTest/archive/refs/tags/v1.4.2.tar.gz"
  sha256 "dbf9e0d5a4e07f6872f69293b15518a23feea8987daf6326fbd8bc47f3366a7c"
  license "GPL-3.0-only"

  depends_on "go@1.20" => :build

  def install
    ENV["GOPATH"] = buildpath
    path = buildpath/"src/github.com/peanut996/CloudflareWarpSpeedTest"
    path.install Dir["*"]
    cd path do
      system "go", "build", "-ldflags", "-X main.Version=v1.4.2", "-o", "#{bin}/CloudflareWarpSpeedTest"
    end
  end
end

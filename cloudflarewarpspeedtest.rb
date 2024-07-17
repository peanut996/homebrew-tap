class Cloudflarewarpspeedtest < Formula
  desc "Speedtest tool for Cloudflare Warp"
  homepage "https://github.com/peanut996/CloudflareWarpSpeedTest"
  url "https://github.com/peanut996/CloudflareWarpSpeedTest/archive/refs/tags/v1.5.3.tar.gz"
  sha256 "70fe7a1de5a8097edb7820ad92ce0e9fc218deeb5785fdcfe851d42fbfba7f7b"
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

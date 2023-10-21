class Cloudflarewarpspeedtest < Formula
  desc "Speedtest tool for Cloudflare Warp"
  homepage "https://github.com/peanut996/CloudflareWarpSpeedTest"
  url "https://github.com/peanut996/CloudflareWarpSpeedTest/releases/download/v1.1.4/CloudflareWarpSpeedTest-v1.1.4-darwin-amd64.tar.gz"
  sha256 "2472ac657376a92aa0f5a9df14b5efe3bc0fdc773f67c83015f9caf0e826316c"  
  license "GPL V3"


  def install
    bin.install "CloudflareWarpSpeedTest"
  end

end

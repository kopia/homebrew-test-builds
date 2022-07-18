# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220716.0.44923"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220716.0.44923/kopia-20220716.0.44923-macOS-x64.tar.gz"
    sha256 "569369a6d03ac0c2e43a5b23485c2a81a721240fdc50682422d3c0dadfd75cf3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220716.0.44923/kopia-20220716.0.44923-macOS-arm64.tar.gz"
    sha256 "557e2c286082f063e7c5104e23e11514c349b3db8478a8f033cd3406e2400d58"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220716.0.44923/kopia-20220716.0.44923-linux-x64.tar.gz"
    sha256 "877b6d2011974f12c1317f4bd3580ecffee01b20eff25a93e1bf18c571928268"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220716.0.44923/kopia-20220716.0.44923-linux-arm.tar.gz"
    sha256 "2db33528759497df19dd56c44a50e65d54d07858cb9549997ac76ae0a32728c3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220716.0.44923/kopia-20220716.0.44923-linux-arm64.tar.gz"
    sha256 "d87736582379865a15a2b15f95895967b258b9274490c921c8b68ccb2f4620fa"
  end

  def install
    bin.install "kopia"
  end
end

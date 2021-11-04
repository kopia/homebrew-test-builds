# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211103.0.215737"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.215737/kopia-20211103.0.215737-macOS-x64.tar.gz"
    sha256 "58f02089d316ec8e47d5c3a00506e7e324260e3d31a8711a168556c7476d8541"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.215737/kopia-20211103.0.215737-macOS-arm64.tar.gz"
    sha256 "60838ec58b1379aafccb020e0400768fe216625100a115645cd2d0a204887574"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.215737/kopia-20211103.0.215737-linux-x64.tar.gz"
    sha256 "499f7161867309f2b6aa0c799d17af182341162447967b9bc0fbbaf16c3384c0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.215737/kopia-20211103.0.215737-linux-arm.tar.gz"
    sha256 "88f45884955c87448d9bd194d1c5763275ea18a7308c01565d55557f05c2184e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.215737/kopia-20211103.0.215737-linux-arm64.tar.gz"
    sha256 "036db88e644374fde1349aa33e145f17839ee91cbe328226ddbdc56e3106cbae"
  end

  def install
    bin.install "kopia"
  end
end

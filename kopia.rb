# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211204.0.221310"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211204.0.221310/kopia-20211204.0.221310-macOS-x64.tar.gz"
    sha256 "c156352facff49cae579007b30b5bc460dfad5f3362e7007e2fe51a74cac8823"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211204.0.221310/kopia-20211204.0.221310-macOS-arm64.tar.gz"
    sha256 "91af1571c8117b6b75e8790fe8abd68ada6f35af400f003cd4b03236365207a8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211204.0.221310/kopia-20211204.0.221310-linux-x64.tar.gz"
    sha256 "605f8eca964231f01b13af3583b1630de384772249e1a91a24f11a1089427deb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211204.0.221310/kopia-20211204.0.221310-linux-arm.tar.gz"
    sha256 "c23bb12d2a2e740fa8b1ca081d8d193d45450599ad7f4be5ae836e3c58ec2ef7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211204.0.221310/kopia-20211204.0.221310-linux-arm64.tar.gz"
    sha256 "e2d6a547324104dd1fa47dc980fef266c34936b51be78c5f115657c041277f9f"
  end

  def install
    bin.install "kopia"
  end
end

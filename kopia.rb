# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230926.0.183147"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230926.0.183147/kopia-20230926.0.183147-macOS-x64.tar.gz"
    sha256 "d05964c48c17c28ca5b5007e21adfdf3d5a44579cd2962f1d5c0e139bfcda4af"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230926.0.183147/kopia-20230926.0.183147-macOS-arm64.tar.gz"
    sha256 "0f206b9ba3c1ab6c9c2eb65a0a8ad2719e694ea07f61faf66aa2b062d9d23c67"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230926.0.183147/kopia-20230926.0.183147-linux-x64.tar.gz"
    sha256 "2178a84d1ab6f89891ba875bf3bddf40d2877193f057729b63cdff9771c0b487"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230926.0.183147/kopia-20230926.0.183147-linux-arm.tar.gz"
    sha256 "fffc335cbafb40c6912a194632d34f2a3148de77f6edc07d5d0563c1ce46cb3c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230926.0.183147/kopia-20230926.0.183147-linux-arm64.tar.gz"
    sha256 "fb5578db6fe159c70a31b5af48b0e34cffaf17ad351568d690eb7b78733d061c"
  end

  def install
    bin.install "kopia"
  end
end

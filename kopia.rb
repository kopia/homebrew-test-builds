# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220810.0.52651"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220810.0.52651/kopia-20220810.0.52651-macOS-x64.tar.gz"
    sha256 "cc58e9883a5b65f3354607f98328c17ba95d1fdc5160fdca727a2b3354651544"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220810.0.52651/kopia-20220810.0.52651-macOS-arm64.tar.gz"
    sha256 "b9f4822dfc739e0e0bab8ff000039e1a3fb32d934cbcf04cd72d91bd08145fc2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220810.0.52651/kopia-20220810.0.52651-linux-x64.tar.gz"
    sha256 "e2337ba1e0d58382b49a71776c815ec1e28601f8c317677fc3a6f12fec5011e2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220810.0.52651/kopia-20220810.0.52651-linux-arm.tar.gz"
    sha256 "a23b08320463f9c8e6cede7a50c424bc718b29b7536a3e8f85af06dbea043d72"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220810.0.52651/kopia-20220810.0.52651-linux-arm64.tar.gz"
    sha256 "51b479c1134b96834285b883ea0dc050402e68965b3f483ad451b4a3809ecd91"
  end

  def install
    bin.install "kopia"
  end
end

# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220317.0.222523"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220317.0.222523/kopia-20220317.0.222523-macOS-x64.tar.gz"
    sha256 "22a10a0bacdd289ebdf860c2b84d8ce7542ac8c93157067b463ffb8cb2a5a53e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220317.0.222523/kopia-20220317.0.222523-macOS-arm64.tar.gz"
    sha256 "85a4327bfb780dbe42285405658533f93061aa4ffd2e7a93ac50d84f8e4a5179"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220317.0.222523/kopia-20220317.0.222523-linux-x64.tar.gz"
    sha256 "5b72da46c7f184f9bb69b0154e538c7c95127f11884d2db5029931df60a781cf"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220317.0.222523/kopia-20220317.0.222523-linux-arm.tar.gz"
    sha256 "2c7cfb04f73728fd9ef29c1cf68517eaa1a60681093aa9bd0bfd9c506dee506f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220317.0.222523/kopia-20220317.0.222523-linux-arm64.tar.gz"
    sha256 "b76815ffb42b7ce4fa04a60543717806782e19343b88e966351c6a3244aaf77a"
  end

  def install
    bin.install "kopia"
  end
end

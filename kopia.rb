# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221228.0.204701"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221228.0.204701/kopia-20221228.0.204701-macOS-x64.tar.gz"
    sha256 "f661968634294066a39db11be90f2546a994556a631da14fd3a8453e18859969"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221228.0.204701/kopia-20221228.0.204701-macOS-arm64.tar.gz"
    sha256 "1525b7c60fe61eab423b8bc2c17cc48185c1c2b6d0be28ba3fcda1064be65aff"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221228.0.204701/kopia-20221228.0.204701-linux-x64.tar.gz"
    sha256 "4a8bf925b8ddc8527dc333c5eb20e9d8d6f122a3d2fabd79bc536910382a8f76"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221228.0.204701/kopia-20221228.0.204701-linux-arm.tar.gz"
    sha256 "68264b80e20e4ee9ba59e05d28659337b0485b648433ee382dade62b8c1b9388"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221228.0.204701/kopia-20221228.0.204701-linux-arm64.tar.gz"
    sha256 "f82b1ea5bd476e91cef49dbe293a1f50c2329087c8cf2e9a007a7fa619605c50"
  end

  def install
    bin.install "kopia"
  end
end

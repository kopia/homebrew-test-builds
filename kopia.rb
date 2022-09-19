# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220918.0.224908"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220918.0.224908/kopia-20220918.0.224908-macOS-x64.tar.gz"
    sha256 "02881647b2fbe7c89ab7cc313e1749775217c54ff9b296f41dabcee5dede45a3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220918.0.224908/kopia-20220918.0.224908-macOS-arm64.tar.gz"
    sha256 "c0f677cd655b233e066b055e7ff0bbc4b9c1dd5efebc604ad90037296e7b7af4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220918.0.224908/kopia-20220918.0.224908-linux-x64.tar.gz"
    sha256 "e8ec8764a91ef3bd21eaf52a89362d18a9cdf0f44ccde698111a43591d553fd6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220918.0.224908/kopia-20220918.0.224908-linux-arm.tar.gz"
    sha256 "295a17f619f4894c175d746ec050a803617a4cdaf2bdb1a3b58931b8a8a87ecb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220918.0.224908/kopia-20220918.0.224908-linux-arm64.tar.gz"
    sha256 "046d4c34ab5520bbb165e1c8dd8da57dff00da6026ef5e9cc19ba5ac057d10cf"
  end

  def install
    bin.install "kopia"
  end
end

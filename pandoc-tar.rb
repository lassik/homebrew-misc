class PandocTar < Formula
  desc "Batch conversion of Pandoc documents (tar in, tar out)"
  homepage "https://github.com/lassik/pandoc-tar"
  head "https://github.com/lassik/pandoc-tar.git"
  license "BSD-3-Clause"

  depends_on "cabal-install" => :build
  depends_on "ghc" => :build

  def install
    system "cabal", "v2-update"
    system "cabal", "v2-install", *std_cabal_v2_args
  end
end

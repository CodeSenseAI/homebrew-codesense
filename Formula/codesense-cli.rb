class CodesenseCli < Formula
    desc "Auto-updating context layer for LLMs — 70% fewer tokens, more accurate answers, cross-repo aware"
    homepage "https://www.npmjs.com/package/codesense-cli"
    url "https://registry.npmjs.org/codesense-cli/-/codesense-cli-0.3.5.tgz"
    sha256 "eff7ae5cc87a909f4526e86ba00f565ef93eafb2bbf3b61072cba7282850194b"
    license "UNLICENSED"
  
    depends_on "node"
  
    def install
      system "npm", "install", *std_npm_args
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  
    test do
      system "#{bin}/codesense", "--version"
    end
  end
  
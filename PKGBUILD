# Maintainer: Stefan Zipproth <s.zipproth@ditana.org>

pkgname=ditana-config-zsh
pkgver=1.05
pkgrel=1
pkgdesc="Ditana zsh config"
arch=(any)
url="https://ditana.org"
license=('AGPL-3.0-or-later AND custom-zsh AND BSD-3-Clause AND MIT AND BSD AND ISC')
conflicts=()
depends=(ditana-config-shell zsh zsh-syntax-highlighting zsh-autosuggestions zsh-history-substring-search fzf pkgfile starship)
makedepends=()
source=("file://${PWD}/.zshrc")
sha256sums=('SKIP')

package() {
	install -D -m644 "$srcdir/.zshrc" "$pkgdir/etc/skel/.zshrc"
}

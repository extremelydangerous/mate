USE_TOOLS+=	aclocal autoheader autoconf automake gettext-m4 \
		gmake gm4 intltool msgfmt pkg-config

pre-configure:
	cd ${WRKSRC}; \
	aclocal; autoheader; automake -a --foreign -i; autoconf


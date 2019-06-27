Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973FB57C7B
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 08:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=diLEWYjgvHxv5jFWWQ6uB+xx+3CUIBB5ZgsaJK23k6w=; b=e/K
	2A8De1JbjKFUC+BS+jH1qwijNNj4YE+WA4Thybh076MEQgCvGalU0fw0OJ0mhbP/Ko3SaotHghm2H
	lLnRLlBeYxvkfm4e6i0jM+p08BHcUoFsPzW1OwO3wBJ8Ww1eGn7MCOQMOzP7Q08JP7qLFzmwnfU/R
	jJnN+o/7pllZ8m2W9eceWkipfwysbgP+xt49qJpcFKGIclHEc3YAyYtpwLDcihvaDIgjlIIe0ZN8Z
	efw4zxq6BLC2qCcjWCGcqW2DBW4Bl5hJ6WRkSbfDAw79TGrWJeTRdGle0E8YDefpsYrG4k9qYGf1f
	WwngbjDdHFw6x3xa5cZ2nO2AT7qvUHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOG8-0006z3-UU; Thu, 27 Jun 2019 06:51:52 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8b-0006KM-8W; Thu, 27 Jun 2019 06:44:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t/tKte8+f+WnIerV46Kqk5V4Cu5goyQEz8X3TPyTH+k=; b=YmGTxxoN9UbpxZaK0IJIRp/Bk
 syPXhkVtX+ul8X987R6Q2eLdhZ9XRF06x594dp+A74aVZdwKAkR91accZ2pcbtmhmTYxwjoN9sueD
 G0zwBZWAlpKhbW43sq6dTpytNsieafBkZVq+OBd0uYZtDZCFDp/I6z7O8gMwAxWcwTZLwr+mn+Nez
 eq2hS6Vps456GJvlF2oyG5MiTskjB0VapBGkozAkTErhCD5kzGScUxVAhMrFAToKqNbMW3NqYNKbD
 5qds3DGZrTV4lE0X88FzVhgxdHbJ1+TZ17Mh6miLcs/wIMyI8dX6kE3U4RTCucN0Y7u69Cm2ijkhE
 eRzg9kH/g==;
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgJW2-0005W4-Ma; Thu, 27 Jun 2019 01:47:59 +0000
Received: from grover.flets-west.jp (softbank126125154139.bbtec.net
 [126.125.154.139]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id x5R1kN0v032702;
 Thu, 27 Jun 2019 10:46:23 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x5R1kN0v032702
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561599984;
 bh=t/tKte8+f+WnIerV46Kqk5V4Cu5goyQEz8X3TPyTH+k=;
 h=From:To:Cc:Subject:Date:From;
 b=x56ew+Nf/mRL+Y9auCSqcIA7wXTn2ja3HVYzHe0zb/E43gJ8Lggs/PguNK3OCZjgp
 uEyvbCO2H1dT/DpTwUE6DbmQRbC6vOSL5OITz+s0Bb0odvn6gylTlEcXpF8asnjeml
 88aMR4WR5z+A0KqVY3or1TMOqNYfDZk2Ex4sSzWca/5b84o36B0eGUd3VL7kWJzm2Z
 ht4QKpX3nwgoUQtDo9jLHs9EQ7Dgcaxi1GdZoFz3rV7s0Tp5VvQMZ+OUmUdUW+ge61
 tE78teOBqyznZ79jc3oTqjv6+zpNpU51id+uwMW/3dc8GBkGo5Jz2XIAR4PoONDPEu
 JgLgECL33cJbg==
X-Nifty-SrcIP: [126.125.154.139]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH v2 0/4] Compile-test UAPI and kernel headers
Date: Thu, 27 Jun 2019 10:46:13 +0900
Message-Id: <20190627014617.600-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>, linux-doc@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-riscv@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>,
 Kees Cook <keescook@chromium.org>, xdp-newbies@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Anton Vorontsov <anton@enomsg.org>, John Fastabend <john.fastabend@gmail.com>,
 Yonghong Song <yhs@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Tony Luck <tony.luck@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Colin Cross <ccross@android.com>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


1/4: reworked v2.

2/4: fix a flaw I noticed when I was working on this series

3/4: maybe useful for 4/4 and in some other places

4/4: v2. compile as many headers as possible.


Changes in v2:
 - Add CONFIG_CPU_{BIG,LITTLE}_ENDIAN guard to avoid build error
 - Use 'header-test-' instead of 'no-header-test'
 - Avoid weird 'find' warning when cleaning
  - New patch
  - New patch
  - Add everything to test coverage, and exclude broken ones
  - Rename 'Makefile' to 'Kbuild'
  - Add CONFIG_KERNEL_HEADER_TEST option

Masahiro Yamada (4):
  kbuild: compile-test UAPI headers to ensure they are self-contained
  kbuild: do not create wrappers for header-test-y
  kbuild: support header-test-pattern-y
  kbuild: compile-test kernel headers to ensure they are self-contained

 .gitignore                         |    1 -
 Documentation/dontdiff             |    1 -
 Documentation/kbuild/makefiles.txt |   13 +-
 Makefile                           |    4 +-
 include/Kbuild                     | 1134 ++++++++++++++++++++++++++++
 init/Kconfig                       |   22 +
 scripts/Makefile.build             |   10 +-
 scripts/Makefile.lib               |   12 +-
 scripts/cc-system-headers.sh       |    8 +
 usr/.gitignore                     |    1 -
 usr/Makefile                       |    2 +
 usr/include/.gitignore             |    3 +
 usr/include/Makefile               |  133 ++++
 13 files changed, 1331 insertions(+), 13 deletions(-)
 create mode 100644 include/Kbuild
 create mode 100755 scripts/cc-system-headers.sh
 create mode 100644 usr/include/.gitignore
 create mode 100644 usr/include/Makefile

-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

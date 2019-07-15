Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7E1688E3
	for <lists+linux-riscv@lfdr.de>; Mon, 15 Jul 2019 14:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBcUjI1VBmEVU96H6l502N9egGSj7kqTvHYO4j7NuoY=; b=fi645mKUUl1PRa
	oPLRbm/zpAojfEPfYhKf1bt/1u7BTx3MUSj2PdVm2yOF6ioChpuAUvWsdOhVTkZnQpEJam7mmzbQh
	UXsp+nK5k+O6g8ZBfkPUiAi6WkbOIfUHSzFFuWCthsO+JQPuMkCevub2a+0xwZfqTxGhqKGkOpWLv
	wR/m9aVBBAKBRb+9Zd5s1KFxsrw9mirlKI+Pk+9DYwsShcP9JYSgXWm3isMSw8Hpz/lMl9XejOiwd
	U/hGIkijU6uF5b9HHfRQvZ8WT3zjUPcMoVsWNsQ9vzGwMl1ngSqDwkxR00N6s6YC71CA3JSGvmyhd
	zp0h4uwGZOYSP6NcVPjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn06s-0005lc-Le; Mon, 15 Jul 2019 12:29:38 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn06o-0005kM-O4
 for linux-riscv@lists.infradead.org; Mon, 15 Jul 2019 12:29:36 +0000
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
 [209.85.222.54]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x6FCT6eK018127
 for <linux-riscv@lists.infradead.org>; Mon, 15 Jul 2019 21:29:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x6FCT6eK018127
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1563193747;
 bh=yAufAdrjbVZeLo2XKE8YwT7x8b4qwlGxGHKZaKC8OiE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=epIJpluQMn/A5uXoItj+a9fCiitzzHgVapQnSQ6gXwMCNTUr6gLM4wYLAi6UDqz9v
 DBqoYqnORzcTAvzrctniOj+rX4rK5gAs5njV3NOPo7xEBbJo9IwdolOvZF62FG1xH7
 ocS8lNTxYbiZOPrcX0hL7SfezLKSHfU+1qQg1RQXhIkGDzTXI9T06SI7xYciSOfUlr
 TE0YU7P4guaBMWWsOV7jUzQF83dfpXHQkLcEjVJ+UnhhUKoisHb7suMi8WyW3iD9D9
 QQP7Lljui+D5R68E6Gusped9NvK8ObE72zgHjetsP40KfJKm81x0Pigc7hOtJU1pJc
 T18TBJKP7taLg==
X-Nifty-SrcIP: [209.85.222.54]
Received: by mail-ua1-f54.google.com with SMTP id 8so6636371uaz.11
 for <linux-riscv@lists.infradead.org>; Mon, 15 Jul 2019 05:29:07 -0700 (PDT)
X-Gm-Message-State: APjAAAW5fNPLtTkXrPuHCB1m1GSk5s5vfRzS4QYrxsuXyRSZP8zLY4wP
 78Kcvz2p0vKg1/aZJyCsX/0W8AIaFwsKNVWBkYc=
X-Google-Smtp-Source: APXvYqxzkyUT0iZjK1QVWY25ZVaKJaxxn64RERk2SmEwo7a1tSGZWRyJCpcrJqjGgLDWFGhIeN/hfzmCIPLb2QQGnI4=
X-Received: by 2002:ab0:70d9:: with SMTP id r25mr400188ual.109.1563193746045; 
 Mon, 15 Jul 2019 05:29:06 -0700 (PDT)
MIME-Version: 1.0
References: <1562664759-16009-1-git-send-email-info@metux.net>
 <1562664759-16009-4-git-send-email-info@metux.net>
In-Reply-To: <1562664759-16009-4-git-send-email-info@metux.net>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 15 Jul 2019 21:28:30 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw@mail.gmail.com>
Message-ID: <CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw@mail.gmail.com>
Subject: Re: [PATCH 4/4] debian: add generic rule file
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_052935_016661_97333BEC 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joe Perches <joe@perches.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Robo Bot <apw@canonical.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 6:33 PM Enrico Weigelt, metux IT consult
<info@metux.net> wrote:
>
> Adding a generic debian rule file, so we can build the directly
> via usual Debian package build tools (eg. git-buildpackage,
> dck-buildpackage, etc). It expects the .config file already
> placed in the source tree.
>
> The rule file contains a rule for creating debian/control and
> other metadata - this is done similar to the 'deb-pkg' make rule,
> scripts/packaging/mkdebian.

I saw a similar patch submission before, and negative feedback about it.

Debian maintains its own debian/rules, and it is fine.
I do not like to check-in the one in the kernel tree.



> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  .gitignore   |  1 +
>  MAINTAINERS  |  6 ++++++
>  debian/rules | 27 +++++++++++++++++++++++++++
>  3 files changed, 34 insertions(+)
>  create mode 100755 debian/rules
>
> diff --git a/.gitignore b/.gitignore
> index 7587ef56..01d742c 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -69,6 +69,7 @@ modules.builtin
>  # Debian directory (make deb-pkg)
>  #
>  /debian/
> +!/debian/rules
>
>  #
>  # Snap directory (make snap-pkg)
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 558acf2..56e034c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4516,6 +4516,12 @@ F:       include/uapi/linux/dccp.h
>  F:     include/linux/tfrc.h
>  F:     net/dccp/
>
> +DEBIAN PACKAGING FILES
> +M:     Enrico Weigelt <info@metux.net>
> +L:     linux-kbuild@vger.kernel.org
> +S:     Maintained
> +F:     debian/
> +
>  DECnet NETWORK LAYER
>  W:     http://linux-decnet.sourceforge.net
>  L:     linux-decnet-user@lists.sourceforge.net
> diff --git a/debian/rules b/debian/rules
> new file mode 100755
> index 0000000..c2f0319
> --- /dev/null
> +++ b/debian/rules
> @@ -0,0 +1,27 @@
> +#!/usr/bin/make -f
> +# SPDX-License-Identifier: GPL-2.0
> +
> +export MAKE
> +export KERNELARCH           = $(shell $(MAKE) kernelarch)
> +export KERNELRELEASE        = $(shell $(MAKE) kernelrelease)
> +export KBUILD_DEBARCH       = $(shell dpkg-architecture -qDEB_HOST_ARCH)
> +export KBUILD_BUILD_VERSION = $(shell $(MAKE) kernellocalversion)
> +export KDEB_RULES           = debian/rules.auto
> +export KDEB_SOURCENAME      = linux-source
> +export ARCH                 = $(KERNELARCH)
> +
> +debian/control debian/changelong debian/arch debian/copyright:
> +debian/control:
> +       ./scripts/package/mkdebian
> +
> +build: debian/control
> +       $(MAKE) KERNELRELEASE=$(KERNELRELEASE) ARCH=$(KERNELARCH) KBUILD_BUILD_VERSION=$(KBUILD_BUILD_VERSION) KBUILD_SRC=
> +
> +binary-arch:   debian/control
> +       $(MAKE) KERNELRELEASE=$(KERNELRELEASE) ARCH=$(KERNELARCH) KBUILD_BUILD_VERSION=$(KBUILD_BUILD_VERSION) KBUILD_SRC= intdeb-pkg
> +
> +clean:
> +       rm -rf debian/*tmp debian/files debian/changelog debian/control debian/copyright debian/rules.auto debian/arch
> +       $(MAKE) clean
> +
> +binary: binary-arch
> --
> 1.9.1
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

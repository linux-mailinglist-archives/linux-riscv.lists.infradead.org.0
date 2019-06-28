Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E2159328
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Jun 2019 06:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=THjtX2ihMu754cfCAgtmdC5W8PrXCY/XuzL91HWHpj4=; b=E6UvK1yUS2K3ce
	e3dayimI/zsAQARwSi4hL+tbR+ebBG0HJ/dyylmFgdlFEfSf8Amg4UXLfcJUi5pUH2VWJDZ2xTuCj
	RG0BCNJ5jdMhut/U/1QsGhGNu+3Yv75JqQ6nF0jYA/OL/5LDrgUrorYb72JkKJApWKXHwJwjLjYHs
	XXZL19n4VDDkAsU+Ld03NitN1GKwKc2LrGOMlOvHOz/oGzHvZqBYlA+GeOVB6rG2+wBS+sprJWuxC
	vNL/pwDEJbigS0nrW/R/5aM6aa9RYve/s/d1xGi5TeVZr8YwCDxHGF+r3Sg6jMe6CtZ0MKF8BZRoY
	qsl5wc6zIbYdsqzo/8OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiy8-0000ph-31; Fri, 28 Jun 2019 04:58:40 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgixh-0000b2-UF; Fri, 28 Jun 2019 04:58:15 +0000
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com
 [209.85.217.42]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x5S4vmGv019235;
 Fri, 28 Jun 2019 13:57:49 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x5S4vmGv019235
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561697869;
 bh=SIK/nAM+sI54EJmk0mR1Usgw9j5vfYmGFrOtLjOZzLg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JxblWpm3C3r7r01gYCOajBSW84T6W3cnHh34fYXfzFs98o7YC0XLfQPjyIZJOe7wM
 PY/Z814YyNy19enS/Ou211c5U7rm691JuQCgggAcE2sGPHLAj9wwCQolzRkbPaDRiu
 FrTXIynHp8sn8Ga5l38WmMbWouAfZu8DxdTPzh8CSEslepOK3tMS5SQS+4VtUehZ9t
 NSNHzUy1OY+BQNhszkLRTwslt4vvB1fQRAdLZXk9kVNL+2+OwXetOycQuOQ2VOQRtf
 XghTnCtXDc6J9Kd7iUMUzD/WmoM3yPHVBRQHQLacTI0FvtiDEE2S7qU0bYPKqALUUD
 5RDATmr7n88Ew==
X-Nifty-SrcIP: [209.85.217.42]
Received: by mail-vs1-f42.google.com with SMTP id a186so3202073vsd.7;
 Thu, 27 Jun 2019 21:57:48 -0700 (PDT)
X-Gm-Message-State: APjAAAXhO10j9bWkfm8UWgyZm69hfK5Zp3A/owwHoWWMehQUVg1rn1LT
 9m3WtJXOTuZwyFcu2KMb8EyIV+OEibzN1n9HRE0=
X-Google-Smtp-Source: APXvYqyyvmsd8AAk5R7aaNFgntOJs2TjX0FeQ1b2WdSaf2T0LzzKUcfk9Z8oacISJcBzf5zvmHjL7/Pj9m8miFmaa6o=
X-Received: by 2002:a67:d46:: with SMTP id 67mr4682467vsn.181.1561697868020;
 Thu, 27 Jun 2019 21:57:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190627163903.28398-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190627163903.28398-1-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 28 Jun 2019 13:57:12 +0900
X-Gmail-Original-Message-ID: <CAK7LNARj+A1JDnUmA_ZFC5Shsy7Tg37LtXS27H7ZTgDbp5BO2w@mail.gmail.com>
Message-ID: <CAK7LNARj+A1JDnUmA_ZFC5Shsy7Tg37LtXS27H7ZTgDbp5BO2w@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Compile-test UAPI and kernel headers
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_215814_219272_5E509E58 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-riscv@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>, xdp-newbies@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Anton Vorontsov <anton@enomsg.org>, John Fastabend <john.fastabend@gmail.com>,
 Yonghong Song <yhs@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Kees Cook <keescook@chromium.org>, Jani Nikula <jani.nikula@intel.com>,
 Tony Luck <tony.luck@intel.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Michal Marek <michal.lkml@markovi.net>, Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, Colin Cross <ccross@android.com>,
 bpf@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 1:41 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> 1/4: Compile-test exported headers (reworked in v2)
>
> 2/4: fix a flaw I noticed when I was working on this series.
>      Avoid generating intermediate wrappers.
>
> 3/4: maybe useful for 4/4 and in some other places.
>      Add header-test-pattern-y syntax.
>
> 4/4: Compile-test kernel-space headers in include/.
>      v2: compile as many headers as possible.
>      v3: exclude more headers causing build errors


I push this series to
 git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
 header-test-v3
for somebody who wants to test it.



>
> Masahiro Yamada (4):
>   kbuild: compile-test UAPI headers to ensure they are self-contained
>   kbuild: do not create wrappers for header-test-y
>   kbuild: support header-test-pattern-y
>   kbuild: compile-test kernel headers to ensure they are self-contained
>
>  .gitignore                         |    1 -
>  Documentation/dontdiff             |    1 -
>  Documentation/kbuild/makefiles.txt |   13 +-
>  Makefile                           |    4 +-
>  include/Kbuild                     | 1250 ++++++++++++++++++++++++++++
>  init/Kconfig                       |   22 +
>  scripts/Makefile.build             |   10 +-
>  scripts/Makefile.lib               |   13 +-
>  scripts/cc-system-headers.sh       |    8 +
>  usr/.gitignore                     |    1 -
>  usr/Makefile                       |    2 +
>  usr/include/.gitignore             |    3 +
>  usr/include/Makefile               |  134 +++
>  13 files changed, 1449 insertions(+), 13 deletions(-)
>  create mode 100644 include/Kbuild
>  create mode 100755 scripts/cc-system-headers.sh
>  create mode 100644 usr/include/.gitignore
>  create mode 100644 usr/include/Makefile
>
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



--
Best Regards
Masahiro Yamada

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

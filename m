Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4D3179FA5
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 06:54:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLZQk5H+gmDXNMVLZ+oRJufK+h7dOlNTyaf6cOwRd+E=; b=STgnV9QQtxA30W
	6jepftFNEkz/mMyXDrrsHzNWA23cSJULDe+JyyCiIvP8bLf+b8Q2B7JYRwQE6wyHGF1znNUnx03qx
	lynl5zzl0b6hPM9zQxOXaCBe2NwB75mqn5IwQ4KWgfzedQPMYhhim0qiZhUFDJ4FIeYOsngUzyhY4
	or7gkTvd5+eSrsvQenExiYL0MVah7N91EdN9XAkFmwhmjl71kJ3SNqqJFKyyeQw5YAyUHIDW82T3x
	savg2Jr2K7gWs1Ti0OFfg51/kit4VBG2hRmw/iizJXcFMown4iT4q7hsQCYcUvqHXso+C6S22Z93y
	AWKPFjIpz6ClVIlu7aKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9jSH-0005CY-7l; Thu, 05 Mar 2020 05:53:57 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9jSE-0005C4-4x
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 05:53:55 +0000
Received: by mail-lf1-x142.google.com with SMTP id j15so356585lfk.6
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 21:53:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OLZQk5H+gmDXNMVLZ+oRJufK+h7dOlNTyaf6cOwRd+E=;
 b=jkE9AAaRlZx3UZcG1QwUzSj58GhGLQwrKMF4CLrJVUx5I6jj4I8R6NC/WVMrhtCY0u
 KXlH73UyQozrdMMmEgKNprrrWzj5FyEBfSYselBLjoBnzsiEibSh6h44mraRFDgUVp1C
 T2k+XshZggpgBfpA7cRsx7W77Tp6Jwf29X4pnElJXBUPN4Y+4i3ZCt+VnSpazPnSIlp1
 pDWcOb3qqcaCHpSTtY+ZJou17pwrGMvWURubrycw3KIsxfVXwWAQtZKVhZgHPZI7E+Va
 XbAFKv+sJumWtzfMZ0tvLDJijKlEbOxPD523FjUF78HDpFSyLJ71TPaQ0Hfj+ZxLneiH
 N/7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OLZQk5H+gmDXNMVLZ+oRJufK+h7dOlNTyaf6cOwRd+E=;
 b=Xj7SkJP4yV4a49hS6zCbYnKdNMZJXOWgxErlrZUNlzCzmqLRR9Yk9j1fMBaeL1GTdA
 n7H1dgsUs6QQTgjpoi+XJstAhui/xwJjMi9THqfnl8MYX/uUrCV6XPRXkRrMWnPbU/6Z
 b9AgQafTe88SF2ymdVZQCoKQXOanuDCegUnu4sHmWVaBftaONT1K+NtczyOkmxpiaNOq
 1kRgIY0FgQL8KJDG43Ir2sTsgNi/AqPRkjTnOQ5VCcc+nXwQOXe++2q4+0rkOmaeOYtA
 d/m2WawOUZLgMwanGJLi5DfFNvxk71Un/TnGs+lnTAmtcPCAcJYJnM2gg0sdlyvzAMuj
 /SfA==
X-Gm-Message-State: ANhLgQ1jxvjJFJKWz6RjZ6mYf28FuueReAwYVceEbpmwNwIyTpHE2ffL
 X3cQPmAtZM6UAng5CqSau0UF80nCY3PltUBHpuGFKw==
X-Google-Smtp-Source: ADFU+vv70zomwvXOzyTIwR+9Mqd/acmQSjPI/apXIDKIjBOQiLZl2mipGI7MlwEWxxRp7FsSULfFbvgyM3vF7v/wW4g=
X-Received: by 2002:ac2:5e8d:: with SMTP id b13mr309351lfq.113.1583387631784; 
 Wed, 04 Mar 2020 21:53:51 -0800 (PST)
MIME-Version: 1.0
References: <20200217083223.2011-8-zong.li@sifive.com>
 <mhng-0d866567-f710-4d27-8ae9-1f78454d7d85@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-0d866567-f710-4d27-8ae9-1f78454d7d85@palmerdabbelt-glaptop1>
From: Zong Li <zongbox@gmail.com>
Date: Thu, 5 Mar 2020 13:53:41 +0800
Message-ID: <CA+ZOyahuV=Y427S_dWjOvbfQQNSWS3aK8SXxeEEiGBxt3n8WiA@mail.gmail.com>
Subject: Re: [PATCH 7/8] riscv: add DEBUG_WX support
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_215354_193662_66E1BF46 
X-CRM114-Status: GOOD (  23.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zongbox[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Zong Li <zong.li@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Palmer Dabbelt <palmer@dabbelt.com> =E6=96=BC 2020=E5=B9=B43=E6=9C=885=E6=
=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=889:44=E5=AF=AB=E9=81=93=EF=BC=9A
>
> On Mon, 17 Feb 2020 00:32:22 PST (-0800), zong.li@sifive.com wrote:
> > Support DEBUG_WX to check whether there are mapping with write and
> > execute permission at the same time.
> >
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > ---
> >  arch/riscv/Kconfig.debug        | 30 ++++++++++++++++++++++++++++++
> >  arch/riscv/include/asm/ptdump.h |  6 ++++++
> >  arch/riscv/mm/init.c            |  2 ++
> >  3 files changed, 38 insertions(+)
> >
> > diff --git a/arch/riscv/Kconfig.debug b/arch/riscv/Kconfig.debug
> > index e69de29bb2d1..2bcd88e75626 100644
> > --- a/arch/riscv/Kconfig.debug
> > +++ b/arch/riscv/Kconfig.debug
> > @@ -0,0 +1,30 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +
> > +config DEBUG_WX
> > +     bool "Warn on W+X mappings at boot"
> > +     select PTDUMP_CORE
> > +     help
> > +       Generate a warning if any W+X mappings are found at boot.
> > +
> > +       This is useful for discovering cases where the kernel is leavin=
g
> > +       W+X mappings after applying NX, as such mappings are a security=
 risk.
> > +       This check also includes UXN, which should be set on all kernel
> > +       mappings.
> > +
> > +       Look for a message in dmesg output like this:
> > +
> > +         riscv/mm: Checked W+X mappings: passed, no W+X pages found.
> > +
> > +       or like this, if the check failed:
> > +
> > +         riscv/mm: Checked W+X mappings: FAILED, <N> W+X pages found.
> > +
> > +       Note that even if the check fails, your kernel is possibly
> > +       still fine, as W+X mappings are not a security hole in
> > +       themselves, what they do is that they make the exploitation
> > +       of other unfixed kernel bugs easier.
> > +
> > +       There is no runtime or memory usage effect of this option
> > +       once the kernel has booted up - it's a one time check.
> > +
> > +       If in doubt, say "Y".
>
> It looks like this comes verbatim from the arm64 port, at least.  I think=
 we
> should just refactor this to some sort of ARCH_HAS_DEBUG_WX so we can sha=
re the
> code.  I usually do this by adding the shared support, using it for RISC-=
V, and
> then converting the other ports over.
>

OK. It seems to be different work, maybe I could separate this patch
in next version. Thanks.

> > diff --git a/arch/riscv/include/asm/ptdump.h b/arch/riscv/include/asm/p=
tdump.h
> > index e29af7191909..eb2a1cc5f22c 100644
> > --- a/arch/riscv/include/asm/ptdump.h
> > +++ b/arch/riscv/include/asm/ptdump.h
> > @@ -8,4 +8,10 @@
> >
> >  void ptdump_check_wx(void);
> >
> > +#ifdef CONFIG_DEBUG_WX
> > +#define debug_checkwx() ptdump_check_wx()
> > +#else
> > +#define debug_checkwx() do { } while (0)
> > +#endif
> > +
> >  #endif /* _ASM_RISCV_PTDUMP_H */
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > index 09fa643e079c..a05d76e5fefe 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -509,6 +509,8 @@ void mark_rodata_ro(void)
> >       set_memory_ro(rodata_start, (data_start - rodata_start) >> PAGE_S=
HIFT);
> >       set_memory_nx(rodata_start, (data_start - rodata_start) >> PAGE_S=
HIFT);
> >       set_memory_nx(data_start, (max_low - data_start) >> PAGE_SHIFT);
> > +
> > +     debug_checkwx();
> >  }
> >  #endif
>


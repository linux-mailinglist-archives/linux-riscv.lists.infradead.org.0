Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A64D100096
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 09:41:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chPdYqI8c7XDHcnH13ngkCbl4jwW6TaYJIGnb4dl+MI=; b=GDJgc8xGr5L3OZ
	CvjTF9LNNZjS63GVLq+kl178HF3Z+oOuiPw8VFvJH7yI49D9dPrtHD8rItfcfs8+v183kZJ07CD7r
	/EZrlqHT8r2iunWoQ+r8su8oXCsRo9+U6QKVbnlDNXZGxmJB2s0oj9D06QhqN2EGUr1CSEA2J0PJ1
	NvdtmEBIRzrZWIKPiXzvVzt/MWNvjpGBLY81zhVrTv+IATUS853mcYakbnah0e5iRvPqYNCyBGPKC
	PE3WVwE+YdKpcEWGS/n/1KDRyQ8oy7J4JIcLceFKbXXB2ucHC7ql38Pm00zgXe2n5Twgn3SDTGrzC
	8nz1fEsHLYr8SsGeQGHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWcb7-00081o-Jq; Mon, 18 Nov 2019 08:41:25 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWcb3-0007sy-QB
 for linux-riscv@lists.infradead.org; Mon, 18 Nov 2019 08:41:23 +0000
Received: by mail-qt1-x842.google.com with SMTP id j5so17898295qtn.10
 for <linux-riscv@lists.infradead.org>; Mon, 18 Nov 2019 00:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ps8MPX8AyfJLLBwWKE68qZjw9L/Pg8PHKG4fAaJeaII=;
 b=IC7OCAsaSGadT4QqG44yfohuo2GzVYmYF7p9vOgTBOvtQh6Mok3EIWsuW015bvLd8I
 KLddOPSLKd89GkJRs5g60SlRqRF/lJe67XhB3/ORMFsCeH4obofc1n4FyBWsVL9ZSD1r
 AqZzQPUAi1MruJRY0i5nJwkRsfQZSr1EKTRUVkW3/qIWm7SXq5DpDDLoGrIz3+INWJOV
 9NPwnXMWD0KvxAgAEF963L6vDLSVPZcFObWwk6HSbBSKNg9DqCJpI+z+/BDByVKrh4IO
 do4qVjGH148Xp03W4o7cGRdiBWrVFSiRFwDC0FijQw/TOcg/pKcZSljQIN4sUN2PGTk2
 3QJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ps8MPX8AyfJLLBwWKE68qZjw9L/Pg8PHKG4fAaJeaII=;
 b=PWtYeqbgPzFfoDfpq9mBNAO0Lc2d9aiTaAp7Gm4+bXhoPljCmXVdoDI4LsvdEjsYPT
 4I3z+khDmXaEm/bZUoMe/xHyoLRxrrkQXVazikl64vkoU25Av7ZCzHiPXOvt48qJR9ep
 oaegtLA6qg7MDwEvfWuihGOVKTAHkYw4areU/tGtRb3VvlqKUMQaoh4AeLrd5bWMgWGu
 PkSYdEkEO519U6wHN7TF33pu+axtyYTXDrUHqy9EA0Do01IENnVAcEu0oIxMI6Tn3O6a
 arCeMJ158HWoY5csowj4PcbcrjGonQ0qNa84VjqnhS9eyiFV2r32m/PiR5unh7M6hwZc
 JnGg==
X-Gm-Message-State: APjAAAVHZjNDHcACYbqLTIY0rfAWZ5I1OJjihdQgoQD+xJWtWya1yDeS
 9jhs2Y3U6Cd2E3sqjgrALp+pl8OCXtKoOtEyGWAmIQ==
X-Google-Smtp-Source: APXvYqycmhGNQj9GQOvGnwZhD3YJ1muGvboeuF314gc0zshNNbwTi8+MtoHNCjuv9yTAij9KqSEGaKI+HHMznMaAvXU=
X-Received: by 2002:aed:24af:: with SMTP id t44mr25451220qtc.57.1574066477833; 
 Mon, 18 Nov 2019 00:41:17 -0800 (PST)
MIME-Version: 1.0
References: <20191028024101.26655-1-nickhu@andestech.com>
 <20191028024101.26655-2-nickhu@andestech.com>
 <alpine.DEB.2.21.9999.1911162055490.21209@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1911162055490.21209@viisi.sifive.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 18 Nov 2019 09:41:06 +0100
Message-ID: <CACT4Y+Zv8VDQwiCW=8_qKb1Kja+bopBAtgBjhevM3ZpgMpXmUA@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] kasan: No KASAN's memmove check if archs don't
 have it.
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_004121_849877_FDCD65C9 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: aou@eecs.berkeley.edu, alankao@andestech.com,
 Nick Hu <nickhu@andestech.com>, Jonathan Corbet <corbet@lwn.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, palmer@sifive.com,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Linux-MM <linux-mm@kvack.org>, atish.patra@wdc.com, Anup.Patel@wdc.com,
 Alexander Potapenko <glider@google.com>, green.hu@gmail.com,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Nov 17, 2019 at 5:58 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> Hello Andrey, Alexander, Dmitry,
>
> On Mon, 28 Oct 2019, Nick Hu wrote:
>
> > If archs don't have memmove then the C implementation from lib/string.c is used,
> > and then it's instrumented by compiler. So there is no need to add KASAN's
> > memmove to manual checks.
> >
> > Signed-off-by: Nick Hu <nickhu@andestech.com>
>
> If you're happy with this revision of this patch, could you please ack it
> so we can merge it as part of the RISC-V KASAN patch set?
>
> Or if you'd prefer to take this patch yourself, please let me know.

Hi Paul,

Acked-by: Dmitry Vyukov <dvyukov@google.com>

We don't have separate tree for kasan. Merging this via RISC-V tree
should be fine.

Thanks

> -
>
> > ---
> >  mm/kasan/common.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > index 6814d6d6a023..897f9520bab3 100644
> > --- a/mm/kasan/common.c
> > +++ b/mm/kasan/common.c
> > @@ -107,6 +107,7 @@ void *memset(void *addr, int c, size_t len)
> >       return __memset(addr, c, len);
> >  }
> >
> > +#ifdef __HAVE_ARCH_MEMMOVE
> >  #undef memmove
> >  void *memmove(void *dest, const void *src, size_t len)
> >  {
> > @@ -115,6 +116,7 @@ void *memmove(void *dest, const void *src, size_t len)
> >
> >       return __memmove(dest, src, len);
> >  }
> > +#endif
> >
> >  #undef memcpy
> >  void *memcpy(void *dest, const void *src, size_t len)
> > --
> > 2.17.0
> >
> >
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
> >
>
>
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

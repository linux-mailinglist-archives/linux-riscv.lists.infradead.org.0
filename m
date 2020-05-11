Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D823F1CDEDE
	for <lists+linux-riscv@lfdr.de>; Mon, 11 May 2020 17:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cFOqYFe+JnxanB4tWXMEfN+/EOvlslN0N0IK+ztKBU4=; b=cBwBOlPM3XfyT0IASTTeg6I79
	tELXsL3qkfAsvKqzXQ287Xtjh/ZWrEyit4dOJgCpNpOVz7m7ddvnHyifIE7qfPqBOQLf8VA0ryd+N
	qGukkhcE++ElpdALau6ZJSf2xgac1ygfrSTzWlpsdkOuyURJK40JdluJ+4ZrNxA+NB/gCAxOBRc8T
	8xY1FNPbyS10ZI1zEHax+IMfdNuriPI4f8bgSlA80e5eDcRF/FrbyJlFoHck1mjIJPE+3QreybV+Q
	hp4TnS4W4bJdeCzekENQQNkJh6LtzRO0fchvh7/ytrMgRY6w2VesLiJzjbra5zW+LqAMsSAoJ7/2s
	0xAwpQJlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYAIX-0008QH-PF; Mon, 11 May 2020 15:24:53 +0000
Received: from mail-oo1-f66.google.com ([209.85.161.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYAIN-0008Dy-5K; Mon, 11 May 2020 15:24:44 +0000
Received: by mail-oo1-f66.google.com with SMTP id r1so2013113oog.7;
 Mon, 11 May 2020 08:24:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cFOqYFe+JnxanB4tWXMEfN+/EOvlslN0N0IK+ztKBU4=;
 b=LAevE5orsR+iMiJaKeCYT11l3TlPBBX8OyJnlWjTkN9l3okMj1jwRYK9Vq4EMan6zL
 QUuw4uIqplC8IHr5QxJuQZQbB5w4zRIKM1irGACVKc8rZ6GYV0Qx7TnBmAjMy6PRnAa1
 OLCZNPcxXPeKpweyaQO4/u/sgkL9OFQ7nRX9UQazjJXnDM6aPUkRQsAKcMuc5xtL+5i2
 hLP4zVgtR0J/7GJDIcaLMNx4HWYYUvqok81ONp3jLi3lXTuKoiOq1fu69cxOBBMd+RqQ
 AYOS4Ye3Q0ysM7N8IGvTnOfCmB+9TCauwXlEoOlBLAFjUwD+Uj6yahr1Q6IBpmjZaqk2
 AxpQ==
X-Gm-Message-State: AGi0PuYFAf0SLsBTrDKP63zSWKPP2AScjL+zXOT4XkGsD/TOjtnlk590
 32ykMfVphChTApN9jaqA1PX60KyYOByJcwzdYxo=
X-Google-Smtp-Source: APiQypJasCN4yl8lWM1FRmzaz39ukL/iWbljLpcbY1TKIvOnIUfi1IKvTWCvzobh4HXgocJWo6GBkm5ORmsQ5s6pFSU=
X-Received: by 2002:a4a:d204:: with SMTP id c4mr2380562oos.1.1589210682093;
 Mon, 11 May 2020 08:24:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200510075510.987823-1-hch@lst.de>
 <20200510075510.987823-32-hch@lst.de>
 <CAMuHMdU_OxNoKfO=i903kx0mgk0-i2h4u2ase3m9_dn6oFh_5g@mail.gmail.com>
 <20200511151120.GA28634@lst.de>
In-Reply-To: <20200511151120.GA28634@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 11 May 2020 17:24:30 +0200
Message-ID: <CAMuHMdW1S91i3x0unNcJnypHse7ifynGb4dZcVhJaemR3GH1Pg@mail.gmail.com>
Subject: Re: [PATCH 31/31] module: move the set_fs hack for flush_icache_range
 to m68k
To: Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_082443_204476_922DBF18 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>, Roman Zippel <zippel@linux-m68k.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Linux MM <linux-mm@kvack.org>, sparclinux <sparclinux@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Linux-Arch <linux-arch@vger.kernel.org>,
 linux-c6x-dev@linux-c6x.org,
 "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:TENSILICA XTENSA PORT \(xtensa\)" <linux-xtensa@linux-xtensa.org>,
 Arnd Bergmann <arnd@arndb.de>, Jessica Yu <jeyu@kernel.org>,
 linux-um <linux-um@lists.infradead.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Openrisc <openrisc@lists.librecores.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Christoph,

On Mon, May 11, 2020 at 5:11 PM Christoph Hellwig <hch@lst.de> wrote:
> On Mon, May 11, 2020 at 09:40:39AM +0200, Geert Uytterhoeven wrote:
> > On Sun, May 10, 2020 at 9:57 AM Christoph Hellwig <hch@lst.de> wrote:
> > >
> > > flush_icache_range generally operates on kernel addresses, but for some
> > > reason m68k needed a set_fs override.  Move that into the m68k code
> > > insted of keeping it in the module loader.
> > >
> > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> >
> > Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>
> > Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
>
> Btw, do you know what part of flush_icache_range relied on set_fs?
> Do any of the m68k maintainers have an idea how to handle that in
> a nicer way when we can split the implementations?

arch/m68k/mm/cache.c:virt_to_phys_slow()

All instructions that look up addresses in the page tables look at the
source/destination function codes (SFC/DFC) to know if they have to use
the supervisor or user page tables.
So the actual implementation is the same: set_fs() merely configures
SFC/DFC, to select the address space to use.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


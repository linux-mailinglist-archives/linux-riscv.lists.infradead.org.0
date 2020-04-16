Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDE41AB497
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Apr 2020 02:09:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bgJWByk7Pdxv+PTd3f8CTOYNxAe3wN9X/rwgujG77zs=; b=l1f30ujolqe9dnGeRmmB+W/ZT
	NDBARtvlSAkqoWSzCNulHsOtYCCtpTrQCqxiLeXBouUJHsGvtvNVeY4PipO60vZ8AfPstRjnbWWIE
	krrIH8BtFOaxHlAdvQ6XzhLsPxQJy/Db2YQoeJOFmejLLGWd2cf0bKdHHgxhwJmNLYnEbdDKmYRYo
	6KXqRc40irwWqYEGjCVAV2uUMvCuHb99z33vzcjMSag28E7rJwT5yG5i80IYFjmls8BJEfleRw1M8
	FjJlUEg/h4eH7Lxq/A6kLJUQRp4YnlTPk4RkqWqhqbufyQ+AUnzP80yu4p/MsDqAv1Bdb/a+PiDmV
	1z0YIJd1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOs5R-0003al-QX; Thu, 16 Apr 2020 00:08:57 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOs5O-0003aQ-Cl
 for linux-riscv@lists.infradead.org; Thu, 16 Apr 2020 00:08:55 +0000
Received: by mail-qt1-x842.google.com with SMTP id z90so15033138qtd.10
 for <linux-riscv@lists.infradead.org>; Wed, 15 Apr 2020 17:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bgJWByk7Pdxv+PTd3f8CTOYNxAe3wN9X/rwgujG77zs=;
 b=azXEjTLBq8G7xp3HEi+sRXfm50e80tJfoo5aJF7a7aX4tgY5uwMSZN8pttWFaT/r4M
 UiYy1+JIClx7eZo+e4Y9HzKIxgnLOp0WdndagI6TsL61H3s4ChloEFL6Os/+d94ooy7u
 eaUhKMvzi6T0cT8Udwg8SYvEpEmtUkxGtPzVvZnH3Wh6tJ9yc2CVjGIJu47c1XYAdIwQ
 TKcPnG2gmF1TVtyjDy3VCwQ02xNzDgweVG0DinLUrAOfuqoUjsw2ZyG1+knmuRg2yJNW
 8hFpFQm0IYo8nxeLi1WZCthn7Iv0Q+Xxm8mFppXH02rtqxZIkAX5AK9aABFd/VhvINlq
 ylFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bgJWByk7Pdxv+PTd3f8CTOYNxAe3wN9X/rwgujG77zs=;
 b=nt74Oh4rfWiSakHvcvlxuAbDLUvldrjmtRND61zd3fsncS2k+lK38qdy3CEgAQAK6N
 +EthnsyA5gqPwyryMPmIiFsvWA6YiGiMq774QmYW2sXriLUIFmzfvCYYij5T4GACeWmr
 cFYVJYheWlI2m5SuyFeF19pKZ2PinB+o/rFnDfw6Q0tiqjaG/GYOK+3oHvk5LEag6NYx
 e/3jEVX6XCEuQnxgdFuP95UQN1/Qhh6KgQ32Whk5Ol8ZBEsIuF6JiKJ8XuhQdA2CLgzj
 MjkBXO0lVKQBIaZw/KA01wapG79+sXvGdvkC9fLUVqNTFdcPOApzWfFZuwzLT2zP0ndQ
 6tbg==
X-Gm-Message-State: AGi0PuYmPEFtw3Ysk0ztgBXPEkpPgYf67RBfCFd1qWwzP6/EenCi/xuF
 zGUUsqeXQnWuD54uxuD8KBzFwB6LmHv+0Av8Z0xJLw==
X-Google-Smtp-Source: APiQypJDw/wK0jLup7xdVDshD2g65O+QJ8W7zCo/yCvhuB8ZFsDuPupZj5JvA4Kbh0in5u3PRqj3nc67t0GV5ifa6IQ=
X-Received: by 2002:ac8:7199:: with SMTP id w25mr23871146qto.86.1586995732415; 
 Wed, 15 Apr 2020 17:08:52 -0700 (PDT)
MIME-Version: 1.0
References: <1586655721-22567-1-git-send-email-vincent.chen@sifive.com>
 <1586655721-22567-3-git-send-email-vincent.chen@sifive.com>
 <CAFA6WYN36OVP3bXaNTU2h0Av8gT1zRz7oOcjApdtmiFNR+inzA@mail.gmail.com>
In-Reply-To: <CAFA6WYN36OVP3bXaNTU2h0Av8gT1zRz7oOcjApdtmiFNR+inzA@mail.gmail.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Thu, 16 Apr 2020 08:08:41 +0800
Message-ID: <CABvJ_xibZn8TeigS8Hd2mTt5tT_1qfmXMqCuzyPFGfHL1JEEwA@mail.gmail.com>
Subject: Re: [Kgdb-bugreport] [PATCH v3 2/5] riscv: Add KGDB support
To: Sumit Garg <sumit.garg@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_170854_492386_0C333A49 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kgdb-bugreport@lists.sourceforge.net,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 6:59 PM Sumit Garg <sumit.garg@linaro.org> wrote:
>
> On Sun, 12 Apr 2020 at 08:19, Vincent Chen <vincent.chen@sifive.com> wrote:
> >
> > The skeleton of RISC-V KGDB port.
> >
> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> > ---
> >  arch/riscv/Kconfig              |   1 +
> >  arch/riscv/include/asm/kdebug.h |  12 +++
> >  arch/riscv/include/asm/kgdb.h   | 107 +++++++++++++++++++++
> >  arch/riscv/kernel/Makefile      |   1 +
> >  arch/riscv/kernel/kgdb.c        | 200 ++++++++++++++++++++++++++++++++++++++++
> >  arch/riscv/kernel/traps.c       |   5 +
> >  6 files changed, 326 insertions(+)
> >  create mode 100644 arch/riscv/include/asm/kdebug.h
> >  create mode 100644 arch/riscv/include/asm/kgdb.h
> >  create mode 100644 arch/riscv/kernel/kgdb.c
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index a197258595ef..7db9a81cda75 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -68,6 +68,7 @@ config RISCV
> >         select ARCH_HAS_GCOV_PROFILE_ALL
> >         select HAVE_COPY_THREAD_TLS
> >         select HAVE_ARCH_KASAN if MMU && 64BIT
> > +       select HAVE_ARCH_KGDB
> >
> >  config ARCH_MMAP_RND_BITS_MIN
> >         default 18 if 64BIT
> > diff --git a/arch/riscv/include/asm/kdebug.h b/arch/riscv/include/asm/kdebug.h
> > new file mode 100644
> > index 000000000000..85ac00411f6e
> > --- /dev/null
> > +++ b/arch/riscv/include/asm/kdebug.h
> > @@ -0,0 +1,12 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +
> > +#ifndef _ASM_ARC_KDEBUG_H
> > +#define _ASM_ARC_KDEBUG_H
> > +
> > +enum die_val {
> > +       DIE_UNUSED,
> > +       DIE_TRAP,
> > +       DIE_OOPS
> > +};
> > +
> > +#endif
> > diff --git a/arch/riscv/include/asm/kgdb.h b/arch/riscv/include/asm/kgdb.h
> > new file mode 100644
> > index 000000000000..69bc6a03081d
> > --- /dev/null
> > +++ b/arch/riscv/include/asm/kgdb.h
> > @@ -0,0 +1,107 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +
> > +#ifndef __ASM_KGDB_H_
> > +#define __ASM_KGDB_H_
> > +
> > +#ifdef __KERNEL__
> > +
> > +#define GDB_SIZEOF_REG sizeof(unsigned long)
> > +
> > +#define DBG_MAX_REG_NUM (33)
> > +#define NUMREGBYTES ((DBG_MAX_REG_NUM) * GDB_SIZEOF_REG)
> > +#define CACHE_FLUSH_IS_SAFE     1
>
> [...]
>
> > +#define BUFMAX                  2048
> > +#ifdef CONFIG_RISCV_ISA_C
> > +#define BREAK_INSTR_SIZE       2
> > +#else
> > +#define BREAK_INSTR_SIZE       4
> > +#endif
> > +#define CACHE_FLUSH_IS_SAFE 1
>
> double macro definition?
>
Sorry for my neglect.
I will remove the duplicated one in the next version patch.
Thanks for your reminder.


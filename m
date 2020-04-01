Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0859B19A618
	for <lists+linux-riscv@lfdr.de>; Wed,  1 Apr 2020 09:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xWNb23bvG43tvtDYflVRLL7xRdiOM0I/bVuwrcZ+sjE=; b=iVWw6k7cpXNYRHmJI1SvCoaNH
	/ljGHLvW/Zf1rn4dpjD0u6uJ1ydx0SzY2ylkVOL9rl3amvQNhIuXCUyXjw8pNgYq3joL2HZZjeL5F
	CjJXRCA7TMPTZc5ZbnkaXK6fbNthA7y9OdK8xzhSuXtRgsr9HTKHBhwPZjOEGuIjlzkRxVU7Th2nS
	FohN7gsgX95AEEuKrzTL7Jy3y8auABrhzTI4qX4SxyFIP4sTWIH8AEvQXDZgLFPECL65/ct2ihXcy
	JziWkLf6Ed/KDSzZKmEazK+dassRG53xqtzssrcQX2yY59l7bJM7PBio6lzXAXvrQKj9U4t6oAJ0L
	lief1TCUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJXeX-0002Yc-Rg; Wed, 01 Apr 2020 07:19:09 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJXeT-0002Xe-4e
 for linux-riscv@lists.infradead.org; Wed, 01 Apr 2020 07:19:07 +0000
Received: by mail-ot1-x342.google.com with SMTP id t28so24921758ott.5
 for <linux-riscv@lists.infradead.org>; Wed, 01 Apr 2020 00:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xWNb23bvG43tvtDYflVRLL7xRdiOM0I/bVuwrcZ+sjE=;
 b=a0agqxK22RUr8z9MxKv9tv14LtU8MonFWWz7niFaVWHguVjdgtQfydx9atK7qk3dbs
 2gDzIP9xM2xaF3U27R655p7/PV9fULM/chP8iVji/p32gvrB4KyjdvJEejjzSju4N78l
 nDamZuEOyC9aECrt2a85JdHMNiU6kw09IJ+N8XN6oG7VMvWLXto6jcd7VATWHEu6mO6S
 wu+hTVFqus+Vx7Av9A0q2OX+RdlTrChEB/uwL5ApRRuZ6Kx7oDh3t4GX5mzti1Jjj9ko
 uUDGz3o4AcGjIhnOQSiKHJ4ENCXkS9SefXTAMezuCmwGIJ83KxWL41Taim/Jw3Mprk15
 kgWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xWNb23bvG43tvtDYflVRLL7xRdiOM0I/bVuwrcZ+sjE=;
 b=H/G8bIEnakcn7HdxV6FxFVtUDnnFHXHmwN3SkuUzhJIikVEb9gZYfPhTz3+uDrUJ32
 X3v5asfxSnlbYbqp2NJDhRj2gc8QHKR9durQUf08FMo0y3CCsRjQonu/ckK9he4Xz7J5
 SUDlQp49s/nVcGBpynw77bK6mu8UcMUl28GkX5Hnk533lvG7CJhFbZ971cMWGGpeMhyP
 yuX8+vU5uCMxfKAU46umm2H18ECRuc03l7yY4iUMx8Tq4cCJ9rJxlHT1mYoL3xqBd3fM
 /0gCvAtbkTPDNXuKywwCFcoJRCh7uJ2aU3egtJnPwae5qZDAKggTZvgATc2jJqLrM4yd
 uLkQ==
X-Gm-Message-State: ANhLgQ0cFUbzKj/WSSkZ7XWStrtGvHJ49+C87evrzYvROJT2tR8w35fS
 Vq0DNtfUHBl9yBkHuUZfi6AfCiL4ODCKBu0WL0SVjw==
X-Google-Smtp-Source: ADFU+vtzKsxY68182TQ7PSwuGG29gx2NjzcuiOIGWaybfm5PYHXJTIV0ibgQlUPctKZxdt1NZIfA9bk1Pdza1/Pl31s=
X-Received: by 2002:a9d:2002:: with SMTP id n2mr4368298ota.127.1585725542448; 
 Wed, 01 Apr 2020 00:19:02 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1583772574.git.zong.li@sifive.com>
 <20200331223254.919b92750962fefed5a6646f@kernel.org>
In-Reply-To: <20200331223254.919b92750962fefed5a6646f@kernel.org>
From: Zong Li <zong.li@sifive.com>
Date: Wed, 1 Apr 2020 15:18:52 +0800
Message-ID: <CANXhq0rD5kWf=ZDeA0bWdnd2A_iFS-mX_=X8DdJTH4fw09_sKQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/9] Support strict kernel memory permissions for
 security
To: Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_001905_345096_BD6CBAFA 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 9:32 PM Masami Hiramatsu <mhiramat@kernel.org> wrote:
>
> Hi Zong,
>
> On Tue, 10 Mar 2020 00:55:35 +0800
> Zong Li <zong.li@sifive.com> wrote:
>
> > The main purpose of this patch series is changing the kernel mapping permission
> > , make sure that code is not writeable, data is not executable, and read-only
> > data is neither writable nor executable.
> >
> > This patch series also supports the relevant implementations such as
> > ARCH_HAS_SET_MEMORY, ARCH_HAS_SET_DIRECT_MAP,
> > ARCH_SUPPORTS_DEBUG_PAGEALLOC and DEBUG_WX.
>
> The order of the patches seems a bit strange. Since the first 7 patches
> makes kernel read-only, at that point ftrace is broken and it is fixed
> by the last 2 patches. That is not bisect-friendly. Can you move the
> last 2 patches to the top?
>

OK. Let me rearrange the order. Thanks.

> Thank you,
>
> >
> > Changes in v3:
> >  - Fix build error on nommu configuration. We already support nommu on
> >    RISC-V, so we should consider nommu case and test not only rv32/64,
> >    but also nommu.
> >
> > Changes in v2:
> >  - Use _data to specify the start of data section with write permission.
> >  - Change ftrace patch text implementaion.
> >  - Separate DEBUG_WX patch to another patchset.
> >
> > Zong Li (9):
> >   riscv: add ARCH_HAS_SET_MEMORY support
> >   riscv: add ARCH_HAS_SET_DIRECT_MAP support
> >   riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
> >   riscv: move exception table immediately after RO_DATA
> >   riscv: add alignment for text, rodata and data sections
> >   riscv: add STRICT_KERNEL_RWX support
> >   riscv: add macro to get instruction length
> >   riscv: introduce interfaces to patch kernel code
> >   riscv: patch code by fixmap mapping
> >
> >  arch/riscv/Kconfig                  |   6 +
> >  arch/riscv/include/asm/bug.h        |   8 ++
> >  arch/riscv/include/asm/fixmap.h     |   2 +
> >  arch/riscv/include/asm/patch.h      |  12 ++
> >  arch/riscv/include/asm/set_memory.h |  48 +++++++
> >  arch/riscv/kernel/Makefile          |   4 +-
> >  arch/riscv/kernel/ftrace.c          |  13 +-
> >  arch/riscv/kernel/patch.c           | 120 ++++++++++++++++++
> >  arch/riscv/kernel/traps.c           |   3 +-
> >  arch/riscv/kernel/vmlinux.lds.S     |  11 +-
> >  arch/riscv/mm/Makefile              |   2 +-
> >  arch/riscv/mm/init.c                |  44 +++++++
> >  arch/riscv/mm/pageattr.c            | 187 ++++++++++++++++++++++++++++
> >  13 files changed, 445 insertions(+), 15 deletions(-)
> >  create mode 100644 arch/riscv/include/asm/patch.h
> >  create mode 100644 arch/riscv/include/asm/set_memory.h
> >  create mode 100644 arch/riscv/kernel/patch.c
> >  create mode 100644 arch/riscv/mm/pageattr.c
> >
> > --
> > 2.25.1
> >
>
>
> --
> Masami Hiramatsu <mhiramat@kernel.org>


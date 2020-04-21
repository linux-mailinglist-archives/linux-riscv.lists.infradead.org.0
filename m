Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762741B1EC6
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 08:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RvESK7CglgiS5xErjdXAyAHVMUUWew15wYnWDQZ4CeU=; b=WP1y3oQp8mjcqn
	QI/jhq0h9ch//Jfqs7H74F9sCEofMpAb6jlJLBbWZR3zJbw0+fWjsU9GlvivUkQiFUAS9gVf5tT0a
	TzlfhTq6PvfClo2R+8Sh7OweacWOwhknX5j6H45zlP5CTMetLd35dA1F1CBwqhK0wcHLO7fR8HKe5
	8ObhzTvFoA3JHI2uHHow+IbWoMWoDgcinFIUyj/L6xrDHdf5JEnzQ1sLyv47IHRcgVGPqz4rkpn9e
	sEhTLuH+wE8SQ7zsFm5td0ZYazyOiyIDkB8GOvv6EZiQrAnF0MPq4HPaPXq7oJVyDrlWTk6myST/M
	7FZQ/Ll1N9Blfud65Tzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQmPN-00024F-34; Tue, 21 Apr 2020 06:29:25 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQmPG-000232-8A
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 06:29:22 +0000
Received: by mail-oi1-x243.google.com with SMTP id k133so11133580oih.12
 for <linux-riscv@lists.infradead.org>; Mon, 20 Apr 2020 23:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RvESK7CglgiS5xErjdXAyAHVMUUWew15wYnWDQZ4CeU=;
 b=bR5C37TQrYaaMJpuPVERI7GydgZMs9DM5ra0WXlGWnTCoSr7fcQ78d7xG4mgAHxlDN
 pmLauJGUwJdpHRGc23LQedt7MUvcn8A1t+qfDj9Lkg0WVAM2g/BUNyaMos9NIcVKZ9eD
 OhUNyO6YB6WOlBdnCI/orD5bE0/XokTWtgV+YGOSGdvQLXjtb9G/qM3m5ZCY1YedVUtW
 HiWEcfcG5fOB+4cXDbu0I5hsz2BTY3R8Am/+gob3w8dQYCeZTpU+tQ224Fskojs+7pzP
 Pi/qsD8NYHkX/tjsTqoIoPB/ad/xKO1b44/e7mL1yM+YSFFtecg3v+zCODdWeWChCt5O
 ciwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RvESK7CglgiS5xErjdXAyAHVMUUWew15wYnWDQZ4CeU=;
 b=RxsXmgDpdbHXHIdv3JR86DDW2kbwyg4xpcVoCGQRe7OdeMxV/tj2R8FvO2Q9ULd9Fq
 oO0RV/kcUXDASHyW3Y7sBEDqBp14ykjvhuuoakiRxhMJlJsvq7sCrZTlGI8haUstYAzE
 /3rl/+LF14ThNMPMk7Nr28km1O+mec6NIv2utFhwanQUWgvsmCyW1K7tHuVjftnncRwR
 O3F8Yt6MzVxfr2QTKbBTz1i0wztwQsM6UX5ky4/SX7DbvgrUN0BWOHzlCJpwHJ5Aaoiy
 qRtCvRIh8hHoAiROCBdOYjMPolTnE3TSLroohDCr0/IbRgaQZtj1u99UBbPWbmApLO3j
 kQHQ==
X-Gm-Message-State: AGi0PuYI7ZEamDFh9V3MmhBnxipS0tmJ5hSXG/yWj4MTweEl+4j69XNU
 ZOA4b8n8vZyNssGG2xyQQJBFfnPURSgrFF950tTDuw==
X-Google-Smtp-Source: APiQypJSFz/5DbvUSS7U4ehQSnfk38alSu2zkVD61gbfZJFdakjx8CyUtFAU5Fuz8uKJuebMCGrJDdBqqmC8mq8JKeY=
X-Received: by 2002:aca:3283:: with SMTP id y125mr2163575oiy.91.1587450555283; 
 Mon, 20 Apr 2020 23:29:15 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1586332296.git.zong.li@sifive.com>
 <mhng-103aea95-cf25-47c5-8e8d-56534f40c570@palmerdabbelt-glaptop1>
 <CA+ZOyajXsNYZZwQgdV9Y2szN+=QbHu7GDA6Lc5iLk+92yx1WSw@mail.gmail.com>
 <CAAhSdy3K2+72FJs1hj1G5qWD4cYAoumHuf7UhMcQM3EeMrVpzw@mail.gmail.com>
In-Reply-To: <CAAhSdy3K2+72FJs1hj1G5qWD4cYAoumHuf7UhMcQM3EeMrVpzw@mail.gmail.com>
From: Zong Li <zong.li@sifive.com>
Date: Tue, 21 Apr 2020 14:29:03 +0800
Message-ID: <CANXhq0oYKb35YVOk=fsg_djWCkS2Vs_E5y0+AotLt1i1GTaPYA@mail.gmail.com>
Subject: Re: [PATCH v5 0/9] Support strict kernel memory permissions for
 security
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_232918_808960_21E4B9C3 
X-CRM114-Status: GOOD (  26.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Zong Li <zongbox@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 2:20 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Tue, Apr 21, 2020 at 11:06 AM Zong Li <zongbox@gmail.com> wrote:
> >
> > Palmer Dabbelt <palmer@dabbelt.com> =E6=96=BC 2020=E5=B9=B44=E6=9C=8821=
=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8A=E5=8D=882:27=E5=AF=AB=E9=81=93=EF=BC=
=9A
> > >
> > > On Wed, 08 Apr 2020 00:56:55 PDT (-0700), zong.li@sifive.com wrote:
> > > > The main purpose of this patch series is changing the kernel mappin=
g permission
> > > > , make sure that code is not writeable, data is not executable, and=
 read-only
> > > > data is neither writable nor executable.
> > > >
> > > > This patch series also supports the relevant implementations such a=
s
> > > > ARCH_HAS_SET_MEMORY, ARCH_HAS_SET_DIRECT_MAP,
> > > > ARCH_SUPPORTS_DEBUG_PAGEALLOC and DEBUG_WX.
> > > >
> > > > Changes in v5:
> > > >  - Add lockdep_assert_held and more comments for text_mutex.
> > > >
> > > > Changes in v4:
> > > >  - Use NOKPROBE_SYMBOL instead of __kprobe annotation
> > > >  - Use text_mutex instead of patch_lock
> > > >  - Remove 'riscv_' prefix of function name
> > > >
> > > > Changes in v3:
> > > >  - Fix build error on nommu configuration. We already support nommu=
 on
> > > >    RISC-V, so we should consider nommu case and test not only rv32/=
64,
> > > >    but also nommu.
> > > >
> > > > Changes in v2:
> > > >  - Use _data to specify the start of data section with write permis=
sion.
> > > >  - Change ftrace patch text implementaion.
> > > >  - Separate DEBUG_WX patch to another patchset.
> > > >
> > > > Zong Li (9):
> > > >   riscv: add macro to get instruction length
> > > >   riscv: introduce interfaces to patch kernel code
> > > >   riscv: patch code by fixmap mapping
> > > >   riscv: add ARCH_HAS_SET_MEMORY support
> > > >   riscv: add ARCH_HAS_SET_DIRECT_MAP support
> > > >   riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
> > > >   riscv: move exception table immediately after RO_DATA
> > > >   riscv: add alignment for text, rodata and data sections
> > > >   riscv: add STRICT_KERNEL_RWX support
> > > >
> > > >  arch/riscv/Kconfig                  |   6 +
> > > >  arch/riscv/include/asm/bug.h        |   8 ++
> > > >  arch/riscv/include/asm/fixmap.h     |   2 +
> > > >  arch/riscv/include/asm/patch.h      |  12 ++
> > > >  arch/riscv/include/asm/set_memory.h |  48 +++++++
> > > >  arch/riscv/kernel/Makefile          |   4 +-
> > > >  arch/riscv/kernel/ftrace.c          |  26 ++--
> > > >  arch/riscv/kernel/patch.c           | 128 +++++++++++++++++++
> > > >  arch/riscv/kernel/traps.c           |   3 +-
> > > >  arch/riscv/kernel/vmlinux.lds.S     |  11 +-
> > > >  arch/riscv/mm/Makefile              |   2 +-
> > > >  arch/riscv/mm/init.c                |  44 +++++++
> > > >  arch/riscv/mm/pageattr.c            | 187 ++++++++++++++++++++++++=
++++
> > > >  13 files changed, 466 insertions(+), 15 deletions(-)
> > > >  create mode 100644 arch/riscv/include/asm/patch.h
> > > >  create mode 100644 arch/riscv/include/asm/set_memory.h
> > > >  create mode 100644 arch/riscv/kernel/patch.c
> > > >  create mode 100644 arch/riscv/mm/pageattr.c
> > >
> > > Looks like there are quite a few conflicts here.  Do you mind re-spin=
ning the
> > > patch set for me?  It's a bit early to spin off for-next right now so=
 there
> > > might be some more conflicts, but hopefully not too many.
> > >
> >
> > Sure, let me rebase it and send the next version. Thanks.
>
> This series is already merged in Linux kernel and it is available
> in Linux-5.7-rc2.
>
> I don't see the point in rebasing this series or commenting on
> this series.
>
> If you have fixes then send as separate patches based on
> latest Linux-5.7-rcX release.
>

Yes, I would send the separate patches for the difference from the
merged version. Thanks.

> Regards,
> Anup


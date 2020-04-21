Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F34DA1B1E38
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 07:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIWZXgS77Ir/SPE/LgDDTYSKUqCrSGFqeCh61sg+ljU=; b=XAzyrJ1DKiI/pb
	smexHSM7PkjNSSfHpFf9PVfulFW38BPQHY+a0Wkec5egQ/zwRZZ3WqMJiGo3c+dKIiDC77PVIv04Q
	fT3sh1IFtedcBqwpmr58ebsJKhthg+dm0sU/OB8tWcFv4hirr4ZaWRpiG1UXmCJVQ0rAw/x9uaWJN
	4ny5kUUf6zcGmVVPqMYc/ilQvy3b1LMJC1sNlWxzcyNijoDJBVJ7POJk+/77ySZxsvEUKtPH3eht1
	rwj7LcpjEGCs6lb+21s2+cnlGCr1DOmjNpkuNnTx2epJ0IxpV43m3bfL2mQ2ew3Q5QwLNHCSbU7yp
	VP3dHhyK2221RVFYDqLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQlaD-0008RH-PW; Tue, 21 Apr 2020 05:36:33 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQlaA-0008Pd-Qg
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 05:36:32 +0000
Received: by mail-lf1-x142.google.com with SMTP id j14so10051342lfg.9
 for <linux-riscv@lists.infradead.org>; Mon, 20 Apr 2020 22:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AIWZXgS77Ir/SPE/LgDDTYSKUqCrSGFqeCh61sg+ljU=;
 b=ZubqHoCsycaWo7iaiVk1qk595aGYOcv3lrgjJRcsuiXwSPOoqbqxtXQ95gnRQK5igK
 +Bp73pk6rOVCuiGlEscwZyef1oEiVwo0cRSQTOMDT1jrqO8ZvzaucJ4L13mCj/bYh59y
 D9MqUmPTdkPiQvxIyruD+wJ2B51kGw2O6htQp05s6lg7t62grAl1o9+qIiK8cUG3pQMT
 rB/j0SaiWSDJ2+FB9dfb8onuO9bFZC/w2LxHr9zgccVPyyTDAFB8ktEX6jAV+qA86kgQ
 wE/ACg0ogPGNabqHH7keteJ1d7BvSXmkZAwADcKysKRoGG3dNToPchUjORdrD9tYMlld
 W+iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AIWZXgS77Ir/SPE/LgDDTYSKUqCrSGFqeCh61sg+ljU=;
 b=B745G+bsZPr/q1DXeSLvFBLiwLnOMH5AHdkdSJFoecOzn8Dth7qIpJIBCQUKVfey55
 Y+DkbpIx6BXIfhuJpp/T5zy+U0yvZ0b0ZT/i5EdfNBqJs9KHDBfzcCYOX/uKVlf4HBIq
 L6fv2qrXPIDX8jFqkTgKnF78OUDPQPJI42Ly/ZrHYSADbiI+YaJasp6IWGu1n0ruXSsF
 RS1xqfaqVsprMxHoOBGeew8V09jxEICqdiyulG2TRRlaY9DniS/4nbdteKpKiG58WCL2
 1y2cPsHSRmiORSoR19wOokdLsZk8rlksNlWEh5P0LlU8i5mEe2IcYX9ETh4fLOPsHKGB
 JKXQ==
X-Gm-Message-State: AGi0PuYnOnUlFNSG6l8QKXWYqli/r9JMc/4+oOPd4fTGdue9bGEdTrKP
 EBtfiLfUjvoqfGzq9wTtM4+MP7XF6ZrZMdGT2zc=
X-Google-Smtp-Source: APiQypKyftd20zHHllV4YwSQYjYqZTpegXvOD+X/xdRU/Sxe9EmaGPPvJoknWJOPja7P7a8z29jmiVCXKh1MPY/UyO0=
X-Received: by 2002:a19:946:: with SMTP id 67mr10836485lfj.142.1587447386297; 
 Mon, 20 Apr 2020 22:36:26 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1586332296.git.zong.li@sifive.com>
 <mhng-103aea95-cf25-47c5-8e8d-56534f40c570@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-103aea95-cf25-47c5-8e8d-56534f40c570@palmerdabbelt-glaptop1>
From: Zong Li <zongbox@gmail.com>
Date: Tue, 21 Apr 2020 13:36:14 +0800
Message-ID: <CA+ZOyajXsNYZZwQgdV9Y2szN+=QbHu7GDA6Lc5iLk+92yx1WSw@mail.gmail.com>
Subject: Re: [PATCH v5 0/9] Support strict kernel memory permissions for
 security
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_223630_887269_4EA97B36 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zongbox[at]gmail.com]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, mhiramat@kernel.org,
 Zong Li <zong.li@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Palmer Dabbelt <palmer@dabbelt.com> =E6=96=BC 2020=E5=B9=B44=E6=9C=8821=E6=
=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8A=E5=8D=882:27=E5=AF=AB=E9=81=93=EF=BC=9A
>
> On Wed, 08 Apr 2020 00:56:55 PDT (-0700), zong.li@sifive.com wrote:
> > The main purpose of this patch series is changing the kernel mapping pe=
rmission
> > , make sure that code is not writeable, data is not executable, and rea=
d-only
> > data is neither writable nor executable.
> >
> > This patch series also supports the relevant implementations such as
> > ARCH_HAS_SET_MEMORY, ARCH_HAS_SET_DIRECT_MAP,
> > ARCH_SUPPORTS_DEBUG_PAGEALLOC and DEBUG_WX.
> >
> > Changes in v5:
> >  - Add lockdep_assert_held and more comments for text_mutex.
> >
> > Changes in v4:
> >  - Use NOKPROBE_SYMBOL instead of __kprobe annotation
> >  - Use text_mutex instead of patch_lock
> >  - Remove 'riscv_' prefix of function name
> >
> > Changes in v3:
> >  - Fix build error on nommu configuration. We already support nommu on
> >    RISC-V, so we should consider nommu case and test not only rv32/64,
> >    but also nommu.
> >
> > Changes in v2:
> >  - Use _data to specify the start of data section with write permission=
.
> >  - Change ftrace patch text implementaion.
> >  - Separate DEBUG_WX patch to another patchset.
> >
> > Zong Li (9):
> >   riscv: add macro to get instruction length
> >   riscv: introduce interfaces to patch kernel code
> >   riscv: patch code by fixmap mapping
> >   riscv: add ARCH_HAS_SET_MEMORY support
> >   riscv: add ARCH_HAS_SET_DIRECT_MAP support
> >   riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
> >   riscv: move exception table immediately after RO_DATA
> >   riscv: add alignment for text, rodata and data sections
> >   riscv: add STRICT_KERNEL_RWX support
> >
> >  arch/riscv/Kconfig                  |   6 +
> >  arch/riscv/include/asm/bug.h        |   8 ++
> >  arch/riscv/include/asm/fixmap.h     |   2 +
> >  arch/riscv/include/asm/patch.h      |  12 ++
> >  arch/riscv/include/asm/set_memory.h |  48 +++++++
> >  arch/riscv/kernel/Makefile          |   4 +-
> >  arch/riscv/kernel/ftrace.c          |  26 ++--
> >  arch/riscv/kernel/patch.c           | 128 +++++++++++++++++++
> >  arch/riscv/kernel/traps.c           |   3 +-
> >  arch/riscv/kernel/vmlinux.lds.S     |  11 +-
> >  arch/riscv/mm/Makefile              |   2 +-
> >  arch/riscv/mm/init.c                |  44 +++++++
> >  arch/riscv/mm/pageattr.c            | 187 ++++++++++++++++++++++++++++
> >  13 files changed, 466 insertions(+), 15 deletions(-)
> >  create mode 100644 arch/riscv/include/asm/patch.h
> >  create mode 100644 arch/riscv/include/asm/set_memory.h
> >  create mode 100644 arch/riscv/kernel/patch.c
> >  create mode 100644 arch/riscv/mm/pageattr.c
>
> Looks like there are quite a few conflicts here.  Do you mind re-spinning=
 the
> patch set for me?  It's a bit early to spin off for-next right now so the=
re
> might be some more conflicts, but hopefully not too many.
>

Sure, let me rebase it and send the next version. Thanks.

> Thanks!
>


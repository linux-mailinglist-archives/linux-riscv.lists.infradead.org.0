Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECEF18EEB9
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Mar 2020 05:00:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pd4yz+kFP7lRzD+ddVAViEtwIsYcKKu1zuZ2dDOrHSA=; b=L3bRP5Yb0HNKaD
	6/gCIxXdegfWycJ4g/IaKeAaSxcCxRfEaTyACS0xsuxPkVDRw/uoUzIdiplE6efCSmTtv6M3Um7yn
	8fpShMMh0y2pxDhZQXXVY5aP1Y8QYo+h83YC+qnLPcOeTT+1ejeXeFc4z/GYhgzDyM8ELRjVmo8v9
	+beNefl6ElHw0ADlp040sLWN6n0M1RVgRaW/z9vxpbD0Hrw95GCLB2F8OgXnNxSU/77ZscsAtdYFK
	FK2KcYOS1AzSzkEMWQB9wxRxhMVJziffadmxobQM74jQYv6dj4I3jWP8YTglymzq9WjSs09gzDs8B
	+dmUUWWnzmPRXA91gjeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGEGO-0001Br-8e; Mon, 23 Mar 2020 04:00:32 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGEGK-0001Av-AW
 for linux-riscv@lists.infradead.org; Mon, 23 Mar 2020 04:00:30 +0000
Received: by mail-qt1-x842.google.com with SMTP id x16so1462038qts.11
 for <linux-riscv@lists.infradead.org>; Sun, 22 Mar 2020 21:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pd4yz+kFP7lRzD+ddVAViEtwIsYcKKu1zuZ2dDOrHSA=;
 b=WmZMZ6NTtot5yfwyAH1h0bWrhjSlmqWTXm8Cm7gf1kUivT9FwuCF+JHOsFnTe+I1WQ
 lCxYov3Cfv1BV67v0fWJTc4k77FvFLW6PqRgmaJYHZWp4pjpGYEsi+fR/WLRuwLOz2ua
 48JmD39B7gMB52UjVRa3lgREpgLXfAHTTHcHsyjTTTmXbmKHDplYzqFDi5gHanLE6eXV
 ZbUmGHqguX7sel1c9Ib3EmXLxXKrAzB1vFg79mVastEuWB7euv09dr355bwoq8j/s/PO
 YGPKWIviu448yyg2u5pNYt0MT17F/XJH+l9rQ3up++oUgJdO+8S9aEAnA39B7NgwiG5s
 XD+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pd4yz+kFP7lRzD+ddVAViEtwIsYcKKu1zuZ2dDOrHSA=;
 b=BnxjREndUsdWVhWBa89fyOA0Gw8YCR411yqoTwFw9FNe5hDss7OU+IdPejXf700lK9
 O1vmUQ8RIa4BzG/7odaHxVfF1iMJHHjSzH7Wv3RHjPxuY4ssrPJ6EnKHiUaBtMfbvvDn
 i2hgQ2MH1bdB1k5/8ntx5gpa7JrqUOQkwPaaAX+ZAKoi99Qk60aq/9XTSchb/7NVP/WJ
 /nQJeGR1rnvWsNr4yq0LjbugXayE41JSSnkzQPvMPi3xY4vKijPi4I//DjMQFyjVmMPo
 U40/zmiLRuaGZgAoDypltwBXCz1XRlLd9WQg1NymAwjn+KZEIkxNqEkmnJL9BdJPIe4i
 bcAQ==
X-Gm-Message-State: ANhLgQ1oiBlIn+eav2yySEmhZE89GRw56Hzh52RS93FgcRLDh1NNdKUI
 gzXPlTwUW6q3p13BjyjqgoYBsSAECYRr7i/xlSFETQ==
X-Google-Smtp-Source: ADFU+vve2wwWJUjM/bzFrdZK8ZxEBDqw7JUyk/0S7m5yM0IdkahoMGOrU2lWEA0CQl0sq4C7lBM0DLganBu18/7bDhs=
X-Received: by 2002:ac8:67cd:: with SMTP id r13mr19502310qtp.51.1584936025812; 
 Sun, 22 Mar 2020 21:00:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200308094954.13258-1-guoren@kernel.org>
In-Reply-To: <20200308094954.13258-1-guoren@kernel.org>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Mon, 23 Mar 2020 12:00:10 +0800
Message-ID: <CAHCEehKrzv0TozP7x9Vaq1t+Utpvqfgt=wo7eXXp0HRUKFO=WQ@mail.gmail.com>
Subject: Re: [RFC PATCH V3 00/11] riscv: Add vector ISA support
To: guoren@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_210028_504849_9E220CB3 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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
Cc: linux-arch@vger.kernel.org, Guo Ren <guoren@linux.alibaba.com>,
 arnd@arndb.de, Anup.Patel@wdc.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, Liu Zhiwei <zhiwei_liu@c-sky.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Dave Martin <Dave.Martin@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

<guoren@kernel.org> =E6=96=BC 2020=E5=B9=B43=E6=9C=888=E6=97=A5 =E9=80=B1=
=E6=97=A5 =E4=B8=8B=E5=8D=885:50=E5=AF=AB=E9=81=93=EF=BC=9A
>
> From: Guo Ren <guoren@linux.alibaba.com>
>
> The implementation follow the RISC-V "V" Vector Extension draft v0.8 with
> 128bit-vlen and it's based on linux-5.6-rc3 and tested with qemu [1].
>
> The patch implement basic context switch, sigcontext save/restore and
> ptrace interface with a new regset NT_RISCV_VECTOR. Only fixed 128bit-vle=
n
> is implemented. We need to discuss about vlen-size for libc sigcontext an=
d
> ptrace (the maximum size of vlen is unlimited in spec).
>
> Puzzle:
> Dave Martin has talked "Growing CPU register state without breaking ABI" =
[2]
> before, and riscv also met vlen size problem. Let's discuss the common is=
sue
> for all architectures and we need a better solution for unlimited vlen.
>
> Any help are welcomed :)
>
>  1: https://github.com/romanheros/qemu.git branch:vector-upstream-v3
>  2: https://blog.linuxplumbersconf.org/2017/ocw/sessions/4671.html
>

Hi Ren,

Thanks for the patch. I have some ideas about the vlen and sigcontext.
Since vlen may not be fixed of each RISC-V cores and it could be super
big, it means we have to allocate the memory dynamically.
In kernel space, we may use a pointer in the context data structure.
Something like https://github.com/torvalds/linux/blob/master/arch/arm64/ker=
nel/fpsimd.c#L498
In user space, we need to let user space know the length of vector
registers. We may create a special header in sigcontext. Something
like https://github.com/torvalds/linux/blob/master/arch/arm64/include/uapi/=
asm/sigcontext.h#L36
https://github.com/torvalds/linux/blob/master/arch/arm64/include/uapi/asm/s=
igcontext.h#L127

For the implementation in makecontext, swapcontext, getcontext,
setcontext of glibc, we may not need to port because it seems to be
deprecated?
https://stackoverflow.com/questions/4298986/is-there-something-to-replace-t=
he-ucontext-h-functions

For the unwinding implementation of libgcc since it needs to know the
meaning of data structure is  changed. It also need to be port.

> ---
> Changelog V3
>  - Rebase linux-5.6-rc3 and tested with qemu
>  - Seperate patches with Anup's advice
>  - Give out a ABI puzzle with unlimited vlen
>
> Changelog V2
>  - Fixup typo "vecotr, fstate_save->vstate_save".
>  - Fixup wrong saved registers' length in vector.S.
>  - Seperate unrelated patches from this one.
>
> Guo Ren (11):
>   riscv: Separate patch for cflags and aflags
>   riscv: Rename __switch_to_aux -> fpu
>   riscv: Extending cpufeature.c to detect V-extension
>   riscv: Add CSR defines related to VECTOR extension
>   riscv: Add vector feature to compile
>   riscv: Add has_vector detect
>   riscv: Reset vector register
>   riscv: Add vector struct and assembler definitions
>   riscv: Add task switch support for VECTOR
>   riscv: Add ptrace support
>   riscv: Add sigcontext save/restore
>
>  arch/riscv/Kconfig                       |   9 ++
>  arch/riscv/Makefile                      |  19 ++-
>  arch/riscv/include/asm/csr.h             |  17 ++-
>  arch/riscv/include/asm/processor.h       |   1 +
>  arch/riscv/include/asm/switch_to.h       |  54 ++++++-
>  arch/riscv/include/uapi/asm/elf.h        |   1 +
>  arch/riscv/include/uapi/asm/hwcap.h      |   1 +
>  arch/riscv/include/uapi/asm/ptrace.h     |   9 ++
>  arch/riscv/include/uapi/asm/sigcontext.h |   1 +
>  arch/riscv/kernel/Makefile               |   1 +
>  arch/riscv/kernel/asm-offsets.c          | 187 +++++++++++++++++++++++
>  arch/riscv/kernel/cpufeature.c           |  12 +-
>  arch/riscv/kernel/entry.S                |   2 +-
>  arch/riscv/kernel/head.S                 |  49 +++++-
>  arch/riscv/kernel/process.c              |  10 ++
>  arch/riscv/kernel/ptrace.c               |  41 +++++
>  arch/riscv/kernel/signal.c               |  40 +++++
>  arch/riscv/kernel/vector.S               |  84 ++++++++++
>  include/uapi/linux/elf.h                 |   1 +
>  19 files changed, 524 insertions(+), 15 deletions(-)
>  create mode 100644 arch/riscv/kernel/vector.S
>
> --
> 2.17.0
>


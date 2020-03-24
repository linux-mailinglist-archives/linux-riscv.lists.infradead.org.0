Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E538A1903E6
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Mar 2020 04:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTDuayLx6ioghEsfR5reEeU94/F6Nc42mXv/smgh6Zk=; b=o2csF66/3fxOWF
	4PDztkdYp1m+glVTqN4cnKSIDUovP46/EuWXqjDmS7IzLL/OV5VpJOUv76ziGaWBJ41+cDImmLpcc
	GWc6HSPRnZOFgzMbDhU4YcJYyC2Camw0MOh75J7JWGEuh4NOw9cDtzZ9vfEXMQmZtdxNQSczNgVcX
	pOx6rGlL5jPDt9QLxaF2BhP17NPll3chy1SX0Bj+Q5MIh2u1dEy5GSA4cE5bNCt33jA07+2CkMhIR
	R0RQG3t2Wqk0p4XUu9ngq+acYTYoLRFOCIrSfI2PCTWIjpeFl+ZZMQB1D1wlXCfHunNjsomwNwzJJ
	yTWLBdj0CPUsiXxqZQww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGaSC-0001on-MN; Tue, 24 Mar 2020 03:42:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGaS8-0001nX-4y
 for linux-riscv@lists.infradead.org; Tue, 24 Mar 2020 03:42:09 +0000
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09DE820769
 for <linux-riscv@lists.infradead.org>; Tue, 24 Mar 2020 03:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585021324;
 bh=eD/7lez5RjSHbjSw0Y5Fm/cZ09IMXDWA/PZJtTGKvnc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XYbiXo5VhGGG8CzR45gwZ6KNn6ygtZOLlh4YxI+GYWbFIDRYRSBOR+yzUqUHyeNnL
 M+esO/DlPfVrfNKTcKAQgy7ZchK0fW8V4Wv6D9OvxcrDCIjllj6TZUpZMtXXYHpk6u
 n/TGP8X/Bg5TQBt2k9yhiOFQ59JDPyN1GRPF10TY=
Received: by mail-lf1-f44.google.com with SMTP id v4so8338294lfo.12
 for <linux-riscv@lists.infradead.org>; Mon, 23 Mar 2020 20:42:03 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2xgcePtn4zDSCM2xRutg55szyiiIrw0QKPp9WsgbtpaqHeMsGo
 4s6kNjRRq7tuc5miaGqys+2lIaHZ3WXK40JvX5g=
X-Google-Smtp-Source: ADFU+vvWDrrUv0O+Q0dLmjy3S2LM0kVDmOFhPTHIEcXZlEzWAMg7stKCAQZDaF+oz4yOQjcuPfRqFc4bmbaWQU2qgkA=
X-Received: by 2002:ac2:4858:: with SMTP id 24mr5708012lfy.135.1585021322056; 
 Mon, 23 Mar 2020 20:42:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200308094954.13258-1-guoren@kernel.org>
 <CAHCEehKrzv0TozP7x9Vaq1t+Utpvqfgt=wo7eXXp0HRUKFO=WQ@mail.gmail.com>
In-Reply-To: <CAHCEehKrzv0TozP7x9Vaq1t+Utpvqfgt=wo7eXXp0HRUKFO=WQ@mail.gmail.com>
From: Guo Ren <guoren@kernel.org>
Date: Tue, 24 Mar 2020 11:41:50 +0800
X-Gmail-Original-Message-ID: <CAJF2gTRspXLhj1-_y6Rye7sbk2hZDEFf_AM3jcAc-=qKPru=VA@mail.gmail.com>
Message-ID: <CAJF2gTRspXLhj1-_y6Rye7sbk2hZDEFf_AM3jcAc-=qKPru=VA@mail.gmail.com>
Subject: Re: [RFC PATCH V3 00/11] riscv: Add vector ISA support
To: Greentime Hu <greentime.hu@sifive.com>, Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_204208_234374_4CB68243 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Guo Ren <guoren@linux.alibaba.com>,
 Arnd Bergmann <arnd@arndb.de>, Anup Patel <Anup.Patel@wdc.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Liu Zhiwei <zhiwei_liu@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Greentime,

On Mon, Mar 23, 2020 at 12:00 PM Greentime Hu <greentime.hu@sifive.com> wro=
te:
>
> <guoren@kernel.org> =E6=96=BC 2020=E5=B9=B43=E6=9C=888=E6=97=A5 =E9=80=B1=
=E6=97=A5 =E4=B8=8B=E5=8D=885:50=E5=AF=AB=E9=81=93=EF=BC=9A
> >
> > From: Guo Ren <guoren@linux.alibaba.com>
> >
> > The implementation follow the RISC-V "V" Vector Extension draft v0.8 wi=
th
> > 128bit-vlen and it's based on linux-5.6-rc3 and tested with qemu [1].
> >
> > The patch implement basic context switch, sigcontext save/restore and
> > ptrace interface with a new regset NT_RISCV_VECTOR. Only fixed 128bit-v=
len
> > is implemented. We need to discuss about vlen-size for libc sigcontext =
and
> > ptrace (the maximum size of vlen is unlimited in spec).
> >
> > Puzzle:
> > Dave Martin has talked "Growing CPU register state without breaking ABI=
" [2]
> > before, and riscv also met vlen size problem. Let's discuss the common =
issue
> > for all architectures and we need a better solution for unlimited vlen.
> >
> > Any help are welcomed :)
> >
> >  1: https://github.com/romanheros/qemu.git branch:vector-upstream-v3
> >  2: https://blog.linuxplumbersconf.org/2017/ocw/sessions/4671.html
> >
>
> Hi Ren,
>
> Thanks for the patch. I have some ideas about the vlen and sigcontext.
> Since vlen may not be fixed of each RISC-V cores and it could be super
> big, it means we have to allocate the memory dynamically.
> In kernel space, we may use a pointer in the context data structure.
> Something like https://github.com/torvalds/linux/blob/master/arch/arm64/k=
ernel/fpsimd.c#L498
> In user space, we need to let user space know the length of vector
> registers. We may create a special header in sigcontext. Something
> like https://github.com/torvalds/linux/blob/master/arch/arm64/include/uap=
i/asm/sigcontext.h#L36
> https://github.com/torvalds/linux/blob/master/arch/arm64/include/uapi/asm=
/sigcontext.h#L127

As you've mentioned codes above, arm64 use a fixed pre-allocate
sigcontext with a large space:

struct sigcontext {
        __u64 fault_address;
        /* AArch64 registers */
        __u64 regs[31];
        __u64 sp;
        __u64 pc;
        __u64 pstate;
        /* 4K reserved for FP/SIMD state and future expansion */
        __u8 __reserved[4096] __attribute__((__aligned__(16)));
};

There are several contexts in the space above: fpsimd, esr, sve, extra
__reserved[4096]:
 *      0x210           fpsimd_context
 *       0x10           esr_context
 *      0x8a0           sve_context (vl <=3D 64) (optional)
 *       0x20           extra_context (optional)
 *       0x10           terminator (null _aarch64_ctx)
 *      0x510           (reserved for future allocation)

0x210 + 0x10 + 0x8a0 + 0x20 + 0x10 + 0x510 =3D 4096

The max vl is 64 in arm sve, but for riscv want an unlimited size
solution and more extensible/flexible solution, such as dynamic
allocating user-space context with hwinfo. But there is no ref
solution around all arches.

There is a choice puzzle for me:
1) A pre-allocated&limited reserved size of sigcontext, the solution
has been practiced and we just need to determine the size.
2) Dynamically allocated/unlimited size of sigcontext, but may deal
with glibc, libgcc infrastructure on abi view.

Before the next stage of work, we need to choose the direction and
it's also a common puzzle for all architectures with extending
vector/simd like co-processor solutions.

ps:
Have a look on Dave's patch, he just follow the arm64 fixed
pre-allocate limited sigcontext infrastructure:
(I don't think it's a proper example for riscv vector design.)

commit d0b8cd3187889476144bd9b13bf36a932c3e7952
Author: Dave Martin <Dave.Martin@arm.com>
Date:   Tue Oct 31 15:51:03 2017 +0000

arm64/sve: Signal frame and context structure definition

>
> For the implementation in makecontext, swapcontext, getcontext,
> setcontext of glibc, we may not need to port because it seems to be
> deprecated?
> https://stackoverflow.com/questions/4298986/is-there-something-to-replace=
-the-ucontext-h-functions
Agree, we needn't deal with them at beginning.

>
> For the unwinding implementation of libgcc since it needs to know the
> meaning of data structure is  changed. It also need to be port.
Yes, it'll break the abi and such as the elf with -fexception compiled
will be broken.

--=20
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/


Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 399711EB350
	for <lists+linux-riscv@lfdr.de>; Tue,  2 Jun 2020 04:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R54hcPuUtwMgkjUBOz6thEi9LMaMQTzwLdbZYRH+edk=; b=aHf7fd6noRaaqN
	ZunSOyWWWt43ZKG1PeLtvfr86+zKvy9YjjEi3SoIdrP8oGMnG4O6RM2IbQodImrqmZlgXQmcCLtWO
	aTnIrCJUr1XPTpoASkGl2l9x6aLsNehkuO79z4JzcCulj5cnD4ORrKnr0LTRcW4ljv6gTMewq8A2x
	E2x7IhBEfUacr3P64IndCkuUYeP4wz2Fftv4URbmRds9GRDPTGE0a2od7ws5c88uzzGxppqUcriEQ
	TmBdb4VT54WPFwq/j431Z6dRMsS6exEtlTg/H5SkwfpeLf23W4hugf/shTqbZx5jrPyhWfokbsKwk
	uGoL5rCkbA1HIGJiOyvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfwZ0-00015V-NK; Tue, 02 Jun 2020 02:22:02 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfwYw-00015A-H6
 for linux-riscv@lists.infradead.org; Tue, 02 Jun 2020 02:22:01 +0000
Received: by mail-qt1-x842.google.com with SMTP id y1so9454071qtv.12
 for <linux-riscv@lists.infradead.org>; Mon, 01 Jun 2020 19:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=R54hcPuUtwMgkjUBOz6thEi9LMaMQTzwLdbZYRH+edk=;
 b=EaNqrSaP9jDSadOwo2L2lFbq6PNrRcko3MRnsIqGAfuAYrFyZhMSLc379or19zwjPm
 XmIEcqriPIocpv2vqN/wAqGATEvJQLOvuxLE8lQedcqf4nzGjLAn3uM+2QFcaLpOIpgQ
 pFWhyJyAHxkqZ9BZLMwMo6riOICrCVanqZh3/01hDjuvR0DJouXF6TuyTJfBKyb4IUif
 hRhCosx3GK+reM60NsVhVgTGqmj8Bk7hbNCRIIuhGIhqqUkZDjXuAnbDktS3n3173w3D
 R79/V255s8/koj+07RNcMn74jtJkUBKTidUk6NvE3VY+ZRzoS7zUl1ozMSgkB/kN2weQ
 VTLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=R54hcPuUtwMgkjUBOz6thEi9LMaMQTzwLdbZYRH+edk=;
 b=NmFO54XG+OA1fh39vp+auTarUbERuTmq0nkC0MS03m6lUMFLxO7T2RK4ezw+SIL2yh
 Eu4m3mfCb4FtIT/8AO42oS6gqDUj+B4Srmt5uRl8YeikYNh5roytEMdYjWJ9HrNDheWE
 OLQ/I4pDci4ZX1jG/r16aA21a3omWcU8uHgqnpIT4KhrUV/0u+2xj74EVmcPbtjZHtmR
 KnBqsL4IAzsAl5zg6m8ERYvdblojl8K4HGQ7g+YxpNwubXmRUO7oDJPXxA8YFaLquIAJ
 gO3i1PLuuEsN4XrZjwhgvwXSowWeYpyCFsprPwY1kEgjEYRpS6RLDoaUQI36iu3fYp9H
 PXaw==
X-Gm-Message-State: AOAM531NrqtcDO1p4kQWAk9NNRea4g4rDZ+OuBAm6WCOHHWAUcmlz/Hz
 wvp9VcuKHj7+l2gVU3RcOrlNRj9JaiUGQAldq9l/PQ==
X-Google-Smtp-Source: ABdhPJwDje9izJ5mGfACUvQwhBB1hXhp4Bsr0KbaMgOO77h2keYk27vpFbFWFLq2IoVerqkpqBka7apCKhTo1y9to2s=
X-Received: by 2002:aed:2d44:: with SMTP id h62mr25949657qtd.167.1591064517305; 
 Mon, 01 Jun 2020 19:21:57 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590474856.git.greentime.hu@sifive.com>
 <CAJF2gTTxaZtyLYok68a5bBnLMuZjrwcQ7dvTR8NGdJc3Cqv81g@mail.gmail.com>
In-Reply-To: <CAJF2gTTxaZtyLYok68a5bBnLMuZjrwcQ7dvTR8NGdJc3Cqv81g@mail.gmail.com>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Tue, 2 Jun 2020 10:21:44 +0800
Message-ID: <CAHCEehLunCV4ZY_=j_bwPWMppXBQ8vj_0oScVpt4ySR9rAjtyA@mail.gmail.com>
Subject: Re: [RFC PATCH v4 00/13] riscv: Add vector ISA support
To: Guo Ren <guoren@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_192158_579539_E25A6ABC 
X-CRM114-Status: GOOD (  26.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Guo Ren <guoren@linux.alibaba.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Vincent Chen <vincent.chen@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Guo Ren <guoren@kernel.org> =E6=96=BC 2020=E5=B9=B45=E6=9C=8831=E6=97=A5 =
=E9=80=B1=E6=97=A5 =E4=B8=8B=E5=8D=8811:52=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Hi Greentime & Vincent,
>
> Thx for the dynamic vlen implementation. I've two suggestions:
>  - Please give out glibc patches mail URL, we need to review them togethe=
r.
>  - We need to consider that not all processes need vectors. Most
> system processes do not have vector features, and we should not force
> save/restore vector for every process.
>

Hi Guo,

Thanks for reviewing the patch. We are still cooking the glibc patch,
we will add the glibc link address once we post it.
For the save/restore mechanism in signal, it is basically the same
with FPU porting, we can optimize it when setup_sigcontext() for both
FPU and VECTOR in the future.

/* Save the floating-point state. */
if (has_fpu)
        err |=3D save_fp_state(regs, &sc->sc_fpregs);
/* Save the vector state. */
if (has_vector)
        err |=3D save_v_state(regs, sc);

There should be a better way to detect whether this task use
fpu/vector or not. Might be elf attributes or something else.

> On Tue, May 26, 2020 at 3:03 PM Greentime Hu <greentime.hu@sifive.com> wr=
ote:
> >
> > This patchset is based on Guo Ren's v3 patchset to add dynamic vlen vec=
tor
> > support for all different kinds of vector length in riscv. To make this
> > happened we defined a new __riscv_v_state in sigcontext to save the vec=
tor
> > related registers. The datap pointer will be allocated dynamically in
> > kernel space and it will be put right after the __riscv_v_state data
> > structure to save all the vector registers in signal handler stack for =
user
> > space. So does the implementation in ptrace, they will be saved in ubuf
> > in which we put the __riscv_v_state data structure and datap pointer ri=
ght
> > after it for vector registers. This patchset also fixes several bugs fo=
r
> > vector lazy save/restore and vtype not saving issue. It also adds new C=
SR
> > support for vector based on the 0.9 vector spec and clean up some unuse=
d
> > macros.
> >
> > This patchset is rebased to v5.7-rc4 and it is tested by running severa=
l
> > vector programs simultaneously. It also can get the correct ucontext_t =
in
> > signal handler and restore correct context after sigreturn. It is also
> > tested with ptrace() syscall to use PTRACE_GETREGSET/PTRACE_SETREGSET t=
o
> > get/set the vector registers. I have tested vlen=3D128 and vlen=3D256 c=
ases in
> > virt machine of qemu-system-riscv32 and qemu-system-riscv64 provided by
> > Zhiwei Lui.
> >
> > Since the vector spec is under developing, there might still need some
> > changes. For example the vle.v/vse.v instructions will be replaced with
> > proper instructions. The reason that I don't replace the instruction in
> > this patchset is because that the Qemu doesn't fully support 0.9 spec y=
et.
> > I have no simulator to test. We also like to discuss the default settin=
g of
> > MINSIGSTKSZ and SIGSTKSZ. They might also need to set a proper number. =
They
> > are 2048 and 8096 now. Since the stack in signal will be reserved for
> > ucontext and the vector registers might be larger and larger someday, t=
hese
> > two macros will need to be defined as a proper value or maybe we should
> > provide a better mechanism to provide user to get a better default sign=
al
> > stack size.
> >
> >
> >  [1] https://github.com/romanheros/qemu/tree/linux-vector-dev
> >  [2] https://blog.linuxplumbersconf.org/2017/ocw/sessions/4671.html
> >  [3] https://github.com/riscv/riscv-v-spec/blob/master/v-spec.adoc
> >
> > ---
> > Changelog V4
> >  - Support dynamic vlen
> >  - Fix bugs: lazy save/resotre, not saving vtype
> >  - Update VS bit offset based on latest vector spec
> >  - Add new vector csr based on latest vector spec
> >  - Code refine and removed unused macros
> >
> > Changelog V3
> >  - Rebase linux-5.6-rc3 and tested with qemu
> >  - Seperate patches with Anup's advice
> >  - Give out a ABI puzzle with unlimited vlen
> >
> > Changelog V2
> >  - Fixup typo "vecotr, fstate_save->vstate_save".
> >  - Fixup wrong saved registers' length in vector.S.
> >  - Seperate unrelated patches from this one.
> >
> > Greentime Hu (1):
> >   ptrace: Use regset_size() for dynamic regset size.
> >
> > Guo Ren (11):
> >   riscv: Separate patch for cflags and aflags
> >   riscv: Rename __switch_to_aux -> fpu
> >   riscv: Extending cpufeature.c to detect V-extension
> >   riscv: Add new csr defines related to vector extension
> >   riscv: Add vector feature to compile
> >   riscv: Add has_vector/riscv_vsize to save vector features.
> >   riscv: Reset vector register
> >   riscv: Add vector struct and assembler definitions
> >   riscv: Add task switch support for vector
> >   riscv: Add ptrace vector support
> >   riscv: Add sigcontext save/restore for vector
> >
> > Vincent Chen (1):
> >   riscv: signal: Report signal frame size to userspace via auxv
> >
> >  arch/riscv/Kconfig                       |   9 ++
> >  arch/riscv/Makefile                      |  19 ++--
> >  arch/riscv/include/asm/csr.h             |  16 +++-
> >  arch/riscv/include/asm/elf.h             |  17 +++-
> >  arch/riscv/include/asm/processor.h       |   3 +
> >  arch/riscv/include/asm/switch_to.h       |  77 ++++++++++++++-
> >  arch/riscv/include/uapi/asm/auxvec.h     |   2 +
> >  arch/riscv/include/uapi/asm/elf.h        |   1 +
> >  arch/riscv/include/uapi/asm/hwcap.h      |   1 +
> >  arch/riscv/include/uapi/asm/ptrace.h     |  13 +++
> >  arch/riscv/include/uapi/asm/sigcontext.h |   2 +
> >  arch/riscv/kernel/Makefile               |   1 +
> >  arch/riscv/kernel/asm-offsets.c          |   8 ++
> >  arch/riscv/kernel/cpufeature.c           |  15 ++-
> >  arch/riscv/kernel/entry.S                |   2 +-
> >  arch/riscv/kernel/head.S                 |  49 +++++++++-
> >  arch/riscv/kernel/process.c              |  40 ++++++++
> >  arch/riscv/kernel/ptrace.c               | 114 +++++++++++++++++++++++
> >  arch/riscv/kernel/setup.c                |   5 +
> >  arch/riscv/kernel/signal.c               | 108 ++++++++++++++++++++-
> >  arch/riscv/kernel/vector.S               |  84 +++++++++++++++++
> >  include/uapi/linux/elf.h                 |   1 +
> >  kernel/ptrace.c                          |  11 ++-
> >  23 files changed, 573 insertions(+), 25 deletions(-)
> >  create mode 100644 arch/riscv/kernel/vector.S
> >
> > --
> > 2.26.2
> >
> >
>
>
> --
> Best Regards
>  Guo Ren
>
> ML: https://lore.kernel.org/linux-csky/


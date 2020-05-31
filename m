Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F6A1E98AD
	for <lists+linux-riscv@lfdr.de>; Sun, 31 May 2020 17:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vnipRxhusI5WJt0jZxz452anE0aGKV7cM7xdRVk1Ss0=; b=jOam4bWUtN12VqtQyMRPOtNco
	JFk6IcfSdIo+9Z0+57Fs9cwR7Fd+mLL59FiIY+8HJ4P+Rms8ayD7Tjq4/mEO5qH4HTE32ubDj+1x8
	ljW3BPlgbwJ8SG3VkmGobnBut7wAeoHde2BYHKDMo6gckqUzxpjqjeyXsa6K3MRK5XI2ZKnuEjaVJ
	Hf/phQdC9as0ivV66qMAhCv2D0sv9yP+HndrSq2qJRPhn+SZqyHoi/IG5DcuTyant+mTJ6cf59yEa
	2U8kQCxcQundU7Q6xLRYCAt2KKU99nEsCJwN3I05A3DODTaEiPGYF7fctYGF55KpaFJhJOkhrlF9B
	ul9Z5iURg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfQGd-00028U-5z; Sun, 31 May 2020 15:52:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfQGZ-000285-AN
 for linux-riscv@lists.infradead.org; Sun, 31 May 2020 15:52:53 +0000
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AB8D207BB
 for <linux-riscv@lists.infradead.org>; Sun, 31 May 2020 15:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590940370;
 bh=oDHGnXcDGPNikMlB2Dv+Bax5Kyg7+1x/RgjKibTtM0c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kdwAyOZoN6tJxf8wzXTeWYtR5f0q+r8hv+E28zuXsiX6+c1GGNun9549+qqfr2P6v
 EHmy45ihYwWP4/fbWsW2l0uYbZgOCn85NgPB1bS6xDvUkmB56Lt8tW3UC3mbzCwJVk
 0aVPNwi7N5AU6RIfgsJdrU1I8GFGsLHzPqM8IUdg=
Received: by mail-lj1-f175.google.com with SMTP id k5so5042917lji.11
 for <linux-riscv@lists.infradead.org>; Sun, 31 May 2020 08:52:50 -0700 (PDT)
X-Gm-Message-State: AOAM531P17Tv9V8mBj8OzkDTRtUv8x2nAMa9VB/WP99VNdMMloy7TolZ
 xsb+KyCaMNB4vk+wM/qrQaJ2haMG7wpLAoVSpRo=
X-Google-Smtp-Source: ABdhPJxc+UflSwuY3XbMSuBerzKlrHmG66opBdVixMEVxoI77AcKWDQYqR7zpJrgudE36zTC63+P7xoqyMWL0ypTKC0=
X-Received: by 2002:a2e:9755:: with SMTP id f21mr8062431ljj.377.1590940368804; 
 Sun, 31 May 2020 08:52:48 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590474856.git.greentime.hu@sifive.com>
In-Reply-To: <cover.1590474856.git.greentime.hu@sifive.com>
From: Guo Ren <guoren@kernel.org>
Date: Sun, 31 May 2020 23:52:37 +0800
X-Gmail-Original-Message-ID: <CAJF2gTTxaZtyLYok68a5bBnLMuZjrwcQ7dvTR8NGdJc3Cqv81g@mail.gmail.com>
Message-ID: <CAJF2gTTxaZtyLYok68a5bBnLMuZjrwcQ7dvTR8NGdJc3Cqv81g@mail.gmail.com>
Subject: Re: [RFC PATCH v4 00/13] riscv: Add vector ISA support
To: Greentime Hu <greentime.hu@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_085251_404443_F52BA6DB 
X-CRM114-Status: GOOD (  25.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Guo Ren <guoren@linux.alibaba.com>, palmerdabbelt@google.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, oleg@redhat.com,
 Vincent Chen <vincent.chen@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Greentime & Vincent,

Thx for the dynamic vlen implementation. I've two suggestions:
 - Please give out glibc patches mail URL, we need to review them together.
 - We need to consider that not all processes need vectors. Most
system processes do not have vector features, and we should not force
save/restore vector for every process.

On Tue, May 26, 2020 at 3:03 PM Greentime Hu <greentime.hu@sifive.com> wrote:
>
> This patchset is based on Guo Ren's v3 patchset to add dynamic vlen vector
> support for all different kinds of vector length in riscv. To make this
> happened we defined a new __riscv_v_state in sigcontext to save the vector
> related registers. The datap pointer will be allocated dynamically in
> kernel space and it will be put right after the __riscv_v_state data
> structure to save all the vector registers in signal handler stack for user
> space. So does the implementation in ptrace, they will be saved in ubuf
> in which we put the __riscv_v_state data structure and datap pointer right
> after it for vector registers. This patchset also fixes several bugs for
> vector lazy save/restore and vtype not saving issue. It also adds new CSR
> support for vector based on the 0.9 vector spec and clean up some unused
> macros.
>
> This patchset is rebased to v5.7-rc4 and it is tested by running several
> vector programs simultaneously. It also can get the correct ucontext_t in
> signal handler and restore correct context after sigreturn. It is also
> tested with ptrace() syscall to use PTRACE_GETREGSET/PTRACE_SETREGSET to
> get/set the vector registers. I have tested vlen=128 and vlen=256 cases in
> virt machine of qemu-system-riscv32 and qemu-system-riscv64 provided by
> Zhiwei Lui.
>
> Since the vector spec is under developing, there might still need some
> changes. For example the vle.v/vse.v instructions will be replaced with
> proper instructions. The reason that I don't replace the instruction in
> this patchset is because that the Qemu doesn't fully support 0.9 spec yet.
> I have no simulator to test. We also like to discuss the default setting of
> MINSIGSTKSZ and SIGSTKSZ. They might also need to set a proper number. They
> are 2048 and 8096 now. Since the stack in signal will be reserved for
> ucontext and the vector registers might be larger and larger someday, these
> two macros will need to be defined as a proper value or maybe we should
> provide a better mechanism to provide user to get a better default signal
> stack size.
>
>
>  [1] https://github.com/romanheros/qemu/tree/linux-vector-dev
>  [2] https://blog.linuxplumbersconf.org/2017/ocw/sessions/4671.html
>  [3] https://github.com/riscv/riscv-v-spec/blob/master/v-spec.adoc
>
> ---
> Changelog V4
>  - Support dynamic vlen
>  - Fix bugs: lazy save/resotre, not saving vtype
>  - Update VS bit offset based on latest vector spec
>  - Add new vector csr based on latest vector spec
>  - Code refine and removed unused macros
>
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
> Greentime Hu (1):
>   ptrace: Use regset_size() for dynamic regset size.
>
> Guo Ren (11):
>   riscv: Separate patch for cflags and aflags
>   riscv: Rename __switch_to_aux -> fpu
>   riscv: Extending cpufeature.c to detect V-extension
>   riscv: Add new csr defines related to vector extension
>   riscv: Add vector feature to compile
>   riscv: Add has_vector/riscv_vsize to save vector features.
>   riscv: Reset vector register
>   riscv: Add vector struct and assembler definitions
>   riscv: Add task switch support for vector
>   riscv: Add ptrace vector support
>   riscv: Add sigcontext save/restore for vector
>
> Vincent Chen (1):
>   riscv: signal: Report signal frame size to userspace via auxv
>
>  arch/riscv/Kconfig                       |   9 ++
>  arch/riscv/Makefile                      |  19 ++--
>  arch/riscv/include/asm/csr.h             |  16 +++-
>  arch/riscv/include/asm/elf.h             |  17 +++-
>  arch/riscv/include/asm/processor.h       |   3 +
>  arch/riscv/include/asm/switch_to.h       |  77 ++++++++++++++-
>  arch/riscv/include/uapi/asm/auxvec.h     |   2 +
>  arch/riscv/include/uapi/asm/elf.h        |   1 +
>  arch/riscv/include/uapi/asm/hwcap.h      |   1 +
>  arch/riscv/include/uapi/asm/ptrace.h     |  13 +++
>  arch/riscv/include/uapi/asm/sigcontext.h |   2 +
>  arch/riscv/kernel/Makefile               |   1 +
>  arch/riscv/kernel/asm-offsets.c          |   8 ++
>  arch/riscv/kernel/cpufeature.c           |  15 ++-
>  arch/riscv/kernel/entry.S                |   2 +-
>  arch/riscv/kernel/head.S                 |  49 +++++++++-
>  arch/riscv/kernel/process.c              |  40 ++++++++
>  arch/riscv/kernel/ptrace.c               | 114 +++++++++++++++++++++++
>  arch/riscv/kernel/setup.c                |   5 +
>  arch/riscv/kernel/signal.c               | 108 ++++++++++++++++++++-
>  arch/riscv/kernel/vector.S               |  84 +++++++++++++++++
>  include/uapi/linux/elf.h                 |   1 +
>  kernel/ptrace.c                          |  11 ++-
>  23 files changed, 573 insertions(+), 25 deletions(-)
>  create mode 100644 arch/riscv/kernel/vector.S
>
> --
> 2.26.2
>
>


-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/


Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C225614F67D
	for <lists+linux-riscv@lfdr.de>; Sat,  1 Feb 2020 05:59:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CUisD2dtsR2i/PEXq4+tRY4JNgdYYjUugmuABU/nU9s=; b=OO7Zmqa+J6eZVYcaHFydN5tj6
	rRoqcFikUL4B2wVBVwfj0TB6SaUiCW8c0qsgRf24AafnOpjnnOVKeTc7rV3c3dmxTyxEnuVh2nC/L
	H126o0UgOwsUJTkO16WroVTxuih+67UhBf2d2BT8rQGK8KPOjPRZw8ruw+b6t6SqolQtt5ifXirfk
	kDepEVmTga9mIp/TVuoeN1wGdZQ3+O5UOkpNGAjx6gtGtA0EqbihbifIw0JPlT3/YmeZ2Nvo9NZI6
	ADCo2DDZZXMRHkP04NoS9nLVsXam305Jh4BBLpmOuPydwsKoSfqSpOFVDOkXlnM/IMtXejJOaAa/N
	WCPE+tmSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixkrj-0000Kb-LA; Sat, 01 Feb 2020 04:58:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixkre-0000K9-NK
 for linux-riscv@lists.infradead.org; Sat, 01 Feb 2020 04:58:40 +0000
Received: by mail-wm1-x341.google.com with SMTP id p17so11071560wma.1
 for <linux-riscv@lists.infradead.org>; Fri, 31 Jan 2020 20:58:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CUisD2dtsR2i/PEXq4+tRY4JNgdYYjUugmuABU/nU9s=;
 b=irAMWSvnoeJlkpEhzVc/unfxlTwNILgoTr92+ruMQZhdSE0vs+07txLjRUFaweYo3B
 Fa1JoWK+ZaLDUVuLZVHpJbghZQ2Xo1vpVLpOESp7GL0P0OIVZ07tc1VuCdGeyrPxzb+t
 GccEhzNUUxp9gEBdz+2WENy7+Qq+7K7jHJr6kxzEfcFtLmJ2if349iBLs4UnlS7FqSUz
 pYyZjpO1dA3S1Zy8WqOPb18rXo7OqUqwmIChdo4+1SRBbWxFtDlaq7thK5GMadWrpRxf
 TS5UQxeNbfTxjE9hVHWNK5pAYluSde3YENxt4VxueACbw8zMit1Ljz91Cg2Ir9zI+opD
 4Y9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CUisD2dtsR2i/PEXq4+tRY4JNgdYYjUugmuABU/nU9s=;
 b=USWy0ZA+5BhJwYKIC3Mni0Jdh036AEucTwoCVRCk5HV81VWZhb5C5wv+dTRpn2ivq3
 u13GtK6TFmagziNt/vMPLNmHBBoEEaR4aylw4CgqpmBAlCjugG3r6X3GGRPaTwJpcFyY
 6hji3RW7Jk0nA3eF7vYvN772ncvBZUzm/ZWyayuAUbZXX/vCrw1d4YGFExCcYwWhqKfj
 gec0FATG8+aZFdIyk9kIhKrUG/9VmVeXr6jqh8aswH8c0lyjioFT7zRTPdaH5x7L2Quo
 FdbbHS8Hk7ZW5eYRMA7ya4EiXPPrjiC+2vpzjp9sfRpGHg94y1ebHu6CNo5b152giX4G
 fArw==
X-Gm-Message-State: APjAAAVydGXwz8MKY4iqrMl4sh/jSq8prlUE5Uv0MLnlgpwMrO0ACmey
 ts5CAVvFFQgptUlwAgBGMRKlin7ilHUzfzB2HG7PyODdXunR
X-Google-Smtp-Source: APXvYqz4cKMnp0UTtMWMut1UQH4uk6QJmPWFWIAckOhjGaZ2fcPWxEwJ1UWCG3eA9M4s8pip9e/FlC5Oz0BVQVq4hVo=
X-Received: by 2002:a05:600c:2215:: with SMTP id
 z21mr15962673wml.55.1580533116330; 
 Fri, 31 Jan 2020 20:58:36 -0800 (PST)
MIME-Version: 1.0
References: <CADnnUqfDnkvCJVqBkDw+gV7_zs5Q_Mb3anQTu+UujjJ8bBk+ng@mail.gmail.com>
 <CAEn-LTrSXHdfp9OPGRSoJCfi8D8Cg8FqS=_-JYpDatAT0X5C0w@mail.gmail.com>
 <CADnnUqciAtweH6KqxvK7Z5ZL-uqOQHujWQBrt+aj2y+31BpuHQ@mail.gmail.com>
 <CADnnUqe1GrqJ5EUQQoPp063bs9SqQkHUSqK_hcWqpkJQcxySTg@mail.gmail.com>
In-Reply-To: <CADnnUqe1GrqJ5EUQQoPp063bs9SqQkHUSqK_hcWqpkJQcxySTg@mail.gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Fri, 31 Jan 2020 20:58:25 -0800
Message-ID: <CAOnJCULxNeuS3v1UEFAC_uG4heQfR3QCK-STv48LCK1pbH-18A@mail.gmail.com>
Subject: Re: Errors and segmentation fault while building Golang on Kernel
 after v5.4-rc3
To: Carlos Eduardo de Paula <me@carlosedp.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_205838_904936_2E0EB131 
X-CRM114-Status: GOOD (  32.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Abdurachmanov <david.abdurachmanov@gmail.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>, Joel Sing <joel@sing.id.au>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 8:32 AM Carlos Eduardo de Paula
<me@carlosedp.com> wrote:
>
> Updating this issue, I've built the same Golang tree (master) on Qemu
> using the same kernel Image v5.5.0 I have on Unleashed and it built
> successfully:
>
> root@qemuriscv:~/go/src# time ./make.bash
> Building Go cmd/dist using /root/go-linux-riscv64-bootstrap. (devel
> +a858d15f11 13 hours ago linux/riscv64)
> Building Go toolchain1 using /root/go-linux-riscv64-bootstrap.
> Building Go bootstrap cmd/go (go_bootstrap) using Go toolchain1.
> Building Go toolchain2 using go_bootstrap and Go toolchain1.
> Building Go toolchain3 using go_bootstrap and Go toolchain2.
> Building packages and commands for linux/riscv64.
> ---
> Installed Go for linux/riscv64 in /root/go
> Installed commands in /root/go/bin
>
> real    43m19.946s
> user    120m34.147s
> sys    66m34.964s
> Linux qemuriscv 5.5.0-dirty #3 SMP Fri Jan 31 00:13:59 -02 2020
> riscv64 GNU/Linux
> root@qemuriscv:~/go/src# ../bin/go version
> go version devel +6e592c2 Fri Jan 31 14:46:05 2020 +0000 linux/riscv64
>
>
> Also tried updating to latest opensbi commit as of today and still
> seeing same error on Unleashed.
>
>

Resending it as 1st one did not seem to go through for some reason

You might be hitting the tlb flushing hardware errata on unleashed.
IIRC, anything other than full tlb flush
is broken on unleashed. I don't have the exact errata number or a link
that I can point to. May be Paul or somebody else from sifive
can share that so that we can document it as well.

Can you try this patch in OpenSBI? This forces OpenSBI to do a full
flush every time for HiFive Unleashed.

diff --git a/platform/sifive/fu540/platform.c b/platform/sifive/fu540/platform.c
index c8ead9dede23..e36338d2903f 100644
--- a/platform/sifive/fu540/platform.c
+++ b/platform/sifive/fu540/platform.c
@@ -218,5 +218,6 @@ const struct sbi_platform platform = {
        .hart_count             = FU540_HART_COUNT,
        .hart_stack_size        = FU540_HART_STACK_SIZE,
        .disabled_hart_mask     = FU540_HARITD_DISABLED,
+       .tlb_range_flush_limit  = 0,
        .platform_ops_addr      = (unsigned long)&platform_ops
 };

> On Fri, Jan 31, 2020 at 11:20 AM Carlos Eduardo de Paula
> <me@carlosedp.com> wrote:
> >
> > My board is running:
> >
> > SiFive FSBL:       2018-03-20
> > OpenSBI v0.5-44-g049ad0b
> > U-Boot 2020.01-dirty (Jan 08 2020 - 18:05:52 -0200)
> >
> > All build on january 8 using the guide I've wrote here
> > (https://github.com/carlosedp/riscv-bringup/tree/master/unleashed)
> > after our talks.
> >
> > Haven't tested newer versions on Qemu, might build it to give a try. I
> > have v5.4-rc3 built for Qemu and it works fine.
> >
> > Carlos
> >
> > On Fri, Jan 31, 2020 at 10:32 AM David Abdurachmanov
> > <david.abdurachmanov@gmail.com> wrote:
> > >
> > > On Fri, Jan 31, 2020 at 2:14 PM Carlos Eduardo de Paula
> > > <me@carlosedp.com> wrote:
> > > >
> > > > Golang has been recently upstreamed and I've been building multiple
> > > > versions on my Unleashed board successfully with kernel 5.3-rc4 and
> > > > previous.
> > > >
> > > > I noticed that after I updated my Kernel from v5.3-rc4 to v5.5-rc5,
> > > > Golang doesn't build anymore failing on multiple points and
> > > > segfaulting as well.
> > >
> > > Could you also mention what version of OpenSBI you use?
> > > Does it also fail on QEMU (avoid 4.2.0) or only on Unleashed?
> > >
> > > >
> > > > I've captured a few logs with the error building here:
> > > >
> > > > I've bisected the versions between v5.4-rc3 and v5.4 and it pointed
> > > > out that the commit below is the starting point.
> > > >
> > > > eb93685847a9055283d05951c1b205e737f38533 is the first bad commit
> > > > commit eb93685847a9055283d05951c1b205e737f38533
> > > > Author: Paul Walmsley <paul.walmsley@sifive.com>
> > > > Date: Wed Aug 7 19:07:34 2019 -0700
> > > >
> > > > riscv: fix flush_tlb_range() end address for flush_tlb_page()
> > > >
> > > > The RISC-V kernel implementation of flush_tlb_page() when CONFIG_SMP
> > > > is set is wrong. It passes zero to flush_tlb_range() as the final
> > > > address to flush, but it should be at least 'addr'.
> > > >
> > > > Some other Linux architecture ports use the beginning address to
> > > > flush, plus PAGE_SIZE, as the final address to flush. This might
> > > > flush slightly more than what's needed, but it seems unlikely that
> > > > being more clever would improve anything. So let's just take that
> > > > implementation for now.
> > > >
> > > > While here, convert the macro into a static inline function, primarily
> > > > to avoid unintentional multiple evaluations of 'addr'.
> > > >
> > > > This second version of the patch fixes a coding style issue found by
> > > > Christoph Hellwig <hch@lst.de>.
> > > >
> > > > Reported-by: Andreas Schwab <schwab@suse.de>
> > > > Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> > > > Reviewed-by: Christoph Hellwig <hch@lst.de>
> > > >
> > > > :040000 040000 1a4ee20b3614c93de2a925bba2df6f2e1518f227
> > > > 6b4ffd3e1a2245912cf734a8a3f61db7eb0ccd67 M arch
> > > >
> > > > > git bisect visualize
> > > > eb93685 N 6 months ago Paul ..riscv: fix flush_tlb_range() end address
> > > > for flush_tlb_page() HEAD, refs/bisect/bad
> > > >
> > > >
> > > > > git diff eb93685^!
> > > >
> > > > ```diff
> > > > diff --git a/arch/riscv/include/asm/tlbflush.h
> > > > b/arch/riscv/include/asm/tlbflush.h
> > > > index 687dd19..4d9bbe8 100644
> > > > --- a/arch/riscv/include/asm/tlbflush.h
> > > > +++ b/arch/riscv/include/asm/tlbflush.h
> > > > @@ -53,10 +53,17 @@ static inline void remote_sfence_vma(struct
> > > > cpumask *cmask, unsigned long start,
> > > > }
> > > >
> > > > #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> > > > -#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
> > > > +
> > > > #define flush_tlb_range(vma, start, end) \
> > > > remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
> > > > -#define flush_tlb_mm(mm) \
> > > > +
> > > > +static inline void flush_tlb_page(struct vm_area_struct *vma,
> > > > + unsigned long addr)
> > > > +{
> > > > + flush_tlb_range(vma, addr, addr + PAGE_SIZE);
> > > > +}
> > > > +
> > > > +#define flush_tlb_mm(mm) \
> > > > remote_sfence_vma(mm_cpumask(mm), 0, -1)
> > > >
> > > > #endif /* CONFIG_SMP */
> > > > ```
> > > >
> > > > I was not able to revert this change from recent v5.5.0 so I don't
> > > > know if this is the problem or some close commits:
> > > >
> > > > > git log 2b245b8b..2f478b60 |grep riscv
> > > > 2f478b6 N 6 months ago Linus..Merge tag 'riscv/for-v5.3-rc5' of
> > > > git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux
> > > > 69703eb N 6 months ago Vince..riscv: Make __fstate_clean() work correctly.
> > > > 8ac71d7 N 6 months ago Vince..riscv: Correct the initialized flow of FP register
> > > > eb93685 N 6 months ago Paul ..riscv: fix flush_tlb_range() end address
> > > > for flush_tlb_page()
> > > >
> > > > Carlos
> > > > --
> > > > ________________________________________
> > > > Carlos Eduardo de Paula
> > > > me@carlosedp.com
> > > > http://carlosedp.com
> > > > http://twitter.com/carlosedp
> > > > Linkedin
> > > > ________________________________________
> > > >
> > >
> >
> >
> > --
> > ________________________________________
> > Carlos Eduardo de Paula
> > me@carlosedp.com
> > http://carlosedp.com
> > http://twitter.com/carlosedp
> > Linkedin
> > ________________________________________
>
>
>
> --
> ________________________________________
> Carlos Eduardo de Paula
> me@carlosedp.com
> http://carlosedp.com
> http://twitter.com/carlosedp
> Linkedin
> ________________________________________
>


-- 
Regards,
Atish


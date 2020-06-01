Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A927E1EA0AF
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 11:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=huDbuTUegMZFEagTHTrfk/HRxV2fSPMcFzjy3dtkeT0=; b=hZk1fmcClRZmQHOgtaBpLpWwm
	NmaSoGZC1ifJz9SYN0XcxcSs/V/hvWHAAviP17eMVo6iFA5ATM3clV04x2mcyKsCApFVAiKplFlMc
	7hwq20+DwlEXF1C0p8HivYX7YPMVE5WIJOqkkHy7n/JyjteYi4l7jDZvlbCTV7VAEEtCFog42VhsO
	sp11uxaE2GUIU60QS/PXZZw35qDpOWzZ1/6M1hZtFCzLJPe94SsYvJi1buPxozgxxAWOXnuCDeVj+
	b9AMzH3hDRQHyMdHwEAQigwbX/+xGnZ4a0Xi48EA3yCoL+2m7Mqh35N5jzS997WqufztpinMR0Ajk
	ffZL4CwkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgXM-0007vp-Jl; Mon, 01 Jun 2020 09:15:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgXG-0007IS-B0
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 09:15:14 +0000
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A24F220772
 for <linux-riscv@lists.infradead.org>; Mon,  1 Jun 2020 09:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591002910;
 bh=t4iJuc7lKTqRKb4YRQcfc6Zcc+0aiSP0tDeFpyVwAk8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HKFgbB9eKN6FHWyXv4WYSJgzDYUynL1c6V7nW+EZ4sm7vWmFlA+pmtrg07jeOPNE2
 xnJxAxkIMMN8IogoTTUCfPoMu3tFLxhhsmfSKPK0wNaF53wAdruwNYEA12Hnj6427C
 T+S1NPqiz5WsDeMGQz8sDWAQacg3EuqFC5KWd4n0=
Received: by mail-lf1-f47.google.com with SMTP id r125so3472653lff.13
 for <linux-riscv@lists.infradead.org>; Mon, 01 Jun 2020 02:15:09 -0700 (PDT)
X-Gm-Message-State: AOAM531c2XKLIr6ov6tuDok2b0sUi5O/zrK2Jbo9bvwkRcA7oBjE0HIP
 0cPuqNZfWoi6TpLocl4nzhMTtzLLCwCtqS+H/v4=
X-Google-Smtp-Source: ABdhPJwyjnB2fm8dJBftZwzvtw+TL8eONFwas/ivCwyNJ++u9Y2LwhmZJJfTORveeAUOg1prXhytHPWy6qX6xQnYRfs=
X-Received: by 2002:a05:6512:3111:: with SMTP id
 n17mr10661419lfb.137.1591002907869; 
 Mon, 01 Jun 2020 02:15:07 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590474856.git.greentime.hu@sifive.com>
 <fa27814191feb2498b396758447ac2b745fd1121.1590474856.git.greentime.hu@sifive.com>
In-Reply-To: <fa27814191feb2498b396758447ac2b745fd1121.1590474856.git.greentime.hu@sifive.com>
From: Guo Ren <guoren@kernel.org>
Date: Mon, 1 Jun 2020 17:14:56 +0800
X-Gmail-Original-Message-ID: <CAJF2gTT-2SKJ08oDCPcBqA9gYL_WZZHdWGBFuWS9NkOuwFc3gw@mail.gmail.com>
Message-ID: <CAJF2gTT-2SKJ08oDCPcBqA9gYL_WZZHdWGBFuWS9NkOuwFc3gw@mail.gmail.com>
Subject: Re: [RFC PATCH v4 11/13] riscv: Add ptrace vector support
To: Greentime Hu <greentime.hu@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_021510_456253_E878DE36 
X-CRM114-Status: GOOD (  25.11  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Guo Ren <guoren@linux.alibaba.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Vincent Chen <vincent.chen@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Since it has been redesigned with new version spec, please change the
first-author :)

And add me as Co-developed.

On Tue, May 26, 2020 at 3:03 PM Greentime Hu <greentime.hu@sifive.com> wrote:
>
> From: Guo Ren <guoren@linux.alibaba.com>
>
> This patch adds ptrace support for riscv vector. The vector registers will
> be saved in datap pointer of __riscv_v_state. This pointer will be set
> right after the __riscv_v_state data structure then it will be put in ubuf
> for ptrace system call to get or set. It will check if the datap got from
> ubuf is set to the correct address or not when the ptrace system call is
> trying to set the vector registers.
>
> [greentime.hu@sifive.com: add support for dynamic vlen, fix vtype not
> saved bug]
> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
> ---
>  arch/riscv/include/uapi/asm/elf.h |   1 +
>  arch/riscv/kernel/ptrace.c        | 114 ++++++++++++++++++++++++++++++
>  include/uapi/linux/elf.h          |   1 +
>  3 files changed, 116 insertions(+)
>
> diff --git a/arch/riscv/include/uapi/asm/elf.h b/arch/riscv/include/uapi/asm/elf.h
> index d696d6610231..099434d075a7 100644
> --- a/arch/riscv/include/uapi/asm/elf.h
> +++ b/arch/riscv/include/uapi/asm/elf.h
> @@ -23,6 +23,7 @@ typedef struct user_regs_struct elf_gregset_t;
>  typedef __u64 elf_fpreg_t;
>  typedef union __riscv_fp_state elf_fpregset_t;
>  #define ELF_NFPREG (sizeof(struct __riscv_d_ext_state) / sizeof(elf_fpreg_t))
> +#define ELF_NVREG  (sizeof(struct __riscv_v_state) / sizeof(elf_greg_t))
>
>  #if __riscv_xlen == 64
>  #define ELF_RISCV_R_SYM(r_info)                ELF64_R_SYM(r_info)
> diff --git a/arch/riscv/kernel/ptrace.c b/arch/riscv/kernel/ptrace.c
> index 444dc7b0fd78..9b9bd1c02362 100644
> --- a/arch/riscv/kernel/ptrace.c
> +++ b/arch/riscv/kernel/ptrace.c
> @@ -10,6 +10,7 @@
>  #include <asm/ptrace.h>
>  #include <asm/syscall.h>
>  #include <asm/thread_info.h>
> +#include <asm/switch_to.h>
>  #include <linux/audit.h>
>  #include <linux/ptrace.h>
>  #include <linux/elf.h>
> @@ -26,6 +27,9 @@ enum riscv_regset {
>  #ifdef CONFIG_FPU
>         REGSET_F,
>  #endif
> +#ifdef CONFIG_VECTOR
> +       REGSET_V,
> +#endif
>  };
>
>  static int riscv_gpr_get(struct task_struct *target,
> @@ -92,6 +96,107 @@ static int riscv_fpr_set(struct task_struct *target,
>  }
>  #endif
>
> +#ifdef CONFIG_VECTOR
> +static int riscv_vr_get(struct task_struct *target,
> +                        const struct user_regset *regset,
> +                        unsigned int pos, unsigned int count,
> +                        void *kbuf, void __user *ubuf)
> +{
> +       int ret, size;
> +       struct __riscv_v_state *vstate = &target->thread.vstate;
> +       /* Set the datap right after the address of vstate. */
> +       void *datap = ubuf + sizeof(struct __riscv_v_state);
> +       u32 magic = RVV_MAGIC;
> +
> +       /* Copy the magic number. */
> +       ret = user_regset_copyout(&pos, &count, &kbuf, &ubuf, &magic, 0,
> +                                 sizeof(u32));
> +       if (unlikely(ret))
> +               return ret;
> +
> +       /* Copy rest of vstate except datap. */
> +       ret = user_regset_copyout(&pos, &count, &kbuf, &ubuf, vstate, 0,
> +                                 RISCV_V_STATE_DATAP);
> +       if (unlikely(ret))
> +               return ret;
> +
> +       /* Copy the pointer datap itself. */
> +       pos = 0;
> +       ret = user_regset_copyout(&pos, &count, &kbuf, &ubuf, &datap, 0,
> +                                 sizeof(vstate->datap));
> +       if (unlikely(ret))
> +               return ret;
> +
> +#if __riscv_xlen == 32
> +       /* Skip copy _padding. */
> +       size = sizeof(vstate->__padding);
> +       count -= size;
> +       ubuf += size;
> +#endif
> +
> +       /* Copy all the vector registers. */
> +       pos = 0;
> +       ret = user_regset_copyout(&pos, &count, &kbuf, &ubuf,
> +                                 vstate->datap, 0, vstate->size);
> +       return ret;
> +}
> +
> +static int riscv_vr_set(struct task_struct *target,
> +                        const struct user_regset *regset,
> +                        unsigned int pos, unsigned int count,
> +                        const void *kbuf, const void __user *ubuf)
> +{
> +       int ret, size;
> +       struct __riscv_v_state *vstate = &target->thread.vstate;
> +       const void *datap = ubuf + sizeof(struct __riscv_v_state);
> +       const void *datap_addr = ubuf + RISCV_V_STATE_DATAP;
> +       long val_datap;
> +
> +       /* Skip copy magic because kernel doesn't need to use it. */
> +       size = sizeof(vstate->magic);
> +       pos += size;
> +       count -= size;
> +       ubuf += size;
> +
> +       /* Copy rest of the vstate except datap and __padding. */
> +       ret = user_regset_copyin(&pos, &count, &kbuf, &ubuf, vstate, 0,
> +                                RISCV_V_STATE_DATAP);
> +       if (unlikely(ret))
> +               return ret;
> +
> +       /* Check if the datap is correct address of ubuf. */
> +       __get_user(val_datap, (long *)datap_addr);
> +       if (val_datap != (long)datap)
> +               return -EFAULT;
> +
> +       /* Skip copy datap. */
> +       size = sizeof(vstate->datap);
> +       count -= size;
> +       ubuf += size;
> +
> +#if __riscv_xlen == 32
> +       /* Skip copy _padding. */
> +       size = sizeof(vstate->__padding);
> +       count -= size;
> +       ubuf += size;
> +#endif
> +
> +       /* Copy all the vector registers. */
> +       pos = 0;
> +       ret = user_regset_copyin(&pos, &count, &kbuf, &ubuf, vstate->datap,
> +                                0, vstate->size);
> +       return ret;
> +}
> +static unsigned int riscv_vr_get_size(struct task_struct *target,
> +                                     const struct user_regset *regset)
> +{
> +       if (!has_vector)
> +               return 0;
> +
> +       return sizeof(struct __riscv_v_state) + riscv_vsize;
> +}
> +#endif
> +
>  static const struct user_regset riscv_user_regset[] = {
>         [REGSET_X] = {
>                 .core_note_type = NT_PRSTATUS,
> @@ -111,6 +216,15 @@ static const struct user_regset riscv_user_regset[] = {
>                 .set = &riscv_fpr_set,
>         },
>  #endif
> +#ifdef CONFIG_VECTOR
> +       [REGSET_V] = {
> +               .core_note_type = NT_RISCV_VECTOR,
> +               .align = 16,
> +               .get = riscv_vr_get,
> +               .set = riscv_vr_set,
> +               .get_size = riscv_vr_get_size,
> +       },
> +#endif
>  };
>
>  static const struct user_regset_view riscv_user_native_view = {
> diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
> index 34c02e4290fe..e428f9e8710a 100644
> --- a/include/uapi/linux/elf.h
> +++ b/include/uapi/linux/elf.h
> @@ -428,6 +428,7 @@ typedef struct elf64_shdr {
>  #define NT_MIPS_DSP    0x800           /* MIPS DSP ASE registers */
>  #define NT_MIPS_FP_MODE        0x801           /* MIPS floating-point mode */
>  #define NT_MIPS_MSA    0x802           /* MIPS SIMD registers */
> +#define NT_RISCV_VECTOR        0x900           /* RISC-V vector registers */
>
>  /* Note header in a PT_NOTE section */
>  typedef struct elf32_note {
> --
> 2.26.2
>
>


-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/


Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174F61EA096
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 11:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uoKvQ83VIcouxDkJ1F9DwCt/5HJJf3YPFB/ZQ8yEZGM=; b=t05leIoC5aXDEFX2aSWtB8Zwr
	u0s3qFkTdtw4Hqw12kT+FGDMgvb9h1mKQdN2T8hwpivk4ipXlCNefgyjmQBPkWs5w+Xg0j1zqeel8
	QQTMmqgWWLirmenKxLc5Nipc66mcYvFCzLhYsB5wcQNLyYmezNkdWE6umVGkIbgCPp6w98qHlp4rB
	0IYcQIAeEzWJ0yOIbif87sR8mulQoa3YR/k61EHRcxEWonVJUTwSEEY5iyf78aReNCkvLegqwLTLO
	FFyFvTwVjNZAtU7I+Z5ubf5qukP7CIAjtGMvMMeOACVzaoEXUiNrMYhOfQj8/wz8di8RSsF/Jwxg0
	6SzEcJJNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgUw-00045u-K1; Mon, 01 Jun 2020 09:12:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgUd-0003qK-N2
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 09:12:29 +0000
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C4DF120772
 for <linux-riscv@lists.infradead.org>; Mon,  1 Jun 2020 09:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591002747;
 bh=XaBczYYm0dgNg26+7OPpYAKLtWaTtsU2jNmMocGEg+U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zPG/R4YQGgMcVD1vDVWgtCV6QgaMzR7FnaRYsF325VamsGjd6hUptzQFJ5t+J9v6t
 A4jgXaEWazhwka1vJ93/bzXgMABKduro30GhnDn4XmcykSuTx6Z0uyFoD07N2YrIrc
 ILfCZYzXqFrw4NYe+aRK6RFOVRbSOpCiEkfbe6QM=
Received: by mail-lj1-f173.google.com with SMTP id c17so1441191lji.11
 for <linux-riscv@lists.infradead.org>; Mon, 01 Jun 2020 02:12:26 -0700 (PDT)
X-Gm-Message-State: AOAM533/vJo9h7UJ3HwiTS2xetQ+/RGKo0wzXduWxe/CtNiwiahNuf0n
 tngB5c3yn4vUlM7NJLUlZyY5YeDdVQPnvqllOF8=
X-Google-Smtp-Source: ABdhPJwNN0gMX/urhnLnrniACiL2yZ/7oMTw3RyS/24I8Z1lmMyfh4PcjnoeMU6EeZpM2LSQDbPzd3egOk/2x79mNUo=
X-Received: by 2002:a2e:9c95:: with SMTP id x21mr10387218lji.441.1591002745078; 
 Mon, 01 Jun 2020 02:12:25 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590474856.git.greentime.hu@sifive.com>
 <1f20f778318bf18e47eace08e54983fed23ba019.1590474856.git.greentime.hu@sifive.com>
In-Reply-To: <1f20f778318bf18e47eace08e54983fed23ba019.1590474856.git.greentime.hu@sifive.com>
From: Guo Ren <guoren@kernel.org>
Date: Mon, 1 Jun 2020 17:12:13 +0800
X-Gmail-Original-Message-ID: <CAJF2gTRu63t7Ftv_V1ZLAEu4Vi57Q6uvp+sZjYBROkuJXX0=mg@mail.gmail.com>
Message-ID: <CAJF2gTRu63t7Ftv_V1ZLAEu4Vi57Q6uvp+sZjYBROkuJXX0=mg@mail.gmail.com>
Subject: Re: [RFC PATCH v4 09/13] riscv: Add vector struct and assembler
 definitions
To: Greentime Hu <greentime.hu@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_021227_828870_BCCF71BE 
X-CRM114-Status: GOOD (  18.13  )
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
> Add vector state context struct in struct thread and asm-offsets.c
> definitions.
>
> The vector registers will be saved in datap pointer of __riscv_v_state. It
> will be dynamically allocated in kernel space. It will be put right after
> the __riscv_v_state data structure in user space.
>
> [greentime.hu@sifive.com: add support for dynamic vlen, add vcsr and remove
> vxsat, vxrm because these data can be get in vcsr, add new macros for
> _riscv_v_state elements offset and remove unused ones]
> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
> ---
>  arch/riscv/include/asm/processor.h   |  1 +
>  arch/riscv/include/uapi/asm/ptrace.h | 13 +++++++++++++
>  arch/riscv/kernel/asm-offsets.c      |  8 ++++++++
>  3 files changed, 22 insertions(+)
>
> diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
> index 3ddb798264f1..217273375cfb 100644
> --- a/arch/riscv/include/asm/processor.h
> +++ b/arch/riscv/include/asm/processor.h
> @@ -32,6 +32,7 @@ struct thread_struct {
>         unsigned long sp;       /* Kernel mode stack */
>         unsigned long s[12];    /* s[0]: frame pointer */
>         struct __riscv_d_ext_state fstate;
> +       struct __riscv_v_state vstate;
>  };
>
>  #define INIT_THREAD {                                  \
> diff --git a/arch/riscv/include/uapi/asm/ptrace.h b/arch/riscv/include/uapi/asm/ptrace.h
> index 882547f6bd5c..661b0466b850 100644
> --- a/arch/riscv/include/uapi/asm/ptrace.h
> +++ b/arch/riscv/include/uapi/asm/ptrace.h
> @@ -77,6 +77,19 @@ union __riscv_fp_state {
>         struct __riscv_q_ext_state q;
>  };
>
> +struct __riscv_v_state {
> +       __u32 magic;
> +       __u32 size;
> +       unsigned long vstart;
> +       unsigned long vl;
> +       unsigned long vtype;
> +       unsigned long vcsr;
> +       void *datap;
> +#if __riscv_xlen == 32
> +       __u32 __padding;
> +#endif
> +} __attribute__((aligned(16)));
> +
>  #endif /* __ASSEMBLY__ */
>
>  #endif /* _UAPI_ASM_RISCV_PTRACE_H */
> diff --git a/arch/riscv/kernel/asm-offsets.c b/arch/riscv/kernel/asm-offsets.c
> index 07cb9c10de4e..6627fde230b2 100644
> --- a/arch/riscv/kernel/asm-offsets.c
> +++ b/arch/riscv/kernel/asm-offsets.c
> @@ -70,6 +70,14 @@ void asm_offsets(void)
>         OFFSET(TASK_THREAD_F31, task_struct, thread.fstate.f[31]);
>         OFFSET(TASK_THREAD_FCSR, task_struct, thread.fstate.fcsr);
>
> +       OFFSET(RISCV_V_STATE_MAGIC, __riscv_v_state, magic);
> +       OFFSET(RISCV_V_STATE_SIZE, __riscv_v_state, size);
> +       OFFSET(RISCV_V_STATE_VSTART, __riscv_v_state, vstart);
> +       OFFSET(RISCV_V_STATE_VL, __riscv_v_state, vl);
> +       OFFSET(RISCV_V_STATE_VTYPE, __riscv_v_state, vtype);
> +       OFFSET(RISCV_V_STATE_VCSR, __riscv_v_state, vcsr);
> +       OFFSET(RISCV_V_STATE_DATAP, __riscv_v_state, datap);
> +
>         DEFINE(PT_SIZE, sizeof(struct pt_regs));
>         OFFSET(PT_EPC, pt_regs, epc);
>         OFFSET(PT_RA, pt_regs, ra);
> --
> 2.26.2
>
>


-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/


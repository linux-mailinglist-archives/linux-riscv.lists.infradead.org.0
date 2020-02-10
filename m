Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C89111581E2
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Feb 2020 18:59:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=1YAISQFqnpA305vPq84f3VxvtWWF0p2xaxU8lpBMW/M=; b=Z8fp9KCHdYvPHL
	WWHbN3ra3Wl57fpr2rUe0YVB1cKbtxl6g/0Xzr1euCUVjwyqqLHn7ViCu1EPkqiLZpocwTBz0WCcp
	+paZO58NvWaRqz619zii3ch+FUVZXRvVyi7cp0VEjjXTSvQks7obangL2hjiTwHWqM6O4oDTXnrdP
	cAJtun/05f3nbNL+W55Fsn/JUDkRofbATLpyT72quNM1nG3+EnAiKbK4TcI/k1HnM8yPGaqPQpK8T
	VmVvjoILXSJEfWxSfbw3yP3IfnM8MwHvd7aHVOooaAJDUiJDkEIENpOKC4dEh27jurmFihZunU+aq
	Qcqj3stltNvoM/nCRYhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1DLQ-0001aK-IX; Mon, 10 Feb 2020 17:59:40 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1DLL-0001W9-Or
 for linux-riscv@lists.infradead.org; Mon, 10 Feb 2020 17:59:37 +0000
Received: by mail-pl1-x644.google.com with SMTP id g6so3127158plt.2
 for <linux-riscv@lists.infradead.org>; Mon, 10 Feb 2020 09:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=1YAISQFqnpA305vPq84f3VxvtWWF0p2xaxU8lpBMW/M=;
 b=LKQ+bF5ZQDqEApmHseTtuNoyhWSosj7Am0frnkoZOUJq+UxW1hL1A6AeQKv+W2jXMH
 0sGcnymJQDqhTJwmbXrjDtLPo7oMgx6v5OfewS0GsDvnrwBiIzTnzzEnr0gDt6oQkg06
 MRuWrEqGuWye1cLT5MnkKAD4cNi8amzI3pGmYk9wTBEvcBK3Q7eF/XlM0eY7zGOw6/23
 KfJesdlZVtA1PrcNYt2g8gZFBVPkeU/6dng2W2VzCxmio5uWr71v0fgHmBMdHc+9V6e7
 EaYHajMEQYggi7hkr7GRobvEVCVQ4ELeW3CIGQ+Zu+mJEf+Aii9oQe/i71JsgItv4apN
 J1Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=1YAISQFqnpA305vPq84f3VxvtWWF0p2xaxU8lpBMW/M=;
 b=pfOpEEG2dJGVP3BQsU9e5rJo6L4R7u2R9/DYCvGHy8LkZLezc0XK3iYpCnmZ4FxWho
 LwQs39hW5xDRgrPpmY26Q3JkHHtEKlXRDz2QAt/gBwQBVwIjcymQX6tuuSoz8VkDZN25
 7n8swVTqNdefHHPOhHuhBFZHYdvNdDFdmadZkhE+MJR0PNFZhOV26nAAQwHlcg1lk1Xf
 xfMPoI+Pqm88/RpSpByCuuyJNnssr0GqANwh6lnUEFMwTRtfuai1OQ1rwWdvCWVbwU/e
 KFLycRXE9CvjrHSGwGgbojadrzzwGg6y3VjZs2TS6xsl2nsaJ8aSIqm8yVz3UssXnaTv
 8oUQ==
X-Gm-Message-State: APjAAAXd8cgow2Hb6ktgu8TeOTNkuryL+hhm41RQd8igNcnskS8QicFA
 T3woLFyYBHa6qqfDchP1wLB/9A==
X-Google-Smtp-Source: APXvYqxD4zsNJxOw0UXfC6ay8JKxpVMuJ37CBz5drM/uOOz8GyBg7ACfSqGKYBKraMUzXUX39/16sw==
X-Received: by 2002:a17:90a:c706:: with SMTP id o6mr269038pjt.82.1581357572300; 
 Mon, 10 Feb 2020 09:59:32 -0800 (PST)
Received: from localhost (pat_11.qualcomm.com. [192.35.156.11])
 by smtp.gmail.com with ESMTPSA id e11sm744483pgj.70.2020.02.10.09.59.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 09:59:31 -0800 (PST)
Date: Mon, 10 Feb 2020 09:59:31 -0800 (PST)
X-Google-Original-Date: Mon, 10 Feb 2020 07:02:08 PST (-0800)
Subject: Re: [PATCH] riscv: set pmp configuration if kernel is running in
 M-mode
In-Reply-To: <CAHCEeh+4a0O7tpp4dRXKudc6bmdJct=-H0SrPt=HbOs00T3-Hg@mail.gmail.com>
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: greentime.hu@sifive.com
Message-ID: <mhng-bb195861-6e17-41e3-ab0f-ec8f4c5eca69@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_095935_803706_E72897AC 
X-CRM114-Status: GOOD (  19.46  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: greentime@kernel.org, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, green.hu@gmail.com,
 linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 29 Jan 2020 18:38:43 PST (-0800), greentime.hu@sifive.com wrote:
> On Thu, Jan 30, 2020 at 3:23 AM Palmer Dabbelt <palmerdabbelt@google.com> wrote:
>>
>> On Thu, 09 Jan 2020 03:17:40 GMT (+0000), greentime.hu@sifive.com wrote:
>> > When the kernel is running in S-mode, the expectation is that the
>> > bootloader or SBI layer will configure the PMP to allow the kernel to
>> > access physical memory.  But, when the kernel is running in M-mode and is
>> > started with the ELF "loader", there's probably no bootloader or SBI layer
>> > involved to configure the PMP.  Thus, we need to configure the PMP
>> > ourselves to enable the kernel to access all regions.
>> >
>> > Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
>> > ---
>> >  arch/riscv/include/asm/csr.h | 12 ++++++++++++
>> >  arch/riscv/kernel/head.S     |  6 ++++++
>> >  2 files changed, 18 insertions(+)
>> >
>> > diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
>> > index 0a62d2d68455..0f25e6c4e45c 100644
>> > --- a/arch/riscv/include/asm/csr.h
>> > +++ b/arch/riscv/include/asm/csr.h
>> > @@ -72,6 +72,16 @@
>> >  #define EXC_LOAD_PAGE_FAULT  13
>> >  #define EXC_STORE_PAGE_FAULT 15
>> >
>> > +/* PMP configuration */
>> > +#define PMP_R                        0x01
>> > +#define PMP_W                        0x02
>> > +#define PMP_X                        0x04
>> > +#define PMP_A                        0x18
>> > +#define PMP_A_TOR            0x08
>> > +#define PMP_A_NA4            0x10
>> > +#define PMP_A_NAPOT          0x18
>> > +#define PMP_L                        0x80
>> > +
>> >  /* symbolic CSR names: */
>> >  #define CSR_CYCLE            0xc00
>> >  #define CSR_TIME             0xc01
>> > @@ -100,6 +110,8 @@
>> >  #define CSR_MCAUSE           0x342
>> >  #define CSR_MTVAL            0x343
>> >  #define CSR_MIP                      0x344
>> > +#define CSR_PMPCFG0          0x3a0
>> > +#define CSR_PMPADDR0         0x3b0
>> >  #define CSR_MHARTID          0xf14
>> >
>> >  #ifdef CONFIG_RISCV_M_MODE
>> > diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
>> > index 5c8b24bf4e4e..f8f996916c5b 100644
>> > --- a/arch/riscv/kernel/head.S
>> > +++ b/arch/riscv/kernel/head.S
>> > @@ -60,6 +60,12 @@ _start_kernel:
>> >       /* Reset all registers except ra, a0, a1 */
>> >       call reset_regs
>> >
>> > +     /* Setup a PMP to permit access to all of memory. */
>> > +     li a0, -1
>> > +     csrw CSR_PMPADDR0, a0
>> > +     li a0, (PMP_A_NAPOT | PMP_R | PMP_W | PMP_X)
>> > +     csrw CSR_PMPCFG0, a0
>>
>> These should be guarded by some sort of #ifdef CONFIG_M_MODE, as they're not
>> part of S mode.
>
> Hi Palmer,
>
> This code segment is guarded by CONFIG_RISCV_M_MODE
>
> #ifdef CONFIG_RISCV_M_MODE
>         /* flush the instruction cache */
>         fence.i
>
>         /* Reset all registers except ra, a0, a1 */
>         call reset_regs
>
>         /* Setup a PMP to permit access to all of memory. */
>         li a0, -1
>         csrw CSR_PMPADDR0, a0
>         li a0, (PMP_A_NAPOT | PMP_R | PMP_W | PMP_X)
>         csrw CSR_PMPCFG0, a0
>
>         /*
>          * The hartid in a0 is expected later on, and we have no firmware
>          * to hand it to us.
>          */
>         csrr a0, CSR_MHARTID
> #endif /* CONFIG_RISCV_M_MODE */

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

Whoops.  It's queued up for the RCs.


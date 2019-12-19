Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CBD125BAB
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Dec 2019 07:56:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4frcXPE7kM7xRryyvIHRVLemANbFnBo0wH9ezz/ZFmY=; b=Qocdl1sJk/ta7BRdD49xNy90E
	14773r9QWKGeea5tmJvt5j/iA4c5g5j+ioiqaaCe7Nca9ZjY38M7AqU/DS18r/14AIYlrhIQjN2cw
	8zBuIQoef7gc6jsbK09z+EqvKwIQxnKsjYS8z4c0zHEq6NRRfLDsVEJl1Rn8K6HyxXzfymsltHVvh
	TEnLlIkhqtwALnr2zZdtsR6ILWwC3G1ihAyoNGjYX2BXOYIZmq7V+1kl4Fu1158hh9IhUFICbpDoV
	uMEJIdSuiIDoOIUlFKGpwYNcKBKoxsXTrz6ObtBT3QE1/shyg6IZVvW/qpftPLQ9VNJ8UnjOBFII8
	tfg2YTMzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihpj3-0005ZG-UL; Thu, 19 Dec 2019 06:55:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihpj0-0005YX-A1
 for linux-riscv@lists.infradead.org; Thu, 19 Dec 2019 06:55:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id c14so4783944wrn.7
 for <linux-riscv@lists.infradead.org>; Wed, 18 Dec 2019 22:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4frcXPE7kM7xRryyvIHRVLemANbFnBo0wH9ezz/ZFmY=;
 b=zvB2lCZyj1NChC1MxfsZhHaATJiuMNQ5+778PFst5skVIxOK5XT7tAAeP0sP7A03/M
 rZd8YIwH21dApPsd0vdmqrsFNilohwMaOzNc6vjZZ89Vb1ka9nML0uU7JINmmwrNadbI
 rGlxPDvZQngLDhcCJOV9i5Hfft0lYn2avY9mb6nEW6PHVnioNGYemGDngL/zRemX78Tf
 foM/r3wu7pDNNArTEkOFUncGT6/7sbZuZvvQScHCSsYaApCpgN8/wE4e22+iYqM9o7BV
 7ix2XBA+OHU9zthE8F9ArKkjJsu7ALDjGFayiPp8iFD+XG7L1GSaktxO0quGhuDUaJz9
 8DJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4frcXPE7kM7xRryyvIHRVLemANbFnBo0wH9ezz/ZFmY=;
 b=qbWdzzOEXcAQPSs2CuVV11mJlnW9AA5s7Ojh1+OLxy3H/H1RZOj23YoGtO3AMawQiF
 Nlra3PACFD7KnztNZQa/hIsIjNC1kxbfnLGFaYCysMueGd45io8ibKwtHkUx5OsXWiFY
 zOtvDYC+OI6Ohmb5AigRX82yeg7ect2OhKzr2X08aKGuOPWtygPdwpVG9NUOzgQcNXyT
 mVDPX3viLsRBTqynR7EeJzNJgl1oq2m7NyX10ZmeJwkG0tfGdhzZn4HcrJf3V+4gkPt1
 o8oPB+FAD+8gKAoNDM6GiHZ/+6A7ufynAojAk7AxFQLKGNvDqp81Z35QqtQ8xd0li+sy
 /qMw==
X-Gm-Message-State: APjAAAUU1gNsUkx1KPqOhVVoT8YkdWJRzJxEOme5XZ3NMP8BPhlha7Cd
 x5gyiA64n2Yhfa512xleEHq3Gjj3lkGp9oUBsKjobA==
X-Google-Smtp-Source: APXvYqxTwfrl/KntorZw5YmG2v3v1ZZUz7rSdH9YRwTxTtcicDtegULMqsWzYh2MeZ1M2PwB6zTx9PBjb5oUVmXKDRE=
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr7253204wrn.251.1576738548456; 
 Wed, 18 Dec 2019 22:55:48 -0800 (PST)
MIME-Version: 1.0
References: <20191218213918.16676-1-atish.patra@wdc.com>
 <20191218213918.16676-4-atish.patra@wdc.com>
In-Reply-To: <20191218213918.16676-4-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 19 Dec 2019 12:25:36 +0530
Message-ID: <CAAhSdy2BAcaV1tcSFiJnwX5bggAD2FcLvUg-VrxtPP2KqU3cMw@mail.gmail.com>
Subject: Re: [PATCH v6 3/5] RISC-V: Add SBI v0.2 extension definitions
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_225554_350263_A6CC5C4E 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Atish Patra <atishp@atishpatra.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 3:09 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> Few v0.1 SBI calls are being replaced by new SBI calls that follows
> v0.2 calling convention.
>
> This patch just defines these new extensions.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/sbi.h | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index 1aeb4bb7baa8..9612133213ba 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -21,6 +21,9 @@ enum sbi_ext_id {
>         SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID = 0x7,
>         SBI_EXT_0_1_SHUTDOWN = 0x8,
>         SBI_EXT_BASE = 0x10,
> +       SBI_EXT_TIME = 0x54494D45,
> +       SBI_EXT_IPI = 0x735049,
> +       SBI_EXT_RFENCE = 0x52464E43,
>  };
>
>  enum sbi_ext_base_fid {
> @@ -33,6 +36,24 @@ enum sbi_ext_base_fid {
>         SBI_EXT_BASE_GET_MIMPID,
>  };
>
> +enum sbi_ext_time_fid {
> +       SBI_EXT_TIME_SET_TIMER = 0,
> +};
> +
> +enum sbi_ext_ipi_fid {
> +       SBI_EXT_IPI_SEND_IPI = 0,
> +};
> +
> +enum sbi_ext_rfence_fid {
> +       SBI_EXT_RFENCE_REMOTE_FENCE_I = 0,
> +       SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
> +       SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
> +       SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
> +       SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
> +       SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
> +       SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
> +};
> +
>  #define SBI_SPEC_VERSION_DEFAULT       0x1
>  #define SBI_SPEC_VERSION_MAJOR_SHIFT   24
>  #define SBI_SPEC_VERSION_MAJOR_MASK    0x7f
> --
> 2.24.0
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup


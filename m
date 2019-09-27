Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D161BFEAB
	for <lists+linux-riscv@lfdr.de>; Fri, 27 Sep 2019 07:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fql1DrSpTD0tSyu+miFpqLhYtugW0rL4tqgafIFLomQ=; b=pdhaQr1/Gpr/C6
	34qi+mk5kPgXqcijasqFWNx9Wc9ew6JUv4RL3vN+GxfYC7C3R3ceHyxBNPCERhl4VHLDGJfPMqD52
	3noDS5PyujcgjpVdcpqRLgbHLILKvhjmjo7PsaijVmBA6KXKh/dsBPZurUKcsQ8B3tUlkq8xWCJ/g
	w5128yyRWSv0w22EXCC1mnKJ5V0Z7l8nM0o95qgoOvcesjgrQeUxMTvTjsNu62KWQkYzu16jiK2LZ
	nD08Zm1NPJyxl0eTTTA66gPLxmzt1/YHcXUxmKhqbDEqjslcgIoBvMFkOZv2RogJSoo6vSvdfdJvP
	WSurxcGEHQ+guW7jsS8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDj6z-000179-Ml; Fri, 27 Sep 2019 05:48:13 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDj6w-00016o-26
 for linux-riscv@lists.infradead.org; Fri, 27 Sep 2019 05:48:11 +0000
Received: by mail-wr1-x442.google.com with SMTP id a11so1234729wrx.1
 for <linux-riscv@lists.infradead.org>; Thu, 26 Sep 2019 22:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dNHNOk7RAkOzjjDpc3+FWKTYKs/qbdc+SGcdmjw2A60=;
 b=yY5KD/GGMJ35MPttTgHk9foQdpE71oxiqLXzKEzQHLMrjrUaQXE0TfU+WE30C+mV81
 wqAbp2aCJa90YNy/Y6YPU5HIyErI6I80I8Kl+vhfLmiO+V3ntvmeu1jKLyMUVLeroSq2
 MOQHOwLQ0o8ssdaT0cs5H7dTcl632Cm+hZ9MamLqGyibDOSu9cbeXWsQrUmY145RAp1h
 09001CgIue4dSD6KpNxNySJIDwORI0sg8zGArZ0n7/8nB6K2SQ5LcG0EtOgW4QXWsM0U
 nQKfs1NI2K8YbSin9smqcs08/SlxV2Gj16lBO5cUba9Au2Sk2A4iXIB/b7wmzELZ1a2H
 v1aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dNHNOk7RAkOzjjDpc3+FWKTYKs/qbdc+SGcdmjw2A60=;
 b=golJtuXNRuy2hXvIai4qBlt/+Jw+QDKYT7of0my6k9u4+LsLB57KH6WH1CbMq6lXlS
 e49UDddAB2vkubE6tlY2oUgSFg7VUUMYcR2oxLNyXW1Xf1y993kA7VOKqVbLvMa8BLhN
 yqJdeKEHRsrFAlBSh1PTswcLHrYQ7PUgSw8FYwlKKBbHwEGKyuDrUjnL8yvcreT4xBDe
 6yUePICy9xNt86k+s3oWv/abr04XWR6pX+kGBr+KqjWoTnVn5byfKuRUKqy+sAToKmC5
 KenUVsXr2O9b82la58DHlWHPID46pxzCq1ulPWs5XPJrnft3V2tCf0SRYry2VbU2wCgG
 SkXA==
X-Gm-Message-State: APjAAAVXwHdmHYoQ8vwRIaBz38vzM6r6jgEQtXF6MRRI4kepQsx0fNem
 YhkJ8o+dYh0O3hdkSQHU5s/A5NZfFW0AkXlH6fj8rA==
X-Google-Smtp-Source: APXvYqzcBC/L+PvVbST/H1UWPRh2Tzz+gQoNHQlWUEhiGxexKbrh66DxGkOAEBw3s9CfNQZ9Z5LxQRLgW53Fe5dnwKk=
X-Received: by 2002:adf:ec44:: with SMTP id w4mr1343622wrn.251.1569563288334; 
 Thu, 26 Sep 2019 22:48:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190927000915.31781-1-atish.patra@wdc.com>
 <20190927000915.31781-2-atish.patra@wdc.com>
In-Reply-To: <20190927000915.31781-2-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 27 Sep 2019 11:17:56 +0530
Message-ID: <CAAhSdy2o1B+8DtjknNaE=JQty-vfivEhiCHw9jMB9daXTFnKkw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] RISC-V: Mark existing SBI as 0.1 SBI.
To: Atish Patra <atish.patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_224810_109009_7BE98C65 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 5:39 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> As per the new SBI specification, current SBI implementation version
> is defined as 0.1 and will be removed/replaced in future. Each of the
> function call in 0.1 is defined as a separate extension which makes
> easier to replace them one at a time.
>
> Rename existing implementation to reflect that. This patch is just
> a preparatory patch for SBI v0.2 and doesn't introduce any functional
> changes.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/sbi.h | 43 +++++++++++++++++++-----------------
>  1 file changed, 23 insertions(+), 20 deletions(-)
>
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index 21134b3ef404..2147f384fad0 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -8,17 +8,17 @@
>
>  #include <linux/types.h>
>
> -#define SBI_SET_TIMER 0
> -#define SBI_CONSOLE_PUTCHAR 1
> -#define SBI_CONSOLE_GETCHAR 2
> -#define SBI_CLEAR_IPI 3
> -#define SBI_SEND_IPI 4
> -#define SBI_REMOTE_FENCE_I 5
> -#define SBI_REMOTE_SFENCE_VMA 6
> -#define SBI_REMOTE_SFENCE_VMA_ASID 7
> -#define SBI_SHUTDOWN 8
> +#define SBI_EXT_0_1_SET_TIMER 0x0
> +#define SBI_EXT_0_1_CONSOLE_PUTCHAR 0x1
> +#define SBI_EXT_0_1_CONSOLE_GETCHAR 0x2
> +#define SBI_EXT_0_1_CLEAR_IPI 0x3
> +#define SBI_EXT_0_1_SEND_IPI 0x4
> +#define SBI_EXT_0_1_REMOTE_FENCE_I 0x5
> +#define SBI_EXT_0_1_REMOTE_SFENCE_VMA 0x6
> +#define SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID 0x7
> +#define SBI_EXT_0_1_SHUTDOWN 0x8
>
> -#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({             \
> +#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({             \
>         register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);   \
>         register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);   \
>         register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);   \
> @@ -42,48 +42,50 @@
>
>  static inline void sbi_console_putchar(int ch)
>  {
> -       SBI_CALL_1(SBI_CONSOLE_PUTCHAR, ch);
> +       SBI_CALL_1(SBI_EXT_0_1_CONSOLE_PUTCHAR, ch);
>  }
>
>  static inline int sbi_console_getchar(void)
>  {
> -       return SBI_CALL_0(SBI_CONSOLE_GETCHAR);
> +       return SBI_CALL_0(SBI_EXT_0_1_CONSOLE_GETCHAR);
>  }
>
>  static inline void sbi_set_timer(uint64_t stime_value)
>  {
>  #if __riscv_xlen == 32
> -       SBI_CALL_2(SBI_SET_TIMER, stime_value, stime_value >> 32);
> +       SBI_CALL_2(SBI_EXT_0_1_SET_TIMER, stime_value,
> +                         stime_value >> 32);
>  #else
> -       SBI_CALL_1(SBI_SET_TIMER, stime_value);
> +       SBI_CALL_1(SBI_EXT_0_1_SET_TIMER, stime_value);
>  #endif
>  }
>
>  static inline void sbi_shutdown(void)
>  {
> -       SBI_CALL_0(SBI_SHUTDOWN);
> +       SBI_CALL_0(SBI_EXT_0_1_SHUTDOWN);
>  }
>
>  static inline void sbi_clear_ipi(void)
>  {
> -       SBI_CALL_0(SBI_CLEAR_IPI);
> +       SBI_CALL_0(SBI_EXT_0_1_CLEAR_IPI);
>  }
>
>  static inline void sbi_send_ipi(const unsigned long *hart_mask)
>  {
> -       SBI_CALL_1(SBI_SEND_IPI, hart_mask);
> +       SBI_CALL_1(SBI_EXT_0_1_SEND_IPI, hart_mask);
>  }
>
>  static inline void sbi_remote_fence_i(const unsigned long *hart_mask)
>  {
> -       SBI_CALL_1(SBI_REMOTE_FENCE_I, hart_mask);
> +       SBI_CALL_1(SBI_EXT_0_1_REMOTE_FENCE_I, hart_mask);
>  }
>
>  static inline void sbi_remote_sfence_vma(const unsigned long *hart_mask,
>                                          unsigned long start,
>                                          unsigned long size)
>  {
> -       SBI_CALL_3(SBI_REMOTE_SFENCE_VMA, hart_mask, start, size);
> +       SBI_CALL_3(SBI_EXT_0_1_REMOTE_SFENCE_VMA, hart_mask,
> +                         start, size);
>  }
>
>  static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> @@ -91,7 +93,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
>                                               unsigned long size,
>                                               unsigned long asid)
>  {
> -       SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
> +       SBI_CALL_4(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, hart_mask,
> +                         start, size, asid);
>  }
>
>  #endif
> --
> 2.21.0
>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45191193923
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Mar 2020 08:05:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJlAnoiw58fGjW5ZSKtwSmqYhPIqzzq4WS5XfLGHaaQ=; b=qi7d4/ipHECv6f
	fjKNTsJO4qkIt0yGWrEBiS7gdCigvRXEoI1JW50D+RCyHvCVvJhNYSLm8kdqS1PsN2+cqUBoU9BQB
	fnLyqivgCT3VtYZRHRTJIbJGqtGb5s/yC3NgM3Av6cDldmVGl4Vbd7V3i8eHnJbVPYNSrF0SAHyaO
	6L+vlJuU59y151xjEH8xNHf/HxjWkk08RKkJS6w83GzJJJ4jTEAvYJu2hFNBIM5kyNEH9OS+pYMQH
	tTUhTWQafxQ+m8g/dLwhnzjatIRU3sp+HXXhagRnrSKxGXmr5AX2HWNjr0kykwLrsXs3yvB3RgIZ1
	Pf4cFgjemKwE8cJUlxzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHMZx-0007Do-RR; Thu, 26 Mar 2020 07:05:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHMZu-0007DS-9Z
 for linux-riscv@lists.infradead.org; Thu, 26 Mar 2020 07:05:23 +0000
Received: by mail-wr1-x444.google.com with SMTP id h15so6359158wrx.9
 for <linux-riscv@lists.infradead.org>; Thu, 26 Mar 2020 00:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AJlAnoiw58fGjW5ZSKtwSmqYhPIqzzq4WS5XfLGHaaQ=;
 b=taDdNoltvV89M1V4/Ua8Z67ESbkzBrNMkGyBlzEf3XE9f0SsUv7ZblJVoVMhraN7WZ
 8EqlLRxCw6NMCjtt0NlBFloOHOaoodK3MAaGMKsc48l2HCgugPwGZZ6J1egWFFq4wQrk
 elbKhq0S0N0OlJiVQimE9k7XoI/VP/MiRiMsJagw7tlVoq30Y9Qcc8hb1y9LIcWwzUsa
 4mttZS87clBSM7sRITkRHdgEtPC7P7KNAl+d6feYFc2OQzGwmiZ19VcqcaGMeBnOXyBn
 Ag6B+Mn5dIzucrRYyNUgdUKKLBOTuM6ZvhNRlC5PbOBgdkSAl1guP4KkFz9OXOMhWAm+
 mAug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AJlAnoiw58fGjW5ZSKtwSmqYhPIqzzq4WS5XfLGHaaQ=;
 b=S60rXj8NsQtGziJghyB5K+QYnW/k9VzX/ktNYd6+Ej4Y71h6VvZR7tq94gdoZnbZ4R
 0DaWM9OrQ3unlThNODRH8miNyIk59+x6OYghOMfw0KtjjZKcE1j3lCtCruDIDMijRli6
 QVLIhkKLa4YXKIFigaqxy0QMvqq/zLKU5VGGXKzVuAp2KGOq6MumlzBdkiYgPg7HiyxM
 A8AZTNhlju23YFUJedWfI0uqTpnzn6bHsRGvTPTzdBAl9uySwcFNx3mwtAg2qMiaaECK
 HHYyE2vafX1nuyLXIC6+yamWl7nyK5xz5ZeS7Ay1n/0oOEaZmen0s0IyOgRLxgXqXN8R
 bh0g==
X-Gm-Message-State: ANhLgQ0XQjYpEx4G2v775kimRmUgajzgnp8MMevvOPRaP5NptubTlHwo
 8CFapDTEXhu22ahGqsEx3jZAcbLxTnfVWOh/n8mJNg==
X-Google-Smtp-Source: ADFU+vvNUnSHK8fH4kjGh10dV9rtTMZU5X9hIHxfdBcrp1tcqLLnJH5gkaosz3Flj1HyIorU9Bj3JTK5rodtY9QDmZY=
X-Received: by 2002:a5d:4acd:: with SMTP id y13mr7591248wrs.61.1585206320468; 
 Thu, 26 Mar 2020 00:05:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200322110028.18279-1-alex@ghiti.fr>
 <20200322110028.18279-8-alex@ghiti.fr>
In-Reply-To: <20200322110028.18279-8-alex@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 26 Mar 2020 12:35:08 +0530
Message-ID: <CAAhSdy3kV6kVHM-sL2uFBgq85EOiKWRJrfNvd+MPiOjKQJwavQ@mail.gmail.com>
Subject: Re: [RFC PATCH 7/7] riscv: Explicit comment about user virtual
 address space size
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_000522_335689_B4D6CD99 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Mar 22, 2020 at 4:37 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> Define precisely the size of the user accessible virtual space size
> for sv32/39/48 mmu types and explain why the whole virtual address
> space is split into 2 equal chunks between kernel and user space.
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  arch/riscv/include/asm/pgtable.h | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pg=
table.h
> index 06361db3f486..be117a0b4ea1 100644
> --- a/arch/riscv/include/asm/pgtable.h
> +++ b/arch/riscv/include/asm/pgtable.h
> @@ -456,8 +456,15 @@ static inline int ptep_clear_flush_young(struct vm_a=
rea_struct *vma,
>  #define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
>
>  /*
> - * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
> - * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
> + * Task size is:
> + * -     0x9fc00000 (~2.5GB) for RV32.
> + * -   0x4000000000 ( 256GB) for RV64 using SV39 mmu
> + * - 0x800000000000 ( 128TB) for RV64 using SV48 mmu
> + *
> + * Note that PGDIR_SIZE must evenly divide TASK_SIZE since "RISC-V
> + * Instruction Set Manual Volume II: Privileged Architecture" states tha=
t
> + * "load and store effective addresses, which are 64bits, must have bits
> + * 63=E2=80=9348 all equal to bit 47, or else a page-fault exception wil=
l occur."
>   */
>  #ifdef CONFIG_64BIT
>  #define TASK_SIZE (PGDIR_SIZE * PTRS_PER_PGD / 2)
> --
> 2.20.1
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup


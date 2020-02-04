Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E76B1151A05
	for <lists+linux-riscv@lfdr.de>; Tue,  4 Feb 2020 12:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pAaC4qiy0uwILFue5LBXA4mR2vUWUk+8jhaQ+xA0gFI=; b=oqice+T7kmGJND1I9DUKr79TT
	hfsf59pn6rRdaHUWhfIY5QAjXOB0m8rmIRp9GIz+pbq8il51UJE+MMsZjw7vdxjjYd5O+NQNGxY5z
	adPXO2BLO2vH+XozgqORPNltA5akWDfmjAw/6q1VfvO+zir0lfqb8GjBcVkPNOcFkvVjiOPCSwEgI
	I4t4qQIgzS5rEqWjMT2IVdyIhuGIC3WhtxkSNErxa19Xvmdi5eWe2KqLga2w12xnhZSwy7UxMpqpc
	f4Z2AQ4E8BgnFgGh5Vsm+seb2o9linFnO2Gbc8pj7pY5eCHE6wztOGVtQ/jc9S1znPcE/CVuY/1Ik
	s/A7Yb5qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iywZ2-0002cA-BS; Tue, 04 Feb 2020 11:40:20 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iywYn-0001Wx-6q
 for linux-riscv@lists.infradead.org; Tue, 04 Feb 2020 11:40:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id t2so22623227wrr.1
 for <linux-riscv@lists.infradead.org>; Tue, 04 Feb 2020 03:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pAaC4qiy0uwILFue5LBXA4mR2vUWUk+8jhaQ+xA0gFI=;
 b=s2jB4BOEsnxBl7/j3yY4DIzgplI3J2y0zRKxI1J3UKY0aXWqZY8eQzzv7EC6sWHkKR
 eCn3iAOtAn6n5Wfmw4mPMdUJuXfHqUlrSDTuiukGrW8zZrAga94LgXLAkmmmtUBY2ckh
 Meilkq4G7WJAenF2wuJzCE6rn1cokM0/sawdmL2jy1L/0Zc9/UAnDjS3PL4IXvGp6h05
 FDhaw5sAq4NYimwcOPUYN06CR4GGAs4emvmPOHHc7cOj2VX1HmmIk3MJeKV/R4cuWaEL
 XirIRKzsSPllMEMmFMIWu7EsirFL+JXeafn/Z1vJ3SD9gZq8iHYl3GriSQzVKReYW2d2
 XY3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pAaC4qiy0uwILFue5LBXA4mR2vUWUk+8jhaQ+xA0gFI=;
 b=D+DDOLB/8voelOoYWummF/PzghVv3DwZFrUQ2QFbPUa6JzoEheQh7Sn0C5O2yjNwbW
 VahWiJh+LpsMPm9mT3HHtGx1nKxDilEfnYHooqqiL5m9xfCMTQpQRv4knmn1YJk41OD1
 /016irxRnnNHnfTpInWxueS3H8H0BrK2uiM271lNOwDGAFqX5RU4jz0OfR5/Yi+O0fF+
 ZWveheFw6DeupTwQPIPm2lufCm5T2a2kGX/ao+ptj3flvcSa4mWpKBlcHjgtJyT/VW0m
 V8ul5/A0Hv25aT3wU1b9/t/1qTI8U9pmCbUHIjhzx4inBAybfk9xR634VBwOc6T75GkF
 gnzw==
X-Gm-Message-State: APjAAAWfveRL0sRw9QhDoGLK9Ecotn05SayAPMLyW0BYSG8wP78rTb2i
 Q+BaHSgHmTL8BeW+8MPk2HMcmMNY0oT4D1KBGU/FIg==
X-Google-Smtp-Source: APXvYqzAsJyhcyf92fbXPo6nxNWMC1BE6xzRjrYijptqWzfmbbIB0MKY9tojYwNrafcG1t0XKvX6IW2P4tLxlkYBteY=
X-Received: by 2002:a5d:538e:: with SMTP id d14mr22868867wrv.358.1580816403438; 
 Tue, 04 Feb 2020 03:40:03 -0800 (PST)
MIME-Version: 1.0
References: <20200204111947.52013-1-zong.li@sifive.com>
In-Reply-To: <20200204111947.52013-1-zong.li@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 4 Feb 2020 17:09:53 +0530
Message-ID: <CAAhSdy2OAwtHfzQAz62a5ChkPL7WTaaNAYKjfKQGDqo+hUse3A@mail.gmail.com>
Subject: Re: [PATCH] riscv: force hart_lottery to put in .sdata section
To: Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_034005_273181_DB137365 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Feb 4, 2020 at 4:49 PM Zong Li <zong.li@sifive.com> wrote:
>
> In PIC code model, the zero initialized data always be put in .bss
> section, so when building kernel as PIE, the hart_lottery won't present
> in small data section, and it causes more than one harts to get the
> lottery, because the main hart clears the content of .bss section
> immediately after it getting the lottery.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  arch/riscv/kernel/setup.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> index 22b671dbbcf1..45c63dc06360 100644
> --- a/arch/riscv/kernel/setup.c
> +++ b/arch/riscv/kernel/setup.c
> @@ -40,7 +40,7 @@ struct screen_info screen_info = {
>  #endif
>
>  /* The lucky hart to first increment this variable will boot the other cores */
> -atomic_t hart_lottery;
> +atomic_t hart_lottery __section(.sdata);
>  unsigned long boot_cpu_hartid;
>
>  void __init parse_dtb(void)
> --
> 2.25.0
>
>

Looks good to me. Please ensure that it is tested with both
RV32 and RV64.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup


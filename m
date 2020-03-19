Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 570BA18AA6C
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Mar 2020 02:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=15Ag1guabbez6fmeIZ+SLDWHfu2CDemRcsM6ytC1rkg=; b=iMP5Izq2/ddNCM
	TU136A1gwOavMaCuxNO4I5C44c1TgtIGvbE1NWP5ZIFThkjRFM5wdYaiHpr9aD6fkH8u9ZBGiFVKV
	LnWvDpuZg/mJHTZAbuVXxyDoUF8Wz+z8E7ozEIdqLzxRuM31lT47ZdGgj/2+EhGAC/mevLt3mNy0x
	vCEJ8VxaLR/cUQpWMLLnf1A1bRTKGkCTJrFYQxDnzlaYq+qAShu07UUvvp1dFf1Hg9yp7Cb62iRni
	eA2P3cRN+GYYuN1AjMoMojdAnY8ZSORmdNN15jz7mD0KUlf2QKBQEZ9W8j1OsimX1BZVs8GGYDhCi
	0W7Uz4/ZF2tEhuO4iG2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEkFK-0007q2-FP; Thu, 19 Mar 2020 01:45:18 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEkFF-0007o9-6X
 for linux-riscv@lists.infradead.org; Thu, 19 Mar 2020 01:45:14 +0000
Received: by mail-pj1-x1044.google.com with SMTP id dw20so1667151pjb.0
 for <linux-riscv@lists.infradead.org>; Wed, 18 Mar 2020 18:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=15Ag1guabbez6fmeIZ+SLDWHfu2CDemRcsM6ytC1rkg=;
 b=IZAut0DG7zAsxQUQFAa7FaASbpC1hSxvgO2kLrxR65bUGBYZIGDfHZyg6SguRu7+Hc
 +NgxVZLHu+g0eHSWuzXh3uqTLfeeaCh9r0pKEL+lkknRUbX6h4TH+dWqScCEHthul4HL
 4xQTL5qxE5UVCapvn5U+nqKUunQhUC2wJmud9ZkN3k5IH8+gktuUvtKryvkwLBzh1Urn
 jNqq5wEp6JHUzmrDsDIKEXoeOtgFkzDmG+TxBS7OBX539OpI/82U5nh94MQxyIrRw+C8
 6saDRxVPA/QuByx8WGl1tdedfH8v9KeAdKyKZfF7X5VZigWiep0KY2K/d6lAr1qrFtRc
 bY9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=15Ag1guabbez6fmeIZ+SLDWHfu2CDemRcsM6ytC1rkg=;
 b=OFuKaIHUfx6+UeHiZf9+M34IAzNzyEDsdl2Nd8KyHGFh1Vd/yz4yOmDxAI5Ipf+KQ6
 kJQpL7geVplJbaJBZTUpWD4ZtKu+r70E4567pm4FU056IjbZgUtUIw+vaW9q8tP025Ah
 lhAKL6emKkkpRfgocrLGLTa+++9/wucZzrn13/8ySCJekdxwUa8PBObqPyuEokho5bSw
 xHAsk3UPg5thy8j9WyoEwGMycBtV1BzJe/qHsHjHuAJQaor6y1PadH103Tivyz6XlSXZ
 GKc5fQ1dGHIJnlYzCDURNJTLHbv7HGubxnfSPKdsZqa98PR3o1nvLXVD6JbrdsjEVi7f
 ZQxg==
X-Gm-Message-State: ANhLgQ17nG9/a0GlQrXA0Xd2jrbkZdXOVVRnKw4TsRugXYZ4ZLIKeGZ5
 yhxOCiIddxe0bED+Jp/TZNFAHA==
X-Google-Smtp-Source: ADFU+vss47yxMO1HlAXyYytkS9jQAYFIDvxwUZoentpt7OiEJ52BZiAtyH8usHDwp2g9MxV+M1HgAQ==
X-Received: by 2002:a17:902:34f:: with SMTP id 73mr1100441pld.50.1584582312362; 
 Wed, 18 Mar 2020 18:45:12 -0700 (PDT)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id d3sm262618pfq.126.2020.03.18.18.45.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 18:45:11 -0700 (PDT)
Date: Wed, 18 Mar 2020 18:45:11 -0700 (PDT)
X-Google-Original-Date: Wed, 18 Mar 2020 18:45:05 PDT (-0700)
Subject: Re: [PATCH 2/2] riscv: fix the IPI missing issue in nommu mode
In-Reply-To: <20200303093418.9180-2-greentime.hu@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: greentime.hu@sifive.com
Message-ID: <mhng-aaf75a1f-f765-46de-9102-08e455c4688d@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_184513_240602_463C7A1B 
X-CRM114-Status: GOOD (  23.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@vger.kernel.org,
 green.hu@gmail.com, greentime@kernel.org, greentime.hu@sifive.com,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 03 Mar 2020 01:34:18 PST (-0800), greentime.hu@sifive.com wrote:
> This patch fixes the IPI(inner processor interrupt) missing issue. It
> failed because it used hartid_mask to iterate for_each_cpu(), however the
> cpu_mask and hartid_mask may not be always the same. It will never send the
> IPI to hartid 4 because it will be skipped in for_each_cpu loop in my case.
>
> We can reproduce this case in Qemu sifive_u machine by this command.
> qemu-system-riscv64 -nographic -smp 5 -m 1G -M sifive_u -kernel \
> arch/riscv/boot/loader
>
> It will hang in csd_lock_wait(csd) because the csd_unlock(csd) is not
> called. It is not called because hartid 4 doesn't receive the IPI to
> release this lock. The caller hart doesn't send the IPI to hartid 4 is
> because of hartid 4 is skipped in for_each_cpu(). It will be skipped is
> because "(cpu) < nr_cpu_ids" is not true. The hartid is 4 and nr_cpu_ids
> is 4. Therefore it should use cpumask in for_each_cpu() instead of
> hartid_mask.
>
>         /* Send a message to all CPUs in the map */
>         arch_send_call_function_ipi_mask(cfd->cpumask_ipi);
>
>         if (wait) {
>                 for_each_cpu(cpu, cfd->cpumask) {
>                         call_single_data_t *csd;
> 			csd = per_cpu_ptr(cfd->csd, cpu);
>                         csd_lock_wait(csd);
>                 }
>         }
>
>         for ((cpu) = -1;                                \
>                 (cpu) = cpumask_next((cpu), (mask)),    \
>                 (cpu) < nr_cpu_ids;)
>
> It could boot to login console after this patch applied.
>
> Fixes: b2d36b5668f6 ("riscv: provide native clint access for M-mode")
> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> ---
>  arch/riscv/include/asm/clint.h | 8 ++++----
>  arch/riscv/kernel/smp.c        | 2 +-
>  2 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/arch/riscv/include/asm/clint.h b/arch/riscv/include/asm/clint.h
> index 6eaa2eedd694..a279b17a6aad 100644
> --- a/arch/riscv/include/asm/clint.h
> +++ b/arch/riscv/include/asm/clint.h
> @@ -15,12 +15,12 @@ static inline void clint_send_ipi_single(unsigned long hartid)
>  	writel(1, clint_ipi_base + hartid);
>  }
>
> -static inline void clint_send_ipi_mask(const struct cpumask *hartid_mask)
> +static inline void clint_send_ipi_mask(const struct cpumask *mask)
>  {
> -	int hartid;
> +	int cpu;
>
> -	for_each_cpu(hartid, hartid_mask)
> -		clint_send_ipi_single(hartid);
> +	for_each_cpu(cpu, mask)
> +		clint_send_ipi_single(cpuid_to_hartid_map(cpu));
>  }
>
>  static inline void clint_clear_ipi(unsigned long hartid)
> diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
> index eb878abcaaf8..e0a6293093f1 100644
> --- a/arch/riscv/kernel/smp.c
> +++ b/arch/riscv/kernel/smp.c
> @@ -96,7 +96,7 @@ static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
>  	if (IS_ENABLED(CONFIG_RISCV_SBI))
>  		sbi_send_ipi(cpumask_bits(&hartid_mask));
>  	else
> -		clint_send_ipi_mask(&hartid_mask);
> +		clint_send_ipi_mask(mask);
>  }
>
>  static void send_ipi_single(int cpu, enum ipi_message_type op)

Thanks.  We should really stop putting hart IDs in cpumasks, as that's just
nonsense.

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

I'm taking these both onto fixes.


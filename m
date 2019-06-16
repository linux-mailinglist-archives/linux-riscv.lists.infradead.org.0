Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9743547646
	for <lists+linux-riscv@lfdr.de>; Sun, 16 Jun 2019 19:56:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UkAJVKAZWQJM2dHoaMsppRp1pzES6NZdg7fOXB4GpFg=; b=f6XDehGnKnvFR1
	RmrmMvI/BW2Uhgdj15es9XB3wBwJm1JeDkEebFfFh2iakX4/EUlPoNysT62DDygQ7W2GVArGl4Bl2
	kFMfpD86ytR2kXlGC8aTglnNK1I2jR/Mmj9pWlR3xATIb7P63Jz7ChhhPMgB06VOcIV2woJLpMHnw
	OHRVDlN5vEWycYye/cp6+N43qROVkGR47+JafyNuBsyHvXH3mqBsackiZeBjHov4czKhAuexs1LwZ
	Bv7kjWOGxNJfVVdwHurOWcsKNvZaL030EaQg5I2wQI1zIxXZNIA2GDxmslkvur+Jznsq/cN/v7az5
	Fn4FjlPWN76bJW4clFNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcZOA-0003sY-99; Sun, 16 Jun 2019 17:56:23 +0000
Received: from stingray.exigere.com.au ([162.217.113.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcZO3-000277-FI
 for linux-riscv@lists.infradead.org; Sun, 16 Jun 2019 17:56:16 +0000
Received: from hippo.sing.id.au (exi2311632.lnk.telstra.net [144.139.233.124])
 by stingray.exigere.com.au (OpenSMTPD) with ESMTPSA id b42fe4cc
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Mon, 17 Jun 2019 04:17:28 +1000 (AEST)
Received: from localhost (hippo.sing.id.au [local])
 by hippo.sing.id.au (OpenSMTPD) with ESMTPA id 67ebf947;
 Mon, 17 Jun 2019 03:54:06 +1000 (AEST)
Date: Mon, 17 Jun 2019 03:54:06 +1000
From: Joel Sing <joel@sing.id.au>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH v2] RISC-V: Break load reservations during switch_to
Message-ID: <20190616175405.GF61734@hippo.sing.id.au>
References: <20190607222222.15300-1-palmer@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607222222.15300-1-palmer@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_105615_641558_7A261840 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 marco@decred.org, me@carlosedp.com, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 19-06-07 15:22:22, Palmer Dabbelt wrote:
> The comment describes why in detail.  This was found because QEMU never
> gives up load reservations, the issue is unlikely to manifest on real
> hardware.

Makes sense, however it obviously will not help until qemu actually
clears load reservations on SC (or otherwise handles the interleaved
SC case).

See comment inline.

> Thanks to Carlos Eduardo for finding the bug!
> 
> Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
> ---
> Changes since v1 <20190605231735.26581-1-palmer@sifive.com>:
> 
> * REG_SC is now defined as a helper macro, for any code that wants to SC
>   a register-sized value.
> * The explicit #ifdef to check that TASK_THREAD_RA_RA is 0 has been
>   removed.  Instead we rely on the assembler to catch non-zero SC
>   offsets.  I've tested this does actually work.
> 
>  arch/riscv/include/asm/asm.h |  1 +
>  arch/riscv/kernel/entry.S    | 11 +++++++++++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/arch/riscv/include/asm/asm.h b/arch/riscv/include/asm/asm.h
> index 5ad4cb622bed..946b671f996c 100644
> --- a/arch/riscv/include/asm/asm.h
> +++ b/arch/riscv/include/asm/asm.h
> @@ -30,6 +30,7 @@
>  
>  #define REG_L		__REG_SEL(ld, lw)
>  #define REG_S		__REG_SEL(sd, sw)
> +#define REG_SC		__REG_SEL(sc.w, sc.d)

The instructions appear to be inverted here (i.e. "sc.d, sc.w").

>  #define SZREG		__REG_SEL(8, 4)
>  #define LGREG		__REG_SEL(3, 2)
>  
> diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
> index 1c1ecc238cfa..af685782af17 100644
> --- a/arch/riscv/kernel/entry.S
> +++ b/arch/riscv/kernel/entry.S
> @@ -330,6 +330,17 @@ ENTRY(__switch_to)
>  	add   a3, a0, a4
>  	add   a4, a1, a4
>  	REG_S ra,  TASK_THREAD_RA_RA(a3)
> +	/*
> +	 * The Linux ABI allows programs to depend on load reservations being
> +	 * broken on context switches, but the ISA doesn't require that the
> +	 * hardware ever breaks a load reservation.  The only way to break a
> +	 * load reservation is with a store conditional, so we emit one here.
> +	 * Since nothing ever takes a load reservation on TASK_THREAD_RA_RA we
> +	 * know this will always fail, but just to be on the safe side this
> +	 * writes the same value that was unconditionally written by the
> +	 * previous instruction.
> +	 */
> +	REG_SC x0, ra, TASK_THREAD_RA_RA(a3)
>  	REG_S sp,  TASK_THREAD_SP_RA(a3)
>  	REG_S s0,  TASK_THREAD_S0_RA(a3)
>  	REG_S s1,  TASK_THREAD_S1_RA(a3)
> -- 
> 2.21.0
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

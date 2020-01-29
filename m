Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416D014D128
	for <lists+linux-riscv@lfdr.de>; Wed, 29 Jan 2020 20:23:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dpkdxJKo0D3Co0IYX0+FJAqVgwjrCjxGckzFnAFk30=; b=Ir3abCX0D2swXH
	PPNRqamRn62J0Sm9JY/0dl87vvAyrKTW45MErPDmtA6qTE9b5l6uDQBz/BV+Jf5rnAH+zah5iNbLr
	sTQiWAcp0OO5Y/GyRvghwx1F0UBJ+y1yh6htbwC8nB/D/upcXdiAvVs8MPW4UPAzg4j0mX37smQiX
	5eDtJvbRuwmZ+qDxbYkTZ5xAsUgCG1c0cCff+cf6vVOHeZebLVXjgtcgjQU5CYvHEwreOSScJAhGj
	rLVYP/Oag1D6/lRIV08DebqxeQWcY4fc2NSdg3tWMRvJ70x9RoCihDZpxbTxSPwnjaz+xlbVm+oo8
	3D5093te0PSEUXvWigzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwsw4-0000V7-6g; Wed, 29 Jan 2020 19:23:36 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwsw0-0000Gb-3v
 for linux-riscv@lists.infradead.org; Wed, 29 Jan 2020 19:23:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id b6so901503wrq.0
 for <linux-riscv@lists.infradead.org>; Wed, 29 Jan 2020 11:23:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=5dpkdxJKo0D3Co0IYX0+FJAqVgwjrCjxGckzFnAFk30=;
 b=EKGknQz/CJF9qnizztY4apE1qf9rCi/BQDgUenjew4SIgrWKi7BReyO8h+UGAdhrYw
 +Om6yZO4ovjeY9v67bWESViU+IsvZ8HyaEaE8cVc+0BIMVUAo6pRQ55FStSyd/BYDqlU
 bUiC48/ZBmkbs0+KJiByUylNXnmiD6il31j5JkS0xOP0E68ZexmQ1DU1dQ3ge5fmfnTs
 FfqUMgb/Wl2QkE7kw+/tzmAk3en+eyjpfzbkAnhQVStl8SCKgcHwtN41oP/eL63zwKXW
 3IW5aRzfYkSSU5o5k2PlTeY8fsX1S1uYyffVSKAzLcWGB+NEbRmVrKXsd+aG2W0Fd2GN
 ti3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=5dpkdxJKo0D3Co0IYX0+FJAqVgwjrCjxGckzFnAFk30=;
 b=S68zrBrxoXZsiDuQxp7WUlbsNdaMfSBSClBiGZ+a2IEiu/APBgW5epdjKsh9qQH9yf
 NLEwHTpo3WINIYr/JW3Yte3/+kKqB64UZw9dPQNOBoITsfY1FGbGE/88hfLi9pz5vhYi
 Q0k+zhRYC2pe+xdp7GAFRtpfrJ6PSeAfAeek+A5Gj0HE3fECxCHBLaBdYqahM+O5YnWp
 tiHO7znib+3X3wETi99k0ervHGenHKa4aNkeOBMi9bhUwT6rxnqgm7JYOYsYsdFPUhNX
 xTk+kOR0tO0PIOidva+tQuvRiY3yFfqxc7B/wbg/eUblNl9kjnKrJFzXVgMTykujgDvv
 LHtQ==
X-Gm-Message-State: APjAAAW8QVehVgh9xyI7ufvmalfM/tpn67fZEazjbCOTZaqsK7taipax
 qSp03X036daoLcwhKaEzFdWRYg==
X-Google-Smtp-Source: APXvYqyPxZfY79rDY0CdM/7Pe4WDEsuLtRhNBJTLA0YXCmXAaPAu1HUWfiq3TvDqQkUxmZLK6AejwQ==
X-Received: by 2002:adf:e78a:: with SMTP id n10mr400841wrm.62.1580325806962;
 Wed, 29 Jan 2020 11:23:26 -0800 (PST)
Received: from localhost ([2a00:79e0:d:11:1da2:3fd4:a302:4fff])
 by smtp.gmail.com with ESMTPSA id r6sm970807wrp.95.2020.01.29.11.23.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 11:23:26 -0800 (PST)
Date: Wed, 29 Jan 2020 11:23:26 -0800 (PST)
X-Google-Original-Date: Wed, 29 Jan 2020 19:23:14 GMT (+0000)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH] riscv: set pmp configuration if kernel is running in
 M-mode
To: greentime.hu@sifive.com
In-Reply-To: <20200109031740.29717-1-greentime.hu@sifive.com>
References: <20200109031740.29717-1-greentime.hu@sifive.com>
Message-ID: <mhng-f4b42a19-22f3-43f3-9750-58b994e23246@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_112332_186582_FDC2A680 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@vger.kernel.org,
 green.hu@gmail.com, greentime@kernel.org, greentime.hu@sifive.com,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 09 Jan 2020 03:17:40 GMT (+0000), greentime.hu@sifive.com wrote:
> When the kernel is running in S-mode, the expectation is that the
> bootloader or SBI layer will configure the PMP to allow the kernel to
> access physical memory.  But, when the kernel is running in M-mode and is
> started with the ELF "loader", there's probably no bootloader or SBI layer
> involved to configure the PMP.  Thus, we need to configure the PMP
> ourselves to enable the kernel to access all regions.
>
> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> ---
>  arch/riscv/include/asm/csr.h | 12 ++++++++++++
>  arch/riscv/kernel/head.S     |  6 ++++++
>  2 files changed, 18 insertions(+)
>
> diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
> index 0a62d2d68455..0f25e6c4e45c 100644
> --- a/arch/riscv/include/asm/csr.h
> +++ b/arch/riscv/include/asm/csr.h
> @@ -72,6 +72,16 @@
>  #define EXC_LOAD_PAGE_FAULT	13
>  #define EXC_STORE_PAGE_FAULT	15
>
> +/* PMP configuration */
> +#define PMP_R			0x01
> +#define PMP_W			0x02
> +#define PMP_X			0x04
> +#define PMP_A			0x18
> +#define PMP_A_TOR		0x08
> +#define PMP_A_NA4		0x10
> +#define PMP_A_NAPOT		0x18
> +#define PMP_L			0x80
> +
>  /* symbolic CSR names: */
>  #define CSR_CYCLE		0xc00
>  #define CSR_TIME		0xc01
> @@ -100,6 +110,8 @@
>  #define CSR_MCAUSE		0x342
>  #define CSR_MTVAL		0x343
>  #define CSR_MIP			0x344
> +#define CSR_PMPCFG0		0x3a0
> +#define CSR_PMPADDR0		0x3b0
>  #define CSR_MHARTID		0xf14
>
>  #ifdef CONFIG_RISCV_M_MODE
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 5c8b24bf4e4e..f8f996916c5b 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -60,6 +60,12 @@ _start_kernel:
>  	/* Reset all registers except ra, a0, a1 */
>  	call reset_regs
>
> +	/* Setup a PMP to permit access to all of memory. */
> +	li a0, -1
> +	csrw CSR_PMPADDR0, a0
> +	li a0, (PMP_A_NAPOT | PMP_R | PMP_W | PMP_X)
> +	csrw CSR_PMPCFG0, a0

These should be guarded by some sort of #ifdef CONFIG_M_MODE, as they're not
part of S mode.

> +
>  	/*
>  	 * The hartid in a0 is expected later on, and we have no firmware
>  	 * to hand it to us.


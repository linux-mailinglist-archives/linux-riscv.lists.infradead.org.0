Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4B313CE1D
	for <lists+linux-riscv@lfdr.de>; Wed, 15 Jan 2020 21:35:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:From:Subject:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAybeIS2/ajSEOLd+vnWUzlDR+akOGV8mHEBsCROnyU=; b=Jf8Q67vn/EYFEX
	stpv1Ccqe8E1vyuZP1aTGcoJhzJ44N7lIhyZtkEeI9fH4Z+Rutlny80sY/7Q22JIcM1l6BuzQJzr5
	xgVyVT966a7dLlkSqOe3974eoUFLrUpPirQ5vTuGden6IrX/ypGdQu186l4x/BoPKhwFvRSWlgx9n
	tmD5/aFasrMaFLJ1m4Uo8M2QzD91g5LltKeOCyodr1C1KC3qkF1FZIDM2T6i/ZoRIybKqFARzKQ0A
	0RawFIJ+QMGGmux6ontvU1ylM9Xu9voQd7KIBFwFPxppKaur8ViF1lhik+5wnp19ExFCuxqqDBfyF
	emMms7k53sieZN9LmIOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irpNH-0003ai-B0; Wed, 15 Jan 2020 20:34:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irpNE-0003Zw-5I
 for linux-riscv@lists.infradead.org; Wed, 15 Jan 2020 20:34:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id 4so9052013pfz.9
 for <linux-riscv@lists.infradead.org>; Wed, 15 Jan 2020 12:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:subject:cc:from:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=BAybeIS2/ajSEOLd+vnWUzlDR+akOGV8mHEBsCROnyU=;
 b=e2dSAH5fPJyIZw22cC7PLbsbjrsWUxmd71pEWDIqEbRlFb0e7gxVMiUAj1mlmmxsl4
 lLpVRcjiiNzs5/0oXso0mD4JwTDmuavlmq53dlVIvoBIyQVB/pHYH7KxhLR9ZTmfklJA
 yVeyjK6Ute/lTVEIM7KnhIMxpeFeCXhG9QMzntgdkYpDPkniboIT0eVflnNm9blWr3wq
 Bl3NQeuDsqfWCpj+PJxXUyzaqNgYfAzrsvDbP4muyebKDXyeA6Tz6yqFzou4BKRChDZn
 P9m4lZncpvnpQtgDPGpm7zBByspgsDpYTPKnlnDeQXfT2+LdHPpTwo01pALH2ulHJg5L
 1Wtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=BAybeIS2/ajSEOLd+vnWUzlDR+akOGV8mHEBsCROnyU=;
 b=Cr5Yq0eLbYmNcefirxFCv3zjT/mrL766KcN7e4EWEwKsjHKaTaZi6bUffNYHlgTIvn
 lqbC5DEecSwfEJJdEpNDE5IdRX11UDCjXO5VnUXYgAbaH2NZkCrGvSJhvq6bIqysULgS
 i6ww3PT2xzX0xdP8vsIdLTm+8E+YWVugkhJo+dzRLA6OvDuMQqNrMTHcYftkU5DaHX7B
 9vOnRGbjjGweQcMCP5NCMmqQfTp8ah38bwCNdpz+AKp1nsdNtdsRDU4Ak9Iv6X12dan2
 zNN6AkBZh1gYbqnVON8p8DJAFMG4A5atp9PBHg5KnVYpJpk9BVsbmHy3ZoXCpXbzqiJ+
 CG7Q==
X-Gm-Message-State: APjAAAWnVXNHg8HY3GmK1cVrn3Y8f+FvCaFmj6Pl8JcvrotyabLPZJC7
 0TSw7rbJfOf2DZK/7c4llzv2RA==
X-Google-Smtp-Source: APXvYqw4eTMMTqAVYwrglsurdZ+SbpGibUuhOnh/i8gjfgB9VPKxJZ1z6e/lNpw/F7S5iWmOpuH4Gw==
X-Received: by 2002:a63:a019:: with SMTP id r25mr33020793pge.400.1579120480702; 
 Wed, 15 Jan 2020 12:34:40 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id x18sm23212328pfr.26.2020.01.15.12.34.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 12:34:40 -0800 (PST)
Date: Wed, 15 Jan 2020 12:34:40 -0800 (PST)
X-Google-Original-Date: Wed, 15 Jan 2020 12:34:29 PST (-0800)
Subject: Re: [PATCH v6 3/5] RISC-V: Add SBI v0.2 extension definitions
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Atish Patra <Atish.Patra@wdc.com>
In-Reply-To: <20191218213918.16676-4-atish.patra@wdc.com>
References: <20191218213918.16676-4-atish.patra@wdc.com>
 <20191218213918.16676-1-atish.patra@wdc.com>
Message-ID: <mhng-5b413aea-2c8d-4bb9-ba38-ac523278c4f4@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_123444_233444_7E3A86E8 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aou@eecs.berkeley.edu, anup@brainfault.org, atishp@atishpatra.org,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, tglx@linutronix.de
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019 13:39:16 PST (-0800), Atish Patra wrote:
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
>  	SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID = 0x7,
>  	SBI_EXT_0_1_SHUTDOWN = 0x8,
>  	SBI_EXT_BASE = 0x10,
> +	SBI_EXT_TIME = 0x54494D45,
> +	SBI_EXT_IPI = 0x735049,
> +	SBI_EXT_RFENCE = 0x52464E43,
>  };
>
>  enum sbi_ext_base_fid {
> @@ -33,6 +36,24 @@ enum sbi_ext_base_fid {
>  	SBI_EXT_BASE_GET_MIMPID,
>  };
>
> +enum sbi_ext_time_fid {
> +	SBI_EXT_TIME_SET_TIMER = 0,
> +};
> +
> +enum sbi_ext_ipi_fid {
> +	SBI_EXT_IPI_SEND_IPI = 0,
> +};
> +
> +enum sbi_ext_rfence_fid {
> +	SBI_EXT_RFENCE_REMOTE_FENCE_I = 0,
> +	SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
> +	SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
> +	SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
> +	SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
> +	SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
> +	SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
> +};
> +
>  #define SBI_SPEC_VERSION_DEFAULT	0x1
>  #define SBI_SPEC_VERSION_MAJOR_SHIFT	24
>  #define SBI_SPEC_VERSION_MAJOR_MASK	0x7f

With or without SBI_EXT_RFENCE_*, depending on what we do with the spec:

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>


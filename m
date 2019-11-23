Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EB4107CC8
	for <lists+linux-riscv@lfdr.de>; Sat, 23 Nov 2019 05:17:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0Z+LocwWlEGzaLjs6ErMixwLgFvr2t+VbFktInH57Q=; b=chU13EzsCFSRm2
	J05gggboG9BR1K9APoqmdRZSums2hZK9WpSDpu/Eb/rwjqZ8h8DwXcAUrpfHSd3VuciZflDHgsHzW
	AI9uPaCaJCR7ithmrsJhpxSH5X8gRej9W3UnJyN1VtjrREbsBb5U/zvCidcZSxs1qj2T1F+hJ2Ov0
	qPCJoy5TZj2veTbi0KJXD3bcfUooaMpOoFHafD4YqfOc/+div9l0g5OF1raRRIJmP4LJWifPFumff
	nF/Uv1bET5b/a2ygaqnglqyAIubiIe6xsHT1/DrQ3XciwXfKORfa+92yrygWd4Q66UuQofAvUSkIQ
	aF09GzRBo+KtYZgKckvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYMre-0000UT-4z; Sat, 23 Nov 2019 04:17:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYMra-0000U7-Rm
 for linux-riscv@lists.infradead.org; Sat, 23 Nov 2019 04:17:40 +0000
Received: by mail-wr1-x443.google.com with SMTP id z10so10985862wrs.12
 for <linux-riscv@lists.infradead.org>; Fri, 22 Nov 2019 20:17:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gDRBUuKpP+wNpMW5KqaT4gpqA2dKp4hcDwnNDbud2dM=;
 b=j36DMn6kPFHZgWoHUJ2Rtfbs80kPgyE4ukl7Z/tbaY0QZ9OtKNFycqz0fMZu55AkcF
 /D39gAcldhgjmxqVTgHqlSCNKR/xNQVlXcllgqGCLopuykgzrP5j6Dzhszz3WB6nQV5q
 cPMJG4T/ogSHoFj/Ug5dN3sFRqVQ90+niNkW5ewg9du9jKqHJ+tfodeylsuVeOPmtlrf
 8c6JqBSLh+wkywN6TxmX2L3KeapdAALQyrMkHXFQEE4EfcPGlgZN8DMFH3UT+ezdgywN
 Vr7rx8bMYQm9VEnFP22kc2BPOMA3bdcs9EclDuZ2UI9UW2hfuNrtlmWYeAVk5ATiA0aU
 xC7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gDRBUuKpP+wNpMW5KqaT4gpqA2dKp4hcDwnNDbud2dM=;
 b=Mw0oe8m41IHQGAKYi6BSYzc4Y7G9gVl+MIB0JDU8KnWRAaw2TsAsN3pIubNkvGuoN4
 ylK507xv9RLQCL/kzo0gwwaUK6YC3WG4wvRFlojXzzAgdegr8m6XLE4AfbER8GU6sXWJ
 Vok9r3uopkeidisayLZMXkzWrJcTH0Vt9pI8zliQNZzRN23WIGY6oh+/NaxCDT+eHPF2
 fJYpiFcO+GN9gZZVxoBCPFNZT8ZWnL8eQuaryXLpWRaTj4kiWRvwwajfCCE/Anl5TF4F
 BzZk8MF3zH6qeHXD4q0IZ/hWCpHn4iy7W8b4rk7NbtgQ0+kkwAJJztSYO7LPzgJjsodc
 DZsg==
X-Gm-Message-State: APjAAAWpuSS+MgT27MNlm2+II11fmRrxgv4eEdVGTgUYG7STFyGuJo5E
 Gvqhxql96aHNLI0S+26rPoA22qHunK0giuqvPcNUQQ==
X-Google-Smtp-Source: APXvYqyn42ZgGo1p04GcxW1ERelAYu47RWFLPCm36JIsphxBjAF4K6sOatZ6aHZVBoF74GoN9tXlaCnqSBdzZ1hZZwQ=
X-Received: by 2002:a5d:6181:: with SMTP id j1mr20153851wru.251.1574482656172; 
 Fri, 22 Nov 2019 20:17:36 -0800 (PST)
MIME-Version: 1.0
References: <20191122225659.21876-1-paul.walmsley@sifive.com>
 <20191122225659.21876-2-paul.walmsley@sifive.com>
In-Reply-To: <20191122225659.21876-2-paul.walmsley@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Sat, 23 Nov 2019 09:47:26 +0530
Message-ID: <CAAhSdy3voiLFRVmn-=h9Ltn7=10_FJUGxub063oMuS4znuK+3Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] riscv: defconfigs: enable debugfs
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_201738_976206_7F8C62B6 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Nov 23, 2019 at 4:27 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> debugfs is broadly useful, so enable it in the RISC-V defconfigs.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> ---
>  arch/riscv/configs/defconfig      | 1 +
>  arch/riscv/configs/rv32_defconfig | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 420a0dbef386..f0710d8f50cc 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -100,4 +100,5 @@ CONFIG_9P_FS=y
>  CONFIG_CRYPTO_USER_API_HASH=y
>  CONFIG_CRYPTO_DEV_VIRTIO=y
>  CONFIG_PRINTK_TIME=y
> +CONFIG_DEBUG_FS=y
>  # CONFIG_RCU_TRACE is not set
> diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
> index 87ee6e62b64b..bdec58e6c5f7 100644
> --- a/arch/riscv/configs/rv32_defconfig
> +++ b/arch/riscv/configs/rv32_defconfig
> @@ -97,4 +97,5 @@ CONFIG_9P_FS=y
>  CONFIG_CRYPTO_USER_API_HASH=y
>  CONFIG_CRYPTO_DEV_VIRTIO=y
>  CONFIG_PRINTK_TIME=y
> +CONFIG_DEBUG_FS=y
>  # CONFIG_RCU_TRACE is not set
> --
> 2.24.0.rc0
>

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

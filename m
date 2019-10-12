Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB8DD5169
	for <lists+linux-riscv@lfdr.de>; Sat, 12 Oct 2019 19:39:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=ac8WaqTTnK2xxynr/XxDaSi7+1+2q74j6uoth5AvgGs=; b=rQv022X6FF/JtTgebVaUyX5Az
	gtHTDCjNK6xob16ZDR6RQqUVwU7zLKaoPIuHtqcz1qX4aWMdrLWZ8d1a2aRCvVgAtGQk7spDEojkT
	LhGTFxcazXoCQxVTx0Q79pQ1RMK61dZDY5/BjxsjVR3yKO0efAJCRpZ8LmSC/Lw1aBuZwyUxCwNY2
	i4ARRRPCbot2zByTVgyfXS3f0MKrKkDarUPq7VF1GxWIVa9aLYF7bMo/CQQnYYZ0lydzcurxsX7oY
	F2WPuGcLRHAMmqDcfkU3fbp8nTJ5tBCV9ZjB86oEGNikCW9tSBCsFk+7gAA1njO1CN3DtWAgAEyxM
	p7BX95eRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJLLs-00073R-Ka; Sat, 12 Oct 2019 17:38:48 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJLLp-00072i-Gw
 for linux-riscv@lists.infradead.org; Sat, 12 Oct 2019 17:38:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id q21so7936703pfn.11
 for <linux-riscv@lists.infradead.org>; Sat, 12 Oct 2019 10:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=QGULoH50CkpFs9ZPMN0T6KllCcRA7SCxuzqckP0gnTU=;
 b=V+O9w7oCvmWLh3i5Tt0HokYwr5aCEtbOMnxkQh93haiqG5tRmpJfBrSzTUhVOxw/qy
 MflYyC4yaUd0QkBmtIwVAbVdHDMAh9G34f78PCPTVqZ3LTnl+A3Ck152ZhHolai0umvH
 x+eRt/AO8CJaK5Uy4i5F/INQbp4XOqa3GnZ3QPaZL/70qM0JDady/u6cd+19cWwFjyNi
 hdOO4BtOo0e2T2XegKd+48X4G3l8hYqAG58/idv+ZLFVj4jGsBewv8PDocnXa+NoFxs/
 0zxEvBunmH7620m0WrKWFi2l8gPMC4sVs3MtCPF1lZTd7xcwvALMruFnhPQ8sHQ/DTSk
 bQ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=QGULoH50CkpFs9ZPMN0T6KllCcRA7SCxuzqckP0gnTU=;
 b=tkDf/jaRasIb/jMLO+LfHocghKnzg5v7K1jmVkuCW7Zq4KSCWNxI6ZTLFdKyvd0TuZ
 NmUGPaXZ7iGnZ3DOIj3FPi3PerbCnoEiKoSlrB7FW99xz3z3vtPGthpYCeV8xDtP4hJn
 sTdaTXGXJDlp8JNPPJapLIyUfPguggRYZWKxqWdQtRKpe7fDOJRuFBCCkgOFoSu81+rd
 7KinJBvM6xrplPn+U6JhJ/osq7KUNFSPjYs5hkRKRAN7UjVZFluuFLFG0UKMIIj3n+ye
 1PNJzar8PWKvsSrX8VOgLgD5e7VvZwXKm7EJxR6L8k11WaXEf2WpnSIm/oIUYo/frGsV
 ho6Q==
X-Gm-Message-State: APjAAAUDmDL4X8SCHGx8w5V+tbeAmg6Krp//QVH4qSSRmTZy1RrkGGO8
 Z19JkuEt/Dwjdaf1f2Zt86cbQA==
X-Google-Smtp-Source: APXvYqzW1OO3P+m0WSPdYkvU5HibLfM3ibywisk4ThgutqOLNgBG8iO4E+dx0Lx0Ub7yrHG07c1Xnw==
X-Received: by 2002:a17:90a:338c:: with SMTP id
 n12mr24412467pjb.24.1570901922575; 
 Sat, 12 Oct 2019 10:38:42 -0700 (PDT)
Received: from localhost ([192.55.54.60])
 by smtp.gmail.com with ESMTPSA id m12sm16808019pff.66.2019.10.12.10.38.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 10:38:41 -0700 (PDT)
Date: Sat, 12 Oct 2019 10:38:41 -0700 (PDT)
X-Google-Original-Date: Sat, 12 Oct 2019 10:38:01 PDT (-0700)
Subject: Re: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
In-Reply-To: <20190925063706.56175-3-anup.patel@wdc.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-edb410db-fdd1-46f6-84c3-ae3b843f7e3a@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_103845_562227_BCDFB9EA 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aou@eecs.berkeley.edu, Greg KH <gregkh@linuxfoundation.org>,
 anup@brainfault.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, rkir@google.com,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 24 Sep 2019 23:38:08 PDT (-0700), Anup Patel wrote:
> We have Goldfish RTC device available on QEMU RISC-V virt machine
> hence enable required driver in RV32 and RV64 defconfigs.
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/configs/defconfig      | 3 +++
>  arch/riscv/configs/rv32_defconfig | 3 +++
>  2 files changed, 6 insertions(+)
>
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 3efff552a261..57b4f67b0c0b 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -73,7 +73,10 @@ CONFIG_USB_STORAGE=y
>  CONFIG_USB_UAS=y
>  CONFIG_MMC=y
>  CONFIG_MMC_SPI=y
> +CONFIG_RTC_CLASS=y
> +CONFIG_RTC_DRV_GOLDFISH=y
>  CONFIG_VIRTIO_MMIO=y
> +CONFIG_GOLDFISH=y
>  CONFIG_EXT4_FS=y
>  CONFIG_EXT4_FS_POSIX_ACL=y
>  CONFIG_AUTOFS4_FS=y
> diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
> index 7da93e494445..50716c1395aa 100644
> --- a/arch/riscv/configs/rv32_defconfig
> +++ b/arch/riscv/configs/rv32_defconfig
> @@ -69,7 +69,10 @@ CONFIG_USB_OHCI_HCD=y
>  CONFIG_USB_OHCI_HCD_PLATFORM=y
>  CONFIG_USB_STORAGE=y
>  CONFIG_USB_UAS=y
> +CONFIG_RTC_CLASS=y
> +CONFIG_RTC_DRV_GOLDFISH=y
>  CONFIG_VIRTIO_MMIO=y
> +CONFIG_GOLDFISH=y
>  CONFIG_SIFIVE_PLIC=y
>  CONFIG_EXT4_FS=y
>  CONFIG_EXT4_FS_POSIX_ACL=y
> -- 
> 2.17.1

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

IIRC there was supposed to be a follow-up to your QEMU patch set to rebase it 
on top of a refactoring of their RTC code, but I don't see it in my inbox.  LMK 
if I missed it, as QEMU's soft freeze is in a few weeks and I'd like to make 
sure I get everything in.

Additionally: we should refactor our Kconfig to have some sort of 
CONFIG_SOC_VIRT that selects this stuff, like we have the CONFIG_SOC_SIFIVE.  
This will explicitly document why devices are in the defconfig, avoid 
duplicating a bunch of stuff between defconfigs, and provide an example of how 
we support multiple SOCs in a single image.

I don't see why either of these should block merging the patch, though.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

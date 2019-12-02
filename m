Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD57810F379
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 00:33:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:In-Reply-To:Subject:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=cidzjz03IPk+phJc2Cl7f1fHkSNoc4brtOQzQdmP4X4=; b=YmPje6UCaz67SlEiv4fsqk5ct
	Ut0y4bP+Ipb6dUXDf17R4bn88VEByYkgML05JrH9WLzkp5tZlJzjekrA4DS9DjIleZa6PfmzV5E5J
	9B+3f7G1Cj7pX6L7/oSZcxlgPrPQdjxGjVw9DEygNaGVgCPueE9QV7sDhUqs1yQP5a4pCE6HHxj4Z
	+2C2cVhqd8eRBNMiR7pnFtsZ00AHUvxVRsPwHiFc9bX74iW6xwm4bjcHV9wJWjOJoZJKLsAxNCnLP
	NPJkRRucSwG8TvwKZahyEWQTfryB+sqOTJepSBsb4d6wJJZeZONrxh4v6QWo8wUaEv4wnpvKeD2yt
	itJMvz0nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvBZ-0003qi-7P; Mon, 02 Dec 2019 23:32:57 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvBV-0003pF-EY
 for linux-riscv@lists.infradead.org; Mon, 02 Dec 2019 23:32:54 +0000
Received: by mail-pf1-x442.google.com with SMTP id y14so188200pfm.13
 for <linux-riscv@lists.infradead.org>; Mon, 02 Dec 2019 15:32:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:in-reply-to:cc:to:message-id:mime-version
 :content-transfer-encoding;
 bh=o06lgG0tbiBem1KuBqWESWrb7RuUV1hyoJ5l340yHf0=;
 b=UfZaszdFLAzU9lqis/04uLaNQOGalGN0XtylJjNzuMlZ+Vuz1H9ct5/5IDGAKMPmmZ
 jyd9L+7uJe8rFXXJpPwRGH/JMvDMGNJ+0nTOoCi2oMIim1QCG0c138ACgXeJpSkgWENV
 l9at+Fjq2FnanNBfIsbU+4AiW/D0dGsN5JJ1q+GKDhgmUnDlptalCLJ1L/vSiUo13FnT
 mfj63HJIO+zOXYiVmbg9ibQLm/Sf3TRTO69ZQeylE1JtjJ1FBjt4hK1+Jb38seILPOTv
 cfClYcb+GWBFD1kHuZ6wLXSIO2npwwsb13IG/t9Gq1MdsFb5A6740x1+h7CY1Aga14R1
 zqnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:in-reply-to:cc:to:message-id
 :mime-version:content-transfer-encoding;
 bh=o06lgG0tbiBem1KuBqWESWrb7RuUV1hyoJ5l340yHf0=;
 b=XIknlpRbbYHL9dq3muxY/GLm4kQThOxzEES8zjCaKKooxDF4n9+dctDWwt7it9DVgj
 CGG0f10Oi4aVyxb8dA4YCqxQ3IIIBgY1fbwCVc14tz+5EtiVgmrf0m9d6YI3qXkni7ym
 LE7jsObLgutSEn7ns7bE/49yicMHqq4ASp5Z1278OyAeuTeHQyp8++27BGeb11W84ypt
 hegQmAyD13e2JRpVmjg0FKJ4YRJfox4W2tKk5cfWiXWEN6ROP6dgFk56Pisy0y2SbGJ5
 G5Y7x4MTpJBJ4DNqvOCtCSWAKb1eq35FrMMf79Rdq+A5npFop2sRHslpd/3wvq8Q0Hof
 hdfg==
X-Gm-Message-State: APjAAAUC4WOxYPW/htxyHjK+hKP/nW9VY4sUYIPjS0tLlMMKi0M4CBwe
 YLXeP3hcgX9ES5it3cVeVpBC2w==
X-Google-Smtp-Source: APXvYqy7d5bllSF6TvcxZGbVMZeENZSrHPudZDq5WuZx0m0RcmGMhys+fX1CkKjw809tCk4M7XML+Q==
X-Received: by 2002:a63:9d8f:: with SMTP id i137mr1845412pgd.33.1575329570047; 
 Mon, 02 Dec 2019 15:32:50 -0800 (PST)
Received: from localhost ([2620:15c:211:200:12cb:e51e:cbf0:6e3f])
 by smtp.gmail.com with ESMTPSA id u65sm614527pfb.35.2019.12.02.15.32.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 15:32:49 -0800 (PST)
Date: Mon, 02 Dec 2019 15:32:49 -0800 (PST)
X-Google-Original-Date: Mon, 02 Dec 2019 15:24:10 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 1/4] RISC-V: Add kconfig option for QEMU virt machine
In-Reply-To: <20191125132147.97111-2-anup.patel@wdc.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-db354582-74fd-45db-974e-3cece2ad6ab2@palmerdabbelt.mtv.corp.google.com>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_153253_483026_6DCEE7C9 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: palmer@sifive.com, anup@brainfault.org, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 aou@eecs.berkeley.edu, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 25 Nov 2019 05:22:23 PST (-0800), Anup Patel wrote:
> We add kconfig option for QEMU virt machine and select all
> required VIRTIO drivers using this kconfig option.
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/Kconfig.socs | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index 536c0ef4aee8..62383951bf2e 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -10,4 +10,24 @@ config SOC_SIFIVE
>         help
>           This enables support for SiFive SoC platform hardware.
>
> +config SOC_VIRT
> +       bool "QEMU Virt Machine"
> +       select VIRTIO_PCI
> +       select VIRTIO_BALLOON
> +       select VIRTIO_MMIO
> +       select VIRTIO_CONSOLE
> +       select VIRTIO_NET
> +       select NET_9P_VIRTIO
> +       select VIRTIO_BLK
> +       select SCSI_VIRTIO
> +       select DRM_VIRTIO_GPU
> +       select HW_RANDOM_VIRTIO
> +       select RPMSG_CHAR
> +       select RPMSG_VIRTIO
> +       select CRYPTO_DEV_VIRTIO
> +       select VIRTIO_INPUT
> +       select SIFIVE_PLIC
> +       help
> +         This enables support for QEMU Virt Machine.
> +
>  endmenu

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

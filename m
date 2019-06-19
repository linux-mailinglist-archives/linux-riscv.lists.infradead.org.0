Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D174B28B
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Jun 2019 09:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=AXxiZvMKXhxJlVjnQtL4pfeVPAwCysexOdwyBu5NlXI=; b=hTkCw6Eg1bXrVqZrAEIynYY0J
	jhwZf41aicEP6MKPRdJ5rK4prAlyeZfoD8Gxj0O9OJ7uflnBgjDJOyTe4DL+G1yBY15eetGMN3lvk
	+QpCCWJ+D3ec66WzMAYdCkk8mmxf3hTF6ozfwZRKII4AP1HB/+UJPSuHT9tTa3JXArq/ZTU56yk3t
	L06eLYxTpVyID4qfSssQbSoPMrpgvQofAiprTwe8pp2V1PlcE7FBN4Z4XZuFrAsvcWuX5U6Il+vfc
	4WzRYN+plandQH7pIopYS8yLgh1h4grsDsZH+8puLhz0lZQho2mMfZ/KdKkPVNRJxmhrc549ltOq2
	MzYoQlKow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdUdr-00037U-2i; Wed, 19 Jun 2019 07:04:23 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdUdl-00035Z-Pq
 for linux-riscv@lists.infradead.org; Wed, 19 Jun 2019 07:04:19 +0000
Received: by mail-pg1-f195.google.com with SMTP id f21so9124392pgi.3
 for <linux-riscv@lists.infradead.org>; Wed, 19 Jun 2019 00:04:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=7/8RVwwpSyiRMCTGZS64tnDjssYAeJ0LgQZ9r//r+qE=;
 b=h9U6Tp1X9HU8Wxeb2ovhLXOO3qVQ8E5WOjl6KBe0BBujTIVFeN2vpGI+3sE8oSWjsX
 QfBVY11WU3nEUqPjpZtNEXAV6V9ahZgFXLkJxwhMJS2PGX+p67kNICg96fv6sFgW5xfj
 KIjou4oaObVFJLnLjkBB2t7+7AAclLzYVuB6kkA51iUtRjzeCsWbGrlpLtHd/+Bq53xt
 5qL3mB5hDC37BwEB996Qqwnebj4a1S3G/5s7NCuMsvGZuvI5mnDzZtcow9AS/HgNGenA
 KrRwGop6mE1igls2q4GzsKdDcbkDPlGiZNj0vD5FwNm0ZfpjfdZgXjpC6ucSuEd3i7at
 u7bA==
X-Gm-Message-State: APjAAAXCPHBK6XcsFywZG0MW/fmwF12MAMw/e7ZSTgYldc3J2jIXb0z+
 THpfqhAiJYAIaLoOq/yTJ6ge0A==
X-Google-Smtp-Source: APXvYqyU93GnXfOMPxiWzkmGi33H3j+hQkODkg0SsE+Md9DOd3Z+gKFS7f34Ev/hIAuIXkD2oWnH+Q==
X-Received: by 2002:a17:90a:3590:: with SMTP id
 r16mr9702251pjb.44.1560927856852; 
 Wed, 19 Jun 2019 00:04:16 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
 by smtp.gmail.com with ESMTPSA id l7sm20331564pfl.9.2019.06.19.00.04.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 00:04:16 -0700 (PDT)
Date: Wed, 19 Jun 2019 00:04:16 -0700 (PDT)
X-Google-Original-Date: Wed, 19 Jun 2019 00:03:19 PDT (-0700)
Subject: Re: [PATCH 3/3] riscv: defconfig: enable SOC_SIFIVE
In-Reply-To: <1560799790-20287-4-git-send-email-lollivier@baylibre.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: lollivier@baylibre.com
Message-ID: <mhng-81fd3887-519a-4a3b-8486-22d4d5441c9b@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_000417_926246_8AA0DEEB 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [203.116.164.13 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, khilman@baylibre.com, lollivier@baylibre.com,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019 12:29:50 PDT (-0700), lollivier@baylibre.com wrote:
> Enable SOC_SIFIVE so the default upstream config is bootable on the SiFive
> Unleashed Board.
> And have basic support for future boards based on the same SoC.
>
> Signed-off-by: Loys Ollivier <lollivier@baylibre.com>
> ---
>  arch/riscv/configs/defconfig | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 4f02967e55de..6e3e37aa8fd1 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -12,6 +12,7 @@ CONFIG_CHECKPOINT_RESTORE=y
>  CONFIG_BLK_DEV_INITRD=y
>  CONFIG_EXPERT=y
>  CONFIG_BPF_SYSCALL=y
> +CONFIG_SOC_SIFIVE=y
>  CONFIG_SMP=y
>  CONFIG_MODULES=y
>  CONFIG_MODULE_UNLOAD=y
> @@ -49,8 +50,6 @@ CONFIG_SERIAL_8250=y
>  CONFIG_SERIAL_8250_CONSOLE=y
>  CONFIG_SERIAL_OF_PLATFORM=y
>  CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
> -CONFIG_SERIAL_SIFIVE=y
> -CONFIG_SERIAL_SIFIVE_CONSOLE=y
>  CONFIG_HVC_RISCV_SBI=y
>  # CONFIG_PTP_1588_CLOCK is not set
>  CONFIG_DRM=y
> @@ -66,9 +65,6 @@ CONFIG_USB_OHCI_HCD_PLATFORM=y
>  CONFIG_USB_STORAGE=y
>  CONFIG_USB_UAS=y
>  CONFIG_VIRTIO_MMIO=y
> -CONFIG_CLK_SIFIVE=y
> -CONFIG_CLK_SIFIVE_FU540_PRCI=y
> -CONFIG_SIFIVE_PLIC=y
>  CONFIG_EXT4_FS=y
>  CONFIG_EXT4_FS_POSIX_ACL=y
>  CONFIG_AUTOFS4_FS=y

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

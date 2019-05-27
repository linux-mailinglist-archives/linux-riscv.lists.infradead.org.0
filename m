Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E182B49E
	for <lists+linux-riscv@lfdr.de>; Mon, 27 May 2019 14:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6d0KLbRSA4ie4ybmeqrqvMiklwZiFf6jAa42kU++aaY=; b=VCh9+2Wx660jdX
	Pis7HPhzX7XtTpY1vjbdCl2c/xPw6HKxUlgHysgpnGTRNMLxi/LPN3Qqr/r1kLSiYnUupxnC3NHd7
	YJzmVEP/7t8Nd0dy+12ELH1C9RJXyaJSdhH2XAsjE3oY47h2cYhxTWorI1AA2WNMIhwnwQQHoDj/C
	n77zm2GbB7/w1ilwZkAVrvUGj1ocDJIUaobo9jnKxF8vtF4QUqzWHO4u18EXR9sFhjBThRG5VTN4E
	TAD/zHkOiPa/H8o8TA+nRk9UIlvBgSRN0HfJMFIYlvQLt7RjXsc/xvLH2Ba9BvKmWR3bigp3DVX/Z
	pSiIn3DFVX+7uDqigbeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEWc-0002hv-4J; Mon, 27 May 2019 12:14:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEW3-0001s6-9Q
 for linux-riscv@lists.infradead.org; Mon, 27 May 2019 12:14:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id s17so16740435wru.3
 for <linux-riscv@lists.infradead.org>; Mon, 27 May 2019 05:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=PE2qyWliumUSN347T63t3e5/xkurT9iBkthy1WXizA0=;
 b=dhTS4Lyo6SbCjSE0fCEMltNu8hrg3FYreV6ihgKD/j5WlQmZ59l/hIEGDAS2WqhZmZ
 MD+K9RIb5EUi9NdZnsBB3RTdFvv4BgR1o/M2VaiYcGnxPZEcgJcTCF9IUrDkLGxtLojN
 uiryJJNMocYQifyuTO8UEQZjULzzqORfdm8GxBBLX7uhR4stQ1mR+LqM8oiICIgkfz5s
 cHXU/cRd1XfmnM3TKS1ytiOTb3u+HjbphRNTHLKIwz0oiJAdPz9ZIz0+D+G22dSc/JaX
 ZNcY9gexJzXKUMB5eD81sX/W4TlJUe0+ePBN5RUe05uuQ6F7tQd7qvgiphGssOwjBpjg
 oN0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=PE2qyWliumUSN347T63t3e5/xkurT9iBkthy1WXizA0=;
 b=d/AUvz4h6kjAACvQHvIEgw0KfoQsh2ghwN5jKvpoqu1BTw6Y8mWP6AXkj/cMd1iSyI
 q40ooaVZXTyS+pH1++VnWd0K1cVGB7zIFb7MBm02xau1dODo7UpTnHs6etuR+838tCWM
 7+WeE5G4ytu4g+5zRNWtRLu5qeskcH/mzUFoMtEo6cqpon6E9uOD8UWB1Zg/ju3RNyxu
 QpG1FKHaInf261kLyTGEl+AhMgE+yJo1rfMo4bkpajkJQeK4q2YxOibo8hghBrrhfWER
 f7iKzchwxFfxo4dgFVU3UHB/Ce+tSLBMgZrdTcCQsCB2uM5XA5aJOWhWalAUDU1rNKs2
 ldRg==
X-Gm-Message-State: APjAAAXmX0d+/NHHYTRtMgSe0mYKdzIVjn034sn0zN3YcmE85ZrvpkXD
 6l3E/02LZT4NMc04X+pU55h96g==
X-Google-Smtp-Source: APXvYqxFIeIFAETZTduZaUtWDN1ZmmLNb6kXNXnGerFOHnX/KETZawLZ46jctX7F/liDIJ5DEWDDew==
X-Received: by 2002:adf:ee0c:: with SMTP id y12mr50236022wrn.34.1558959249250; 
 Mon, 27 May 2019 05:14:09 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t7sm10699918wrq.76.2019.05.27.05.14.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 05:14:08 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Atish Patra <atish.patra@wdc.com>, linux-kernel@vger.kernel.org
Subject: Re: [v4 PATCH] RISC-V: Add an Image header that boot loader can parse.
In-Reply-To: <20190524041814.7497-1-atish.patra@wdc.com>
References: <20190524041814.7497-1-atish.patra@wdc.com>
Date: Mon, 27 May 2019 14:14:03 +0200
Message-ID: <86zhn8p01g.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_051411_337028_A75BDA95 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, Jonathan Corbet <corbet@lwn.net>,
 Albert Ou <aou@eecs.berkeley.edu>, linux-doc@vger.kernel.org,
 catalin.marinas@arm.com, ard.biesheuvel@linaro.org,
 Zong Li <zong@andestech.com>, Atish Patra <atish.patra@wdc.com>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 Nick Kossifidis <mick@ics.forth.gr>, linux-riscv@lists.infradead.org,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Karsten Merker <merker@debian.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu 23 May 2019 at 21:18, Atish Patra <atish.patra@wdc.com> wrote:

> Currently, the last stage boot loaders such as U-Boot can accept only
> uImage which is an unnecessary additional step in automating boot
> process.
>
> Add an image header that boot loader understands and boot Linux from
> flat Image directly.
>
> This header is based on ARM64 boot image header and provides an
> opportunity to combine both ARM64 & RISC-V image headers in future.
>
> Also make sure that PE/COFF header can co-exist in the same image so
> that EFI stub can be supported for RISC-V in future. EFI specification
> needs PE/COFF image header in the beginning of the kernel image in order
> to load it as an EFI application. In order to support EFI stub, code0
> should be replaced with "MZ" magic string and res4(at offset 0x3c)
> should point to the rest of the PE/COFF header (which will be added
> during EFI support).
>
> Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.

Thanks Atish, happy to have this support that makes the boot process
more straightforward.
Tested on HiFive Unleashed using OpenSBI + U-Boot v2019.07-rc2 + Linux.

>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Karsten Merker <merker@debian.org>
> Tested-by: Karsten Merker <merker@debian.org> (QEMU+OpenSBI+U-Boot)
Tested-by: Loys Ollivier <lollivier@baylibre.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

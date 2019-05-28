Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A60B42C9BB
	for <lists+linux-riscv@lfdr.de>; Tue, 28 May 2019 17:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOQcAlHIrppwbxva1NTrTAH/JL1LP6QgfM1ioGifBMw=; b=jrjPfgzy1vOyiN
	1ncpTLYFwSdCWLVIp+CWD7Ucq430S3CshjrHXOTyrHLPqU6yn12FCKS9Ag1ToVkFcfJv1mt4nRZZ8
	ziFyOMfmqAew5nmbVrNs5IoudwBjImbSFR1hhkjnPhxQ8nAVd50PhhdbzkTO84O8aNZ0wk3L7+vXn
	tgngrQ27zUrECBCFTjn5T73OYGI6HpIIlyAadIv2TGdrvHqn01IZUfySUN0k22WBbiuxsFSRSadA7
	654yxGC+iZlMGN9aZzf0exHkiYUMZm5CiStmMXgMX76tDcX4aKuEhztOCzuoAj83bDm0wyzIXw9wV
	ZJU1SF8kmnAck8VchRMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVdkZ-0001vx-D6; Tue, 28 May 2019 15:10:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVdkU-0001uc-Ur
 for linux-riscv@lists.infradead.org; Tue, 28 May 2019 15:10:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id c2so5455061wrm.8
 for <linux-riscv@lists.infradead.org>; Tue, 28 May 2019 08:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:in-reply-to:references:date:message-id:mime-version;
 bh=IwupYC6xi4DYfXNloebS/EzHvJ+kcOXkGGvamraya8k=;
 b=SWqib+RjvuSA0pkdMulAC7TUcNtEIOmE0PqA/3HgHnbM7FdKYrFVSizn/vxAJlnnbs
 mxsfyhq5ARmCHU/9WtBEow2q9/CHD+2DdrKKFlgXCHysSGrQBvooj8o+RDNJctKPc28K
 GkUdEpBEz4vAgwxe9suCGQPMbpzhKhRcXOIehJF14FOrjJ3MzWEX3A2dYQQoB0HZry8C
 RCyq5xXPiIWBsw8oUkcVbVoOcDx+qaUvEClC718UYPPDYJKBiEFdqZl+xemHqJ8ov71z
 xlczHPRJrFkMs7kz+c8ws0Ci+fQRYc3j53wbDlinNexwjTco+bUuJ/SscsDIk8BhD/zf
 jJfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=IwupYC6xi4DYfXNloebS/EzHvJ+kcOXkGGvamraya8k=;
 b=aCnXvtG9w2FyfxYE1B/bOLzwi68l0BjQ4eBkVbsaGd0Fd5I4KYUXJsL0EnwcPkZE47
 qffgI7+k7xm8D7fHD1tbyzUOa5pIfr18p98dFHA8Za4Ngrcj/fTolgaEml8yCL51wp2Z
 nMHDGvW74Hhw//ynN1d8OAK94v/ydtcltmoHpsnWhFh5Ic74bsYVe359klAPYwbi3PKm
 rvi1D17fFujKcPO0iS62d+KbsJhl3C3e1JZweIqSjCjs3wu7koc9B5kqfU8GtjFVo7g9
 QXE5kcQKVH81XJMe+d+9J9nx0/zoOYoTeRsU6n2nqRZ9Sp7f4lS77MvJFTkBHaPLBZaz
 TW7w==
X-Gm-Message-State: APjAAAUCvramM2D8ronrqTq8xi8n76r16tfYDZMLBg60RY9VkZDGrRbq
 vtFbCxDLiuDWsYMayHDlKClkVw==
X-Google-Smtp-Source: APXvYqx2E1K293if2pQbJSO36uG0+c3aHjQfuHAD2cQORP0LPLtuUKW+4qbGcqc/Xe5f94NhI2Z+CQ==
X-Received: by 2002:adf:eb09:: with SMTP id s9mr20380369wrn.127.1559056244724; 
 Tue, 28 May 2019 08:10:44 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id n4sm17053526wrp.61.2019.05.28.08.10.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 08:10:43 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: Testing the recent RISC-V DT patchsets
In-Reply-To: <alpine.DEB.2.21.9999.1905280105110.20842@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1904221705170.18377@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1905280105110.20842@viisi.sifive.com>
Date: Tue, 28 May 2019 17:10:42 +0200
Message-ID: <86o93mpqbx.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_081047_058040_3762160B 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue 28 May 2019 at 01:32, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> An update for those testing RISC-V patches: here's a new branch of 
> riscv-pk/bbl that doesn't try to read or modify the DT data at all, which 
> should be useful until U-Boot settles down.  This new riscv-pk version 
> should be easier to use than the previous version for those testing 
> upstream-bound kernel DT data on SiFive hardware:
>
>    https://github.com/sifive/riscv-pk/tree/dev/paulw/configurable-machine-data-methods-v1
>
> To build a BBL that doesn't touch the DT data, use the 
> "--with-config-method=hifive_unleashed" switch for the "configure" script.  
> As before, this version of riscv-pk can take a DTB that can be passed 
> along to the kernel.  But this time the path to the DTB can be specified 
> on the "configure" script command line.
>
> Below is an example of how to configure it.  (The directory structure 
> should be familiar to those using the v1_0 tag of freedom-u-sdk, with the 
> kernel source in ./linux, riscv-pk source in ./riscv-pk, and build trees 
> in work/{linux,riscv-pk}.)
>
>    cd work/riscv-pk
>    CC=/opt/rv64gc-mmu-linux-8.2.0/bin/riscv64-unknown-linux-gnu-gcc ../../riscv-pk/configure \
>                 --host=riscv64-unknown-linux-gnu \
>                 --with-payload=../../work/linux/vmlinux-stripped \
>                 --with-config-method=hifive_unleashed \
>                 --enable-dtb \
>                 --with-dtb-path=../../work/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dtb
>   
>
> Here is an Linux kernel branch with updated DT data that can be booted 
> with the above bootloader:
>
>    https://github.com/sifive/riscv-linux/tree/dev/paulw/dts-v5.2-rc1-experimental
>
> A sample boot log follows, using a 'defconfig' build from that branch.  

Thanks Paul, I can confirm that it works.

Something is still unclear to myself.
Using FSBL + riscv-pk/bbl the linux kernel + device tree boots.
Neither FSBL nor riscv-pk/bbl are modifying the DT.

Using FSBL + OpenSBI + U-Boot the same kernel + device tree hangs on
running /init.

Would you have any pointer on what riscv-pk does that OpenSBI/U-boot doesn't ?
Or maybe it is the other way around - OpenSBI/U-boot does something that
extra that should not happen.

Thanks,

Loys

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

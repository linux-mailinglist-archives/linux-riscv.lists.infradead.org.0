Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF67E172B46
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 23:31:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=GYA8cRSigmymRXmcROISDHS3kntByaK86sA7beUWVyE=; b=Aosysmcxl8Q6wl
	kzBXaEDXQR8XJs9c5laHlOJyen0PV0W0wsWANERKRokb1rUMegtD+yC2Q729RHq/0mJNys6tvbE9c
	ww2byB98msvZBhMR4eAHB6jVf1pkh+fwMJTJwdWK9U3ucI8LRdlseOV6YfHTpnEYWBq1oEBqofmI2
	AnxQN0/VV4mm7+/fPLoRWskZlCbNuG0E7rS5tY9SwcJa+sEBquBoG1uPrX02ZpNWmk7iC9cEOKQIi
	rw3yM77hcR8Fl8D7dfc54aS2qGYG7pjJO69sAI0xHPKqHIikW3vaaUkBLI+6e/vrJYguBlH+QK1J9
	+Yyg8SCgB+qWEXVRuROQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7RgH-0002vv-Ti; Thu, 27 Feb 2020 22:30:57 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7RgE-0002ur-Bt
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 22:30:55 +0000
Received: by mail-pl1-x643.google.com with SMTP id u3so381143plr.9
 for <linux-riscv@lists.infradead.org>; Thu, 27 Feb 2020 14:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=GYA8cRSigmymRXmcROISDHS3kntByaK86sA7beUWVyE=;
 b=MsJuL9pMQDaBUv7U22Bb8KTYp2qPcLdkKBI1J+hz5FqwFN5ZK1ka2ATHmFGuRJMCkr
 y4QDIToNt7tc0cfZTqcdng6uSUxUQx1yF+lJN0MtPc3S0KB8jaiNW6Yra+b8Ob2cjj1P
 n1+Ux0EtuJ6nmlGqyA4QKJxSxIK2msxqET/XHe2nH25HLRI/duOOcfzA+mHuaJlDHseO
 A9Rt9w4E3RzMbxFdpnw3pKmoC7fGrMzwK7S5K5OKOK4PhG7CRj0sP8yzCXcUQN4QgvG/
 k+R0RFwS/R1uMKvsWcEyV3xB8Jv0u+ZE/ADmZCt1SO7SGNzqfxl1hk0T7wOev2VWgj5G
 YrDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=GYA8cRSigmymRXmcROISDHS3kntByaK86sA7beUWVyE=;
 b=LYLyxhAutkZEtJVaqGaOGceJCUJrJ0zKM2WJtCEWnzdbt/CgMEt0+zsCE5IEaDB5cj
 MBQe2rwd0uE5Mf9GpzmJTjSBuU57EYeweCUuyQWsWZT1I+MPW4gyDxc60OZBYWsmx9wH
 qmdui88VO0hMBTCnswAyyeH3zLSK5wwiokqtbr9H2vyh8bXWIiYDWWyfouShHmPoKpfe
 6+ZqFPE8C4WNxXUNKx2om8zGAQGP5gfqHtf2Hr/0mLMXQI1Lce97cDOEcElToN9imeDN
 giXJo1C8DlRHW0RnsGjQlP+wJYl6JNbAJzlQiIRI7ZHVjpdubvEDAYVM71W+Bfkdzh2P
 gBOQ==
X-Gm-Message-State: APjAAAWGZKoXZ3zcVrn5hBirDb0t81lDGA4tCwLhBy5mvVnFxaifgM54
 gEkdMy+BAxoW3u7vaZFrimOaoQ==
X-Google-Smtp-Source: APXvYqzCEHIT/kofkvfQoHhQRYMo14yFaGUv2qVU9mlHQvuxHKxQyK0ZkwR/mHurzQJVka/iGKaFgg==
X-Received: by 2002:a17:90a:bf81:: with SMTP id
 d1mr1211025pjs.21.1582842653390; 
 Thu, 27 Feb 2020 14:30:53 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id x4sm3234850pgi.76.2020.02.27.14.30.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 14:30:52 -0800 (PST)
Date: Thu, 27 Feb 2020 14:30:52 -0800 (PST)
X-Google-Original-Date: Thu, 27 Feb 2020 14:22:29 PST (-0800)
Subject: Re: [PATCH 0/2] solve static percpu symbol issue in module and refine
 code model of module
In-Reply-To: <1582253275-28181-1-git-send-email-vincent.chen@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: vincent.chen@sifive.com
Message-ID: <mhng-d41d2239-32da-45af-8650-ecc60449578e@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_143054_434943_D806121E 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 deanbo422@gmail.com, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 20 Feb 2020 18:47:53 PST (-0800), vincent.chen@sifive.com wrote:
> The compiler uses the PIC-relative method to access static variables
> instead of GOT when the code model is PIC. Therefore, the limitation of
> the access range from the instruction to the symbol address is +-2GB.
> Under this circumstance, the kernel cannot load a kernel module if this
> module has static per-CPU symbols declared by DEFINE_PER_CPU(). The reason
> is that kernel relocates the .data..percpu section of the kernel module to
> the end of kernel's .data..percpu. Hence, the distance between the per-CPU
> symbols and the instruction will exceed the 2GB limits. To solve this
> problem, the kernel should place the loaded module in the memory area
> [&_end-2G, VMALLOC_END].
>
> Because the loaded module locates in the region [＆_end-2G，VMALLOC_END]
> at runtime, the distance from the module start to the end of the kernel
> image does not exceed 2GB. Hence, the second patch changes the code model
> of the kernel module from PIC to medany to improve the performance of data
> access.
>
> Changes from v1->v2
> 1. Unify the definition of VMALLOC_MODULE_START
> 2. Modify the indent
>
> Vincent Chen (2):
>   riscv: avoid the PIC offset of static percpu data in module beyond 2G
>     limits
>   riscv: Replace PIC with medany to improve data accessing in module
>
>  arch/riscv/Makefile        |  6 ++++--
>  arch/riscv/kernel/module.c | 18 ++++++++++++++++++
>  2 files changed, 22 insertions(+), 2 deletions(-)

Looking at this again, I think this is actually a good candidate for fixes.
Unless there's any opposition I'll target it for rc5.  It's on fixes.

Thanks!


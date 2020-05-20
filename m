Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7031DC1FC
	for <lists+linux-riscv@lfdr.de>; Thu, 21 May 2020 00:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ycck34yOE2eI9p8XWX3gxgUmzwvA56jseIW5KzHm0FY=; b=OG4PQ6k9acB6B2
	KX0uEL7agv/XYYXWhUvB+egcJ5ORlbgTnB/lXwvTwNaXxmVqosFXSLDI5Utfr9SJp8IPFqWNHiFih
	Tn1YXsvckg/njlwkDmTU2l5cAVTVrfxW3tlFSzVWDtAAMUXDJ5vEr0hCM53ej1aFurm6ArgtcVPEe
	OdRBo4U0GSdW8T0vaH3Qj6YYraxd98JKgznBzNgnhDRK18kziDtp7ExINFBCQar/msdAv9mIidTkW
	up2wk5ZfkwEtUovA4jUE9e+GvHFjtJPeZuNkSnWEHKEbv4izvHKIs96Ni9X0ovx8Rp3YxNFlyXnQ9
	C7rUelgvJgNwY6uN9EuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbX4J-0004w8-Px; Wed, 20 May 2020 22:20:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbX4E-0003yt-AJ
 for linux-riscv@lists.infradead.org; Wed, 20 May 2020 22:20:04 +0000
Received: by mail-pg1-x544.google.com with SMTP id s10so2131394pgm.0
 for <linux-riscv@lists.infradead.org>; Wed, 20 May 2020 15:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=ycck34yOE2eI9p8XWX3gxgUmzwvA56jseIW5KzHm0FY=;
 b=A2DCqD0hVrSACeq0opTnEGbqUnFx7U3NbKrctUt8Fdp4HjEK96vLUZVZxbuOjtTdIh
 Pbz3ztBmNqUcs7UitHS3izJWLdMiIMKDqJXpXNRSjufBQx47OoKi653UN/2KthcG2V/X
 Z+DZhrBPirFLJiBzVVneXPrIobV9exvpAXaXk+geGM+UwkNiTYiq2lBellAWSGZN2Mx0
 Y1OEY7xC5wTR0nISpAnvYgG4tb04ZFLjhwfNehfkBo3inxr0c/IMgHFMSFlnIJhcmV/v
 3n+8ZMYs0p/6tXSSAgHWOVyYgbRCG4CYl/HP0ZkXv9ijLS0R2hZdtA/4u+o2fz2pGP84
 FGuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=ycck34yOE2eI9p8XWX3gxgUmzwvA56jseIW5KzHm0FY=;
 b=N4NuH0GrB/RwCtNXxWpe7ikz3TZYUZOYP4CCN+W72RqWvGyCkgwG80mzr8KNkFW07l
 lIY5a/ISzChKSE+YDEoaRoHKl4cWaCFzGV4+rLVj+90yZkUClqm1iohoO08UYVYBUlx7
 4rL6ip6fD+YfwWYIJvTNIh41iyoY5JGMvgkOQuuqy2fM28sJ/BakBgwVI9Hnt4ASQdFQ
 gIOeSvrhl0IGOSM8WHJx26QTajf5NmZEGSS0W5L9N0h/8JPETuSCmng268/Bvdy1YLR7
 vbSHvmZro2lzU30s/EdpLzh3Hr8Arp3uUOPhXqtkbDtw7mJrBKkYkb9FQsvpaYIvNacT
 odgQ==
X-Gm-Message-State: AOAM530h+1QIOMDOuOGvwBakKUbJhf1mvYfr4uOgB1mbDPUAg7FcjQQS
 C9SspntJrnTntx64DEEhN4A38w==
X-Google-Smtp-Source: ABdhPJzBffw38fH6z7ClizvGlzg2njXTkTLF5T+vdnNSXUq5Ja4qQVrUaZwoxh29v5k8bvkf9BzFUg==
X-Received: by 2002:a62:4e83:: with SMTP id c125mr2021866pfb.165.1590013198938; 
 Wed, 20 May 2020 15:19:58 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id y4sm2966513pfq.10.2020.05.20.15.19.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 15:19:58 -0700 (PDT)
Date: Wed, 20 May 2020 15:19:58 -0700 (PDT)
X-Google-Original-Date: Wed, 20 May 2020 15:12:25 PDT (-0700)
Subject: Re: [PATCH v5 0/2] cacheinfo support to read no. of L2 cache ways
 enabled
In-Reply-To: <1582175719-7401-1-git-send-email-yash.shah@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: david.abdurachmanov@gmail.com, yash.shah@sifive.com
Message-ID: <mhng-2f2a1b1f-278b-4062-82cd-750b4e9f3d55@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_152002_470356_0FE9DBA7 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aou@eecs.berkeley.edu, sachin.ghadi@sifive.com, anup@brainfault.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@vger.kernel.org,
 alexios.zavras@intel.com, yash.shah@sifive.com,
 Greg KH <gregkh@linuxfoundation.org>, tglx@linutronix.de, bp@suse.de,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 21:15:17 PST (-0800), yash.shah@sifive.com wrote:
> The patchset includes 2 patches. Patch 1 implements cache_get_priv_group
> which make use of a generic ops structure to return a private attribute
> group for custom cacheinfo. Patch 2 implements a private attribute named
> "number_of_ways_enabled" in the cacheinfo framework. Reading this
> attribute returns the number of L2 cache ways enabled at runtime,
>
> This patchset is based on Linux v5.6-rc2 and tested on HiFive Unleashed
> board.
>
> v5:
> - Since WayEnable is 8bits, mask out and return only the last 8 bit in
>   l2_largest_wayenabled()
> - Rebased on Linux v5.6-rc2
>
> v4:
> - Rename "sifive_l2_largest_wayenabled" to "l2_largest_wayenabled" and
>   make it a static function
>
> v3:
> - As per Anup Patel's suggestion[0], implement a new approach which uses
>   generic ops structure. Hence addition of patch 1 to this series and
>   corresponding changes to patch 2.
> - Dropped "riscv: dts: Add DT support for SiFive L2 cache controller"
>   patch since it is already merged
> - Rebased on Linux v5.5-rc6
>
> Changes in v2:
> - Rebase the series on v5.5-rc3
> - Remove the reserved-memory node from DT
>
> [0]: https://lore.kernel.org/linux-riscv/CAAhSdy0CXde5s_ya=4YvmA4UQ5f5gLU-Z_FaOr8LPni+s_615Q@mail.gmail.com/
>
> Yash Shah (2):
>   riscv: cacheinfo: Implement cache_get_priv_group with a generic ops
>     structure
>   riscv: Add support to determine no. of L2 cache way enabled
>
>  arch/riscv/include/asm/cacheinfo.h   | 15 ++++++++++++++
>  arch/riscv/kernel/cacheinfo.c        | 17 ++++++++++++++++
>  drivers/soc/sifive/sifive_l2_cache.c | 38 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 70 insertions(+)
>  create mode 100644 arch/riscv/include/asm/cacheinfo.h

I must have lost track of this one, it's on for-next now.  Thanks to David for
reminding me.


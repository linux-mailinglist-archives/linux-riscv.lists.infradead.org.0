Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFE72C861
	for <lists+linux-riscv@lfdr.de>; Tue, 28 May 2019 16:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RrSCusdv3ZgSgFqatObuBZLm3mH3rUMNdtwinUBnCdo=; b=H2+RPHNo82wc/w
	/YQTZZaR3WnyZW2lTtvjmotm2if115VguFAaThs36X9DBs1902b/cope56eF8YRjenCQISViv0JaW
	Rq7raYSawKmjxwb4oyalaY13rrTIO7XpLYyhq9M1PpT+cXU/5OLz/GMHyywMWzfK33gs/Yqx2TOOG
	NZW5ZbDX8eitKV5zE9q5Rc1kwhzrp1WOs094votUDRjAyHi+F/qWdcCp2cstUaR+RHOPr26tdw36s
	3HrFUYgvMgxhv9QLt1Q4RnrqTDeH9eq+fk6bEUh3kqnpAu0eO6TdWghO4rabTR2AhYmD/UGpGqMCh
	CkcP+rIyXusUGUbNFquQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVcqQ-0007BR-7M; Tue, 28 May 2019 14:12:50 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVcqG-00074f-1S; Tue, 28 May 2019 14:12:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2D36780D;
 Tue, 28 May 2019 07:12:39 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C10193F5AF; Tue, 28 May 2019 07:12:35 -0700 (PDT)
Date: Tue, 28 May 2019 15:12:33 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH 4/5] kconfig: make arch/*/configs/defconfig the default
 of KBUILD_DEFCONFIG
Message-ID: <20190528141232.GC32006@arrakis.emea.arm.com>
References: <20190527143725.12542-1-yamada.masahiro@socionext.com>
 <20190527143725.12542-4-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527143725.12542-4-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_071240_089255_5678ACDA 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-s390@vger.kernel.org, Paul Walmsley <paul@pwsan.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Vincent Chen <deanbo422@gmail.com>,
 linux-kbuild@vger.kernel.org, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Firoz Khan <firoz.khan@linaro.org>, Greentime Hu <green.hu@gmail.com>,
 linux-alpha@vger.kernel.org, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Guo Ren <guoren@kernel.org>, Matt Turner <mattst88@gmail.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 11:37:24PM +0900, Masahiro Yamada wrote:
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index b025304bde46..970c41a30ed3 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -30,8 +30,6 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
>    endif
>  endif
>  
> -KBUILD_DEFCONFIG := defconfig
> -
>  # Check for binutils support for specific extensions
>  lseinstr := $(call as-instr,.arch_extension lse,-DCONFIG_AS_LSE=1)

For arm64:

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

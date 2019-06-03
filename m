Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D4232AEC
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Jun 2019 10:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mbc+LbT2OTb8HsZgoOT1AF+D1T9bBARUyqV+VyE33ec=; b=sJQBP49aD0YC7/
	yWfHfYOMcOu5ZiPXM8Tzy+VCCgJz6H9kFHE3jHZkItaoEsfCYWMY2yPiTJJWeAJLf+UV+OXA7rpoS
	0mT5RO353Snji9FvdnagWqrMT3HI2TgjWUsEVga6rbd8yLbq14p6ozmlCBphuGFw60H//Cr8vNCkZ
	SEE958C8HZIKjsQiXKIuKFx1DSyA+gweuBAdnARW06wg5WvvKoX3vPW5/XgerAc6dnE1A36xwEZOx
	N6MDpAlriLPuqULWJzl/DXiNUi5A4JYDd+Ekownn//gKdu6nU8/xVonBubXF8VDnn4kErWKNwZ5s6
	j/fnzmD6UqB5lbx40qRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXiQS-0007LP-Ou; Mon, 03 Jun 2019 08:34:40 +0000
Received: from smtp2200-217.mail.aliyun.com ([121.197.200.217])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXiQP-0007Jp-6x
 for linux-riscv@lists.infradead.org; Mon, 03 Jun 2019 08:34:39 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.07457966|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.308558-0.00702582-0.684416; FP=0|0|0|0|0|-1|-1|-1;
 HT=e01l01425; MF=han_mao@c-sky.com; NM=1; PH=DS; RN=2; RT=2; SR=0;
 TI=SMTPD_---.EgonVnk_1559550871; 
Received: from localhost(mailfrom:han_mao@c-sky.com
 fp:SMTPD_---.EgonVnk_1559550871)
 by smtp.aliyun-inc.com(10.147.40.26); Mon, 03 Jun 2019 16:34:31 +0800
Date: Mon, 3 Jun 2019 16:33:27 +0800
From: Mao Han <han_mao@c-sky.com>
To: linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 0/3] riscv: Add perf callchain support
Message-ID: <20190603083327.GA3101@vmh-VirtualBox>
References: <cover.1558081981.git.han_mao@c-sky.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1558081981.git.han_mao@c-sky.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_013437_419193_3B2F087E 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

PING?
On Fri, May 17, 2019 at 04:43:01PM +0800, Mao Han wrote:
> This patch set add perf callchain(FP/DWARF) support for RISC-V.
> It comes from the csky version callchain support with some
> slight modifications. The patchset base on Linux 5.1.
> 
> CC: Palmer Dabbelt <palmer@sifive.com>
> CC: linux-riscv <linux-riscv@lists.infradead.org>
> CC: Christoph Hellwig <hch@lst.de>
> CC: Guo Ren <guoren@kernel.org>
> 
> Changes since v2:
>   - fix inconsistent comment
>   - force to build kernel with -fno-omit-frame-pointer if perf
>     event is enabled
> 
> Changes since v1:
>   - simplify implementation and code convention
> 
> Mao Han (3):
>   riscv: Add perf callchain support
>   riscv: Add support for perf registers sampling
>   riscv: Add support for libdw
> 
>  arch/riscv/Kconfig                            |   2 +
>  arch/riscv/Makefile                           |   3 +
>  arch/riscv/include/uapi/asm/perf_regs.h       |  42 ++++++++++
>  arch/riscv/kernel/Makefile                    |   4 +-
>  arch/riscv/kernel/perf_callchain.c            | 113 ++++++++++++++++++++++++++
>  arch/riscv/kernel/perf_regs.c                 |  44 ++++++++++
>  tools/arch/riscv/include/uapi/asm/perf_regs.h |  42 ++++++++++
>  tools/perf/Makefile.config                    |   6 +-
>  tools/perf/arch/riscv/Build                   |   1 +
>  tools/perf/arch/riscv/Makefile                |   3 +
>  tools/perf/arch/riscv/include/perf_regs.h     |  96 ++++++++++++++++++++++
>  tools/perf/arch/riscv/util/Build              |   2 +
>  tools/perf/arch/riscv/util/dwarf-regs.c       |  72 ++++++++++++++++
>  tools/perf/arch/riscv/util/unwind-libdw.c     |  57 +++++++++++++
>  14 files changed, 485 insertions(+), 2 deletions(-)
>  create mode 100644 arch/riscv/include/uapi/asm/perf_regs.h
>  create mode 100644 arch/riscv/kernel/perf_callchain.c
>  create mode 100644 arch/riscv/kernel/perf_regs.c
>  create mode 100644 tools/arch/riscv/include/uapi/asm/perf_regs.h
>  create mode 100644 tools/perf/arch/riscv/Build
>  create mode 100644 tools/perf/arch/riscv/Makefile
>  create mode 100644 tools/perf/arch/riscv/include/perf_regs.h
>  create mode 100644 tools/perf/arch/riscv/util/Build
>  create mode 100644 tools/perf/arch/riscv/util/dwarf-regs.c
>  create mode 100644 tools/perf/arch/riscv/util/unwind-libdw.c
> 
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

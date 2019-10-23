Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE56AE2730
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 01:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CU3Tw/ge4IuwcPlWFTQZnQpAV9wk0T95joiKnDyF8LU=; b=OvSstfiUIz93Ho
	N72LbM4sZR4g8QUHOlFTfdfpZ8N9WzGcxNKNajlXyI8ijThofVlfoMd9dkyzG+VZP9Bc6xowrm0rV
	agQ59L3lEQyRwXrRTOPmwb0vAKpXzP89fIjjfS8+fYTcEyn2Y01ADcMafxAaaIVCfhpvi3tZxrKwA
	UYdFju6+xlyx6SJRmnuDXCin7J7eahidMNOY6EuXVo0w2YfT2uY/R1ThyuUU0PZ7s/eqf2g1QUFRg
	SfojwOUvfmc6/o5VhBk+y7ioN35f3/h2c/9u/Zb28OOaDMoQB42rS1DURqTrh39vc1jGfrHEpdrdm
	etVtqR/Y3sq6nHemFnng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNQRY-0007yF-Sg; Wed, 23 Oct 2019 23:53:32 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNQRV-0007xY-4A
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 23:53:31 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x9NNZp2a042863;
 Thu, 24 Oct 2019 07:35:51 +0800 (GMT-8)
 (envelope-from alankao@andestech.com)
Received: from andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Thu, 24 Oct 2019
 07:52:57 +0800
Date: Thu, 24 Oct 2019 07:52:57 +0800
From: Alan Kao <alankao@andestech.com>
To: Nick Kossifidis <mick@ics.forth.gr>
Subject: Re: Perf-related compilation issues
Message-ID: <20191023235257.GA7587@andestech.com>
References: <1bba622b-1f59-d21b-f396-d9c1a021dc3a@ics.forth.gr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1bba622b-1f59-d21b-f396-d9c1a021dc3a@ics.forth.gr>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x9NNZp2a042863
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_165329_434392_639DB4F5 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Nick,

Thanks for pointing out this.

On Wed, Oct 23, 2019 at 06:15:43PM +0300, Nick Kossifidis wrote:
> Hello all,
> 
> a) Compiling the current fixes branch with a minimal config I get the
> following error:
> 
> riscv64-unknown-linux-gnu-ld: arch/riscv/kernel/perf_callchain.o: in
> function `.L0 ':
> perf_callchain.c:(.text+0x16a): undefined reference to `walk_stackframe'
> make: *** [Makefile:1074: vmlinux] Error 1
> 
> 
> I've removed the static delcaration of walk_stackframe on stackframe.c
> and marked walk_stackframe as extern on perf_callchain.c to fix the
> above issue.
> 
> 
> b) Then If I compile the kernel without CONFIG_RISCV_BASE_PMU I get
> 
> 
> ./arch/riscv/include/asm/perf_event.h:26:2: error: #error "Please
> provide a valid RISCV_MAX_COUNTERS for the PMU."
>  #error "Please provide a valid RISCV_MAX_COUNTERS for the PMU."
> 

The check was meant to warn new PMU developers that they should provide
this parameter for their PMU.

> 
> I noticed that the only place where CONFIG_RISCV_BASE_PMU is checked is
> on perf_event.h and only for this parameter that's not defined anywhere
> else. So for now if one tries to compile the kernel without PMU the
> kernel won't compile + I don't see how unsetting this saves code size as
> the config description says.

Sorry for the inconvenience.

Will something like this help?

...
  #ifdef CONFIG_RISCV_BASE_PMU
  #define RISCV_MAX_COUNTERS      2
  #endif

+ #ifndef CONFIG_PERF_EVENTS
+ #define RISCV_MAX_COUNTERS      0
+ #endif

  #ifndef RISCV_MAX_COUNTERS
  #error "Please provide a valid RISCV_MAX_COUNTERS for the PMU."
  #endif
...

> 
> 
> Since I'm not familiar with the perf code how should I approach this ?
> Is the fix on a correct ? How should we handle b ?
> 
> Thanks a lot in advance.
> 
> Regards,
> Nick

> pub  2048R/F2823DEF 2019-05-13 Nick Kossifidis <mick@ics.forth.gr>
> sub  2048R/F84F263E 2019-05-13 [expires: 2020-05-12]



_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

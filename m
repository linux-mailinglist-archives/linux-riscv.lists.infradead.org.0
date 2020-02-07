Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C92155636
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Feb 2020 12:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g45UVKj/sbR0VFtVjENGgy+CS+CaX23k1N7JQHmw8q4=; b=MBMrlRPzMIs6XUfmxDt72GK3qg
	lE7qfuNr5rnqitESPT+jnIMB7josAxpvr89OBlgoIUOx+TDYcJMWiH7GMNQo2J37gFGgQoq0G/D4T
	wjRrZzfv8MOFasfO2vEGsSH/T9vxyktaysKfDW6WVLnsfwHZRaZItBoq86pMIJvEMK6SJ25Elw6bd
	ziCEgPpeR7yYtWiQZWSatEHgv2eQd8bTZolJQwKMiv39XT1nv9WFhyJitRrHabWPIXpkrGK0migEv
	qHzxeUth+g6IjevjCVj+izDOLfWHHECXR84oFOWE+WwQA5rXDkIQ4HBq1IjSd+KNKLwdLt+b3c9Bb
	G7aHWvOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j01Me-0001jx-Fj; Fri, 07 Feb 2020 11:00:00 +0000
Received: from smtprelay0061.hostedemail.com ([216.40.44.61]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j01MY-0001iT-S8
 for linux-riscv@lists.infradead.org; Fri, 07 Feb 2020 10:59:58 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 49042182CF666;
 Fri,  7 Feb 2020 10:59:39 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::,
 RULES_HIT:41:355:379:599:968:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1539:1568:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3867:4321:5007:10004:10400:10848:11026:11232:11473:11658:11914:12043:12048:12297:12438:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21611:21627:21990:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: unit22_19eb947281c49
X-Filterd-Recvd-Size: 1521
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf02.hostedemail.com (Postfix) with ESMTPA;
 Fri,  7 Feb 2020 10:59:38 +0000 (UTC)
Message-ID: <fdcfd8548707e2d6c61fc9739bc91c6720673c81.camel@perches.com>
Subject: Re: [PATCH 2/2] riscv: adjust the indent
From: Joe Perches <joe@perches.com>
To: Zong Li <zong.li@sifive.com>, paul.walmsley@sifive.com,
 palmer@dabbelt.com,  aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Fri, 07 Feb 2020 02:58:25 -0800
In-Reply-To: <20200207095245.21955-3-zong.li@sifive.com>
References: <20200207095245.21955-1-zong.li@sifive.com>
 <20200207095245.21955-3-zong.li@sifive.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_025954_966375_C1F2E02E 
X-CRM114-Status: UNSURE (   5.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.61 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.61 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2020-02-07 at 17:52 +0800, Zong Li wrote:
> Adjust the indent to match Linux coding style.

trivia:

> diff --git a/arch/riscv/mm/kasan_init.c b/arch/riscv/mm/kasan_init.c
[]
> @@ -86,7 +89,8 @@ void __init kasan_init(void)
>  	unsigned long i;
>  
>  	kasan_populate_early_shadow((void *)KASAN_SHADOW_START,
> -			(void *)kasan_mem_to_shadow((void *)VMALLOC_END));
> +				    (void *)kasan_mem_to_shadow((void *)
> +								VMALLOC_END));

could also remove an unnecessary (void *) as kasan_mem_to_shadow
returns a void *

	kasan_populate_early_shadow((void *)KASAN_SHADOW_START,
				    kasan_mem_to_shadow((void *)VMALLOC_END));



Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7641A30040
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 18:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=onioHQ9GEtmFxXqB3cIKM7Z0AI3G/pLFLpo2CZnLIbc=; b=LIdA3toKej70L2
	+dqDGimd6OLNepmnIap54bEvD3MjockFgkCDiV6Lui57HlIlBY9ASZRrIY66YqtyZKmBeyzVny8jA
	G7csglAvVTRLFYQawFpAGQyl/r062ZwchB8FGToy3Sc7404ajGlgJI4mHc3uHJN8zNsHSk1AnZmWx
	HTP5/7Qa3L9srZ6j3Pzi/nWFFt+z7f592+H/a5ZC8AUVfTD9jOkrzzHPHPoxexbdLfJk54hcAqvoB
	YkFpGNJiR3P2yf6kTxlqG4Vsclwc42WLuBGdYvGxELQakz/4iIH4UQ5bRVm5SZsIPBdUM9e0GBRMb
	2x7opIu4IrvK7/R4CZhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWO3e-0000LA-46; Thu, 30 May 2019 16:37:38 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWO3a-0000KV-S0
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 16:37:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B0180341;
 Thu, 30 May 2019 09:37:32 -0700 (PDT)
Received: from [10.1.194.37] (e113632-lin.cambridge.arm.com [10.1.194.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5CFE3F5AF;
 Thu, 30 May 2019 09:37:31 -0700 (PDT)
Subject: Re: [PATCH RESEND 5/7] RISC-V: entry: Remove unneeded need_resched()
 loop
To: Palmer Dabbelt <palmer@sifive.com>
References: <mhng-066fe6a6-4d0a-4286-bc01-faaf21ff2698@palmer-si-x1e>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <1b251faf-0b5b-2972-1bfd-9d40a8fd3609@arm.com>
Date: Thu, 30 May 2019 17:37:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <mhng-066fe6a6-4d0a-4286-bc01-faaf21ff2698@palmer-si-x1e>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_093734_914946_E5590E48 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 30/05/2019 05:09, Palmer Dabbelt wrote:
[...]
> 
> Sorry I missed this the first time around.
> 
> Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
> 
> Do you want this through the RISC-V tree, or are you going to take it?

Thanks! It's a standalone change so this would be fine through your tree.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

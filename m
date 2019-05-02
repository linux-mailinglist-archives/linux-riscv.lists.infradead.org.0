Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE38D12472
	for <lists+linux-riscv@lfdr.de>; Fri,  3 May 2019 00:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1hBiSgdAWzbpsITpXpcn+YdzTRPFYBYeNb7yN40E30=; b=co1pseOKNU4ueZ
	WFJTMSOf1pdUjIcXb/+qcND0r6z1WBHjeFFawaEDtowt9EOZ2Cm1toHvG/UUQ3KEmaUd+cMuqud6p
	K/m/GDqttRfvdtMgXDBSdeanhcttvrlY9lcB5YS8xWOlELSXziwrRxqgbX60NqoNye5YBNefwzicV
	W3DOBjt7uqpNA5N0fMd7lsTsC4tEUZn2yErAJugjUDLyNvPvkBxw2deJJiMeFSbtsEkhvpqITnvnX
	clGFz4ok/KCQmszhRnYv0AEOXpX3YaToFZxTcp8peJIWtDtWKvld2nWaNwHOlgwd7QQwN79ZI1YNd
	0RxsAk4O7OrvfaKmA86w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMJva-00089n-Aa; Thu, 02 May 2019 22:11:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMJvW-00087p-VO
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 22:11:40 +0000
Received: from localhost (unknown [104.132.0.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92E652080C;
 Thu,  2 May 2019 22:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556835098;
 bh=YE/dc/fbqSnsUBzu9pKS5Er4/+4KslyKlrQjkn6EK20=;
 h=In-Reply-To:References:To:Cc:From:Subject:Date:From;
 b=twrMDF/5I3O4hSsKWXOGEE/q2vs6/Svlyb5/LFsXPBqyyHFop4Kot60KTa18xfDyh
 XAst1BemLDx0ICPsyX6gW7u7aRdATGtFIRXWMtgMf6PzOFEBqJMQ5RjOQxvHQQs9Va
 bfQNjwUsDrTw15NUc7BTa87zy8WHakHlLkffoYVQ=
MIME-Version: 1.0
In-Reply-To: <20190430205055.25673-3-paul.walmsley@sifive.com>
References: <20190430205055.25673-1-paul.walmsley@sifive.com>
 <20190430205055.25673-3-paul.walmsley@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, mturquette@baylibre.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v4 2/2] clk: sifive: add a driver for the SiFive FU540
 PRCI IP block
Message-ID: <155683509781.200842.728012475637311820@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Thu, 02 May 2019 15:11:37 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_151139_033600_D745F44C 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Paul Walmsley <paul@pwsan.com>, Albert Ou <aou@eecs.berkeley.edu>,
 "Wesley W . Terpstra" <wesley@sifive.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Megan Wachs <megan@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Quoting Paul Walmsley (2019-04-30 13:51:00)
> Add driver code for the SiFive FU540 PRCI IP block.  This IP block
> handles reset and clock control for the SiFive FU540 device and
> implements SoC-level clock tree controls and dividers.
> 
> Based on code written by Wesley Terpstra <wesley@sifive.com>:
> https://github.com/riscv/riscv-linux/commit/999529edf517ed75b56659d456d221b2ee56bb60
> 
> Boot and PLL rate change were tested on a SiFive HiFive Unleashed
> board.
> 
> This version includes several changes requested by Stephen Boyd
> <sboyd@kernel.org>.
> 
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: Wesley W. Terpstra <wesley@sifive.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Megan Wachs <megan@sifive.com>
> Cc: linux-riscv@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-clk@vger.kernel.org
> ---

Applied to clk-next


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

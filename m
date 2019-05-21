Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C25257A1
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 20:35:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFZRim6U51sB6lb8WmteCENtpHCdzWyapWuZKeGALeA=; b=pFgwMipgYKyjAk
	Pf49SBDRDbkLxFfCZCab2Z/WNuVsWsh9iPt9UHUIx+olaErwib6Im1fl6jubcJoj+GwZi5at65fgn
	qrwZLmIxfyBvKILe7/jgGQNxLa3diOTmUiIik3OUV3Rp1CjsH7AyG8CTZrJop08ZmvwjG7T7DnGMn
	hCQVCX/CWlG3yiqMv0RRyYA9Z5rgLtucdu3JUBuS1NjDybEFs8fZETrELxnNbbGUFxb++tMG6u0RP
	9TWBZUCkB+fNWo5Vr9doehM9ntO+ZxLZuwd/l3ub8pR7ZRHs9ati4SEY8+eSlNAO+faETHFZ3ffNW
	cM4MN9IQvj2L4iWJHU3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT9bL-0003rN-K2; Tue, 21 May 2019 18:35:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT9bH-0003pK-Jw
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 18:35:01 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 031D22173E;
 Tue, 21 May 2019 18:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558463699;
 bh=h6QMBPaQJ9YaytqpgsgQE/jdYbpm7zZS+J6xihNl3uc=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=sjLGkhCL+6CNctT+nhppZVHDDEgcqXJhArozSlipyDH2C+UGfFJOeUJONbchPrrY8
 NnZc0hEFDhjUWchObZB1iK02IZGnHKzuzz28tdEqIK9x9HCkiglnIwWuBCPWHjlo87
 xUH2qf4/zRl92Gqfbg1BllN7kb1qmZXCE6tCZOoE=
MIME-Version: 1.0
In-Reply-To: <20190513213001.23956-1-paul.walmsley@sifive.com>
References: <20190513213001.23956-1-paul.walmsley@sifive.com>
Subject: Re: [PATCH v2] clk: sifive: restrict Kconfig scope for the FU540 PRCI
 driver
From: Stephen Boyd <sboyd@kernel.org>
To: Paul Walmsley <paul.walmsley@sifive.com>, mturquette@baylibre.com,
 pavel@ucw.cz
User-Agent: alot/0.8.1
Date: Tue, 21 May 2019 11:34:58 -0700
Message-Id: <20190521183459.031D22173E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_113459_668688_FFEBADCB 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Paul Walmsley <paul@pwsan.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Quoting Paul Walmsley (2019-05-13 14:30:04)
> Restrict Kconfig scope for SiFive clock and reset IP block drivers
> such that they won't appear on most configurations that are unlikely
> to support them.  This is based on a suggestion from Pavel Machek
> <pavel@ucw.cz>.  Ideally this should be dependent on
> CONFIG_ARCH_SIFIVE, but since that Kconfig directive does not yet
> exist, add dependencies on RISCV or COMPILE_TEST for now.
> 
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
> Reported-by: Pavel Machek <pavel@ucw.cz>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> ---

Applied to clk-fixes


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

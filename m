Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A8312471
	for <lists+linux-riscv@lfdr.de>; Fri,  3 May 2019 00:11:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRzOFcpbI3xnBA1d8k6FermQtRWFXV8rBgscQcw5MUc=; b=RmjMhT2SXxfhOQ
	nCk7F/OZxrWdKZTt194nS1ZbYwrShM0N0UVJTri90f/xNfsNgczgf7Fnd3sJ3KkW9plnjoIK/vgwu
	QXE0VULJpvPtcQf+zrWJUrkfRYykVgAd7kcNk2BKWJjCkBXCRp7I3BRjOaoUClt7gWALpmS4dw59s
	UXBGHg5+bUnZIMZpp1FIHdQLhsyZLKO+8BGm4beIsFhy118CMWmGmc77pAQL0PwBqKQY97oySIhvM
	miWWF1U00Wgsv54dNRRrUWZ6ytqSVqPzUnIysKg/gJNhKeJjGo41dzk23VL3HWl2kHRhSr080J5oK
	YMQeL9jCYt+FLgCj/XqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMJvX-00088E-OD; Thu, 02 May 2019 22:11:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMJvU-00087E-De
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 22:11:37 +0000
Received: from localhost (unknown [104.132.0.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A9AB12080C;
 Thu,  2 May 2019 22:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556835095;
 bh=2Npcycgwql1NQwXWHBSmcFCyRTuCpGuk4AWq0e9cSUI=;
 h=In-Reply-To:References:To:Cc:From:Subject:Date:From;
 b=SqczSP24PSwwh51HipvMPIHWCAgkSQYRBX9iVLL0l3kbSCXTluWEQF/+H7gcMfnWg
 tlFI3LseEmvmcfVp1jpEQaMU3IR0vH8gGfmWFlAixbSnetJQRbFRd7O77kvP/LMX5L
 u2DAf3zOR5K3fNUtZMy4O0b9J4YmlpgMZ1Ie93Lw=
MIME-Version: 1.0
In-Reply-To: <20190430205055.25673-2-paul.walmsley@sifive.com>
References: <20190430205055.25673-1-paul.walmsley@sifive.com>
 <20190430205055.25673-2-paul.walmsley@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, mturquette@baylibre.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v4 1/2] clk: analogbits: add Wide-Range PLL library
Message-ID: <155683509491.200842.3659543106794259397@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Thu, 02 May 2019 15:11:34 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_151136_482501_EB386208 
X-CRM114-Status: UNSURE (   8.09  )
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
Cc: Paul Walmsley <paul@pwsan.com>, Wesley Terpstra <wesley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Megan Wachs <megan@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Quoting Paul Walmsley (2019-04-30 13:50:58)
> Add common library code for the Analog Bits Wide-Range PLL (WRPLL) IP
> block, as implemented in TSMC CLN28HPC.
> 
> There is no bus interface or register target associated with this PLL.
> This library is intended to be used by drivers for IP blocks that
> expose registers connected to the PLL configuration and status
> signals.
> 
> Based on code originally written by Wesley Terpstra
> <wesley@sifive.com>:
> https://github.com/riscv/riscv-linux/commit/999529edf517ed75b56659d456d221b2ee56bb60
> 
> This version incorporates several changes requested by Stephen
> Boyd <sboyd@kernel.org>.
> 
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
> Cc: Wesley Terpstra <wesley@sifive.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Megan Wachs <megan@sifive.com>
> Cc: linux-clk@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> ---

Applied to clk-next


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

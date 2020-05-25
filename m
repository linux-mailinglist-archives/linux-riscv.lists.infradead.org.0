Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C77851E1282
	for <lists+linux-riscv@lfdr.de>; Mon, 25 May 2020 18:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p36e5h/hCllnPuZ90FUwtOLy6KPkKTpTETPdAZobUFE=; b=WaSaqi+RyMKrsY
	s36OTXQdCwPeVROwnSVvHxUgfKsGWi4D6UlcTEyYJ6eSaptnpWNTyDKLnOcZR1daxAsfj1X1VRPGd
	VZSGNc0JKoYFY0Z17NbvPaHDVaYfPRRelhd3AuMEuCnEmoWptjVH1mz8EhwWkzCECUdpb8r+QxT53
	4yJPgwPvMOoHaJ0hcUIdstGUZy4afQIbYQtwF2jrUIABeOHd4O0AMNnsth8mOd2DYSqOtt5Jpyc3J
	0yUUJ98fr3m+mPav5EzXwfVSFLYRfjDz1C7ZSR5R2C2JIT8kWzX3ES9PXUtlXNkorFxrazaJ8zUc+
	yjiCikOunPHK/h79yCHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdFnh-0003XT-65; Mon, 25 May 2020 16:18:05 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdFnd-0003Wh-Us
 for linux-riscv@lists.infradead.org; Mon, 25 May 2020 16:18:03 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id D2B724A2;
 Mon, 25 May 2020 16:17:59 +0000 (UTC)
Date: Mon, 25 May 2020 10:17:58 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Subject: Re: [PATCH] Documentation/features: Correct RISC-V kprobes support
 entry
Message-ID: <20200525101758.5cf2d32c@lwn.net>
In-Reply-To: <20200523210005.59140-1-bjorn.topel@gmail.com>
References: <20200523210005.59140-1-bjorn.topel@gmail.com>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_091801_998329_D48DA440 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 23 May 2020 23:00:05 +0200
Björn Töpel <bjorn.topel@gmail.com> wrote:

> The Documentation/features/debug/kprobes/arch-support.txt incorrectly
> states that RISC-V has kprobes support. This is not the case.
> 
> Note that entries that have been incorrectly marked with 'ok' will not
> be changed back to 'TODO' by the features-refresh.sh script.
> 
> Fixes: 7156fc292850 ("Documentation/features: Refresh the arch support status files in place")
> Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>

Applied, thanks.

jon


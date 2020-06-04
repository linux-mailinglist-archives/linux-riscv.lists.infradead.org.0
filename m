Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B5A1EE938
	for <lists+linux-riscv@lfdr.de>; Thu,  4 Jun 2020 19:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UJFOK1JzCFkn3IDtcOMRjOw3P6DHQ3zN2S2smYejyuw=; b=t+2T+tVO0QTIgZswK1MjSLhYn
	bA/7alC5kyXCKMzO1EZ55k8Su63WG9KhQsvAMSnN6M8wxRkGrq4Axnav/CxrB1LoGlUXcUDPEaI3S
	U2NgZuNvMVSX/aQvOIbJucpe1Rz4jJlwmp9giIkvdIzWNcxdxep6D21aQRdWmg2rhZH7Zt2wPQ4M/
	IqTX/Zlr5tA3yHwJxRIRY9PAqbN+xpC6KPvixbTMMX5eRWMFDv236y0bBxGaK9F6SAH8BWW5fsTml
	a3J14/yPQ1HC0148zszuTX6/ECS58mMcTV9OnxNsaxIPv0G8k0aLrOU63fMtSvFdoBsEGzMnxK9lY
	dYIdQrz9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgtSb-0004ue-Uv; Thu, 04 Jun 2020 17:15:21 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgtSY-0004u7-Fu
 for linux-riscv@lists.infradead.org; Thu, 04 Jun 2020 17:15:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A13F9ABC2;
 Thu,  4 Jun 2020 17:15:18 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Subject: Re: Crashes with CONFIG_SLAB_FREELIST_RANDOM
References: <mhng-42b47524-b185-4972-9889-69f824471fa6@palmerdabbelt-glaptop1>
 <87wo5ct376.fsf@igel.home>
 <CAEn-LTqs76ofSUfrAWqTRNb8uSkYooZyUorx_=ei5rkHEWy3Dg@mail.gmail.com>
X-Yow: --Hello, POLICE?  I"ve got ABBOTT & COSTELLO here on suspicion of
 HIGHWAY ROBBERY!!
Date: Thu, 04 Jun 2020 19:15:12 +0200
In-Reply-To: <CAEn-LTqs76ofSUfrAWqTRNb8uSkYooZyUorx_=ei5rkHEWy3Dg@mail.gmail.com>
 (David Abdurachmanov's message of "Thu, 4 Jun 2020 17:14:24 +0300")
Message-ID: <87a71ig3bz.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.91 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_101518_681905_C7A2DFD9 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Vincent Chen <vincent.chen@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Jun 04 2020, David Abdurachmanov wrote:

> Andreas, do you still see the issue with 5.7.0 kernel and
> CONFIG_SLAB_FREELIST_RANDOM=y ?

I cannot test currently, due to limited access to the hardware.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."


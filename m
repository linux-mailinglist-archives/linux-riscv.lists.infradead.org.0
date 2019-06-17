Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E79D48480
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 15:50:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tgp9OSzXmYZT6Y0jUE/fqDeGWNYRUuTqf2KNf0byVJQ=; b=FbdmQNmOrWj5/4
	ZnC50oCZq+y5giGHmgQfrta3kRAIHa2QB17aiAt60zXOrgyGec5fRl38S5xdrx/MkEvJi3KcTkZMx
	odpFCzdjcbngu/kzhvGpa87P6jIyixUrc6n1M3Nx+kpcpwcoDvCmw5eGMcQ3zRiBJjNq85dPzSBL1
	UkSMaWCQFT7R4WJQOG+QkM6qbYCciGhC+/i0QGWeZ7HLa1s7uxbyT0SOu43rZqNVgfqQ8/QbuzusZ
	/c28k4IsbgktN79vsa25ISqgHQB2mmx7cO2k3Al2U0EZjQKioItViOjOwrcLcg9kFe9EvK+EIoJ13
	88QNWYc185O0yHVc8sgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcs26-0001yy-Vw; Mon, 17 Jun 2019 13:50:51 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcs1y-0001xH-PT
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 13:50:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5B999ACB8;
 Mon, 17 Jun 2019 13:50:41 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: Working device tree for the HifiveU
References: <mvmlfy05xjm.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170347460.19994@viisi.sifive.com>
 <mvm8su05rqc.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170546100.4549@viisi.sifive.com>
 <mvm4l4o5qdd.fsf@suse.de>
 <62E04A53-803C-44AD-AAFC-EAD7D6BFE289@sifive.com>
 <alpine.DEB.2.21.9999.1906170626460.32654@viisi.sifive.com>
 <5D137BB6-2955-4D48-A18F-F06562AE502C@sifive.com>
 <alpine.DEB.2.21.9999.1906170638480.32654@viisi.sifive.com>
X-Yow: Talking Pinhead Blues:
 Oh, I LOST my ``HELLO KITTY'' DOLL and I get BAD reception on
 channel TWENTY-SIX!!
 Th'HOSTESS FACTORY is closin' down and I just heard ZASU PITTS
 has been DEAD for YEARS..  (sniff)
 My PLATFORM SHOE collection was CHEWED up by th'dog, ALEXANDER
 HAIG won't let me take a SHOWER 'til Easter.. (snurf)
 So I went to the kitchen, but WALNUT PANELING whup me
 upside mah HAID!! (on no, no, no..  Heh, heh)
Date: Mon, 17 Jun 2019 15:50:40 +0200
In-Reply-To: <alpine.DEB.2.21.9999.1906170638480.32654@viisi.sifive.com> (Paul
 Walmsley's message of "Mon, 17 Jun 2019 06:41:30 -0700 (PDT)")
Message-ID: <mvmv9x448y7.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_065043_014761_564C4E50 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Troy Benjegerdes <troy.benjegerdes@sifive.com>,
 Yash Shah <yash.shah@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Jun 17 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> Yash has already been kind enough to post his own test branch for these 
> patches, along with dependencies:
>
> https://github.com/yashshah7/riscv-linux/commits/dev/yashs/ethernet_v2

That doesn't work with U-Boot.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

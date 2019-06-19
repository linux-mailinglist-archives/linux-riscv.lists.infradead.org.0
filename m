Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737214AFD0
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Jun 2019 04:03:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t+fZREWuLGpU/YMSE9OH89sOIjmoYI4q7TV+H4W2uTw=; b=ls+IzLXKnN5B1J
	1RKUGryTzjZFeMQvtmXTlaTbsCg0ckayESN/KPjkVsBJKFHjR3frAkhpj+dsbV22EAj8Dop05NDo8
	mtl3ByxCSqfVscVfIRteb1JSuPbr1glhKv6gyIezfYlYg3aBAMVD5jOVlqW+OWEwQaCBXNL2sOSer
	P1GJSIkLAdKn2jmrYb1D2Dc/ykvUXdiKxUecvoohtVgW610yP9zN6BHYTSsgZHsQj/89oP23svY/s
	e+xQ5x8nT/Hpm0GPKSw4+cxRRw2Yt0laJ4jRIIbcm8heqvDWQG5gXhFp1uDuvl+0d3Yxs4cJhMJ2N
	W01z+8vvSJEJERofR5PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdPwX-00023z-FN; Wed, 19 Jun 2019 02:03:21 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdPwT-00023F-0e
 for linux-riscv@lists.infradead.org; Wed, 19 Jun 2019 02:03:18 +0000
Received: from localhost (unknown [8.46.76.24])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8661B14D8457B;
 Tue, 18 Jun 2019 19:02:58 -0700 (PDT)
Date: Tue, 18 Jun 2019 22:02:51 -0400 (EDT)
Message-Id: <20190618.220251.295948387700018458.davem@davemloft.net>
To: yash.shah@sifive.com
Subject: Re: [PATCH v3 0/2] Add macb support for SiFive FU540-C000
From: David Miller <davem@davemloft.net>
In-Reply-To: <1560844568-4746-1-git-send-email-yash.shah@sifive.com>
References: <1560844568-4746-1-git-send-email-yash.shah@sifive.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 18 Jun 2019 19:03:16 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_190317_060209_30AEC5C1 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 netdev@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 nicolas.ferre@microchip.com, sachin.ghadi@sifive.com, robh+dt@kernel.org,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org, ynezz@true.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Yash Shah <yash.shah@sifive.com>
Date: Tue, 18 Jun 2019 13:26:06 +0530

> On FU540, the management IP block is tightly coupled with the Cadence
> MACB IP block. It manages many of the boundary signals from the MACB IP
> This patchset controls the tx_clk input signal to the MACB IP. It
> switches between the local TX clock (125MHz) and PHY TX clocks. This
> is necessary to toggle between 1Gb and 100/10Mb speeds.
> 
> Future patches may add support for monitoring or controlling other IP
> boundary signals.
> 
> This patchset is mostly based on work done by
> Wesley Terpstra <wesley@sifive.com>
> 
> This patchset is based on Linux v5.2-rc1 and tested on HiFive Unleashed
> board with additional board related patches needed for testing can be
> found at dev/yashs/ethernet_v3 branch of:
> https://github.com/yashshah7/riscv-linux.git
> 
> Change History:
 ...

Series applied, thank you.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

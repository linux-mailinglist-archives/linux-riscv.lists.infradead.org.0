Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9A31E0B68
	for <lists+linux-riscv@lfdr.de>; Mon, 25 May 2020 12:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QW2mS/0B4yObU3xTCM/TmcUankvcgtJBHVgYz0E4pYg=; b=lua/50zE45rLV5
	migVRTYbTHVLhDrHsU+K4yGItX/QFHfB6reisWfhzb/ZzT/UkMxLY0iTWW3SeAfk7xwxg9XhEdIYL
	9P1dCKp1kxVI+p6MCOw2BuXPS0hPV8RarD5Q9MlN2e2d1DmsDRkJkUf6YNl6hoq3rV5MR5mbiXen3
	JbmakGn5mjup+UHOfNOwQq1/CHWm3kJleyI1D3hTegpVCzn7sOdAXDHMFpbYIw8oJy+4qerfaf9Tr
	7NQkZSFL3CO28UChVUG10dkC6QGWgPataSs+lKd9JOTNijhgV64OpXhGmYnafN4Dni3C/MgqwWkJA
	Zg5+ziyWw1UvZk6ifeOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdA25-000384-T9; Mon, 25 May 2020 10:08:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdA22-00037E-Th
 for linux-riscv@lists.infradead.org; Mon, 25 May 2020 10:08:32 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 14163206D5;
 Mon, 25 May 2020 10:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590401309;
 bh=J6set5wG6yYzEZqJStlskj0Qhfj8D7QFCDFSbGIGd/0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1hIaZZg9rgTUjy0zKc8HquIfWBmWIniT3wWGWP4sqdOXUS5HD0iWvDkCFB+Uoxflf
 4vwo6Aw7lKGr0zvf08ixEj2YjX2torC0cej5UuMG9zyX2AVAaxrEggq3Vpa1sfRgJv
 ke+G54WgvzycCpksvRGtmhxjjG/jnnKeHe/BdNMM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jdA1z-00F7tY-Dv; Mon, 25 May 2020 11:08:27 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paul Walmsley <paul.walmsley@sifive.com>, Anup Patel <anup.patel@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Jason Cooper <jason@lakedaemon.net>
Subject: Re: [PATCH v2 0/3] More improvements for multiple PLICs
Date: Mon, 25 May 2020 11:08:02 +0100
Message-Id: <159040126938.385862.7378207521947822453.b4-ty@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200518091441.94843-1-anup.patel@wdc.com>
References: <20200518091441.94843-1-anup.patel@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: paul.walmsley@sifive.com, anup.patel@wdc.com,
 tglx@linutronix.de, palmer@dabbelt.com, jason@lakedaemon.net,
 anup@brainfault.org, Alistair.Francis@wdc.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, atish.patra@wdc.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_030830_976063_A178E1F6 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-kernel@vger.kernel.org,
 Atish Patra <atish.patra@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 18 May 2020 14:44:38 +0530, Anup Patel wrote:
> This series does more improvements for supporting multiple PLIC
> instances.
> 
> PATCH1 and PATCH2 are fixes whereas PATCH3 helps users distinguish
> multiple PLIC instances in boot prints.
> 
> These patches are based up Linux-5.7-rc5 and can be found at
> plic_imp_v2 branch at: https://github.com/avpatel/linux.git
> 
> [...]

Applied to irq/irqchip-next, thanks!

[1/3] irqchip/sifive-plic: Set default irq affinity in plic_irqdomain_map()
      commit: 2458ed31e9b9ab40d78a452ab2650a0857556e85
[2/3] irqchip/sifive-plic: Setup cpuhp once after boot CPU handler is present
      commit: 2234ae846ccb9ebdf4c391824cb79e73674dceda
[3/3] irqchip/sifive-plic: Improve boot prints for multiple PLIC instances
      commit: 0e375f51017bcc86c23979118b10445c424ef5ad

Cheers,

	M.
-- 
Without deviation from the norm, progress is not possible.




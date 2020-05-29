Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4941E7A38
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 12:14:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=13e7RNIPnY9ycJkgBkkTeUsn1ucRNjXr0jEXwyY0Rvo=; b=UxBhNrjc0EN1C86+zcFJnRJtY
	HuRNrfU3Feu48n8IfNYnLBXLJSYdQr2oCLl5pSB2KIbIb7eM0aCg64tDAM+jXzQ+R9/ogXzWhZ+Uj
	at1q9LnphE/m5q9tar5jJOmpn3Q5s3mzMu9UYhQXLOCtrBvX71tfCE5W81n/dBfdhGJ2n1YjJfeWl
	1UooIP9KDabN71I3rRTlJvChMZGqBsnwhrpb7L44RErU1T2++vpOJJYeMR9kdvuKsE1tsXVcvRU2I
	jW6XI7KL4p2huNs/lX3CrpyIJDdmxwrS4SOiOZhL6yjvd92I+PJCq8KFtRT7/zZ3y0EaaO14zCHyq
	DD/fZ1dXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jec1b-0006J8-Es; Fri, 29 May 2020 10:14:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jec1Y-0006Iq-Rh
 for linux-riscv@lists.infradead.org; Fri, 29 May 2020 10:14:01 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D4CA2074D;
 Fri, 29 May 2020 10:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590747240;
 bh=oyhdQW9cIbfnJ/qwKWo1/Gl7kem52k5eaQQ+dV0o2iI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UKpxbVYGJL7ly+4PPTwH0NsqZkpIkVtzoD8ZpttgPxS9tWaceje5MhSL4cvK20rFT
 ooRYDIPPCkQbzKBY6sU5a6ypc5XCqKDBpJuMJKxaNqSzSGq1E1Yti4ypNA83pw5ncH
 Opo7OGtCn/1zETWcMVYAn6Pw6ZjQn58LEPHAW+MI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jec1W-00GExt-MU; Fri, 29 May 2020 11:13:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Fri, 29 May 2020 11:13:58 +0100
From: Marc Zyngier <maz@kernel.org>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH v5 0/6] New RISC-V Local Interrupt Controller Driver
In-Reply-To: <mhng-72b70f0c-28d7-425b-b45a-a132cf27e894@palmerdabbelt-glaptop1>
References: <mhng-72b70f0c-28d7-425b-b45a-a132cf27e894@palmerdabbelt-glaptop1>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <aeea0ade066fa0fcb4985b860a2ae322@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: palmer@dabbelt.com, Anup.Patel@wdc.com,
 paul.walmsley@sifive.com, aou@eecs.berkeley.edu, daniel.lezcano@linaro.org,
 tglx@linutronix.de, jason@lakedaemon.net, Atish.Patra@wdc.com,
 Alistair.Francis@wdc.com, anup@brainfault.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_031400_912534_890703E3 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: daniel.lezcano@linaro.org, jason@lakedaemon.net, anup@brainfault.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, aou@eecs.berkeley.edu,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-05-27 19:47, Palmer Dabbelt wrote:

[...]

> I think it's best if this all goes in through a single tree, as it 
> seems more
> work than it's worth to split it up.  I'm happy to take it through my 
> tree if
> that's OK with the irqchip folks?

This still needs some fixing on patch 3 (the exported symbol is pretty 
awful),
but this should definitely go via the RISC-V tree.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...


Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBFBF7975
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 18:06:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpOAegZwMYiVWnnMrPmwgw6Mu308WebLwmdInnzVolY=; b=ZU1SmgSjvvkDBy
	Et2FKmChND8Q4h8KoPlETYKiRShP68rQoPI08ISOQsduOhoeCSY127U1b13GGNo6pPhfl4nHLp0Q4
	1dyuVBLuEtPOx6fJtG4Q554ag+2ApC6z3b6vIJU0OPjrr10UwaVp21vpC1WlzDBArERRAmg1CK5A+
	Ia71rKW8fIgwlcG5eM+QWLn1E9HJQoRQarBlJG9o4E8cPQF6uTvLerz1v6EvajMO0xdBgLZkxX10G
	SHJQMXAyQ2hC7uaGGhKMlJcxgxbqvjo1aJJgXIxqf60VJmwv46Kq19zcWA+IwqJSfvzIvgtcgL9y3
	MCpU948LKPGFgJokFz1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUD95-0000Az-16; Mon, 11 Nov 2019 17:06:31 +0000
Received: from utopia.booyaka.com ([74.50.51.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUD92-0000AZ-29
 for linux-riscv@lists.infradead.org; Mon, 11 Nov 2019 17:06:29 +0000
Received: (qmail 31259 invoked by uid 1019); 11 Nov 2019 17:06:26 -0000
Received: from localhost (sendmail-bs@127.0.0.1)
 by localhost with SMTP; 11 Nov 2019 17:06:26 -0000
Date: Mon, 11 Nov 2019 17:06:26 +0000 (UTC)
From: Paul Walmsley <paul@pwsan.com>
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
In-Reply-To: <20191111133421.14390-1-anup.patel@wdc.com>
Message-ID: <alpine.DEB.2.21.999.1911111705350.30304@utopia.booyaka.com>
References: <20191111133421.14390-1-anup.patel@wdc.com>
User-Agent: Alpine 2.21.999 (DEB 260 2018-02-26)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_090628_179528_18F412D5 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 11 Nov 2019, Anup Patel wrote:

> We can use SYSCON reboot and poweroff drivers for the
> SiFive test device found on QEMU virt machine and SiFive
> SOCs.
> 
> This patch enables SYSCON reboot and poweroff drivers
> in RV64 and RV32 defconfigs.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>

I'd much prefer Christoph's driver, once it's fixed up per my earlier 
comments.  This business with writing random registers based on what's in 
the DT data has always been a bad idea.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

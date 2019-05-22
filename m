Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A96CA26092
	for <lists+linux-riscv@lfdr.de>; Wed, 22 May 2019 11:35:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7yT7cjXZU6ahaZQDzqkN1/GhOU2PrZiSyZFxW/rRv8=; b=og2kF04Sn6xMho
	TrsswEAD0iQGHTFf37cwSFz9e95GqOEIVdQpPjxi45CRlKUoUcJiwO7L1PoEHMP0Yih13acIIsnRO
	wAiwEGv7jpEX3gJ8S585cgVzUzKNT96Mu7VgIzYbxahWFc8WCE7ViOTm/wI2c/grXnvx22n2ViU7J
	CLYoBytTeYoI4qMUNS/yObM3An+pumRzSQSjSHKGNTas9JUdUAQquZYy/hvQhmHtpwTSDq9w5VOa3
	KHw+QzZWOXnRr0hkSmMkhN/NxPyErz2BiGsdZM7/wv9jfarSj04o+nx4wf//wrx5KMrga3bbXKLOb
	H7LPm55Uq1R/cJEnRkZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNe9-0007By-8I; Wed, 22 May 2019 09:34:53 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNe5-0007BK-ES
 for linux-riscv@lists.infradead.org; Wed, 22 May 2019 09:34:51 +0000
Received: from [107.16.110.78] (unknown [107.16.110.78])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 414591EC0965;
 Wed, 22 May 2019 11:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1558517682;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3izjwU4H+ed0Lx89lhZ2+zPs5hKdeDHBkD/yDroCiJ0=;
 b=Dn6jOkZ98dpIKjY0a1A7Twa5op57l4EW8a1VlK9DN5PR5QH4rrtfU3PQkb95NHbYPtew9e
 I6NHBdAjswV0/BzLXsEqXxLbvvdQNvPqrYGnaK+Zg+GLHPp79ZDWUljfSoiydKHjo/Ty3s
 dtunNB9V8Azcd1bp9jpi1Z6YvRX5XYA=
Date: Wed, 22 May 2019 04:34:38 -0500
User-Agent: K-9 Mail for Android
In-Reply-To: <1c7eb8ab-6f48-c41a-1d3a-a9b0f5ce8a7f@arm.com>
References: <1557142026-15949-1-git-send-email-yash.shah@sifive.com>
 <1557142026-15949-2-git-send-email-yash.shah@sifive.com>
 <CAJ2_jOG9Ag0spbh3YCxavUE5XEAUP1pHcgCZ56Nu2u4TqfrzHQ@mail.gmail.com>
 <20190521182132.GB7793@cz.tnic>
 <1c7eb8ab-6f48-c41a-1d3a-a9b0f5ce8a7f@arm.com>
MIME-Version: 1.0
Subject: Re: [PATCH v2] edac: sifive: Add EDAC platform driver for SiFive SoCs
To: James Morse <james.morse@arm.com>
From: Boris Petkov <bp@alien8.de>
Message-ID: <ABA6726C-CC1D-4092-887E-7D5A5B90509B@alien8.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_023449_634759_FE0F1884 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aou@eecs.berkeley.edu, paulmck@linux.ibm.com, gregkh@linuxfoundation.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 nicolas.ferre@microchip.com, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Yash Shah <yash.shah@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, mchehab@kernel.org, davem@davemloft.net,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On May 22, 2019 4:13:59 AM CDT, James Morse <james.morse@arm.com> wrote:
>Hi Boris,
>
>On 21/05/2019 19:21, Borislav Petkov wrote:
>> On Tue, May 21, 2019 at 11:00:59AM +0530, Yash Shah wrote:
>>> The prerequisite patch (sifive_l2_cache driver) has been merged into
>>> mainline v5.2-rc1
>>> It should be OK to merge this edac driver now.
>> 
>> James?
>
>Still fine by me:
>Reviewed-by: James Morse <james.morse@arm.com>
>
>(...this patch already has my reviewed-by on it...)
>
>I commented that it couldn't be merged in pieces here:
>https://lore.kernel.org/lkml/4072c812-d3bf-9ad5-2b30-6b2a5060bb55@arm.com/T/#u
>
>which is what Yash is replying to.

Ok, I'll take it when I get back. Thanks for clarifying.

-- 
Sent from a small device: formatting sux and brevity is inevitable. 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

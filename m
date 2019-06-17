Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BA447F6E
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 12:15:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPPrRQcr3QpXco90WNW/17mAVkBUp4+hHGrfE5nl3+w=; b=CMLnDP0Wh/im+H
	1yOMzbzWcWEC3POyypJiQHwfI307Ftuim2o0PXi+kMDGDW4p5sYyju3RqQeYGvPDiAtV2ML08hSap
	7Co2WcQhnOcuVqDEE/zIzL789x02IckaMGyErIv60kuBji2VsMuLJoDZtzdT4SJ1GJZFdFURALnzp
	UF8esrfIAGd1B0+zdGzmB5jDsLR4edZk4NVh5p5UD9OyCNxZKzKirYwCn2qZ6/UrvbHqHLk/m9EEg
	vhmqA8eQ4s4K1iapvRhBSzMHBhDfs+inGkhxn2sUytuI39oFb+Bg6IZbiRgwKJZFA8p7LQBxrFGxC
	96uS7d9jprCbjO/oiRyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcofM-0001YW-Vb; Mon, 17 Jun 2019 10:15:09 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcofE-000151-BI
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 10:15:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 11E3FAE1C;
 Mon, 17 Jun 2019 10:14:59 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
 <mvmtvco62k9.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170252410.19994@viisi.sifive.com>
 <mvmpnnc5y49.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170305020.19994@viisi.sifive.com>
X-Yow: Hold the MAYO & pass the COSMIC AWARENESS...
Date: Mon, 17 Jun 2019 12:14:58 +0200
In-Reply-To: <alpine.DEB.2.21.9999.1906170305020.19994@viisi.sifive.com> (Paul
 Walmsley's message of "Mon, 17 Jun 2019 03:05:06 -0700 (PDT)")
Message-ID: <mvmh88o5xi5.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_031500_547880_8D4F22DF 
X-CRM114-Status: GOOD (  10.84  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 netdev@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 nicolas.ferre@microchip.com, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org, ynezz@true.cz,
 linux-riscv@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Jun 17 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> On Mon, 17 Jun 2019, Andreas Schwab wrote:
>
>> On Jun 17 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:
>> 
>> > Looks to me that it shouldn't have an impact unless the DT string is 
>> > present, and even then, the impact might simply be that the MACB driver 
>> > may not work?
>> 
>> If the macb driver doesn't work you have an unusable system, of course.
>
> Why?

Because a system is useless without network.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
